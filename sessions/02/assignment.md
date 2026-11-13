# Session 2 assignment

Finish before Session 3. Work on your own branch (the one you made in the hands-on).

**Getting back to the repo:** open a terminal, then type `cd os-claude-advanced-training` and press Enter. Type `git status`: the first line should say `On branch` followed by your name. If it doesn't, type `git switch alex-kim` with your own branch name. Then type `claude`. (Or, in Claude Desktop, click **Code** and open the `os-claude-advanced-training` folder again.)

**Move one recurring workflow or daily task into the repo.**

1. [ ] **Put the inputs in `raw/`.** Copy one real set of the files your workflow starts from (exports, spreadsheets, PDFs) into the `raw/` folder. To open the folder, type `open raw` (Mac) or `explorer raw` (Windows) in the terminal while you're in the repo, then drag the files in.
   `.gitignore` keeps these files off GitHub. It doesn't keep them from Claude: when Claude Code reads a file, its contents go to Anthropic under Opensend's Claude account. Use only files that Opensend's AI acceptable use policy allows (a revised version is coming in the next few weeks), and only with your Opensend Claude account. If you're not sure, ask Sean before you use customer data.
   *Done when* the files are in `raw/` and `git status` does not list them.
2. [ ] **Write down how you do it today.** Ask Claude Code to fill in the "How it's done today" section of your CLAUDE.md, in your own words. Messy is fine. Session 3 turns it into steps.
   *Done when* someone reading your CLAUDE.md could tell what you do, in what order, and what you hand over at the end.
3. [ ] **Commit and push.** Ask Claude Code: "Commit these changes and push my branch." Read the diff, and check nothing from `raw/` or the "Never commit" list in [`CONTRIBUTING.md`](../../CONTRIBUTING.md) is in the commit. Write "how it's done today" without client names or real numbers.
   *Done when* the change shows in your pull request on GitHub.

Bring the workflow to Session 3. That's what you'll break into steps.
