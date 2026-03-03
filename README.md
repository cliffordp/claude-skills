# Claude Skills

User-level skills for Claude Code, synced via GitHub.

## Setup (new machine)

```bash
# 1. Clone this repo
git clone https://github.com/cliffordp/claude-skills ~/.claude/_skills

# 2. Symlink so Claude Code discovers skills
ln -s _skills ~/.claude/skills

# 3. Clone external skill repos
git clone https://github.com/AgriciDaniel/claude-ads ~/.claude/_skills/claude-ads
git clone https://github.com/AgriciDaniel/claude-seo ~/.claude/_skills/claude-seo
git clone https://github.com/cloudflare/skills ~/.claude/_skills/cloudflare
git clone https://github.com/ComposioHQ/awesome-claude-skills ~/.claude/_skills/composio
git clone https://github.com/ognjengt/founder-skills ~/.claude/_skills/founder-skills
git clone https://github.com/coreyhaines31/marketingskills ~/.claude/_skills/marketingskills
git clone https://github.com/WordPress/agent-skills ~/.claude/_skills/wordpress

# 4. Create root-level symlinks for external skills
bash ~/.claude/_skills/sync-external.sh
```

## Updating external skill repos

```bash
# Update all external repos and re-sync symlinks
git -C ~/.claude/_skills/claude-ads pull
git -C ~/.claude/_skills/claude-seo pull
git -C ~/.claude/_skills/cloudflare pull
git -C ~/.claude/_skills/composio pull
git -C ~/.claude/_skills/founder-skills pull
git -C ~/.claude/_skills/marketingskills pull
git -C ~/.claude/_skills/wordpress pull
bash ~/.claude/_skills/sync-external.sh

# Or update a specific repo
git -C ~/.claude/_skills/<name> pull && bash ~/.claude/_skills/sync-external.sh
```

## Adding a new external skill repo

```bash
git clone <url> ~/.claude/_skills/<name>
bash ~/.claude/_skills/sync-external.sh
```

Then add a row to the External Skill Repos table below and update `.gitignore`.

---

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

## Competitor SWOT & Content Brief

**Source:** LinkedIn post — reverse-engineer SERP competitors to build consensus-based content briefs in 10 minutes

| Skill | Description |
|-------|-------------|
| `seo-competitor-swot` | Fetches up to 5 competitor URLs, builds entity map, topic map, per-page S&W, 5 missing FAQs, missing asset recommendations, and writer-ready brief with executive summary |

## Navneet 100-Day AI SEO Plan — Extracted Skills

**Source:** Navneet Kaushal — [100 Day AI SEO Domination Plan (LinkedIn)](https://www.linkedin.com/feed/update/urn:li:activity:7429740222533488640/) + PDF checklist

| Skill | Description |
|-------|-------------|
| `seo-gsc-analyst` | Analyses pasted GSC CSV data for striking distance keywords (pos 11–20), decaying pages (>20% MoM drop), and cannibalization — outputs a prioritised hit list |
| `seo-hub-spoke-builder` | Builds a full topical authority cluster: hub page definition + 10 spoke articles across distinct intents, with H2s and internal linking plan |
| `seo-digital-pr-pitch` | Drafts 3 journalist pitch variations for link bait assets; also handles HARO/Qwoted fast-response mode |
| `seo-blog-to-video-script` | Converts a blog post URL or text into a 60s YouTube Short/TikTok script (Visual\|Audio table) + TL;DR summary box for GEO |

## External Skill Repos

External repos are cloned as subdirectories and symlinked to root level for Claude Code discovery.
The `sync-external.sh` script auto-detects any subdirectory containing skills and creates prefixed symlinks.
External repo directories are git-ignored; the symlinks themselves are committed.

| Directory | Source | Skills |
|-----------|--------|--------|
| `claude-ads/` | https://github.com/AgriciDaniel/claude-ads | 12 |
| `claude-seo/` | https://github.com/AgriciDaniel/claude-seo | 12 |
| `cloudflare/` | https://github.com/cloudflare/skills | 9 |
| `composio/` | https://github.com/ComposioHQ/awesome-claude-skills | 28 |
| `founder-skills/` | https://github.com/ognjengt/founder-skills | 15 |
| `marketingskills/` | https://github.com/coreyhaines31/marketingskills | 32 |
| `wordpress/` | https://github.com/WordPress/agent-skills | 13 |

## Evaluated, Not Installed

Repos considered but skipped — reasons documented to avoid re-evaluating.

| Repo | Reason Skipped |
|------|----------------|
| ~~[AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo)~~ | Installed — complements existing SEO pack |
| [AgriciDaniel/claude-blog](https://github.com/AgriciDaniel/claude-blog) | Significant overlap with SEO skills; low stars (104) |
| [BrianRWagner/ai-marketing-claude-code-skills](https://github.com/BrianRWagner/ai-marketing-claude-code-skills) | Mixed: good gems (voice-extractor, de-ai-ify) buried under lifestyle fluff (plan-my-day, daily-briefing-builder) |
| [fvadicamo/dev-agent-skills](https://github.com/fvadicamo/dev-agent-skills) | Git/PR skills redundant with Claude Code built-ins; low stars (44) |
| [jthack/ffuf_claude_skill](https://github.com/jthack/ffuf_claude_skill) | Security/pentesting tool (web fuzzing); not relevant |
| [Shpigford/skills](https://github.com/Shpigford/skills) | Rails-specific (new-rails-project, conductor-setup); low stars (68) |

## Notes

- Skills must live at root as `<skill-name>/SKILL.md` for Claude Code to discover them
- Only skill descriptions (not full content) load per session — installing all skills from a library is fine
- Symlinked: `~/.claude/skills` → `~/.claude/_skills`
