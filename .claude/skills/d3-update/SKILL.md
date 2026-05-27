---
name: d3-update
description: >
  Update the d3 skill to the latest version from GitHub. Checks if already up-to-date first.
allowed-tools:
  - Bash
  - Read
---

# /d3-update — 更新 d3 技能

## 执行步骤

1. 检查当前版本和远程版本是否一致：
```bash
LOCAL=$(cat ~/.claude/skills/d3/SKILL.md | head -5 | grep -o 'version:.*' || echo "unknown")
REMOTE=$(curl -fsSL https://raw.githubusercontent.com/mbuemabratwn-cmd/d3/main/.claude/skills/d3/SKILL.md | head -5 | grep -o 'version:.*' || echo "unknown")
```

2. 如果一致，告诉用户："d3 已是最新版本，无需更新。"

3. 如果不一致或无法判断，执行更新：
```bash
# 更新 SKILL.md
curl -fsSL https://raw.githubusercontent.com/mbuemabratwn-cmd/d3/main/.claude/skills/d3/SKILL.md -o ~/.claude/skills/d3/SKILL.md

# 更新 references
curl -fsSL https://raw.githubusercontent.com/mbuemabratwn-cmd/d3/main/install.sh | bash
```

4. 告诉用户："d3 已更新到最新版本。重启 Claude Code 后生效。"
