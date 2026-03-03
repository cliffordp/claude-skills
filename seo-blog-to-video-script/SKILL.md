---
name: seo-blog-to-video-script
description: Use when the user wants to convert a blog post or article into a short-form video script for YouTube Shorts, TikTok, or Instagram Reels. Triggers when they want to repurpose written content into video, create a video script from existing content, or build a multimodal SEO asset from a blog post.
---

# SEO Blog-to-Video Script Converter

Repurpose existing blog content into a high-energy short-form video script. You already did the research — recycle the asset. Video embeds increase dwell time, feed the multimodal algorithm, and help you appear in AI Overviews.

## Input Required

1. **Blog post** — paste the full text OR provide the URL (will be fetched)
2. **Platform** — YouTube Shorts / TikTok / Instagram Reels (default: YouTube Shorts)
3. **Tone** *(optional)* — authoritative, conversational, punchy (default: authoritative + energetic)

---

## Script Constraints

Follow these exactly:

1. **Hook (first 3 seconds)** — start with a contrarian statement or Pattern Interrupt. Not "In this video I'll show you..." — something that stops the scroll.
2. **Structure:** Hook → The Problem → The Old Way → The New Solution → Call to Action
3. **Visual Cues:** include `[VISUAL]` notes in brackets describing what should appear on screen at each moment
4. **Tone:** authoritative, no filler words, no "um", no hedging
5. **Word count:** under 160 words (paced for normal speaking speed at 60 seconds)

---

## Output Format

Two-column table:

| VISUAL | AUDIO |
|---|---|
| [What's on screen] | [What's being said] |

Each row = one scene beat (typically 3–8 seconds).

---

## Script Structure Breakdown

| Beat | Duration | Purpose |
|---|---|---|
| Hook | 0–3s | Contrarian statement or surprising claim |
| The Problem | 3–15s | Agitate the pain the viewer already feels |
| The Old Way | 15–25s | Name the broken approach most people use |
| The New Solution | 25–50s | Present the key insight from the blog post |
| CTA | 50–60s | One clear action: follow, link in bio, comment |

---

## TL;DR Summary Box (Bonus Output)

After the script, also output a **TL;DR summary box** — 3 bullet points capturing the core takeaways of the original blog post.

Format:
```
**TL;DR**
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]
```

This goes immediately after the H1 on the blog post. Google SGE and LLMs scrape this directly — it wins citations in AI Overviews.

---

## Notes

- Do not invent claims not present in the source content. Compress and sharpen — don't fabricate.
- If the blog post is thin or lacks a strong insight, flag it: *"This post doesn't have a strong contrarian hook. Consider adding [specific angle] before creating the video."*
- One script per blog post. If the post covers multiple distinct topics, recommend splitting into separate videos and note the natural split points.
