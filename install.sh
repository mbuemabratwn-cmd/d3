#!/usr/bin/env bash
set -euo pipefail

# d3 skill installer
# Usage: curl -fsSL https://raw.githubusercontent.com/mbuemabratwn-cmd/d3/main/install.sh | bash

REPO="${CC_DESIGN_REPO:-mbuemabratwn-cmd/d3}"
BRANCH="${CC_DESIGN_BRANCH:-main}"
BASE_URL="https://raw.githubusercontent.com/${REPO}/${BRANCH}"

SKILL_DIR=".claude/skills/d3"
TEMPLATES_DIR="beautiful-html-templates"

echo "Installing d3 skill..."
echo "  Repository: ${REPO}"
echo "  Branch: ${BRANCH}"
echo ""

# Create directories
mkdir -p "${SKILL_DIR}/references"
mkdir -p "${SKILL_DIR}/templates"
mkdir -p "${TEMPLATES_DIR}/templates"

# Download SKILL.md
echo "Downloading SKILL.md..."
curl -fsSL "${BASE_URL}/.claude/skills/d3/SKILL.md" -o "${SKILL_DIR}/SKILL.md"

# Download reference files
echo "Downloading reference files..."
REFERENCES=(
  "animation-best-practices.md"
  "animation-pitfalls.md"
  "animations.md"
  "asset-acquisition.md"
  "audio-design-rules.md"
  "brand-emotion-theory.md"
  "color-theory.md"
  "content-guidelines.md"
  "critique-guide.md"
  "data-visualization.md"
  "design-adr.md"
  "design-checklist.md"
  "design-common-sayings.md"
  "design-context.md"
  "design-excellence.md"
  "design-handoff.md"
  "design-iron-law.md"
  "design-patterns.md"
  "design-philosophy.md"
  "design-principles.md"
  "design-red-flags.md"
  "design-styles.md"
  "design-system-creation.md"
  "design-thinking-framework.md"
  "editable-pptx.md"
  "exit-conditions.md"
  "explainer-interaction-patterns.md"
  "explainer-node-graph-visuals.md"
  "failure-mode-handling.md"
  "form-design.md"
  "frontend-design.md"
  "getdesign-loader.md"
  "information-design-theory.md"
  "interaction-design-theory.md"
  "interactive-prototype.md"
  "junior-designer-mode.md"
  "knowledge-artifact-spec.md"
  "layout-systems.md"
  "platform-tools.md"
  "principle-review.md"
  "react-setup.md"
  "responsive-design.md"
  "scene-templates.md"
  "sfx-library.md"
  "slide-decks.md"
  "starter-components.md"
  "system-design-theory.md"
  "tweaks-system.md"
  "typography-design-system.md"
  "typography-spacing-examples.md"
  "typography-spacing-quick-ref.md"
  "usability-testing.md"
  "user-research-methods.md"
  "ux-writing.md"
  "verification-protocol.md"
  "verification.md"
  "video-export.md"
  "visual-design-theory.md"
  "workflow.md"
)

for ref in "${REFERENCES[@]}"; do
  curl -fsSL "${BASE_URL}/.claude/skills/d3/references/${ref}" -o "${SKILL_DIR}/references/${ref}" 2>/dev/null || true
done

# Download anti-pattern references
mkdir -p "${SKILL_DIR}/references/anti-patterns"
for ref in color.md interaction.md layout.md typography.md; do
  curl -fsSL "${BASE_URL}/.claude/skills/d3/references/anti-patterns/${ref}" -o "${SKILL_DIR}/references/anti-patterns/${ref}" 2>/dev/null || true
done

# Download case studies
mkdir -p "${SKILL_DIR}/references/case-studies"
curl -fsSL "${BASE_URL}/.claude/skills/d3/references/case-studies/README.md" -o "${SKILL_DIR}/references/case-studies/README.md" 2>/dev/null || true

# Download template files
echo "Downloading component templates..."
TEMPLATES=(
  "android_frame.jsx"
  "animations.jsx"
  "audio-controls.jsx"
  "audio-engine.jsx"
  "browser_window.jsx"
  "compare_explainer.jsx"
  "decision_tree.jsx"
  "deck_stage.js"
  "design_canvas.jsx"
  "flow_explainer.jsx"
  "ios_frame.jsx"
  "macos_window.jsx"
  "typography-system.css"
)

for tpl in "${TEMPLATES[@]}"; do
  curl -fsSL "${BASE_URL}/.claude/skills/d3/templates/${tpl}" -o "${SKILL_DIR}/templates/${tpl}" 2>/dev/null || true
done

# Download beautiful-html-templates
echo "Downloading beautiful-html-templates..."
if command -v git &>/dev/null; then
  if [ -d "${TEMPLATES_DIR}/templates" ] && [ -n "$(ls -A "${TEMPLATES_DIR}/templates" 2>/dev/null)" ]; then
    echo "  Templates directory already exists, skipping."
  else
    git clone --depth 1 "https://github.com/zarazhangrui/beautiful-html-templates.git" "${TEMPLATES_DIR}" 2>/dev/null || {
      echo "  Warning: Could not clone beautiful-html-templates."
      echo "  You can manually clone it later:"
      echo "    git clone https://github.com/zarazhangrui/beautiful-html-templates.git ${TEMPLATES_DIR}"
    }
  fi
else
  echo "  Warning: git not found. Install git to auto-download templates."
  echo "  Then run: git clone https://github.com/zarazhangrui/beautiful-html-templates.git ${TEMPLATES_DIR}"
fi

echo ""
echo "✅ d3 skill installed successfully!"
echo ""
echo "Files installed:"
echo "  ${SKILL_DIR}/SKILL.md"
echo "  ${SKILL_DIR}/references/  (reference docs)"
echo "  ${SKILL_DIR}/templates/   (component templates)"
echo "  ${TEMPLATES_DIR}/templates/  (HTML design templates)"
echo ""
echo "Usage: Open Claude Code and type /d3 to start designing."
echo ""
