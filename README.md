# Claude Skills

User-level skills for Claude Code, synced via GitHub.

## SEO / LLM Skills Pack

**Source:** Navneet Kaushal (LinkedIn) — [The SEO/LLM Skills Pack for Claude](https://www.notion.so/cliffp/The-SEO-LLM-Skills-Pack-for-Claude-314de8642be880209feaebf4d2c387b9)

| Skill | Description |
|-------|-------------|
| `seo-site-auditor` | Comprehensive SEO audit with prioritized action table |
| `seo-aeo-content-optimizer` | Restructures content for AI-generated answers |
| `seo-schema-markup-generator` | Generates valid JSON-LD structured data |
| `seo-eeat-content-scorer` | Scores content against Google E-E-A-T guidelines |
| `seo-keyword-intent-classifier` | Classifies keywords by intent, journey stage, AI risk |
| `seo-competitor-gap-finder` | Finds semantic gaps vs. competitor content |
| `seo-gbp-post-generator` | Creates Google Business Profile posts |
| `seo-internal-linking-strategist` | Maps Hub & Spoke internal linking strategy |
| `seo-content-brief-writer` | Generates writer-ready content briefs |
| `seo-ai-search-visibility-checker` | Scores AEO readiness / machine readability |

## External Skill Repos

External repos are cloned as subdirectories and symlinked to root level for discovery.
Run `./sync-external.sh` after cloning or updating any external repo.

| Directory | Source | Update |
|-----------|--------|--------|
| `composio/` | https://github.com/ComposioHQ/awesome-claude-skills | `git -C composio pull` |

To add another: `git clone <url> <name>` then `./sync-external.sh`

## Notes

- Skills must live at root level as `<skill-name>/SKILL.md` for Claude Code to discover them
- Symlinked: `~/.claude/skills` → `~/.claude/_skills`
- External repo directories are git-ignored; symlinks are committed
