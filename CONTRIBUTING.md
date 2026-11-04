# What you may commit

**This repo is public.** Anyone on the internet can read it. So can your fork, your branch, your pull request, and every commit message. Once something is pushed, deleting it later doesn't unpublish it: copies, forks, and caches keep it.

Read this before your first commit. Claude Code follows the same rules (they're in [`CLAUDE.md`](CLAUDE.md)), but you're the one who says yes.

## Never commit

- **Anything about a client or customer.** Names, logos, domains, contacts, contract terms, pricing, usage, results, or anything that would let someone work out who the client is.
- **Business numbers.** Revenue, bookings, pipeline, margins, forecasts, headcount, salaries, budgets: real figures of any kind, rounded or not.
- **People's personal information.** Emails, phone numbers, addresses, or anything from an HR, payroll, or customer record.
- **Passwords, API keys, tokens, or `.env` files.** Not even "just for a minute".
- **Internal links and screenshots.** Links to dashboards, Drive folders, Jira, Slack, or admin tools, and screenshots of any internal system.
- **Raw exports.** CSVs, spreadsheets, PDFs, and JSON exports go in `raw/`, which never leaves your computer.
- **Your workflow's real results.** `outputs/history/` and `derived/` stay on your computer in this repo (see [`docs/file-types.md`](docs/file-types.md)).

## What you can commit

- Your **CLAUDE.md**, **WORKFLOW.md**, and **step files**: the instructions for the work, written so they make sense without naming a client or quoting a real number.
- Your **golden example** in `golden/`, built from **made-up data**: invented names, invented amounts. See [`docs/golden-examples.md`](docs/golden-examples.md).

**Private repos too.** Personal information, passwords, keys, and tokens don't belong in any repo, public or private. They hide inside files you do commit (a CLAUDE.md, a step file, a commit message), so `.gitignore` can't catch them: read every diff.

**When you need a real-looking example,** make one up: "Client A", "Acme Co", "$12,345". Say where the real thing lives in words ("the monthly bookings export from the billing system"), never with a link or the data itself.

## Before every commit

1. Run `git status` and read the list. Nothing from `raw/`, `derived/`, or `outputs/history/`.
2. Read the diff. Look for anything on the "Never commit" list.
3. Not sure? Don't commit it. Ask Sean Larkin on Slack.

## If something slipped through

- **Not pushed yet:** ask Claude Code to undo the commit and remove the file, then check `git status` again.
- **Already pushed:** tell Sean right away. If it's a password or key, change it first: assume it's been seen. Deleting the file in a new commit doesn't remove it from the history.

## How changes get in

Nobody pushes to this repo directly. Only Sean Larkin can change it.

- **Participants:** you work on your own copy (a **fork**) and send your work back as a **pull request**: a request for the repo's owner (Sean, for this repo) to review your changes. Sean reviews it there. Session 2 walks you through it. Your pull request is how Sean sees and comments on your work; it isn't merged into the course materials.
- **Fixes to the course materials** (a typo, a broken step): open a pull request too. Sean reviews and merges it.

`main` only changes through a reviewed pull request.
