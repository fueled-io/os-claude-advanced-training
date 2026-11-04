# Golden example: [workflow name]

<!--
  Golden-example README template.
  Put your copy at golden/README.md (or next to the golden files) and replace
  every [bracketed] part. Delete these comment blocks when you're done.
-->

A golden example is one known input with a known correct output. Run the workflow on the input. If you get the output, the workflow still works.

## The input

| File | Where to get it | Notes |
|---|---|---|
| `[file]` | [In this folder / or: raw data that can't be committed, so here is exactly where to get it] | [Date range, filters, or the version of the export] |

<!-- If the input is raw data that can't go on GitHub, say exactly where a teammate can get the same file. If they can't get exactly the same input, the test means nothing. -->

## The correct output

| File | What to compare |
|---|---|
| `[file]` | [The values that must match exactly, for example the totals row and the row count, and anything allowed to differ, such as a timestamp] |

## How to run it

1. Put the input file in `raw/`.
2. Ask Claude to run `WORKFLOW.md` one step at a time.
3. Compare the result with the correct output above.

## When it doesn't match

Find the first step where the result differs and fix that step. Don't edit the golden output to match a new result unless you've confirmed the old one was wrong. If you do, write down why below.

## History

| Date | Who | What changed |
|---|---|---|
| [YYYY-MM-DD] | [name] | Created |
