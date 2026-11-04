# Session 2 hands-on: your first repo change

**Goal:** have your own copy of this repo on your computer, a CLAUDE.md for one real workflow of yours, one change made by Claude Code that you read before accepting, and a pull request that sends your work to Sean.

**Before you start:** Session 1's assignment is done. `gh auth status` says you're logged in, Claude Code answers in the terminal, and you've read [`CONTRIBUTING.md`](../../CONTRIBUTING.md). **This repo is public, and so is your copy of it:** anything you push can be read by anyone.

Reference while you work: [`docs/git-five-verbs.md`](../../docs/git-five-verbs.md).

1. [ ] **Open a terminal.** Mac: `Cmd + Space`, type `Terminal`, press `Return`. Windows: `Windows` key, type `Terminal` (or `PowerShell` if Terminal doesn't show up), press `Enter`.
   *Done when* you see a blinking cursor.

2. [ ] **Make your own copy and download it.** Only Sean can change Opensend's repo, so you work on your own copy, called a **fork**. It lives on GitHub under your username (`github.com/your-username/os-claude-advanced-training`), and it's public too. `--clone` downloads it onto your computer, with its whole history. Type:

   ```
   gh repo fork fueled-io/os-claude-advanced-training --clone
   ```

   *Done when* the terminal finishes without an error and a folder called `os-claude-advanced-training` exists in your home folder. If it says `destination path ... already exists`, you downloaded it before: skip to step 3.

3. [ ] **Go into the folder.** Type:

   ```
   cd os-claude-advanced-training
   ```

   `cd` means "change directory": it moves the terminal into that folder.
   *Done when* typing `pwd` ("print working directory") and pressing Enter shows a location ending in `os-claude-advanced-training`.

4. [ ] **Make your own branch.** A branch is a separate line of work inside a repo, so this series' work stays apart from the course materials. Name it after yourself: your first and last name, lowercase, joined with a dash. If you're Alex Kim, type:

   ```
   git switch -c alex-kim
   ```

   Use your own name, not `alex-kim`. You'll use this branch name for the rest of the series.
   *Done when* the terminal says `Switched to a new branch` followed by your name.

5. [ ] **Start Claude Code.** Type `claude` and press Enter. (Or open Claude Desktop, click **Code**, choose **Local** → **Open folder…**, and pick `os-claude-advanced-training` in your home folder.)
   The first time, it asks whether you trust the files in this folder. Say yes: it's your copy of Opensend's repo.
   *Done when* Claude Code is waiting for your message.

6. [ ] **Pick one real workflow.** Choose something you do every week or month, such as a report, a reconciliation, or a customer summary. Write one sentence about it.
   *Done when* you can say what goes in, what comes out, and who uses the result.

7. [ ] **Write a CLAUDE.md for it.** Type this to Claude Code, with your sentence in place of the brackets, and press Enter:

   > Replace CLAUDE.md with a filled-in copy of templates/CLAUDE.template.md for this workflow: [your one sentence]. Leave the Steps and "How to check it still works" sections as they are; we fill those in Sessions 3 and 4. Ask me questions for anything else you don't know.

   Answer its questions. Before it changes the file, it shows you the diff: the lines it removes are marked `-` and the lines it adds are marked `+`. **Read the diff before you say yes.**

   When it asks to make the edit, choose plain **Yes**. Don't choose the option to allow all edits for the rest of the session: that skips the diff review for every change after this one.
   *Done when* CLAUDE.md describes your workflow and still has the "Where things live" table and the numbered rules, including the one about checking every commit for sensitive content.

   **Keep it general.** Describe the work without naming a client, quoting a real number, or linking to an internal system: "the monthly bookings export from the billing system", not a link or a customer name. If Claude Code flags something as sensitive, use its made-up replacement.

8. [ ] **Have Claude Code make one more change and read the diff.** For example: "Add a line to README.md that says this branch holds [your name]'s [workflow name] workflow." Read the diff. If it's not what you asked for, choose **No** and tell it why.
   *Done when* you've accepted one change you read, or turned down one you didn't want.

9. [ ] **Commit and push.** A commit saves a snapshot with a note about what changed. A push sends your commits to your fork on GitHub. Ask Claude Code: "Commit these changes and push my branch." It shows you what it's about to commit. Check that nothing from `raw/` is in the list, and nothing from the "Never commit" list in `CONTRIBUTING.md` is in the diff.
   Claude Code asks before it runs each command. Read its one-line description of the command, and say yes if it matches what you asked for.
   *Done when* you can see your branch on your fork: `github.com/your-username/os-claude-advanced-training`, with your GitHub username.

10. [ ] **Open a pull request.** A pull request asks Sean to look at the changes on your branch. Ask Claude Code: "Open a pull request from my branch to fueled-io/os-claude-advanced-training." Read the title and description before you say yes: they're public too.
   You only do this once. Every time you push your branch after this, the pull request picks up the new commits by itself.
   *Done when* your pull request shows on <https://github.com/fueled-io/os-claude-advanced-training/pulls>. Sean reviews it there. It isn't merged: it's how Sean sees and comments on your work.
