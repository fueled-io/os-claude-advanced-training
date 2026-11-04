# Golden example: [workflow name]

<!--
  Golden-example README template.
  Put your copy at golden/README.md and replace every [bracketed] part.
  This repo is public: the golden input and output are made-up data. Delete these comment blocks when you're done.
-->

A golden example is one known input with a known correct output. Run the workflow on the input. If you get the output, the workflow still works.

## The input

| File | Where to get it | Notes |
|---|---|---|
| `golden/[file]` | In this folder. Made-up data in the same format as [the real export, described in words] | [What cases it covers: a duplicate, a blank, a refund] |

<!-- Never a real export, client name, or real amount. Describe where the real input comes from in words, not with a link. -->

## The correct output

| File | What to compare |
|---|---|
| `golden/[file]` | [The values that must match exactly, for example the totals row and the row count, and anything allowed to differ, such as a timestamp] |

## How to run it

1. Copy the input file from `golden/` into `raw/`.
2. Ask Claude to run `WORKFLOW.md` one step at a time.
3. Compare the result with the correct output above.

## When it doesn't match

Find the first step where the result differs and fix that step. Don't edit the golden output to match a new result unless you've confirmed the old one was wrong. If you do, write down why below.

## History

| Date | Who | What changed |
|---|---|---|
| [YYYY-MM-DD] | [name] | Created |
