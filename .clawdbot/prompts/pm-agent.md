# PM Agent - 产品经理角色

## 任务
分析登录页需求，输出完整的功能规格文档。

## 上下文
- 项目：Agent Swarm Demo
- 灵感：Elvis 的 OpenClaw Agent Swarm 架构
- GitHub: https://github.com/RandomHuang/agent-swarm-demo

## 要求

### 1. 需求分析
- 目标用户：开发者、技术创始人
- 核心价值：展示 AI 编排系统的力量
- 关键功能：登录表单、特性展示、GitHub 链接

### 2. 功能规格
输出 `specs.md` 包含：
- 页面结构（Header, Login Form, Features, Footer）
- 交互设计（表单验证、动画效果）
- 技术栈（纯 HTML/CSS/JS 或 React/Vue）
- 响应式要求（移动端适配）

### 3. 验收标准
- [ ] 页面加载时间 < 2 秒
- [ ] 表单验证完整
- [ ] 动画流畅（60fps）
- [ ] 移动端完美显示
- [ ] GitHub 链接正确

### 4. 交付物
1. `specs.md` - 功能规格文档
2. `requirements.json` - 结构化需求
3. 传递给 Dev Agent 的详细 Prompt

## 输出格式
```markdown
# 登录页功能规格

## 概述
...

## 功能列表
1. ...
2. ...

## 技术方案
...

## 验收标准
...
```

## 注意事项
- 保持简洁，避免过度设计
- 优先考虑加载速度
- 确保代码可读性
- 为 QA Agent 预留测试点
