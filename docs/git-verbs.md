# Git's six verbs: clone, diff, commit, push, pull, merge

**Sources (checked 2026-11-03):** git-scm.com reference pages for
[clone](https://git-scm.com/docs/git-clone) ·
[status](https://git-scm.com/docs/git-status) ·
[add](https://git-scm.com/docs/git-add) ·
[commit](https://git-scm.com/docs/git-commit) ·
[push](https://git-scm.com/docs/git-push) ·
[pull](https://git-scm.com/docs/git-pull) ·
[diff](https://git-scm.com/docs/git-diff) ·
[merge](https://git-scm.com/docs/git-merge) ·
[switch](https://git-scm.com/docs/git-switch) ·
[branch](https://git-scm.com/docs/git-branch) ·
[`gh repo clone`](https://cli.github.com/manual/gh_repo_clone) ·
[`gh repo fork`](https://cli.github.com/manual/gh_repo_fork) ·
[`gh pr create`](https://cli.github.com/manual/gh_pr_create) ·
[`gh pr checkout`](https://cli.github.com/manual/gh_pr_checkout) ·
and [GitHub: merging a pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/merging-a-pull-request)

A **repo** (repository) is a project folder that Git watches. Git remembers every saved version, shows what changed, and lets you hand the whole thing to someone else. GitHub is where the shared copy lives.

## What's happening under the hood

You talk to Claude, and Claude runs Git for you. You don't need to be a software developer or type these commands yourself. But knowing what each one does, in plain terms, lets you read what Claude is about to do and say no when it's wrong.

## The six verbs

| Verb | Command | Official description | In plain words |
|---|---|---|---|
| **clone** | `gh repo clone owner/repo` | "Clone a repository into a new directory" | Download a copy of a repo from GitHub, with its whole history, into a new folder |
| **diff** | `git diff` | "Show changes between commits, commit and working tree, etc" | Show exactly what changed. Lines starting `-` were removed; lines starting `+` were added |
| **commit** | `git add file` then `git commit -m "note"` | "Record changes to the repository" | Save a snapshot of your changes with a note saying what and why |
| **push** | `git push` | "Update remote refs along with associated objects" | Send your saved commits up to GitHub |
| **pull** | `git pull` | "Fetch from and integrate with another repository or a local branch" | Bring down what other people pushed since you last looked |
| **merge** | `git merge branch-name`, or **Merge pull request** on GitHub | "Join two or more development histories together" | Combine the changes from one branch into another. Merging a pull request is how a change lands in `main`. Here, only the repo's owner merges |

## How they fit together

1. **Clone** once, to get the repo. In this series you clone your own copy (a fork; see below):
   ```
   gh repo fork fueled-io/os-claude-advanced-training --clone
   cd os-claude-advanced-training
   ```
2. **Pull** at the start of a work session, to get what's new: `git pull`
3. Make changes (or have Claude make them).
4. **Diff** to see exactly what changed: `git diff`
5. **Commit** to save a snapshot. Three parts:
   - `git status` lists what changed. Check that nothing from `raw/` is there.
   - `git add CLAUDE.md` picks which files go in the snapshot.
   - `git commit -m "Describe my monthly report workflow"` saves it with a note.
6. **Push** to send it to GitHub (your fork). The first time you push a new branch, name it: `git push -u origin alex-kim` (your branch name in place of `alex-kim`). After that, plain `git push` works.

A commit only exists on your computer until you push it.

## Branches (one section)

A **branch** is a separate line of work inside the same repo. Changes on your branch don't touch anyone else's.

| To do this | Command |
|---|---|
| Make a new branch and move onto it | `git switch -c alex-kim` |
| Move onto an existing branch | `git switch name` |
| See all branches (yours has a `*`) | `git branch` |
| Push a new branch to GitHub the first time | `git push -u origin alex-kim` |

In this series, everyone works on a branch named after themselves: first and last name, lowercase, joined with a dash. `alex-kim` is an example; use your own name.

## Forks and pull requests

This repo is public, and only Sean can change it. So you work on a **fork**: your own copy of the repo on GitHub, under your username. It's public too.

| To do this | Command |
|---|---|
| Make your fork and download it (once) | `gh repo fork fueled-io/os-claude-advanced-training --clone` |
| Ask Sean to review your branch (once) | `gh pr create` |
| Get someone else's pull request onto your computer | `gh pr checkout 12` (their pull request number) |

A **pull request** asks the repo's owner to review the changes on your branch, and merge them if they're right. You open it once; each later push adds to it. Participants' pull requests are for review and aren't merged. See [`CONTRIBUTING.md`](../CONTRIBUTING.md) for what may go in one.

## Going deeper

- [Pro Git book](https://git-scm.com/book/en/v2), free and official
- [GitHub's Git basics](https://docs.github.com/en/get-started/git-basics)
