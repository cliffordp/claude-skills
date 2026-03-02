#!/bin/bash
# Sync external skill repos into root-level symlinks for Claude Code discovery.
#
# Any subdirectory that contains skill folders (subdirs with SKILL.md) is treated
# as an external repo and gets root-level symlinks prefixed with its name.
#
# Usage:
#   ./sync-external.sh         — create/update all symlinks
#   git -C composio pull       — update a repo, then re-run this
#
# To add a new external repo:
#   git clone <url> <name>     — e.g. git clone <url> composio
#   ./sync-external.sh         — symlinks created automatically

set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

total=0

for repo_dir in */; do
  repo_dir="${repo_dir%/}"

  # Skip if it's a skill itself (has SKILL.md directly inside)
  [ -f "$repo_dir/SKILL.md" ] && continue

  # Skip if it contains no skill subdirs
  has_skills=false
  for sub in "$repo_dir"/*/; do
    [ -f "${sub}SKILL.md" ] && has_skills=true && break
  done
  $has_skills || continue

  count=0
  for skill_dir in "$repo_dir"/*/; do
    [ -f "${skill_dir}SKILL.md" ] || continue
    skill=$(basename "$skill_dir")
    ln -sf "${repo_dir}/${skill}" "${repo_dir}-${skill}"
    count=$((count + 1))
  done

  echo "✓ $repo_dir: $count skills linked"
  total=$((total + count))
done

echo "— $total total external skills linked"
