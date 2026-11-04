# Pre-send checklist

Run this before you send anything Claude helped you make: an email, a doc, a deck, a spreadsheet, a Slack message.

You own every claim in anything you send. Claude drafts, you sign.

- [ ] **Does it answer a question someone asked?** Name the person and the question. If you can't, don't send it.
- [ ] **Could you defend every number?** For each figure, you know where it came from and could show the source if someone asked.
- [ ] **Is it shorter than what it replaces?** If the reader has to dig through it to find the answer, cut it until they don't.
- [ ] **Does it use your reader's words?** Claude makes up terms and uses them with confidence: "load-bearing", "slice". If your reader wouldn't say it, replace it with the word they would.

If any box stays unchecked, fix that first or don't send it.

**Have Claude check it:** in Claude Code, inside this repo, type `/pre-send` followed by the file, or paste the draft. It's an example skill ([`.claude/skills/pre-send/SKILL.md`](../.claude/skills/pre-send/SKILL.md)): it answers the four questions and quotes what to fix, but doesn't rewrite your draft unless you ask.

*From Session 1: Don't ship slop. See `sessions/01/agenda.md`.*
