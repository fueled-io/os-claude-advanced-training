# Session 1: Don't ship slop.

**60 minutes:** 30 minutes of teaching, then 30 minutes hands-on.

**Premise:** Producing output with Claude is nearly free, so the scarce skill is judgment about what's worth producing and verifying that it's right.

## Preface (5 minutes)

Jessica Wallen introduces our AI acceptable use policy (link coming). It decides what you may give Claude to read, including the files you'll put in `raw/` from Session 2 on.

## Teaching (25 minutes)

- **What is AI slop?** Output nobody asked for, claims the sender can't defend, length that hides the answer, work that transfers effort to the reader.
- **Slop grenades:** Shopify CEO Tobi Lütke's name for AI output people send without reading: "We call those 'slop grenades' that people toss at each other" ([The Knowledge Project podcast, via Fortune, 2026-09-17](https://fortune.com/2026/09/17/shopify-tobias-lutke-ai-slop-grenades/)). Skipping review saves the sender 30 minutes, but every reader then spends 30 minutes reviewing it: 90 minutes for 3 readers, 300 for a team of 10. Claude should save the reader time, not add to it.
- **The sender's contract:** you own every claim in anything you send. Claude drafts, you sign.
- **A pre-send checklist:** does it answer a question someone asked, could you defend every number, is it shorter than what it replaces. The checklist is a file in this repo: [`checklists/pre-send.md`](../../checklists/pre-send.md).
- **Live demo:** the same request done as slop and done well, side by side.
- **The mindset for the rest of the series:** work lives in files and folders, not in chat history.

## Hands-on (30 minutes)

Create a GitHub account, install Git and the GitHub CLI (`gh`), run `gh auth login`, and check you can reach this repo. Everyone leaves authenticated so Session 2 starts on the work, not on setup.

This repo is public, so participants can open the checklist and install guide before the session. Facilitator prep: [`checklists/facilitator.md`](../../checklists/facilitator.md).

Step by step: [`exercise.md`](exercise.md).

## Assignment

Install Claude Code and Claude Desktop. Confirm `gh auth status` succeeds. Read [`CONTRIBUTING.md`](../../CONTRIBUTING.md): this repo is public.

Details: [`assignment.md`](assignment.md).
