# Audit trails

**Source:** This is Opensend practice for the series, from [`AGENDA.md`](../AGENDA.md) (Session 3: "Writing audit trails when manipulating data"). No vendor documents it; this doc defines it for the series.

An **audit trail** is a written record of what a step did to the data, so anyone can see what happened between the raw input and the finished output without re-running anything.

If a number in the output is questioned ("why is October's revenue lower than the export?"), the audit trail is the answer.

## When to write one

Any step that **changes** data:

- removes rows (filters, de-duplication)
- changes values (corrections, currency conversion, rounding)
- combines things (joins, merges, totals)
- makes a judgment call (a record that could go either way)

A step that only copies or reformats doesn't need one.

## What to record

For each step that changes data, every run (the example values are made up):

| Field | Example |
|---|---|
| **Run** | 2026-11-02, October 2026 data, run by Alex Kim |
| **Step** | Step 2: remove test accounts |
| **Rule** | Drop accounts whose name starts with "TEST-" or whose email ends in @opensend.com |
| **Rows in → out** | 4,812 → 4,790 (22 removed) |
| **Totals in → out** | $1,204,330 → $1,203,910 |
| **Exceptions** | 1 account ("Testa Foods") matched "TEST" but is a real customer; kept, by hand |
| **Changed rows** | `derived/02-removed-accounts.csv` lists the 22 removed IDs |

The counts and totals before and after are the most useful lines: anyone can check the arithmetic.

## Where it lives

- Write it alongside the output, as a dated file: `outputs/history/2026-10-audit.md`, next to `2026-10-revenue-summary.xlsx`. It's committed and never overwritten, like the output.
- If the list of changed rows contains customer data, keep that list out of GitHub (in `derived/`, as a `.csv`, which `.gitignore` ignores). The audit file just says how many and where to find them.

## Ask Claude to write it as it goes

Add this to each data-changing step's file:

```markdown
## Audit trail
After this step, append to outputs/history/YYYY-MM-audit.md:
the rule applied, rows in and out, totals in and out, and any exceptions.
```

Then check it the same way you check the step's definition of done: do the numbers add up?

## Going deeper

- [`docs/file-types.md`](file-types.md): why the audit file is historical, and how re-runs leave it alone
