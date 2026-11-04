# Session 3 hands-on: break your workflow into steps

**Goal:** your Session 2 workflow written as numbered steps, each with a done-check, and every file in your repo labeled raw, derived, or historical.

**Before you start:** open a terminal, go into the repo (`cd os-claude-advanced-training`), make sure you're on your branch (`git switch alex-kim`, with your own branch name), and start Claude Code (`claude`).

1. [ ] **Ask for the plan first.** Ask Claude Code:

   > Read my CLAUDE.md. Using templates/workflow.template.md, propose a WORKFLOW.md that breaks this workflow into numbered steps. Don't write any files yet. Show me the plan.

   *Done when* you have a list of steps you agree with. Push back on any step that does two things at once.

2. [ ] **Give every step a done-check.** For each step, the plan states what "done" looks like in a way you can check by looking, for example "derived/accounts.csv has one row per account and no blank IDs."
   *Done when* every step has a done-check you could verify yourself.

3. [ ] **Write the files.** Tell Claude Code to create `WORKFLOW.md` and one file per step in a `steps/` folder (`steps/01-....md`, `steps/02-....md`). Read each diff before you accept it.
   *Done when* `WORKFLOW.md` lists the inputs, the numbered steps, and the outputs, and each step has its own file.

4. [ ] **Label every file.** Ask Claude Code to list every file your workflow reads or writes and label each one:
   - **raw:** an input exactly as it arrived. Lives in `raw/`. Never committed.
   - **derived:** made by a step and can be remade any time. Lives in `derived/`.
   - **historical:** a finished result. Lives in `outputs/history/`. Committed, and never overwritten by a re-run.

   Add the labels to `WORKFLOW.md`.
   *Done when* every file has exactly one label.

5. [ ] **Keep raw files out of GitHub.** Any raw file that isn't in `raw/` either moves into `raw/` or gets a line in `.gitignore`. Then run `git status`.
   *Done when* `git status` lists no raw files.

6. [ ] **Protect history.** Make sure the step that writes the final output creates a new file each run (for example with the date in the name) in `outputs/history/`, and never writes over an old one.
   *Done when* the last step's file says so in its done-check.

7. [ ] **Commit and push.** Read the diff, check nothing from `raw/` is included, commit, push.
   *Done when* `WORKFLOW.md` and `steps/` show on your branch on GitHub.
