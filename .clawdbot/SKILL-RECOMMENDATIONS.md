# 🔍 Skill 查找器 - 推荐列表

## ⚠️ 安全提示

**ClawHub 上的部分技能被 VirusTotal 标记为可疑**，包括：
- `find-skills`
- `skill-finder`
- `skill-finder-cn`

**建议：**
1. 优先使用已 bundled 的官方技能
2. 安装第三方技能前仔细审查代码
3. 使用 `npx clawhub inspect <技能名>` 查看详情

---

## ✅ 已安装的官方技能 (Ready)

这些技能已经可以使用，无需额外安装：

| Skill | 用途 | 命令示例 |
|-------|------|----------|
| 🧩 coding-agent | 委派编码任务 | 自动使用 |
| 📦 gh-issues | GitHub Issues 自动化 | `/gh-issues owner/repo` |
| 🐙 github | GitHub CLI 操作 | `gh pr list` |
| 👀 peekaboo | macOS UI 截图 | `peekaboo click --coords x,y` |
| 📸 canvas | Canvas 控制 | `openclaw canvas snapshot` |
| 📝 weather | 天气查询 | `wttr.in/Shenzhen` |
| 📦 healthcheck | 安全审计 | `openclaw healthcheck` |

---

## 🔥 热门第三方技能推荐

### 开发效率

| 技能 | 用途 | 评分 | 安装命令 |
|------|------|------|----------|
| `agent-browser` | 浏览器自动化 | ⭐⭐⭐⭐ | `npx clawhub install agent-browser` |
| `browser-automation` | 网页操作 | ⭐⭐⭐⭐ | `npx clawhub install browser-automation` |
| `cicd-pipeline` | CI/CD 自动化 | ⭐⭐⭐⭐ | `npx clawhub install cicd-pipeline` |

### 社交媒体

| 技能 | 用途 | 评分 | 安装命令 |
|------|------|------|----------|
| `x-post-automation` | X/Twitter 自动发帖 | ⭐⭐⭐⭐ | `npx clawhub install x-post-automation` |

### 工具

| 技能 | 用途 | 评分 | 安装命令 |
|------|------|------|----------|
| `android-adb` | ADB 连接 | ⭐⭐⭐ | `npx clawhub install android-adb` |

---

## 📋 按需求查找技能

### 我想...

**自动化 GitHub 工作流**
→ 已安装：`gh-issues`, `github`
→ 可安装：`cicd-pipeline`

**控制浏览器**
→ 已安装：`canvas`, `peekaboo`
→ 可安装：`agent-browser`, `browser-automation`

**发帖到社交媒体**
→ 可安装：`x-post-automation`

**管理邮件**
→ 需要配置：`himalaya` (IMAP/SMTP)

**语音相关**
→ 需要配置：`sag` (TTS), `openai-whisper` (STT)

**笔记管理**
→ 需要配置：`obsidian`, `apple-notes`, `bear-notes`

---

## 🛠️ 安装技能步骤

### 1. 搜索技能
```bash
npx clawhub search "<关键词>"
```

### 2. 查看详情
```bash
npx clawhub inspect <技能名>
```

### 3. 审查代码（重要！）
检查是否有：
- 硬编码的 API Key
- 可疑的外部请求
- eval 或 Function 构造函数

### 4. 安装
```bash
npx clawhub install <技能名> \
  --dir ~/.nvm/versions/node/v22.22.0/lib/node_modules/openclaw/skills
```

### 5. 验证
```bash
openclaw skills list | grep <技能名>
```

---

## 🚨 安全检查清单

安装前检查：
- [ ] 所有者是否可信
- [ ] 最近更新时间
- [ ] 是否有 VirusTotal 警告
- [ ] 代码中是否有硬编码密钥
- [ ] 是否有可疑的外部 API 调用

安装后验证：
- [ ] 技能正常加载
- [ ] 无错误日志
- [ ] 功能符合预期

---

## 📚 资源

- **技能市场**: https://clawhub.com
- **官方文档**: https://docs.openclaw.ai/cli/skills
- **GitHub**: https://github.com/openclaw/openclaw

---

**最后更新**: 2026-02-26
