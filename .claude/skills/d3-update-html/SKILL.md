---
name: d3-update-html
description: >
  Update beautiful-html-templates to the latest version from GitHub. Checks if already up-to-date first.
allowed-tools:
  - Bash
  - Read
---

# /d3-update-html — 更新 HTML 模板库

## 执行步骤

1. 检查 beautiful-html-templates 目录是否存在：
```bash
if [ ! -d "beautiful-html-templates/.git" ]; then
  echo "beautiful-html-templates 未安装，正在克隆..."
  git clone --depth 1 https://github.com/zarazhangrui/beautiful-html-templates.git beautiful-html-templates
  echo "✅ 模板库已安装。"
  exit 0
fi
```

2. 进入目录检查是否有远程更新：
```bash
cd beautiful-html-templates
git fetch origin
LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse origin/main)
```

3. 如果 `LOCAL == REMOTE`，告诉用户："beautiful-html-templates 已是最新版本，无需更新。"

4. 如果不一致，执行更新：
```bash
git pull origin main
echo "✅ 模板库已更新到最新版本。"
```

5. 退出目录，告诉用户更新结果。
