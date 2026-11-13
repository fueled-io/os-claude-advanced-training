# Session 1: Don't ship slop.

**60 minutes:** a 5-minute update on our AI acceptable use policy, 20 minutes of teaching, then 35 minutes hands-on.

**Premise:** Producing output with Claude is nearly free, so the scarce skill is judgment about what's worth producing and verifying that it's right.

## Policy update (5 minutes)

A revised, streamlined AI acceptable use policy is in development and will be available in the coming weeks. It decides what you may give Claude to read, including the files you'll put in `raw/` from Session 2 on. Until then, if you're not sure whether something can go into Claude, ask Sean before you use it.

## Teaching (20 minutes)

- **What is AI slop?** Output nobody asked for, claims the sender can't defend, length that hides the answer, work that transfers effort to the reader, and terms nobody uses: words Claude made up and uses with confidence, like "load-bearing" or "slice".
- **Slop grenades:** Shopify CEO Tobi Lütke's name for AI output people send without reading: "We call those 'slop grenades' that people toss at each other" ([The Knowledge Project podcast, via Fortune, 2026-09-17](https://fortune.com/2026/09/17/shopify-tobias-lutke-ai-slop-grenades/)). Skipping review saves the sender 30 minutes, but every reader then spends 30 minutes reviewing it: 90 minutes for 3 readers, 300 for a team of 10. Claude should save the reader time, not add to it.
- **The sender's contract:** you own every claim in anything you send. Claude drafts, you sign.
- **A pre-send checklist:** does it answer a question someone asked, could you defend every number, is it shorter than what it replaces, does it use your reader's words. The checklist is [`checklists/pre-send.md`](../../checklists/pre-send.md), and an example skill that checks a draft against it is in this repo: `/pre-send` ([`.claude/skills/pre-send/SKILL.md`](../../.claude/skills/pre-send/SKILL.md)).
- **Live demo:** the same request done as slop and done well, side by side.
- **The mindset for the rest of the series:** work lives in files and folders, not in chat history.

## Hands-on (35 minutes)

Create a GitHub account, install Git and the GitHub CLI (`gh`), run `gh auth login`, and check you can reach this repo. Everyone leaves authenticated so Session 2 starts on the work, not on setup.

This repo is public, so participants can open the checklist and install guide before the session. Facilitator prep: [`checklists/facilitator.md`](../../checklists/facilitator.md).

Step by step: [`exercise.md`](exercise.md).

## Assignment

For anything not finished in class: install Claude Code and Claude Desktop, confirm `gh auth status` succeeds, download your copy of this public repo (`gh repo fork fueled-io/os-claude-advanced-training --clone`), and read [`CONTRIBUTING.md`](../../CONTRIBUTING.md).

Details: [`assignment.md`](assignment.md).
