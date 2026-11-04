# Golden examples and the handoff test

**Source:** This is Opensend practice for the series, from [`AGENDA.md`](../AGENDA.md) (Session 4). No vendor documents it; this doc defines it for the series.

## What a golden example is

**One known input with a known correct output.** You run the workflow on the golden input. If you get the golden output, the workflow still works. If you don't, something changed: the steps, the data format, or what Claude did.

It's also the best spec you can give anyone: "make *this* from *that*" beats any description.

## How to make one

1. Pick a past run you've checked by hand and trust. A small one is fine. It just has to cover the normal cases.
2. Keep the input. If it's raw data that can't go on GitHub, write down exactly where a teammate can get the same file (system, report name, filters, date range).
3. Keep the output exactly as it should be.
4. Write down what has to match exactly (the totals, the row count, the columns) and what's allowed to differ (a timestamp in the filename).
5. Fill in [`templates/golden-example-README.template.md`](../templates/golden-example-README.template.md) and commit it with the output.

## Running it

1. Put the golden input in `raw/`.
2. Ask Claude to run `WORKFLOW.md` one step at a time.
3. Compare the result with the golden output, on the things that must match.

Run it after you change any step, and before you hand the workflow to someone.

**When it doesn't match,** find the first step where the result differs and fix that step. Only change the golden output if you've confirmed the old one was wrong, and note why in the golden example's history table.

## The handoff test

The real check is whether **someone else** can get the same answer.

1. A teammate clones your repo (or switches to your branch) with no help from you.
2. They follow your README and CLAUDE.md, get the golden input, and run the workflow.
3. They compare with the golden output.
4. They write down every question they had to ask, and every place they had to guess.

**A different answer means the repo is missing something.** Each question they had to ask is a gap: add the answer to the repo (README, CLAUDE.md, `WORKFLOW.md`, or a step file) and run the test again.

You pass when they get the golden output without asking you anything.

## Going deeper

- [`sessions/04/exercise.md`](../sessions/04/exercise.md): the handoff test as a step-by-step exercise
