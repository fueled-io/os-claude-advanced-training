# [Workflow name]

<!--
  CLAUDE.md template for a workflow repo.
  Copy this over CLAUDE.md, then replace every [bracketed] part.
  Delete these comment blocks when you're done.
  Keep it short: Claude reads this file at the start of every session.
-->

## What this workflow does

[One or two sentences: what goes in, what comes out, and why it matters.]

- **Who runs it:** [name / team]
- **How often:** [weekly / monthly / on request]
- **Who uses the result:** [name / team, and what they use it for]

## Who you are talking to

[Who works in this repo, and how much technical background they have. For example: "Finance team members, not engineers. Use plain words and explain any technical term the first time."]

## Inputs

<!-- Every input lives in raw/ and is never committed. -->

| File | Where it comes from | How to get it |
|---|---|---|
| `raw/[file name]` | [system or person] | [the exact export or download steps] |

## How it's done today

<!-- Session 2: describe how you do this workflow now, in your own words. Messy is fine.
     In Session 3 this section is replaced by the numbered steps below. -->

[What you do, in what order, and what you hand over at the end.]

## Steps

<!-- Leave this section as it is until Session 3. WORKFLOW.md and steps/ don't exist yet. -->

The numbered steps are in `WORKFLOW.md`, one file per step in `steps/`. Run them one at a time. After each step, check its done-check and stop for review before going on.

## Outputs

| File | What it is | Where it goes |
|---|---|---|
| `outputs/history/[YYYY-MM-DD]-[name].[ext]` | [the finished result] | [who receives it and how] |

## How to check it still works

<!-- Leave this section as it is until Session 4, when you make the golden example. -->

Run the golden example in `golden/`. Its README says what the correct output is.

## Where things live

| Folder | What goes there | Committed to GitHub? |
|---|---|---|
| `raw/` | Inputs exactly as they arrived: exports, PDFs, spreadsheets | Never |
| `derived/` | Files the workflow steps create from the raw inputs and can recreate any time | Never: they hold real data |
| `outputs/history/` | Finished results, one file per run, kept forever | Never in this public repo. Kept on this computer, never overwritten |
| `golden/` | The golden example: a made-up input and its correct output | Yes. Made-up data only |
| `templates/` | Starting points for CLAUDE.md, steps, and the golden example | Yes |
| `docs/` | Short reference docs for the series | Yes |

## Rules you must always follow

<!-- Keep rules 1 to 5 word for word. This repo is public. -->

1. **Never commit anything under `raw/`, `derived/`, or `outputs/history/`.** Before every commit, run `git status` and make sure no file from those folders is staged.
2. **Check every commit for sensitive content.** This repo is public. Read the staged diff, the commit message, and any pull request text for anything on the "Never commit" list in `CONTRIBUTING.md`: client or customer names and details, real business numbers, personal information, passwords, API keys, tokens, internal links, screenshots. If you find any, stop, show me the lines, and suggest a made-up replacement.
3. **Never overwrite anything under `outputs/history/`.** Each run writes a new file with the date in its name. If a step would write over an existing file there, stop and ask.
4. **Always show a diff before applying a change,** and wait for a yes.
5. **Never push to `fueled-io/os-claude-advanced-training` directly.** Push my branch to my fork, and open a pull request.
6. [Any rule specific to this workflow. For example: "Revenue figures are in USD and rounded to whole dollars." Delete this line if there are none.]
