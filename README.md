# We're All Software Developers Now

The starter repo for Opensend's four-session training on working with Claude, using **Claude Code** with **GitHub** as the place your work lives.

## Who this is for

Anyone at Opensend who isn't an engineer and wants their work with Claude to be shareable and repeatable: sales, customer success, finance, RevOps, operations. **You don't need to have used a terminal before.** The sessions walk you through everything.

## What's in it

A **repo** (short for repository) is a project folder that remembers every version of its files, shows what changed, and can be handed to someone else. This one holds everything for the series: the agenda, the slides, each session's exercise and assignment, reference docs, and templates you'll copy for your own workflow.

By the end of the series you'll have your own workflow in your copy of this repo, on your own branch, that a teammate can run and get the same result.

## This repo is public

Anyone can read it, so you can start with the table of contents below on github.com without installing anything.

It also means **anything you push is public**: your copy of the repo, your branch, your pull request, and every commit message. Before your first commit, read [`CONTRIBUTING.md`](CONTRIBUTING.md). The short version: no client or customer details, no real business numbers, no personal information, no passwords or keys, no internal links. Raw inputs, derived files, and real results stay on your computer.

Only Sean Larkin can change this repo. You work on your own copy, called a **fork**, and send your work back as a **pull request** that Sean reviews.

## How to get your copy

Do this in Session 2, after Session 1's setup: a GitHub account, Git and the GitHub CLI installed, and `gh auth login` done. The Session 2 hands-on ([`sessions/02/exercise.md`](sessions/02/exercise.md)) walks through the same steps with a check for each.

1. **Open a terminal.** A terminal is a window where you type commands instead of clicking.
   - **Mac:** press `Cmd + Space`, type `Terminal`, press `Return`.
   - **Windows:** press the `Windows` key, type `Terminal`, press `Enter`. If nothing called Terminal shows up, type `PowerShell` instead.

2. **Type this, then press Enter:**

   ```
   gh repo fork fueled-io/os-claude-advanced-training --clone
   ```

   This makes your fork on GitHub (`github.com/your-username/os-claude-advanced-training`) and downloads it into a new folder called `os-claude-advanced-training` in your home folder. You'll see a few lines about the fork and "Cloning into…", and then your cursor comes back.

3. **Go into the folder:**

   ```
   cd os-claude-advanced-training
   ```

   `cd` means "change directory": the terminal is now working inside that folder.

4. **Make your own branch,** named after you: first and last name, lowercase, joined with a dash. If you're Alex Kim:

   ```
   git switch -c alex-kim
   ```

   Use your own name. All your work goes on this branch.

5. **Open it with Claude Code.** Either:
   - type `claude` and press Enter, or
   - open Claude Desktop, click **Code**, choose **Local** → **Open folder…**, and pick `os-claude-advanced-training` in your home folder.

## Coming back to it later

You only fork and download once. Every time after that:

1. Open a terminal.
2. Type `cd os-claude-advanced-training` and press Enter.
3. Type `git status` and press Enter. The first line should say `On branch` followed by your name. If it doesn't, type `git switch alex-kim` with your own branch name.
4. Type `claude` and press Enter. (Or, in Claude Desktop, click **Code** and open the `os-claude-advanced-training` folder again.)

To see the repo's folders in Finder or File Explorer, type `open .` (Mac) or `explorer .` (Windows) while you're in it.

## If something goes wrong

| You see | What it means |
|---|---|
| `command not found: gh` or `'gh' is not recognized` | The GitHub CLI isn't installed, or the terminal was open before you installed it. Open a new terminal window. See [`docs/install-github-cli.md`](docs/install-github-cli.md). |
| `command not found: brew` (Mac) | Homebrew's "Next steps" commands weren't run. See step 4 of [`docs/install-github-cli.md`](docs/install-github-cli.md). |
| `command not found: claude` or `'claude' is not recognized` | See step 3 of [`docs/install-claude-code.md`](docs/install-claude-code.md). |
| `Claude Code access has not been granted for this account` | Your Opensend Claude seat doesn't include Claude Code yet. Tell Sean Larkin. |
| `destination path 'os-claude-advanced-training' already exists` | You already cloned it. Skip to `cd os-claude-advanced-training`. |
| `You are not logged into any GitHub hosts` | Run `gh auth login` again. |
| `permission denied` or `403` when pushing | You're pushing to Opensend's repo instead of your fork, probably because you used `gh repo clone`. Inside the folder, run `gh repo fork --remote`: it makes your fork and points your pushes at it. Then push again. |
| `GH013: Repository rule violations` or `Push cannot contain secrets` | GitHub found something that looks like a password or key in your commit and blocked the push. Don't work around it. Tell Sean Larkin. |

## Table of contents

**The series**

- [`AGENDA.md`](AGENDA.md): all four sessions at a glance
- `slides/`: the slide deck. GitHub shows these files as code, so open them from your copy: in the repo folder, type `open slides/index.html` (Mac) or `start slides\index.html` (Windows)

**Sessions:** each folder has the agenda, the hands-on exercise as a numbered checklist, and the assignment.

| Session | Agenda | Hands-on | Assignment |
|---|---|---|---|
| 1. Don't ship slop. | [agenda](sessions/01/agenda.md) | [exercise](sessions/01/exercise.md) | [assignment](sessions/01/assignment.md) |
| 2. GitHub as your backend | [agenda](sessions/02/agenda.md) | [exercise](sessions/02/exercise.md) | [assignment](sessions/02/assignment.md) |
| 3. Break the work into steps | [agenda](sessions/03/agenda.md) | [exercise](sessions/03/exercise.md) | [assignment](sessions/03/assignment.md) |
| 4. Same result, every time, for everyone | [agenda](sessions/04/agenda.md) | [exercise](sessions/04/exercise.md) | [graduation](sessions/04/assignment.md) |

**Checklists**

- [`CONTRIBUTING.md`](CONTRIBUTING.md): what may and may never be committed. Read it before your first commit
- [`checklists/pre-send.md`](checklists/pre-send.md): run this before you send anything Claude helped you make
- [`checklists/facilitator.md`](checklists/facilitator.md): what Sean sets up outside the sessions

**Reference docs**

- [Install the GitHub CLI and sign in](docs/install-github-cli.md)
- [Install Claude Code and Claude Desktop](docs/install-claude-code.md)
- [Git's five verbs: clone, commit, push, pull, diff](docs/git-five-verbs.md)
- [CLAUDE.md and README.md](docs/claude-md-and-readme.md)
- [Memories, context, skills, and Projects](docs/memory-context-skills.md)
- [Claude Code vs. Chat and Cowork](docs/code-vs-chat.md)
- [Raw, derived, and historical files](docs/file-types.md)
- [Audit trails](docs/audit-trails.md)
- [Golden examples and the handoff test](docs/golden-examples.md)
- [Generative models and decision models](docs/decision-models.md)

**Templates:** copy these for your own workflow.

- [`templates/CLAUDE.template.md`](templates/CLAUDE.template.md): CLAUDE.md for a workflow repo
- [`templates/workflow.template.md`](templates/workflow.template.md): inputs, numbered steps with a definition of done, outputs
- [`templates/golden-example-README.template.md`](templates/golden-example-README.template.md): describe your golden example

**Folders your workflow uses**

| Folder | What goes there | On GitHub? |
|---|---|---|
| `raw/` | Inputs exactly as they arrived: exports, PDFs, spreadsheets | **Never.** They stay off GitHub (but Claude still reads them, so follow the AI acceptable use policy) |
| `derived/` | Files your workflow's steps make from the raw inputs | **Never.** They hold real data |
| `outputs/history/` | Finished results, one new file per run, never overwritten | **Never** in this public repo. They stay on your computer |
| `golden/` | Your golden example: a made-up input and its correct output | Yes. Made-up data only |

## Ground rules

[`CLAUDE.md`](CLAUDE.md) holds the instructions Claude follows in this repo. The ones that matter most: never commit real data or anything sensitive, never overwrite anything in `outputs/history/`, and always show a diff before changing a file.

Questions about the series: message Sean Larkin on Slack.
