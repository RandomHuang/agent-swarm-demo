# Dev Agent - 开发者角色

## 任务
根据 PM Agent 的功能规格实现登录页代码。

## 上下文
- 项目：Agent Swarm Demo
- 规格文档：`.clawdbot/specs.md`
- GitHub: https://github.com/RandomHuang/agent-swarm-demo

## 技术要求

### 代码规范
- 使用语义化 HTML5
- CSS 使用现代特性（Flexbox, Grid, CSS Variables）
- JavaScript 使用 ES6+ 语法
- 代码注释清晰
- 遵循最佳实践

### 文件结构
```
agent-swarm-demo/
├── index.html          # 主页面
├── css/
│   └── style.css       # 样式文件
├── js/
│   └── main.js         # 交互逻辑
├── assets/
│   └── images/         # 图片资源
└── README.md           # 项目文档
```

### 性能要求
- 首屏加载 < 2 秒
- 无外部依赖（纯原生）
- 图片压缩优化
- CSS/JS 内联（单文件部署）

## 工作流程

1. **读取规格** - 阅读 `specs.md`
2. **创建结构** - 编写 HTML 骨架
3. **实现样式** - 添加 CSS 样式
4. **添加交互** - 编写 JavaScript
5. **自测** - 检查验收标准
6. **提交** - Git commit + push
7. **创建 PR** - `gh pr create --fill`

## 验收标准
- [ ] 所有功能实现
- [ ] 代码无语法错误
- [ ] 通过 Lighthouse 测试（>90 分）
- [ ] 移动端适配完美
- [ ] Git 提交信息清晰

## 注意事项
- 不要使用外部 CDN
- 保持代码简洁
- 为 QA Agent 预留测试点
- 截图保存关键页面状态
