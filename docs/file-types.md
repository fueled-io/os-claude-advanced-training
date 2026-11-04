# Raw, derived, and historical files

**Sources:** This is Opensend practice for the series, defined in [`AGENDA.md`](../AGENDA.md) (Session 3). No vendor documents it. How the ignore rules work comes from [git-scm.com: gitignore](https://git-scm.com/docs/gitignore) (checked 2026-11-03).

Every file a workflow touches is one of three kinds. Label each one, and the rules about what to commit follow from the label.

## The three kinds

| Kind | What it is | Lives in | Committed? | On a re-run |
|---|---|---|---|---|
| **Raw** | An input exactly as it arrived: an export, PDF, or spreadsheet | `raw/` | **Never** | Replaced with the new input |
| **Derived** | Made by a step from raw inputs, and can be remade any time | `derived/` | **Not in this repo** | Regenerated from scratch |
| **Historical** | A finished result someone received | `outputs/history/` | **Not in this repo** (yes, in a private work repo) | **Never touched.** A new run adds a new file |

**Why "not in this repo":** this repo is public (see [`CONTRIBUTING.md`](../CONTRIBUTING.md)). Derived files and finished results hold real data, so here they stay on your computer. In a private work repo, you'd commit finished results so the history is kept and shared; the never-overwrite rule is the same either way.

**Quick test:** if you deleted it, could the workflow make it again from the inputs?

- **No, it came from outside:** raw.
- **Yes:** derived.
- **Yes, but the copy people already received must never change:** historical.

## Keeping real data out of GitHub

Raw inputs often contain customer data. They stay off GitHub. (They don't stay away from Claude: when Claude Code reads a file, its contents go to Anthropic, so the AI acceptable use policy decides what you may put in `raw/`.) `.gitignore` is the list of files Git ignores, "intentionally untracked files that Git should ignore". This repo's `.gitignore`:

- ignores everything in `raw/` (except an empty placeholder file, `.gitkeep`, so the folder exists)
- ignores common export formats (`.csv`, `.tsv`, `.xlsx`, `.xls`, `.pdf`, `*.export.json`, `exports/`) anywhere in the repo
- ignores everything in `derived/` and `outputs/history/`, because this repo is public
- makes an exception for `golden/`, because the golden example is made-up data and is committed on purpose

**Two gotchas, from Git's docs:**

1. `.gitignore` doesn't affect files Git is already tracking: "Files already tracked by Git are not affected." If a raw file was committed before you ignored it, ignoring it now doesn't remove it. Ask Claude to stop tracking it, and tell Sean: it's already on GitHub, in the history.
2. Check before every commit: run `git status` and read the list. Nothing from `raw/`, `derived/`, or `outputs/history/` should be there.

## Keeping re-runs from breaking history

A re-run, or an improved version of a step, must not change results people already received.

1. **New file every run.** Put the date (or the period covered) in the output's name: `outputs/history/2026-10-revenue-summary.xlsx`. Next month's run makes `2026-11-…`.
2. **Never write over a file in `outputs/history/`.** If a step would, stop. This repo's CLAUDE.md tells Claude the same.
3. **Re-running an old period?** Write a new file with a version marker (`2026-10-revenue-summary-v2.xlsx`) and note in the audit trail why it was re-run. Keep the original.
4. **Changed a step?** Note the change in the step's file and in the audit trail, so a later reader knows which outputs came from the old logic and which from the new.
5. **Derived files are disposable.** If a derived file looks wrong, delete it and re-run the step. Never hand-edit it.

## Going deeper

- [`docs/audit-trails.md`](audit-trails.md): recording what each step changed
- [gitignore reference](https://git-scm.com/docs/gitignore)
