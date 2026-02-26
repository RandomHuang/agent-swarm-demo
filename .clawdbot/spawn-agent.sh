#!/bin/bash

# Agent Spawn Script
# 用法：./spawn-agent.sh <role> <task-id>

set -e

ROLE=$1
TASK_ID=$2
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

echo "🤖 Spawning $ROLE Agent for task: $TASK_ID"

# 读取任务配置
TASK_CONFIG=$(cat "$SCRIPT_DIR/active-tasks.json" | jq ".tasks[] | select(.id == \"$TASK_ID\")")

if [ -z "$TASK_CONFIG" ]; then
    echo "❌ 任务未找到：$TASK_ID"
    exit 1
fi

# 提取配置
TMUX_SESSION=$(echo "$TASK_CONFIG" | jq -r '.tmuxSession')
MODEL=$(echo "$TASK_CONFIG" | jq -r '.model')
DESCRIPTION=$(echo "$TASK_CONFIG" | jq -r '.description')
PROMPT_FILE="$SCRIPT_DIR/prompts/${ROLE,,}-agent.md"

echo "📋 任务信息:"
echo "   Session: $TMUX_SESSION"
echo "   Model: $MODEL"
echo "   描述：$DESCRIPTION"

# 检查工作树
WORKTREE_NAME=$(echo "$TASK_CONFIG" | jq -r '.worktree')
WORKTREE_PATH="$PROJECT_DIR/../$WORKTREE_NAME"

if [ ! -d "$WORKTREE_PATH" ]; then
    echo "🌳 创建工作树..."
    cd "$PROJECT_DIR"
    git worktree add "../$WORKTREE_NAME" -b "$WORKTREE_NAME" origin/main 2>/dev/null || \
    git worktree add "../$WORKTREE_NAME" -b "$WORKTREE_NAME"
fi

# 启动 tmux 会话
echo "🪟 启动 tmux 会话..."
if tmux has-session -t "$TMUX_SESSION" 2>/dev/null; then
    echo "⚠️  会话已存在，销毁重建..."
    tmux kill-session -t "$TMUX_SESSION"
fi

tmux new-session -d -s "$TMUX_SESSION" -c "$WORKTREE_PATH"

# 读取 Prompt
if [ ! -f "$PROMPT_FILE" ]; then
    echo "❌ Prompt 文件不存在：$PROMPT_FILE"
    exit 1
fi

PROMPT=$(cat "$PROMPT_FILE")

# 启动 Agent
echo "🚀 启动 $ROLE Agent..."
tmux send-keys -t "$TMUX_SESSION" "cd $WORKTREE_PATH" Enter
tmux send-keys -t "$TMUX_SESSION" "echo '🤖 $ROLE Agent 启动中...'" Enter
tmux send-keys -t "$TMUX_SESSION" "claude --model $MODEL --dangerously-skip-permissions -p \"$PROMPT\"" Enter

# 更新任务状态
echo "📝 更新任务状态..."
jq "(.tasks[] | select(.id == \"$TASK_ID\")).status = \"running\" | (.tasks[] | select(.id == \"$TASK_ID\")).startedAt = now" \
    "$SCRIPT_DIR/active-tasks.json" > "$SCRIPT_DIR/active-tasks.json.tmp"
mv "$SCRIPT_DIR/active-tasks.json.tmp" "$SCRIPT_DIR/active-tasks.json"

echo "✅ Agent 启动成功！"
echo ""
echo "📊 查看日志："
echo "   tmux attach -t $TMUX_SESSION"
echo ""
echo "📁 工作目录："
echo "   $WORKTREE_PATH"
