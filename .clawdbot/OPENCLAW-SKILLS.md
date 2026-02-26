# OpenClaw Skills 指南

## 📦 已安装的 Skills (8/51 Ready)

### ✅ 已就绪

| Skill | 用途 | 状态 |
|-------|------|------|
| 🧩 coding-agent | 委派编码任务给 Codex/Claude Code/Pi | ✅ Ready |
| 📦 gh-issues | GitHub Issues 自动化 + PR 管理 | ✅ Ready |
| 🐙 github | GitHub CLI 操作 (PR/CI/Code Review) | ✅ Ready |
| 📦 healthcheck | 安全审计 + SSH/防火墙加固 | ✅ Ready |
| 👀 peekaboo | macOS UI 截图 + 自动化 | ✅ Ready |
| 📸 canvas | Canvas 自动化 + 截图 | ✅ Ready |
| 📝 weather | 天气查询 (wttr.in/Open-Meteo) | ✅ Ready |
| 🤖 session-logs | 会话日志分析 | ✅ Ready |

### ⚠️ 需要配置

| Skill | 用途 | 缺失依赖 |
|-------|------|----------|
| 🔐 1password | 1Password CLI | op CLI |
| 📝 apple-notes | Apple Notes 管理 | memo CLI |
| ⏰ apple-reminders | Apple Reminders | remindctl |
| 🐻 bear-notes | Bear Notes | grizzly CLI |
| 📰 blogwatcher | RSS/博客监控 | blogwatcher CLI |
| 🫐 blucli | BluOS 音频控制 | blu CLI |
| 🫧 bluebubbles | iMessage 集成 | BlueBubbles |
| 📦 clawhub | ClawHub 技能市场 | clawhub CLI |
| 🎮 discord | Discord 操作 | - |
| 🎛️ eightctl | Eight Sleep 睡眠控制 | eightctl CLI |
| ♊️ gemini | Gemini CLI | gemini CLI |
| 🧲 gifgrep | GIF 搜索 | gifgrep CLI |
| 🎮 gog | Google Workspace | gog CLI |
| 📍 goplaces | Google Places API | goplaces CLI |
| 📧 himalaya | 邮件管理 (IMAP/SMTP) | himalaya CLI |
| 📨 imsg | iMessage/SMS | - |
| 📦 mcporter | MCP 服务器管理 | mcporter CLI |
| 📊 model-usage | Codex/Claude 成本统计 | codexbar CLI |
| 🍌 nano-banana-pro | Gemini 图像生成 | - |
| 📄 nano-pdf | PDF 编辑 | nano-pdf CLI |
| 📝 notion | Notion API | notion CLI |
| 💎 obsidian | Obsidian 笔记 | obsidian-cli |
| 🖼️ openai-image-gen | OpenAI 图像生成 | OpenAI API Key |
| 🎙️ openai-whisper | 本地语音转文字 | whisper CLI |
| ☁️ openai-whisper-api | OpenAI Whisper API | OpenAI API Key |
| 💡 openhue | Philips Hue 灯光 | openhue CLI |
| 🧿 oracle | Oracle CLI 最佳实践 | oracle CLI |
| 🛵 ordercli | Foodora 外卖 | ordercli CLI |
| 🗣️ sag | ElevenLabs TTS | sag CLI + API Key |
| 🎵 songsee | 歌词搜索 | songsee CLI |
| 🎧 sonoscli | Sonos 音响控制 | sonos CLI |
| 🎧 spotify-player | Spotify 播放 | spotify-player CLI |
| 📋 summarize | 文本摘要 | - |
| 📝 things-mac | Things 3 任务管理 | things-cli |
| 🪟 tmux | tmux 会话管理 | tmux |
| 📋 trello | Trello 看板 | trello CLI |
| 🎬 video-frames | 视频帧提取 | ffmpeg |
| 🗣️ voice-call | 语音通话 | - |
| 💬 wacli | WhatsApp CLI | wacli CLI |
| 🔗 xurl | URL 短链接 | xurl CLI |

---

## 🔍 查找 Skills

### 使用 clawhub 搜索

```bash
# 搜索技能
npx clawhub search <关键词>

# 示例
npx clawhub search "find skill"
npx clawhub search "github"
npx clawhub search "weather"
```

### 浏览最新技能

```bash
npx clawhub explore
```

### 查看技能详情

```bash
npx clawhub inspect <技能名>
```

---

## 📥 安装 Skills

```bash
# 安装技能
npx clawhub install <技能名> --dir ~/.nvm/versions/node/v22.22.0/lib/node_modules/openclaw/skills

# 示例
npx clawhub install find-skills --dir ~/.nvm/versions/node/v22.22.0/lib/node_modules/openclaw/skills

# 强制安装（有警告时）
npx clawhub install find-skills --force --dir ~/.nvm/versions/node/v22.22.0/lib/node_modules/openclaw/skills
```

### ⚠️ 安全警告

某些技能可能被 VirusTotal 标记为可疑：
- 检查技能代码
- 确认来源可信
- 使用 `--force` 前仔细审查

---

## 🚀 常用 Skills 推荐

### 开发相关
- `coding-agent` - 委派编码任务
- `github` - GitHub 操作
- `gh-issues` - Issues 自动化
- `tmux` - 终端会话管理

### 笔记相关
- `obsidian` - Obsidian 笔记
- `apple-notes` - Apple Notes
- `bear-notes` - Bear Notes

### 通讯相关
- `wacli` - WhatsApp
- `imsg` - iMessage
- `bluebubbles` - iMessage (推荐)
- `discord` - Discord
- `slack` - Slack

### 媒体相关
- `sag` - ElevenLabs TTS
- `openai-whisper` - 语音转文字
- `songsee` - 歌词搜索
- `spotify-player` - Spotify 播放

### 工具相关
- `peekaboo` - macOS UI 自动化
- `canvas` - Canvas 控制
- `weather` - 天气查询
- `healthcheck` - 安全审计

---

## 📚 资源

- **官方文档**: https://docs.openclaw.ai/cli/skills
- **技能市场**: https://clawhub.com
- **GitHub**: https://github.com/openclaw/openclaw

---

**最后更新**: 2026-02-26
