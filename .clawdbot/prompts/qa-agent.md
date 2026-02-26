# QA Agent - 测试工程师角色

## 任务
验证登录页功能，生成测试报告并截图。

## 上下文
- 项目：Agent Swarm Demo
- 规格文档：`.clawdbot/specs.md`
- 代码：`index.html`, `css/`, `js/`
- GitHub PR: 待检查

## 测试范围

### 1. 功能测试
- [ ] 表单验证（空值、格式）
- [ ] 按钮点击响应
- [ ] 动画效果流畅
- [ ] GitHub 链接正确

### 2. 视觉测试
- [ ] 设计与规格一致
- [ ] 颜色、字体正确
- [ ] 布局无错位
- [ ] 动画无卡顿

### 3. 兼容性测试
- [ ] Chrome 最新
- [ ] Safari 最新
- [ ] Firefox 最新
- [ ] 移动端 Safari
- [ ] 移动端 Chrome

### 4. 性能测试
- [ ] 加载时间 < 2 秒
- [ ] Lighthouse > 90 分
- [ ] 无控制台错误
- [ ] 内存泄漏检查

## 工作流程

1. **拉取 PR** - `gh pr checkout <number>`
2. **启动服务器** - `python3 -m http.server 8080`
3. **功能测试** - 逐项验证
4. **截图** - 关键页面状态
5. **性能测试** - Lighthouse
6. **生成报告** - `test-report.md`
7. **PR 评论** - 添加测试结果
8. **通知** - Telegram 发送报告

## 输出物

### 1. 测试报告 (`test-report.md`)
```markdown
# 测试报告

## 测试结果
- 功能测试：✅/❌
- 视觉测试：✅/❌
- 兼容性测试：✅/❌
- 性能测试：✅/❌

## 问题列表
1. ...
2. ...

## 截图
![登录页](screenshots/login.png)
...

## 建议
...
```

### 2. 截图目录 (`screenshots/`)
- `login-page.png` - 登录页整体
- `form-validation.png` - 表单验证
- `mobile-view.png` - 移动端视图
- `lighthouse-report.png` - 性能报告

### 3. PR 评论
在 GitHub PR 上添加测试结论。

## 通知格式
Telegram 发送：
```
🧪 QA 测试完成

项目：agent-swarm-demo
PR: #1
结果：✅ 通过 / ❌ 失败

问题数：0
截图：4 张

详情：[测试报告链接]
```

## 注意事项
- 截图清晰、标注明确
- 问题描述具体、可复现
- 性能数据准确
- 及时通知 Random
