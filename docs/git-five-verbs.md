# Git's five verbs: clone, commit, push, pull, diff

**Sources (checked 2026-11-03):** git-scm.com reference pages for
[clone](https://git-scm.com/docs/git-clone) ·
[status](https://git-scm.com/docs/git-status) ·
[add](https://git-scm.com/docs/git-add) ·
[commit](https://git-scm.com/docs/git-commit) ·
[push](https://git-scm.com/docs/git-push) ·
[pull](https://git-scm.com/docs/git-pull) ·
[diff](https://git-scm.com/docs/git-diff) ·
[switch](https://git-scm.com/docs/git-switch) ·
[branch](https://git-scm.com/docs/git-branch) ·
and [`gh repo clone`](https://cli.github.com/manual/gh_repo_clone)

A **repo** (repository) is a project folder that Git watches. Git remembers every saved version, shows what changed, and lets you hand the whole thing to someone else. GitHub is where the shared copy lives.

You'll usually ask Claude Code to run these for you. Know what each one does, so you can read what Claude is about to do and say no.

## The five verbs

| Verb | Command | Official description | In plain words |
|---|---|---|---|
| **clone** | `gh repo clone owner/repo` | "Clone a repository into a new directory" | Download a copy of a repo from GitHub, with its whole history, into a new folder |
| **diff** | `git diff` | "Show changes between commits, commit and working tree, etc" | Show exactly what changed. Lines starting `-` were removed; lines starting `+` were added |
| **commit** | `git add file` then `git commit -m "note"` | "Record changes to the repository" | Save a snapshot of your changes with a note saying what and why |
| **push** | `git push` | "Update remote refs along with associated objects" | Send your saved commits up to GitHub |
| **pull** | `git pull` | "Fetch from and integrate with another repository or a local branch" | Bring down what other people pushed since you last looked |

## How they fit together

1. **Clone** once, to get the repo:
   ```
   gh repo clone fueled-io/os-claude-advanced-training
   cd os-claude-advanced-training
   ```
2. **Pull** at the start of a work session, to get what's new: `git pull`
3. Make changes (or have Claude make them).
4. **Diff** to see exactly what changed: `git diff`
5. **Commit** to save a snapshot. Three parts:
   - `git status` lists what changed. Check that nothing from `raw/` is there.
   - `git add CLAUDE.md` picks which files go in the snapshot.
   - `git commit -m "Describe my monthly report workflow"` saves it with a note.
6. **Push** to send it to GitHub. The first time you push a new branch, name it: `git push -u origin alex-kim` (your branch name in place of `alex-kim`). After that, plain `git push` works.

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

## Going deeper

- [Pro Git book](https://git-scm.com/book/en/v2), free and official
- [GitHub's Git basics](https://docs.github.com/en/get-started/git-basics)
