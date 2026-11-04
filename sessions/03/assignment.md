# Session 3 assignment

Finish before Session 4. Work on your own branch.

**Run the workflow end to end from the repo and keep the outputs.**

1. [ ] **Run it one step at a time.** Ask Claude Code to run step 1 of `WORKFLOW.md` and stop. Check the done-check yourself. Then step 2, and so on.
   *Done when* every step's done-check has passed.
2. [ ] **Write the audit trail.** For any step that changes data (filters, joins, fixes, totals), record what changed and why. See [`docs/audit-trails.md`](../../docs/audit-trails.md).
   It holds real counts and totals, so it lives in `outputs/history/` next to the output and stays on your computer.
   *Done when* someone with your files could see what happened to the data between input and output.
3. [ ] **Check the output before you keep it.** Run it through [`checklists/pre-send.md`](../../checklists/pre-send.md).
4. [ ] **Keep the outputs.** The finished result goes in `outputs/history/` as a new file. It holds real results, so in this public repo it stays on your computer: `git status` doesn't list it. Commit and push any changes to your step files.
   *Done when* the output file is in `outputs/history/` and `git status` doesn't list it.
5. [ ] **Fix whatever surprised you.** If a step needed help you didn't write down, add it to that step's file now. Session 4 hands your repo to someone else.
