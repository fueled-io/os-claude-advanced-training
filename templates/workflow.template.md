# [Workflow name]: steps

<!--
  Numbered-step workflow template.
  Save your copy as WORKFLOW.md at the top of your repo.
  Each step also gets its own file in steps/ (steps/01-[short-name].md,
  steps/02-[short-name].md, ...) using the "Step file" block at the bottom.
  Replace every [bracketed] part and delete these comment blocks.
-->

## Inputs

<!-- Raw inputs only: files exactly as they arrived. All live in raw/ and are never committed. -->

| # | File | Where it comes from | Label |
|---|---|---|---|
| I1 | `raw/[file]` | [system, report name, or person] | raw |

## Steps

<!-- One action per step. If a step's description has "and" in it, it is probably two steps. -->

| # | Step | Reads | Writes | Definition of done |
|---|---|---|---|---|
| 1 | [What this step does, in one line] | `raw/[file]` | `derived/[file]` | [Something you can check by looking. For example: "one row per account; no blank account IDs"] |
| 2 | [ ] | `derived/[file]` | `derived/[file]` | [ ] |
| 3 | [Write the final output] | `derived/[file]` | `outputs/history/[YYYY-MM-DD]-[name].[ext]` | [New file created; no existing file in outputs/history/ was changed] |

## Outputs

| File | Label | What it is | Who gets it |
|---|---|---|---|
| `outputs/history/[YYYY-MM-DD]-[name].[ext]` | historical | [the finished result] | [person / team] |

<!-- Labels: raw (input as received, never committed) · derived (made by a step, can be remade any time) · historical (finished result, committed, never overwritten). -->

## How to run

Ask Claude to run one step at a time. After each step, check its definition of done before going on. If a check fails, stop and fix that step. Don't keep going.

---

<!-- ===== Step file: copy this block into steps/NN-[short-name].md ===== -->

# Step [N]: [short name]

**Reads:** `[file]`
**Writes:** `[file]`

## What to do

[Plain-language instructions, specific enough that someone else gets the same result. Name exact columns, filters, and formats.]

## Definition of done

- [ ] [Check 1: something you can verify by looking]
- [ ] [Check 2]

## Audit trail

[If this step changes data, record what it changed and why: rows removed, values corrected, totals before and after.]
