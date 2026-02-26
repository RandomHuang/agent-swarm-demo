#!/bin/bash

# Agent Monitoring Script (Ralph Loop V2)
# 用法：./check-agents.sh
# 建议：cron 每 10 分钟执行一次

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

echo "🔍 检查 Agent 状态..."

# 读取任务列表
TASKS=$(cat "$SCRIPT_DIR/active-tasks.json" | jq -c '.tasks[]')

while IFS= read -r task; do
    TASK_ID=$(echo "$task" | jq -r '.id')
    TMUX_SESSION=$(echo "$task" | jq -r '.tmuxSession')
    STATUS=$(echo "$task" | jq -r '.status')
    BRANCH=$(echo "$task" | jq -r '.branch')
    ROLE=$(echo "$task" | jq -r '.role')
    
    echo ""
    echo "📋 任务：$TASK_ID ($ROLE)"
    echo "   状态：$STATUS"
    echo "   Session: $TMUX_SESSION"
    
    # 只检查运行中的任务
    if [ "$STATUS" != "running" ]; then
        echo "   ⏭️  跳过（未运行）"
        continue
    fi
    
    # 检查 1: tmux 会话是否存活
    if ! tmux has-session -t "$TMUX_SESSION" 2>/dev/null; then
        echo "   ❌ tmux 会话已断开"
        # 可以添加自动重启逻辑
        continue
    fi
    echo "   ✅ tmux 会话正常"
    
    # 检查 2: 检查 PR 状态
    if [ -n "$BRANCH" ] && [ "$BRANCH" != "null" ]; then
        PR_INFO=$(gh pr list --head "$BRANCH" --state open --json number,title,status 2>/dev/null || echo "[]")
        
        if [ "$PR_INFO" != "[]" ]; then
            PR_NUMBER=$(echo "$PR_INFO" | jq -r '.[0].number')
            PR_STATUS=$(echo "$PR_INFO" | jq -r '.[0].status')
            echo "   📬 PR #$PR_NUMBER - $PR_STATUS"
            
            # 检查 CI 状态
            CI_STATUS=$(gh pr checks "$PR_NUMBER" --json name,state 2>/dev/null | jq -r 'if length > 0 then .[0].state else "pending" end')
            echo "   🧪 CI: $CI_STATUS"
            
            # 如果 CI 通过，更新状态
            if [ "$CI_STATUS" == "SUCCESS" ]; then
                echo "   ✅ 所有检查通过"
                # 更新任务状态为 done
                # jq "(.tasks[] | select(.id == \"$TASK_ID\")).status = \"done\"" \
                #     "$SCRIPT_DIR/active-tasks.json" > "$SCRIPT_DIR/active-tasks.json.tmp"
                # mv "$SCRIPT_DIR/active-tasks.json.tmp" "$SCRIPT_DIR/active-tasks.json"
            fi
        else
            echo "   📭 PR 未创建"
        fi
    fi
    
    # 检查 3: 检查代码审查状态
    # (可以添加 Codex/Gemini/Claude 审查检查)
    
done <<< "$TASKS"

echo ""
echo "✅ 检查完成"

# 发送 Telegram 通知（如果有任务完成）
# 可以在这里添加通知逻辑
