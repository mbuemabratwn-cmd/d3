# 小红书帖子图片生成项目

这个文件夹用来做小红书的帖子图片。

## 可用技能

- `/d3` - 高保真 HTML 设计和原型制作，包括幻灯片、交互原型、落地页、UI 模拟、社交媒体帖子图等
  - 技能文件：`.claude/skills/d3.md`
  - 参考资料：`.claude/skills/d3-references/`
  - 模板文件：`.claude/skills/d3-templates/`

## 工作流程

1. 使用 `/d3` 技能生成 HTML 页面
2. 每页输出 `page-x.html` 和对应尺寸的 PNG
3. 修改文字时编辑 HTML
4. 发布时使用 PNG

## 模板来源

项目目录下已有 beautiful-html-templates 仓库：
`beautiful-html-templates/templates/`

包含 30+ 种视觉模板，按气质分类选择。
