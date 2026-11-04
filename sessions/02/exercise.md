# Session 2 hands-on: your first repo change

**Goal:** have this repo on your computer, a CLAUDE.md for one real workflow of yours, and one change made by Claude Code that you read before accepting.

**Before you start:** Session 1's assignment is done. `gh auth status` says you're logged in, Claude Code answers in the terminal, and the permission check from Session 1 (step 8) says `WRITE`.

Reference while you work: [`docs/git-five-verbs.md`](../../docs/git-five-verbs.md).

1. [ ] **Open a terminal.** Mac: `Cmd + Space`, type `Terminal`, press `Return`. Windows: `Windows` key, type `Terminal` (or `PowerShell` if Terminal doesn't show up), press `Enter`.
   *Done when* you see a blinking cursor.

2. [ ] **Clone the repo.** Cloning downloads a copy of the repo, with its whole history, onto your computer. Type:

   ```
   gh repo clone fueled-io/os-claude-advanced-training
   ```

   *Done when* the terminal finishes without an error and a folder called `os-claude-advanced-training` exists in your home folder. If it says `destination path ... already exists`, you cloned it before: skip to step 3.

3. [ ] **Go into the folder.** Type:

   ```
   cd os-claude-advanced-training
   ```

   `cd` means "change directory": it moves the terminal into that folder.
   *Done when* typing `pwd` ("print working directory") and pressing Enter shows a location ending in `os-claude-advanced-training`.

4. [ ] **Make your own branch.** A branch is your own copy of the work inside the shared repo, so your changes don't land on anyone else's. Name it after yourself: your first and last name, lowercase, joined with a dash. If you're Alex Kim, type:

   ```
   git switch -c alex-kim
   ```

   Use your own name, not `alex-kim`. You'll use this branch name for the rest of the series.
   *Done when* the terminal says `Switched to a new branch` followed by your name.

5. [ ] **Start Claude Code.** Type `claude` and press Enter. (Or open Claude Desktop, click **Code**, choose **Local** → **Open folder…**, and pick `os-claude-advanced-training` in your home folder.)
   The first time, it asks whether you trust the files in this folder. Say yes: it's Opensend's repo.
   *Done when* Claude Code is waiting for your message.

6. [ ] **Pick one real workflow.** Choose something you do every week or month, such as a report, a reconciliation, or a customer summary. Write one sentence about it.
   *Done when* you can say what goes in, what comes out, and who uses the result.

7. [ ] **Write a CLAUDE.md for it.** Type this to Claude Code, with your sentence in place of the brackets, and press Enter:

   > Replace CLAUDE.md with a filled-in copy of templates/CLAUDE.template.md for this workflow: [your one sentence]. Leave the Steps and "How to check it still works" sections as they are; we fill those in Sessions 3 and 4. Ask me questions for anything else you don't know.

   Answer its questions. Before it changes the file, it shows you the diff: the lines it removes are marked `-` and the lines it adds are marked `+`. **Read the diff before you say yes.**

   When it asks to make the edit, choose plain **Yes**. Don't choose the option to allow all edits for the rest of the session: that skips the diff review for every change after this one.
   *Done when* CLAUDE.md describes your workflow and still has the "Where things live" table and the three rules about `raw/`, `outputs/history/`, and diffs.

8. [ ] **Have Claude Code make one more change and read the diff.** For example: "Add a line to README.md that says this branch holds [your name]'s [workflow name] workflow." Read the diff. If it's not what you asked for, choose **No** and tell it why.
   *Done when* you've accepted one change you read, or turned down one you didn't want.

9. [ ] **Commit and push.** A commit saves a snapshot with a note about what changed. A push sends your commits to GitHub. Ask Claude Code: "Commit these changes and push my branch." It shows you what it's about to commit. Check that nothing from `raw/` is in the list.
   Claude Code asks before it runs each command. Read its one-line description of the command, and say yes if it matches what you asked for.
   *Done when* you can see your branch on <https://github.com/fueled-io/os-claude-advanced-training/branches>. If the push fails with `permission denied` or `403`, your account has read access only: tell Sean.
