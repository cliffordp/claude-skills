---
name: seo-gsc-analyst
description: Use when the user pastes or uploads Google Search Console performance data (CSV or raw table) and wants to identify striking distance keywords, decaying pages, or keyword cannibalization issues. Triggers on GSC data analysis requests.
---

# SEO GSC Analyst

Analyse Google Search Console performance data to find the highest-leverage opportunities hiding in plain sight. Stop staring at the dashboard — it hides the truth.

## Input Required

Ask for one of:
- A **GSC CSV export** (pasted as text or uploaded) — last 3 months minimum
- A **raw table** of pages/keywords with columns: Query, Page, Clicks, Impressions, CTR, Position

If the user hasn't exported it yet:
> Go to Google Search Console → Performance → Export → Download CSV. Use the last 3 months of data.

---

## The Three Analyses

Run all three unless the user specifies otherwise.

---

### 1. Striking Distance — Fastest Revenue You'll Make

**Target:** Keywords ranking positions 11–20.

These pages are knocking on Page 1. They need a nudge, not a rebuild.

For each, produce a table:

| Keyword | URL | Current Position | Clicks | Impressions | CTR | Recommended Fix |
|---|---|---|---|---|---|---|

**Recommended Fix options:**
- Add keyword to an H2 header
- Add 100 words of fresh content addressing user intent more directly
- Improve title tag to include keyword + user benefit
- Add internal links from stronger pages using exact-match anchor text

Prioritise by: highest impressions first (most traffic at stake).

---

### 2. Decaying Assets — Stop the Bleed

**Target:** Pages that have lost >20% in clicks month-over-month.

Identify the pattern where possible:
- **Algorithm update hit?** — Broad traffic drop across many pages at same time
- **Freshness decay?** — Content hasn't been updated in 12+ months
- **Competitor ate it?** — Single page declining while impressions hold steady
- **Cannibalization?** — Another internal page stealing clicks

Output table:

| URL | Month 1 Clicks | Month 2 Clicks | Month 3 Clicks | % Drop | Likely Cause | Recommended Action |
|---|---|---|---|---|---|---|

**Recommended Action options:**
- Refresh content with updated stats, examples, or new sections
- Consolidate with a stronger page (301 redirect weaker into stronger)
- Add internal links to reinject authority
- Investigate for cannibalization (see Section 3)

---

### 3. Keyword Cannibalization — Pick Your Winner

**Target:** Multiple URLs competing for the same keyword (or near-identical queries).

This confuses Google. You split your own authority.

For each cannibalised keyword group:

| Keyword | URL 1 | URL 1 CTR | URL 1 Clicks | URL 2 | URL 2 CTR | URL 2 Clicks | Recommended Canonical |
|---|---|---|---|---|---|---|---|

**Canonical recommendation logic:**
- Higher CTR = reader prefers it → keep as canonical
- If CTR is similar, higher clicks wins (more authority signal)
- The losing page: add a canonical tag pointing to winner, OR 301 redirect if the pages are near-duplicate in content

---

## Output Format

Three separate labelled tables, one per analysis.

After the tables, add a **Priority Hit List** — a ranked list of the top 5 actions by estimated impact:

> 1. [Specific action] on [URL] — Expected: [traffic bump / bleed stopped / authority consolidated]

End with: *"Do not give me generic advice. Give me a hit list."* — and deliver exactly that.

---

## Notes

- If data has fewer than 3 months, note the limitation but proceed.
- If position data is missing or averaged oddly, flag it and work with what's available.
- Do not hallucinate traffic numbers. Only work from the data provided.
