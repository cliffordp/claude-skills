#!/bin/bash
# Sync external skill repos into root-level symlinks for Claude Code discovery.
#
# Handles two repo structures automatically:
#   Flat:   repo/skill-name/SKILL.md        (e.g. composio)
#   Nested: repo/skills/skill-name/SKILL.md (e.g. wordpress, anthropics)
#
# Usage:
#   ./sync-external.sh         — create/update all symlinks
#   git -C <name> pull         — update a repo, then re-run this
#
# To add a new external repo:
#   git clone <url> <name>     — e.g. git clone <url> wordpress
#   ./sync-external.sh         — symlinks created automatically

set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

total=0

# Find the skills root within a repo dir (handles flat and nested structures)
# Prefers nested repo/skills/ when present (some repos have both)
find_skills_root() {
  local repo_dir="$1"

  # Nested: repo/skills/skill-name/SKILL.md (check first — takes priority)
  for sub in "$repo_dir/skills"/*/; do
    [ -f "${sub}SKILL.md" ] && echo "$repo_dir/skills" && return
  done

  # Flat: repo/skill-name/SKILL.md
  for sub in "$repo_dir"/*/; do
    [ -f "${sub}SKILL.md" ] && echo "$repo_dir" && return
  done
}

for repo_dir in */; do
  repo_dir="${repo_dir%/}"

  # Skip if it's a skill itself (has SKILL.md directly inside)
  [ -f "$repo_dir/SKILL.md" ] && continue

  skills_root=$(find_skills_root "$repo_dir")
  [ -z "$skills_root" ] && continue

  count=0
  for skill_dir in "$skills_root"/*/; do
    [ -f "${skill_dir}SKILL.md" ] || continue
    skill=$(basename "$skill_dir")
    ln -sf "${skill_dir}" "${repo_dir}-${skill}"
    count=$((count + 1))
  done

  echo "✓ $repo_dir: $count skills linked"
  total=$((total + count))
done

echo "— $total total external skills linked"
