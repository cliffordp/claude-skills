---
name: seo-competitor-swot
description: Use when the user wants to analyse the top-ranking competitor pages for a keyword and produce a SWOT-style content brief — covering entity mapping, topic coverage, per-page strengths/weaknesses, missing FAQs, missing content assets, and a writer-ready outline. Triggers when they provide competitor URLs or ask to reverse-engineer SERP results.
---

# SEO Competitor SWOT — Topic Coverage & Content Brief

Reverse-engineer what Google is actually rewarding for a keyword by analysing the top-ranking pages in depth. Output is both a strategic SWOT and a writer-ready content brief built from real data — not guesswork or tool algorithms.

**Human-first lens:** Throughout all analysis, evaluate pages as a real reader would — not just as a crawler. Ask: *Is this actually useful? Is it trustworthy? Would someone share it? Would it convert?* SEO signals matter, but the goal is a content piece that genuinely wins.

---

## Inputs Required

Ask for these upfront if not already provided:

1. **Target keyword** — the exact phrase being targeted
2. **Up to 5 competitor URLs** — the top-ranking pages from Google for that keyword
3. **Your existing page URL** *(optional)* — for gap analysis in Section 8
4. **Your product/service context** *(optional)* — 1–2 sentences on what you offer, to make the FAQs and differentiation angles relevant

---

## Step 1: Fetch All Competitor Pages

Fetch each URL using WebFetch. Per URL, extract:
- All headings (H1, H2, H3)
- Full body text
- Approximate word count
- All named entities (brands, people, places, concepts, tools, statistics)
- Any interactive tools, calculators, downloads, or rich assets present
- Overall tone and format (listicle, guide, comparison, etc.)

**If a page is blocked or returns an error:**
- Name the specific URL that failed (e.g. "Site 3 blocked my access")
- Ask the user to either paste the full page text OR share a full-page screenshot
- Handle one blocked URL at a time — never batch these requests
- Continue once content is received

Minimum 3 pages required to proceed. Note if fewer were available.

---

## Section 1: Entity Map

List every named entity found across all pages. For each, note:
- **Common entities** — appear on 3+ pages (likely mandatory trust/relevance signals)
- **Distinct entities** — appear on only 1–2 pages (potential differentiation opportunities or niche angles)

Group by type: People, Brands/Organisations, Tools/Products, Places, Concepts/Frameworks, Statistics/Studies.

**Human lens:** Flag any entities that feel authoritative or trust-building from a reader's perspective — citations, well-known experts, reputable studies. Note if trust-building entities are *missing* across all pages (a gap worth filling).

---

## Section 2: Topic Map

Classify all topics and subheadings across the pages into two tiers:

**Pillar topics** — core subject matter covered by 4–5 pages. These are mandatory.

**Related / PAA topics** — covered by 1–3 pages, or clearly adjacent. These include People Also Ask angles, supporting concepts, and related use cases.

Present as a two-column table: Topic | Coverage (how many of the 5 pages cover it).

Flag any pillar topic that all pages handle *poorly* from a human perspective — that's a quality gap worth exploiting, not just a coverage gap.

---

## Section 3: Per-Page Strengths & Weaknesses

For each competitor page, one concise paragraph covering:

- **Biggest strength** — what this page does genuinely well for a human reader (clarity, depth, trust signals, format, originality, usefulness, conversion focus)
- **Biggest weakness** — where it falls short for a real reader (thin sections, confusing structure, no proof, outdated info, poor UX, no clear action to take)

Be candid and specific. Avoid generic observations. Ground every point in what was actually on the page.

---

## Section 4: Mandatory Topics (Must Cover)

Topics covered by 4–5 pages that any competitive piece must include.

For each: note the *typical treatment* across competitors (how deep, what angle) and flag if the standard treatment is weak — meaning you can cover it *better*, not just match it.

---

## Section 5: Differentiation Opportunities

Topics covered by only 1–2 pages (or zero). These are wedge opportunities — angles competitors haven't established consensus on.

For each: assess whether it's a genuine reader need or just noise. Only flag it if a real person searching this keyword would find it valuable.

---

## Section 6: 5 Missing FAQs (The Differentiation Wedge)

Identify 5 important questions that *none* of the competitor pages answer well — or at all.

These should be questions a real person would ask at this stage of their journey. Not keyword stuffing. Not obvious questions every page already covers.

For each FAQ:
- **Question** — phrased as a user would actually ask it
- **Why it matters** — what job is the user trying to do when they ask this?
- **Wow factor potential** — rate Low / Medium / High: if you answered this exceptionally well, would it genuinely surprise or delight a reader?
- **Suggested answer direction** — a brief pointer on how to answer it with authority

If the user provided their product/service context, tailor at least 2 FAQs to angles where their offering is naturally positioned to win.

---

## Section 7: Missing Content Assets

Identify tools, interactive elements, or supplementary assets that would add genuine value for a reader — and that none of the competitor pages currently offer.

Examples: calculator, decision tool, comparison table, downloadable checklist, one-page PDF guide, infographic, video explainer, quiz, template, glossary, case study.

For each suggestion:
- **Asset type** — what it is
- **User benefit** — why a real reader would want it
- **SEO / conversion upside** — why it would help rank and convert
- **Effort estimate** — Low / Medium / High to produce

Only suggest assets that genuinely serve the user. No padding.

---

## Section 8: Your Page vs. The Brief (Gap Analysis)

*Only run this if the user provided their own page URL.*

Fetch the user's page and compare it against everything above.

Produce two lists:

**What you're missing** — gaps prioritised by likely SEO and conversion impact (High / Medium / Low)

**What you have that competitors don't** — keep these as active differentiators; don't dilute or remove them

---

## Section 9: Content Brief & Executive Summary

### Executive Summary *(lead with this)*

3–5 sentences. Answer:
- What does a searcher actually want when they type this keyword?
- What does the current SERP reward, and why?
- What's the single most important opportunity this analysis reveals?
- What would make a piece on this keyword genuinely worth reading — and worth ranking?

This is the strategic framing a writer or content director needs before touching the brief.

### Proposed Outline

A writer-ready structure for a new or revised piece:

- **H1** — recommended title (includes keyword, written for humans not bots, under 60 chars)
- **Opening paragraph guidance** — tone, hook approach, what to establish immediately
- **H2 sections** — ordered for a reader's logical journey, not keyword density
  - Include which pillar topics to cover and at what depth
  - Flag where to insert the missing FAQs from Section 6
  - Flag where to place recommended content assets from Section 7
- **Closing / CTA guidance** — what action should a reader take? What converts for this intent?

### Quick Stats

| Metric | Value |
|---|---|
| Pages analysed | |
| Average word count | |
| Recommended word count | avg + 20%, rounded to nearest 100 |
| Dominant content format | |
| Mandatory topic count | |
| Differentiation opportunities identified | |
| Missing FAQs identified | 5 |
| Missing assets identified | |

---

## Notes

- Do not analyse content you couldn't actually retrieve. State clearly if a page was unavailable.
- Keep the human perspective central throughout. SEO is the mechanism; genuinely useful content is the goal.
- If the user hasn't provided their product context, note at the end of Section 6 that tailored FAQ angles are available if they share it.
- Minimum 3 pages needed for meaningful consensus. If fewer are available, note the limitation and proceed with caveats.
