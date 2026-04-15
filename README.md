# Claude Skills

A curated collection of AI agent skills using the [`SKILL.md` format](https://docs.anthropic.com/en/docs/claude-code/skills).

## Quick Start

Clone this repo and any external skill repos as siblings inside your Hub's `skills/` directory (or `~/.claude/skills/` if using Claude alone):

```bash
cd ~/.claude/skills/
git clone https://github.com/cliffordp/claude-skills
```

That's it — Claude discovers them automatically on your next session.

> **Using multiple IDEs?** If you use [Agnostic AI Agent Sync](https://github.com/cliffordp/agnostic-ai-agent-sync), clone into your Hub's `skills/` folder instead — it'll automatically be available in every IDE that supports the `SKILL.md` format (Cursor, Windsurf, Qoder, Codex, Antigravity, etc.).

## Installing External Skill Repos

Clone these as **siblings** alongside `claude-skills/` — not inside it:

```bash
# From the same parent directory (your Hub's skills/ or ~/.claude/skills/)
git clone https://github.com/AgriciDaniel/claude-ads
git clone https://github.com/AgriciDaniel/claude-seo
git clone https://github.com/cloudflare/skills cloudflare
git clone https://github.com/ComposioHQ/awesome-claude-skills composio
git clone https://github.com/ognjengt/founder-skills
git clone https://github.com/coreyhaines31/marketingskills
git clone https://github.com/WordPress/agent-skills wordpress
```

Each repo is an independent `git clone` — update or remove any of them without affecting the others.

### Updating

```bash
# From your skills directory
git -C claude-skills pull
git -C cloudflare pull
git -C composio pull
# etc.
```

### Adding a new skill repo

```bash
git clone <url> <name>
```

Since each repo is a standalone clone, there's nothing else to configure.

> **Not using [Agnostic AI Agent Sync](https://github.com/cliffordp/agnostic-ai-agent-sync)?** If you clone external repos directly inside `~/.claude/skills/`, they'll work fine — but they'll be mixed in with this repo's files on disk. This can make `git status` noisy and requires `.gitignore` maintenance. The Hub approach keeps every repo cleanly separated as independent sibling directories.

---

## Included Skills

### SEO / LLM Skills Pack

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

### Competitor SWOT & Content Brief

**Source:** Charles Floate — [LinkedIn post](https://www.linkedin.com/feed/update/urn:li:activity:7433889125281488896/) — reverse-engineer SERP competitors to build consensus-based content briefs in 10 minutes

| Skill | Description |
|-------|-------------|
| `seo-competitor-swot` | Fetches up to 5 competitor URLs, builds entity map, topic map, per-page S&W, 5 missing FAQs, missing asset recommendations, and writer-ready brief with executive summary |

### Navneet 100-Day AI SEO Plan — Extracted Skills

**Source:** Navneet Kaushal — [100 Day AI SEO Domination Plan (LinkedIn)](https://www.linkedin.com/feed/update/urn:li:activity:7429740222533488640/) + PDF checklist

| Skill | Description |
|-------|-------------|
| `seo-gsc-analyst` | Analyses pasted GSC CSV data for striking distance keywords (pos 11–20), decaying pages (>20% MoM drop), and cannibalization — outputs a prioritised hit list |
| `seo-hub-spoke-builder` | Builds a full topical authority cluster: hub page definition + 10 spoke articles across distinct intents, with H2s and internal linking plan |
| `seo-digital-pr-pitch` | Drafts 3 journalist pitch variations for link bait assets; also handles HARO/Qwoted fast-response mode |
| `seo-blog-to-video-script` | Converts a blog post URL or text into a 60s YouTube Short/TikTok script (Visual\|Audio table) + TL;DR summary box for GEO |

## External Skill Repos

Recommended repos to clone as siblings. Each is independent — install, update, or remove without affecting anything else.

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
| [AgriciDaniel/claude-blog](https://github.com/AgriciDaniel/claude-blog) | Significant overlap with SEO skills; low stars (104) |
| [BrianRWagner/ai-marketing-claude-code-skills](https://github.com/BrianRWagner/ai-marketing-claude-code-skills) | Mixed: good gems (voice-extractor, de-ai-ify) buried under lifestyle fluff (plan-my-day, daily-briefing-builder) |
| [fvadicamo/dev-agent-skills](https://github.com/fvadicamo/dev-agent-skills) | Git/PR skills redundant with Claude Code built-ins; low stars (44) |
| [jthack/ffuf_claude_skill](https://github.com/jthack/ffuf_claude_skill) | Security/pentesting tool (web fuzzing); not relevant |
| [Shpigford/skills](https://github.com/Shpigford/skills) | Rails-specific (new-rails-project, conductor-setup); low stars (68) |

## Multi-IDE Sync

To share these skills across Claude, Cursor, Windsurf, Qoder, Codex, and Antigravity simultaneously — with a single folder and immutable symlinks — see **[Agnostic AI Agent Sync](https://github.com/cliffordp/agnostic-ai-agent-sync)**. It also keeps your skills directory clean: each skill repo is an independent sibling clone, so no repo pollutes another's git state.

## Notes

- Skills use the [`SKILL.md` format](https://docs.anthropic.com/en/docs/claude-code/skills) and must live at root as `<skill-name>/SKILL.md` for AI agents to discover them
- Only skill descriptions (not full content) load per session — installing all skills from a library is fine
- `sync-external.sh` is included for legacy use — it flattens nested skill repos that have skills inside a `skills/` subdirectory. Not needed if you clone repos as siblings in a Hub.
