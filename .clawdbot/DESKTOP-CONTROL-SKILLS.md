# 🖥️ 电脑操作 Skills 推荐

## 🎯 按平台分类

### macOS (你的系统)

| Skill | 用途 | 评分 | 状态 | 安装命令 |
|-------|------|------|------|----------|
| **peekaboo** | macOS UI 截图 + 点击自动化 | ⭐⭐⭐⭐⭐ | ✅ 已安装 | 无需安装 |
| **canvas** | Canvas 浏览器控制 | ⭐⭐⭐⭐⭐ | ✅ 已安装 | 无需安装 |
| **macos** | macOS 系统管理 + 自动化最佳实践 | ⭐⭐⭐⭐ | 🔍 待安装 | `npx clawhub install macos` |
| **macbook-optimizer** | MacBook 性能优化 + 监控 | ⭐⭐⭐⭐ | 🔍 待安装 | `npx clawhub install macbook-optimizer` |
| **apple-notes** | Apple Notes 管理 | ⭐⭐⭐ | 🔍 待安装 | `npx clawhub install apple-notes` |
| **apple-reminders** | Apple Reminders 管理 | ⭐⭐⭐ | 🔍 待安装 | `npx clawhub install apple-reminders` |

### Windows

| Skill | 用途 | 评分 | 安装命令 |
|-------|------|------|----------|
| **windows-ui-automation** | Windows GUI 自动化 (PowerShell) | ⭐⭐⭐⭐ | `npx clawhub install windows-ui-automation` |
| **windows-control** | Windows 系统控制 | ⭐⭐⭐ | `npx clawhub install windows-control` |
| **desktop-control-win** | Windows 桌面控制 | ⭐⭐⭐ | `npx clawhub install desktop-control-win` |

### Linux

| Skill | 用途 | 评分 | 安装命令 |
|-------|------|------|----------|
| **computer-use** | 完整桌面控制 (Xvfb + XFCE + xdotool) | ⭐⭐⭐⭐⭐ | `npx clawhub install computer-use` |
| **guicountrol** | Linux GUI 控制 | ⭐⭐⭐ | `npx clawhub install guicountrol` |

### 跨平台

| Skill | 用途 | 评分 | 安装命令 |
|-------|------|------|----------|
| **desktop-control** | 高级桌面自动化 (鼠标 + 键盘 + 屏幕) | ⭐⭐⭐⭐⭐ | `npx clawhub install desktop-control` |
| **browserautomation-skill** | 浏览器自动化 | ⭐⭐⭐⭐ | `npx clawhub install browserautomation-skill` |
| **automation-workflows** | 自动化工作流 | ⭐⭐⭐⭐ | `npx clawhub install automation-workflows` |

---

## 🚀 推荐安装 (macOS)

### 1. **desktop-control** (强烈推荐)

**功能：**
- 🖱️ 鼠标控制（移动、点击、拖拽）
- ⌨️ 键盘输入（打字、快捷键）
- 📸 屏幕截图
- 🎯 元素识别

**安装：**
```bash
npx clawhub inspect desktop-control  # 查看详情
npx clawhub install desktop-control --force  # 强制安装
```

**使用示例：**
```javascript
// 点击坐标
await desktop.click({ x: 100, y: 200 });

// 输入文字
await desktop.type("Hello World");

// 快捷键
await desktop.press("Cmd+C");

// 截图
await desktop.screenshot();
```

---

### 2. **macos** (系统管理)

**功能：**
- macOS 系统管理
- 命令行最佳实践
- 自动化脚本

**安装：**
```bash
npx clawhub install macos
```

---

### 3. **macbook-optimizer** (性能优化)

**功能：**
- 性能监控
- 系统优化
- 故障排除

**安装：**
```bash
npx clawhub install macbook-optimizer
```

---

## 📋 完整对比表

| Skill | 平台 | 鼠标 | 键盘 | 截图 | 元素识别 | 状态 |
|-------|------|------|------|------|----------|------|
| **peekaboo** | macOS | ✅ | ❌ | ✅ | ❌ | ✅ 已安装 |
| **canvas** | 跨平台 | ✅ | ✅ | ✅ | ✅ | ✅ 已安装 |
| **desktop-control** | 跨平台 | ✅ | ✅ | ✅ | ✅ | 🔍 推荐 |
| **computer-use** | Linux | ✅ | ✅ | ✅ | ✅ | 🔍 可选 |
| **windows-ui-automation** | Windows | ✅ | ✅ | ✅ | ✅ | 🔍 可选 |
| **macos** | macOS | ❌ | ❌ | ❌ | ❌ | 🔍 推荐 |
| **macbook-optimizer** | macOS | ❌ | ❌ | ❌ | ❌ | 🔍 推荐 |

---

## ⚠️ 安全提示

**部分技能可能被 VirusTotal 标记：**
- 检查代码中是否有硬编码 API Key
- 确认外部 API 调用是否安全
- 使用 `--force` 前仔细审查

**安全检查命令：**
```bash
# 查看技能详情
npx clawhub inspect <技能名>

# 查看技能文件列表
npx clawhub inspect <技能名> --json | jq '.files[].path'
```

---

## 🎯 使用场景

### 场景 1: 自动化微信发送
```bash
# 已实现：使用 peekaboo + AppleScript
peekaboo click --coords x,y
osascript -e 'tell application "WeChat" to ...'
```

### 场景 2: 自动化浏览器操作
```bash
# 使用 canvas 技能
openclaw browser open https://example.com
openclaw browser snapshot
```

### 场景 3: 桌面应用自动化
```bash
# 安装 desktop-control 后
npx clawhub install desktop-control --force
# 然后可以使用鼠标/键盘控制
```

---

## 📚 资源

- **ClawHub**: https://clawhub.com
- **文档**: https://docs.openclaw.ai/cli/skills
- **已安装技能**: `openclaw skills list`

---

**最后更新**: 2026-02-26
