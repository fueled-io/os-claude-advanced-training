# Session 1: Don't ship slop.

**60 minutes:** 30 minutes of teaching, then 30 minutes hands-on.

**Premise:** Producing output with Claude is nearly free, so the scarce skill is judgment about what's worth producing and verifying that it's right.

## Preface (5 minutes)

Jessica Wallen introduces our AI acceptable use policy. It decides what you may give Claude to read, including the files you'll put in `raw/` from Session 2 on.

## Teaching (25 minutes)

- **What is AI slop?** Output nobody asked for, claims the sender can't defend, length that hides the answer, work that transfers effort to the reader.
- **The sender's contract:** you own every claim in anything you send. Claude drafts, you sign.
- **A pre-send checklist:** does it answer a question someone asked, could you defend every number, is it shorter than what it replaces. The checklist is a file in this repo: [`checklists/pre-send.md`](../../checklists/pre-send.md).
- **Live demo:** the same request done as slop and done well, side by side.
- **The mindset for the rest of the series:** work lives in files and folders, not in chat history.

## Hands-on (30 minutes)

Create a GitHub account, install Git and the GitHub CLI (`gh`), run `gh auth login`, and get write access to this repo. Everyone leaves authenticated so Session 2 starts on the work, not on setup.

Participants can't open this repo until the end of the hands-on, so they get the checklist and install guide before the session. Facilitator prep: [`checklists/facilitator.md`](../../checklists/facilitator.md).

Step by step: [`exercise.md`](exercise.md).

## Assignment

Install Claude Code and Claude Desktop. Confirm `gh auth status` succeeds.

Details: [`assignment.md`](assignment.md).
