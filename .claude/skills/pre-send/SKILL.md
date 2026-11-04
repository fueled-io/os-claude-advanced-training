---
name: pre-send
description: Check a draft against the pre-send checklist before the person sends it — an email, doc, deck, spreadsheet summary, or Slack message Claude helped make. Use when someone says "check this before I send it", "is this slop", "pre-send", or pastes a draft and asks if it's ready.
argument-hint: "[file path, or paste the draft]"
---

# Pre-send check

The person is about to send something Claude helped make. Check it against the four questions in `checklists/pre-send.md`. **You are the reviewer, not the author:** don't rewrite the draft unless they ask. Your job is to find what would cost the reader time.

The draft is `$ARGUMENTS` (a file path) or what they pasted. If you have neither, ask for it, and ask who it's going to.

## The four questions

Answer each one with **Yes** or **Fix**, and for every Fix, quote the exact words and say what to change.

1. **Does it answer a question someone asked?** Ask who it's for and what they asked, if you don't know. If the draft answers a different question, or no one's question, say so. Point to where the actual answer is; if it's not in the first two sentences, that's a Fix.
2. **Could they defend every number?** List each number, date, and factual claim. For each, ask: where did it come from? If the draft doesn't say and the person can't tell you, it's a Fix. Never invent or guess a source.
3. **Is it shorter than what it replaces?** Name the sentences or sections the reader could skip without losing anything: restated context, hedging, summaries of what was just said, lists padded to look thorough. Give a word count before and what it would be after the cuts.
4. **Does it use the reader's words?** Flag terms the reader wouldn't use or wouldn't know, especially ones that sound confident but were made up along the way: "load-bearing", "slice", "surface area", "north star", invented labels for ideas. Suggest the plain word the reader would use.

## How to report

Keep it short. The report is itself something someone has to read.

```
Pre-send check: [who it's for]

1. Answers the question: Yes / Fix: ...
2. Numbers defensible: Yes / Fix: "..." has no source
3. Shorter than what it replaces: Yes / Fix: cut "...", "..." (180 → 95 words)
4. Reader's words: Yes / Fix: "load-bearing" → "important"

Ready to send: Yes / Not yet, fix 2 and 4 first
```

If they ask you to apply the fixes, show the diff before changing a file, as `CLAUDE.md` requires.

The person owns every claim in what they send. If it's not ready, say so plainly.
