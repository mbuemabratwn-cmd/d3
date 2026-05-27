# d3

Claude Code 高保真 HTML 设计技能 / High-fidelity HTML design skill for Claude Code.

一个命令生成落地页、幻灯片、交互原型、社交媒体帖子图 / Generate landing pages, slide decks, interactive prototypes, and social media post images — all from `/d3`.

---

## 快速安装 / Quick Install

### 方式一：终端一键安装 / Option 1: One command

```bash
curl -fsSL https://raw.githubusercontent.com/mbuemabratwn-cmd/d3/main/install.sh | bash
```

### 方式二：让 Claude Code 帮你装 / Option 2: Let Claude Code install it for you

复制下面这段话，粘贴到 Claude Code 里发送 / Copy the prompt below and paste it into Claude Code:

```
请帮我安装 d3 技能。执行以下步骤：

1. 运行这个命令安装：
   curl -fsSL https://raw.githubusercontent.com/mbuemabratwn-cmd/d3/main/install.sh | bash

2. 安装完成后，读取 .claude/skills/d3/SKILL.md 确认技能文件已就位。

3. 告诉我安装结果和使用方法。
```

安装内容 / This installs:

| 内容 | 说明 |
|------|------|
| `.claude/skills/d3/SKILL.md` | 技能主文件 / Main skill file |
| `.claude/skills/d3/references/` | 60+ 设计参考文档 / 60+ design reference docs |
| `.claude/skills/d3/templates/` | 13 个组件模板 (React/JSX) / 13 component templates |
| `.claude/skills/d3-update/SKILL.md` | `/d3-update` 更新技能 / Update the d3 skill |
| `.claude/skills/d3-update-html/SKILL.md` | `/d3-update-html` 更新模板 / Update HTML templates |
| `beautiful-html-templates/templates/` | 30+ HTML 视觉模板 / 30+ HTML visual templates |

---

## 使用方法 / Usage

安装后打开 Claude Code，输入 / After install, open Claude Code and type:

```
/d3
```

然后描述你想做什么 / Then describe what you want to build:

1. **自动安装** — 首次使用时自动安装 HTML 模板库（如未安装）
   **Auto-install** — HTML template library auto-installs on first use if missing
2. **选模板** — 每次生成 HTML/PPT 前必须选择视觉模板
   **Pick template** — You must choose a visual template before any HTML/PPT is generated
3. **提问** — Claude 会问你几个问题，明确需求
   **Ask** — Claude asks clarifying questions to understand your task
4. **路由** — 自动加载合适的参考资料和模板
   **Route** — Automatically loads appropriate references and templates
5. **计划** — 呈现执行方案，等你批准
   **Plan** — Presents an execution plan for your approval
6. **构建** — 逐步生成 HTML，每步可预览
   **Build** — Generates HTML step by step with per-section previews
7. **验证** — 自动检查并交付最终成果
   **Verify** — Runs checks and delivers the final artifact

### 示例 / Examples

```
/d3 做一个 SaaS 产品的落地页，Stripe 风格
```

```
/d3 做一组 5 页的小红书 CSS 动画教程
```

```
/d3 设计一个产品路演的幻灯片
```

```
/d3 做一个 CI/CD 流程的交互式说明图
```

### 更新 / Updating

```
/d3-update      更新 d3 技能到最新版本
/d3-update-html 更新 beautiful-html-templates 到最新版本
```

---

## 功能亮点 / Features

- **通用 HTML 设计** — 落地页、UI 模拟、动画、幻灯片、交互原型
- **General HTML design** — landing pages, UI mockups, animations, presentations, interactive prototypes
- **社交媒体帖子图** — 小红书教程卡片、Instagram 轮播图，支持多种比例
- **Social media posts** — Xiaohongshu tutorial cards, Instagram carousels, flexible aspect ratios
- **模板系统** — 30+ 内置模板，按气质自动匹配
- **Template system** — 30+ built-in templates, matched by mood and purpose
- **反 AI 味规则** — 强制设计质量标准，杜绝千篇一律的 AI 输出
- **Anti-AI-slop rules** — enforced design quality that prevents generic AI output
- **智能路由** — 自动加载适合当前任务的参考资料和模板
- **Smart routing** — automatically loads the right references and templates for your task
- **内置验证** — 交付前自动进行结构、视觉、设计质量检查
- **Built-in verification** — structural, visual, and design quality checks before delivery

---

## 支持平台 / Supported Platforms

| 平台 | 比例 | Viewport | PNG 输出 |
|------|------|----------|----------|
| 小红书 Xiaohongshu | 3:4 | 900 × 1200 | 2700 × 3600 |
| Instagram | 1:1 | 1080 × 1080 | 3240 × 3240 |
| Instagram Feed | 4:5 | 1080 × 1350 | 3240 × 4050 |
| 自定义 Custom | 任意 | 自定义 | 3× 指定尺寸 |

---

## 包含内容 / What's Included

### 参考文档库 / Reference Library (60+)

设计理论、反模式、排版系统、色彩理论、动画最佳实践、交互设计、品牌情感、数据可视化等。
Design theory, anti-patterns, typography systems, color theory, animation best practices, interaction design, brand emotion, data visualization, and more.

### 组件模板 / Component Templates (13)

React/JSX 模板：浏览器窗口、iOS/Android 框架、macOS 窗口、幻灯片、动画时间轴、流程图解、决策树、对比布局。
React/JSX templates: browser windows, iOS/Android frames, macOS windows, slide decks, animation timelines, flow explainers, decision trees, comparison layouts.

### HTML 视觉模板 / HTML Design Templates (30+)

来自 [beautiful-html-templates](https://github.com/zarazhangrui/beautiful-html-templates) 的视觉模板，按气质分类：大字海报、编辑排版、网格系统、黑白简约、专业风格等。首次使用时自动安装，也可手动浏览全部模板：
Visual templates from [beautiful-html-templates](https://github.com/zarazhangrui/beautiful-html-templates), organized by mood: bold posters, editorial layouts, grid systems, monochrome, professional, and more. Auto-installs on first use. Browse all templates:
https://github.com/zarazhangrui/beautiful-html-templates/tree/main/templates

---

## 环境要求 / Requirements

- [Claude Code](https://claude.ai/code) CLI 或桌面端 / CLI or desktop app
- [Node.js](https://nodejs.org/) — Playwright 截图导出需要 / for Playwright screenshot export
- [Git](https://git-scm.com/) — 安装时下载模板用 / for template download during install

## 许可 / License

MIT
