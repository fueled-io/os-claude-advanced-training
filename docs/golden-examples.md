# Golden examples and the handoff test

**Source:** This is Opensend practice for the series, from [`AGENDA.md`](../AGENDA.md) (Session 4). No vendor documents it; this doc defines it for the series.

## What a golden example is

**One known input with a known correct output.** You run the workflow on the golden input. If you get the golden output, the workflow still works. If you don't, something changed: the steps, the data format, or what Claude did.

It's also the best spec you can give anyone: "make *this* from *that*" beats any description.

## How to make one

This repo is public, so the golden example is **made-up data**: same columns, same format, same kinds of mess as the real thing, but invented names, IDs, and amounts. Nothing in it may come from a real client or a real report.

1. Make a small input that covers the normal cases: a dozen rows is plenty. Ask Claude Code to invent one in the same format as your real input, or copy a real one and replace every name, ID, email, and amount. Include the awkward cases your workflow handles (a duplicate, a blank, a refund).
2. Run the workflow on it, and check the output by hand. This is the known correct output.
3. Put both in `golden/`. `.gitignore` lets spreadsheets and CSVs there be committed, so read the diff: if anything real slipped in, stop.
4. Write down what has to match exactly (the totals, the row count, the columns) and what's allowed to differ (a timestamp in the filename).
5. Fill in [`templates/golden-example-README.template.md`](../templates/golden-example-README.template.md) as `golden/README.md` and commit it with the two files.

## Running it

1. Copy the golden input from `golden/` into `raw/`.
2. Ask Claude to run `WORKFLOW.md` one step at a time.
3. Compare the result with the golden output, on the things that must match.

Run it after you change any step, and before you hand the workflow to someone.

**When it doesn't match,** find the first step where the result differs and fix that step. Only change the golden output if you've confirmed the old one was wrong, and note why in the golden example's history table.

## The handoff test

The real check is whether **someone else** can get the same answer.

1. A teammate gets your work (`gh pr checkout` with your pull request number) with no help from you.
2. They follow your README and CLAUDE.md, get the golden input, and run the workflow.
3. They compare with the golden output.
4. They write down every question they had to ask, and every place they had to guess.

**A different answer means the repo is missing something.** Each question they had to ask is a gap: add the answer to the repo (README, CLAUDE.md, `WORKFLOW.md`, or a step file) and run the test again.

You pass when they get the golden output without asking you anything.

## Going deeper

- [`sessions/04/exercise.md`](../sessions/04/exercise.md): the handoff test as a step-by-step exercise
