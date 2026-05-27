---
name: xhs-gen
version: 1.0.0
description: |
  ⚠️ DEPRECATED — This skill has been merged into d3. Use `/d3` instead.
  This file is kept for reference only.
  小红书 HTML 教程图生成器。把教程选题拆成一组小红书图文页，每页用 HTML 写成可截图的视觉页面，适合后续导出高清 PNG，用于小红书教程、AI 工具教程、Remotion 教程、AIGC 工作流教程。
allowed-tools:
  - Bash
  - Read
  - Write
  - Edit
  - AskUserQuestion
  - Agent

---

> **⚠️ DEPRECATED:** This skill has been merged into `/d3`. Use `/d3` for all design tasks including social media post generation. This file is retained for reference only.

# Skill：小红书 HTML 教程图生成

## 目标

把一个教程选题拆成一组小红书图文页。

每页用 HTML 写成可截图的视觉页面，适合后续导出高清 PNG，用于小红书教程、AI 工具教程、Remotion 教程、AIGC 工作流教程。

---

## 核心原则：独立思考

**用户说的不一定永远是对的。**

遇到用户的观点时，必须：

1. **用第一性原理思考** — 回到问题本质，这个方案是不是最优解
2. **客观评价** — 不因为是用户说的就默认同意，也不因为想表现而故意反对
3. **给出真实判断** — 如果觉得不对，直接说哪里不对、为什么不对、怎么改更好
4. **承认不确定** — 如果真的判断不了，说清楚两边的利弊，让用户决定

不要做"对对对"型助手。要有自己的判断，但判断要基于逻辑和事实，不是为了抬杠。

---

## 工作流程（必须按顺序执行）

### 第一步：聊脚本

**先和用户对话，不要直接写代码。**

讨论内容包括：

1. **这组图要讲什么主题？**
2. **一共几页？** 每页讲什么动作/知识点
3. **每页的具体内容：**
   - 标题是什么
   - 正文写什么
   - 有没有代码/截图/图片
4. **每页用哪个模板？**
   - 先浏览 `beautiful-html-templates/templates/` 目录
   - 根据页面类型（封面/讲解/步骤/工具）筛选 2-3 个合适气质的模板
   - 用 AskUserQuestion 给用户选择，附带模板预览说明
   - 或者你推荐一个最优选项，说明理由，让用户确认
5. **整体视觉风格确认**
   - 配色方案
   - 字体选择
   - 是否统一风格

**脚本格式示例：**

```text
第 1 页（封面）：
- 标题：用 CSS 画一张结算凭证
- 副标题：纯代码，无切图
- 模板：editorial-tri-tone
- 底色：#1a1a1a

第 2 页：
- 标题：定好骨架
- 正文：先用 flex 布局搭出三段式结构
- 模板：bold-poster
- 底色：#f8f6f2

...
```

### 第二步：自审脚本（输出前必做）

**在把脚本给用户之前，必须先自己过一遍审查。**

审查清单：

1. **是否是最优方案？** 这个主题怎么做最好，我的决策是否到位
2. **有没有重复内容？** 两页讲了同一个知识点就是浪费
3. **每页能否删除？** 如果删掉某页不影响整体，那这页就不该存在
4. **观众视角检查：** 每页观众看到的，是否就是我想表达的意思
5. **100 分信心检查：** 整体内容有没有 100% 信心达到 100 分

**如果有任何一点不对：**
- 指出哪里不对
- 想出怎么改
- 改完重复以上检查
- 直到 100% 信心才输出给用户

### 第三步：判断是否需要配图

**每页都要单独判断是否需要配图。配图固定为横向 4:3 比例。**

判断流程：

**1. 这页需要配图吗？**

用第一性原理思考：
- 这页的核心信息是什么？
- 文字能说清楚吗？
- 配图是"锦上添花"还是"必须有"？
- 如果删掉配图，页面会不会空或信息缺失？

**2. 如果需要配图，配什么？**

同样用第一性原理：
- 这页要传达什么？
- 什么图片能最直接地传达这个信息？
- 是截图、示意图、对比图、还是装饰图？
- 图片和文字是互补还是重复？

**3. 自审配图决策**

循环检查：
- 这张配图是不是必须的？删掉会怎样？
- 配图内容和文字有没有重复？
- 配图的视觉风格和整体一致吗？
- 观众看到这张图能立刻理解吗？
- 有没有更简单的表达方式？

**4. 配图类型参考**

```text
教程型：
- 操作步骤截图
- 代码运行结果
- Before/After 对比
- 工具界面截图

展示型：
- 成品展示
- 细节放大
- 多角度展示
- 氛围图

通用：
- 装饰性几何图形
- 渐变色块
- 图标组合
```

**5. 如果不需要配图**

不用硬加。纯文字 + 排版本身就能做得很漂亮。小红书很多爆款帖子就是纯文字。

### 第四步：用户确认脚本

等用户确认脚本内容后再动手写 HTML。

### 第五步：生成 HTML

根据确认的脚本，逐页生成 HTML 文件。

### 第六步：检查和调整

让用户检查效果，根据反馈微调。

---

## 模板来源

### ⚠️ 强制规则：必须使用模板

**禁止从零写 HTML。必须基于 beautiful-html-templates 里的模板修改。**

流程：
1. `ls /Users/milagro/Desktop/tiezi/beautiful-html-templates/templates/` 看有哪些模板
2. 用 `Read` 读取候选模板的 HTML 文件
3. 复制模板内容到新文件
4. 在模板基础上修改标题、正文、颜色等
5. 保留模板的排版结构和视觉系统

**违规行为（禁止）：**
- 自己写全新的 HTML
- 只"参考"模板但不用它的代码
- 觉得模板不合适就跳过

**模板目录：**

```text
/Users/milagro/Desktop/tiezi/beautiful-html-templates/templates/
```

包含 30+ 种视觉模板，按气质分类：

```text
信息讲解页：选结构清晰、文字区稳定的模板（如 blue-professional, monochrome）
工具介绍页：选偏产品展示 / 数据卡片 / 网格类模板（如 neo-grid-bold, cobalt-grid）
步骤教程页：选大标题、强编号、强对比模板（如 bold-poster, block-frame）
封面页：选视觉冲击更强、留白更大的模板（如 editorial-tri-tone, pink-script）
```

每个模板目录下有 HTML 文件，可直接复制修改。

### 模板选择指南

根据每一页内容选择合适气质的模板：

```text
信息讲解页：选结构清晰、文字区稳定的模板
工具介绍页：选偏产品展示 / 数据卡片 / 网格类模板
步骤教程页：选大标题、强编号、强对比模板
封面页：选视觉冲击更强、留白更大的模板
```

### 模板选择流程

**1. 浏览可用模板**

```bash
ls /Users/milagro/Desktop/tiezi/beautiful-html-templates/templates/
```

常用模板参考：

| 模板名 | 气质 | 适合 |
|--------|------|------|
| bold-poster | 大字、强对比 | 步骤页、封面 |
| editorial-tri-tone | 三色排版、留白大 | 封面、高级感 |
| neo-grid-bold | 网格卡片 | 工具介绍、对比 |
| monochrome | 黑白简约 | 信息讲解 |
| blue-professional | 蓝色专业 | 商务、教程 |
| pink-script | 粉色手写 | 轻松、生活类 |

**2. 给用户选择**

用 AskUserQuestion 提供 2-3 个选项：

```text
这页用哪个模板？

A) bold-poster — 大字强对比，适合步骤页
B) neo-grid-bold — 网格卡片，适合展示多个要点
C) monochrome — 黑白简约，适合信息讲解
```

**3. 或者直接推荐**

如果某页有明确最优解，直接推荐并说明理由：

```text
这页是封面，推荐用 editorial-tri-tone：
- 留白大，视觉冲击强
- 适合做"第一眼吸引"
- 和后面步骤页的强对比风格能拉开节奏
```

**4. 一个帖子只用一个模板（强制规则）**

**每组帖子必须从同一个模板出发，不要每页换不同模板。**

流程：
1. 根据帖子整体气质选一个最合适的模板
2. 所有页面都基于这个模板修改
3. 不同页面可以调整布局（封面/内容/结尾），但视觉系统（配色、字体、装饰元素）必须来自同一个模板

违规行为（禁止）：
- 封面用 bold-poster，内容页用 monochrome
- 觉得某页"更适合"另一个模板就换
- 为了"丰富视觉"而混用多个模板

理由：一个小红书帖子是一个整体，不是独立页面的集合。混用模板会破坏视觉一致性，让帖子看起来像拼凑的。

选择方法：
1. 浏览所有模板，选出 2-3 个候选
2. 用 AskUserQuestion 给用户选择，附带模板预览说明
3. 用户确认后，整组帖子都用这一个模板

---

## 页面尺寸（固定规则）

**所有 HTML 页面必须是 3:4 竖屏，固定尺寸。**

```text
HTML viewport: 900 × 1200px
PNG 输出:      2700 × 3600px（3x 高清）
```

CSS 写法：

```css
body {
  width: 900px;
  height: 1200px;
  overflow: hidden;
}
```

如果页面里需要放横向画面，做成 4:3 比例的图，放进 3:4 页面的下半部分或中下部。

---

## 页面结构（两层画布）

**3:4 页面不是浏览器页面本身，而是浏览器页面里面的一个固定尺寸画板。**

```text
外层：浏览器展示画布（1920×1080 或 1600×1200）
内层：真正的 3:4 页面（900×1200），用 transform: scale() 缩小
```

HTML 结构：

```html
<body>
  <div class="browser-stage">
    <div class="poster-artboard">
      <!-- 3:4 页面内容 -->
    </div>
  </div>
</body>
```

CSS 关键：

```css
html, body {
  margin: 0;
  width: 100%;
  height: 100%;
  overflow: hidden;
}

.browser-stage {
  position: relative;
  width: 100vw;
  height: 100vh;
  background: #f3f2df; /* 浅灰米色背景 */
  overflow: hidden;
}

.poster-artboard {
  width: 900px;
  height: 1200px;
  position: absolute;
  left: 520px;
  top: 120px;
  transform: scale(0.38);
  transform-origin: top left;
  box-shadow: 0 30px 80px rgba(0, 0, 0, 0.08);
}
```

**不要让 3:4 页面铺满屏幕。** 它是大背景里的一个固定尺寸卡片。

页面内通常包含：

```text
顶部信息栏
logo
大标题
英文小标题 / 灰色辅助文字
正文
补充小字
主图
角标 / 页码
```

不是每一页都必须全部出现，可以根据画面需要删减。

---

## ⚠️ 禁止放代码块

**页面里不要出现代码块（code block）。**

小红书是图片流，观众不会在图片里读代码。代码块会让页面看起来像技术文档，不像小红书帖子。

要表达技术点，用文字描述 + 视觉示意，不要贴代码。

---

## Logo 规则

**所有页面统一使用项目目录下的 logo：**

```text
/Users/milagro/Desktop/tiezi/Duiwei LOGO.svg
```

在 HTML 中引用：

```html
<img src="./Duiwei LOGO.svg" alt="对味" width="32" height="32">
```

## 禁止出现的元素

**以下元素禁止出现在页面中：**

- ❌ "DUIWEI × REMOTION"、"DUIWEI × XXX" 等版权文字
- ❌ 页面底部的 copyright 声明
- ❌ 任何品牌联合署名文字

**理由：** 小红书帖子不需要版权水印，这些文字会干扰视觉，降低专业感。

**唯一允许的品牌标识：** 左上角的 Duiwei LOGO.svg

**Logo 位置：** 默认放左上角（top: 32px, left: 32px）

---

## 标题风格

标题要大、重、直接。

推荐：

```css
font-size: 70px 至 96px;
font-weight: 900 至 950;
line-height: 0.88 至 0.96;
letter-spacing: -0.06em 至 -0.09em;
```

标题前的步骤数字可以直接用纯数字：

```html
<h1><span>1</span>先选品牌气质</h1>
```

数字可以很大，也可以和标题同字号。

不要强制使用圆圈数字。

---

## 正文风格

正文保持短句。

推荐：

```css
font-size: 24px 至 34px;
font-weight: 600 至 750;
line-height: 1.15 至 1.3;
```

正文通常 2 到 4 行即可。

示例：

```text
进入 beautiful-html-templates
不要先改代码，选择合适气质的模板
```

---

## 补充小字

补充小字用浅灰或低对比色。

推荐：

```css
font-size: 18px 至 24px;
font-weight: 500 至 600;
color: #c9c5bf;
```

示例：

```text
品牌宣传片最重要的，是视觉系统统一。
```

---

## 图片搭配

每页可以搭配一张主图。

主图可以是：

```text
GitHub 仓库截图
HTML 模板预览图
Remotion 相关图
代码终端图
分镜示意图
时间轴 / 节奏图
工具流程图
生成的视觉示意图
```

图片底色要和页面底色协调。

如果图片偏米白，页面也用暖白、米白。

如果图片高饱和，页面可以少量使用荧光黄、黑色边框、网格来呼应。

主图可以：

```text
放在下半部分
放在中间
做成大卡片
做成无边框铺底
做成黑框 + 投影
做成滚动式模板墙
```

根据模板选择，不固定一种。

## 图片 4:3 适配（强制规则）

**图片区域固定为 4:3 比例，必须使用以下 CSS 写法：**

```css
.image-zone {
  width: 100%;
  background: var(--paper);
  border: 3px solid var(--ink);
  box-shadow: 10px 10px 0 var(--ink);
  position: relative;
  overflow: hidden;
  line-height: 0;
}

.image-zone img {
  display: block;
  width: 100%;
  height: auto;
}
```

**禁止使用的写法：**

- ❌ `aspect-ratio: 4/3` — 在缩放容器中不可靠
- ❌ `object-fit: cover` — 会裁切图片
- ❌ `object-fit: contain` — 会出现间隙
- ❌ `padding-bottom: 75%` — 在有 border 时计算不准

**原理：** 让图片自己决定高度，保持原始 4:3 比例。容器不需要固定高度。

**HTML 结构：**

```html
<div class="image-zone">
  <img src="./image.png" alt="描述">
</div>
```

**验证方法：** 图片原始比例必须是 4:3。用 `sips -g pixelWidth -g pixelHeight` 检查。

## 结尾关注页（强制规则）

**每个帖子的最后一页必须是"关注我"结尾页，不管主题是什么、用什么模板。**

结尾页的作用：引导关注，同时展示你会持续输出这个方向的内容。

**页面结构：**

```text
标题：关注我，继续看这个方向
正文：3-4 个你会持续输出的内容方向（从本篇内容延伸）
结尾小字：一句话总结你的价值主张
```

**排版规则：**

- 居中排列
- 标题 72px，不要太大导致换行
- 正文用箭头列表，箭头用 `var(--ink)` 颜色（不用 accent 黄色，对比度太低）
- 不放图片
- 页码格式：`0X / 0X`

**内容写法：**

从本篇帖子的内容延伸出 3-4 个相关方向。不要写通用的"分享干货"，要具体到这个领域。

示例（Vibe Motion 帖子）：

```text
标题：关注我，继续看这个方向
正文：
→ AIGC 新工作流
→ Vibe Coding 实验
→ AI 视频生成方法
→ 产品设计与品牌表达
结尾：把新的创作方法，拆成能直接复用的教程。
```

示例（CSS 教程帖子）：

```text
标题：关注我，继续看这个方向
正文：
→ 纯 CSS 视觉特效
→ 品牌官网设计复刻
→ 响应式布局技巧
→ 设计系统搭建方法
结尾：用代码还原设计，每一篇都能直接抄。
```

---

## GitHub 仓库展示

涉及真实仓库时，只展示真实信息。

可以展示：

```text
仓库路径
仓库名称
GitHub 页面结构
文件列表
顶部导航
真实截图
```

不要编造不存在的 README 内容。

不要把仓库页面伪造成其他产品官网。

可用仓库：

```text
https://github.com/zarazhangrui/beautiful-html-templates
https://github.com/remotion-dev/remotion
```

---

## 常见页面内容

第 1 页：

```text
用 HTML 模版
一键生成品牌宣传片

beautiful-html-templates × Remotion
把静态网页，变成可批量生成的视频
```

第 2 页：

```text
准备模版和工具

1. 来自 Zara Zhang 的 HTML 模版库
2. 能用代码写视频的 Remotion

HTML 负责视觉
Remotion 负责时间、动画和导出
```

第 3 页：

```text
1 先选品牌气质

进入 beautiful-html-templates
不要先改代码，选择合适气质的模板

品牌宣传片最重要的，是视觉系统统一。
```

第 4 页：

```text
2 用 Agent 出视频 demo

使用 Duiwei-remotion 的 skill，
让你的 agent 利用模板结合品牌要求，
使用 Remotion 一键生成宣传片
```

第 5 页：

```text
3 把网页拆成多个镜头

不要直接录屏。
把一个 HTML 页面拆成视频分镜。
```

第 6 页：

```text
4 用 skill 调整视频动效节奏

Remotion 的核心思路很简单：
每一帧都是一个 React 画面。
```

---

## 推荐工作流

1. 确定这一页要讲的动作。
2. 根据页面类型从 `beautiful-html-templates/templates/` 选择合适气质的模板。
3. 复制模板到项目目录，重命名为 `page-x.html`。
4. 替换标题、正文、logo、角标。
5. 准备一张主图。
6. 把主图放进页面（替换 `image-placeholder` 区域）。
7. 根据主图颜色调整页面底色和点缀色。
8. 导出高清 PNG。
9. 打开 PNG 检查文字、图片、比例、清晰度。
10. 有问题再回到 HTML 微调。

---

## 检查重点

导出前检查：

```text
标题是否够大
正文是否清楚
图片是否加载
logo 是否加载
图片是否变形
文字和图片是否重叠
页面是否是 3:4
整体色调是否统一
有没有多余解释文字
有没有不该出现的小字
```

---

## 高清截图

推荐用 Playwright：

```bash
npx playwright screenshot \
  --viewport-size=900,1200 \
  --device-scale-factor=3 \
  index.html \
  output.png
```

输出尺寸：

```text
2700 × 3600
```

如果图片加载失败，把图片转成 base64 内嵌到 HTML。

如果浏览器截图还是错乱，可以用 Python/Pillow 直接合成 PNG。

---

## 输出文件

**每个项目必须有一个独立的中文名字文件夹，所有帖子放在该文件夹内。**

文件夹命名规则：
- 用中文，简洁概括项目主题
- 不用拼音，不用英文
- 不加编号前缀

示例：

```text
/Users/milagro/Desktop/tiezi/
├── 结算凭证设计/
│   ├── page-1.html
│   ├── page-1-2700x3600.png
│   ├── page-2.html
│   └── ...
├── 品牌宣传片制作/
│   ├── page-1.html
│   └── ...
└── Remotion入门教程/
    ├── page-1.html
    └── ...
```

每页输出：

```text
page-x.html
page-x-2700x3600.png
```

用户要改字时，改 HTML。

用户要发布时，给 PNG。

---

## 核心原则

```text
先选模板气质
再放教程内容
每页只讲一个动作
标题要强
正文要短
图片要稳
整组图视觉统一
```
