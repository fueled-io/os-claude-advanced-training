# We're All Software Developers Now

The starter repo for Opensend's four-session training on working with Claude, using **Claude Code** with **GitHub** as the place your work lives. It works the same on a **Mac** and on **Windows**.

**Contents:**
[Who this is for](#who-this-is-for) ·
[The four sessions](#the-four-sessions) ·
[This repo is public](#this-repo-is-public) ·
[What you need](#what-you-need) ·
[Set up your computer](#set-up-your-computer) ·
[Get Claude to help you](#get-claude-to-help-you) ·
[Get your copy of the repo](#get-your-copy-of-the-repo) ·
[Check your setup](#check-your-setup) ·
[Day to day](#day-to-day) ·
[What's in the repo](#whats-in-the-repo) ·
[If something goes wrong](#if-something-goes-wrong) ·
[Reference](#reference)

## Who this is for

Anyone at Opensend who isn't an engineer and wants their work with Claude to be shareable and repeatable: sales, customer success, finance, RevOps, operations. **You don't need to have used a terminal before.** A **terminal** is a window where you type commands instead of clicking; this README and the sessions show you every command.

A **repo** (short for repository) is a project folder that remembers every version of its files, shows what changed, and can be handed to someone else. This one holds everything for the series: the agenda, the slides, each session's exercise and assignment, reference docs, and templates you'll copy for your own workflow.

By the end of the series you'll have one of your own workflows written down in your copy of this repo, in a way a teammate can run and get the same result.

## The four sessions

Each session is 60 minutes: 30 minutes of teaching, then 30 minutes hands-on. Each folder has the agenda, the hands-on exercise as a numbered checklist with a "done when" for every step, and the assignment.

| Session | You leave with | Agenda | Hands-on | Assignment |
|---|---|---|---|---|
| 1. Don't ship slop. | A GitHub account, Git and the GitHub CLI installed, signed in | [agenda](sessions/01/agenda.md) | [exercise](sessions/01/exercise.md) | [assignment](sessions/01/assignment.md) |
| 2. GitHub as your backend | Your copy of this repo, a CLAUDE.md for one real workflow, a pull request | [agenda](sessions/02/agenda.md) | [exercise](sessions/02/exercise.md) | [assignment](sessions/02/assignment.md) |
| 3. Break the work into steps | Your workflow as numbered steps, each with a done-check | [agenda](sessions/03/agenda.md) | [exercise](sessions/03/exercise.md) | [assignment](sessions/03/assignment.md) |
| 4. Same result, every time, for everyone | A golden example, and a partner who ran your workflow cold | [agenda](sessions/04/agenda.md) | [exercise](sessions/04/exercise.md) | [graduation](sessions/04/assignment.md) |

All four at a glance: [`AGENDA.md`](AGENDA.md).

## This repo is public

Anyone can read it, so you can browse everything here on github.com before you install anything.

It also means **anything you push is public**: your copy of the repo, your branch, your pull request, and every commit message. Deleting something later doesn't unpublish it. Read [`CONTRIBUTING.md`](CONTRIBUTING.md) before your first commit. The short version:

- **Never commit:** client or customer details, real business numbers, personal information, passwords or keys, internal links or screenshots, raw exports.
- **Stays on your computer:** `raw/`, `derived/`, and `outputs/history/`. `.gitignore` keeps them out of Git.
- **Need an example?** Make one up: "Client A", "$12,345".

Only the repo's owner, Sean Larkin, can change this repo. You work on your own copy, called a **fork**, and send your work back as a **pull request**: a request for the owner to review your changes.

## What you need

| | What | Notes |
|---|---|---|
| **Computer** | A Mac (macOS 13 or later) or a Windows PC (Windows 10 version 1809 or later), with 4 GB+ of memory | Your own laptop. You'll install software, so you'll need its password |
| **Accounts** | A GitHub account | Free. Sign up with your Opensend email in Session 1 |
| | Your Opensend Claude account | Not a personal one. Claude Code is included with every Team plan seat; if signing in says access hasn't been granted, tell Sean |
| **Software** | Git | Saves versions of your files. Session 1 |
| | The GitHub CLI (`gh`) | Signs you in to GitHub and makes your fork. Session 1 |
| | Claude Code | Claude in your terminal. Session 1 assignment |
| | Claude Desktop | The Claude app, with a **Code** tab that runs Claude Code. Session 1 assignment |

You don't need Node.js, an editor, or anything else. **Python** comes up in Session 4, when Claude writes scripts that make spreadsheets: on a Mac it usually comes with Git's install, and on Windows you install it then. See [`docs/spreadsheets-and-scripts.md`](docs/spreadsheets-and-scripts.md).

## Set up your computer

The short version is below. Each step links to the full guide, which has the official source for every command and what you should see.

**Two rules that save most of the trouble:**

1. **After installing anything, close the terminal window and open a new one** before you check it. The terminal only notices new programs when it starts. On Windows, a new tab isn't enough; open a new window.
2. **To run a command,** type it (or paste it) and press Enter (`Return` on a Mac). When it asks for your computer's password, nothing shows while you type. That's normal.

### 1. Open a terminal

| Mac | Windows |
|---|---|
| Press `Cmd + Space`, type `Terminal`, press `Return` | Press the `Windows` key, type `Terminal`, press `Enter`. If nothing called Terminal shows up, type `PowerShell` instead |

### 2. Create a GitHub account

Go to <https://github.com/signup> and sign up with your Opensend work email. Turn on two-factor authentication when GitHub offers it. Details: [`docs/install-github-cli.md`](docs/install-github-cli.md) step 1.

### 3. Install Git

| Mac | Windows |
|---|---|
| `xcode-select --install`, then click **Install** in the window that pops up. It's a big download: do it the day before Session 1 if you can | Download Git for Windows from <https://git-scm.com/install/windows> and run it. The default choice on every screen is fine |

**Check it:** in a new terminal window, `git --version` prints a version number. Details: [`docs/install-github-cli.md`](docs/install-github-cli.md) step 3.

### 4. Install the GitHub CLI (`gh`)

| Mac | Windows |
|---|---|
| If `brew --version` says `command not found`, install Homebrew from <https://brew.sh> first, and run the **Next steps** commands it prints at the end. Then: `brew install gh` | `winget install --id GitHub.cli --source winget` |

**Check it:** in a new terminal window, `gh --version` prints a version number. Details: [`docs/install-github-cli.md`](docs/install-github-cli.md) step 4.

### 5. Sign in to GitHub

```
gh auth login
```

Choose **GitHub.com**, **HTTPS**, **Yes**, **Login with a web browser**. It shows a one-time code: copy it, press Enter, paste the code into the page that opens in your browser, and approve.

**Check it:** `gh auth status` shows your GitHub username. Details: [`docs/install-github-cli.md`](docs/install-github-cli.md) steps 5 and 6.

### 6. Tell Git who you are

With your own name and Opensend email:

```
git config --global user.name "Alex Kim"
git config --global user.email "alex@opensend.com"
```

Details: [`docs/install-github-cli.md`](docs/install-github-cli.md) step 7.

### 7. Install Claude Desktop and Claude Code

1. **Claude Desktop:** download it from <https://claude.com/download>, install it, and sign in with your Opensend Claude account.
2. **Claude Code:**

| Mac (Terminal) | Windows (PowerShell) |
|---|---|
| `curl -fsSL https://claude.ai/install.sh \| bash` | `irm https://claude.ai/install.ps1 \| iex` |

**Check it:** in a new terminal window, `claude --version` prints a version number followed by `(Claude Code)`. If it says `command not found` or `not recognized`, see [`docs/install-claude-code.md`](docs/install-claude-code.md) step 3.

3. **Sign in:** run `claude` in an empty test folder, pick the option for a Claude account with a subscription, and sign in with your **Opensend** account. Details: [`docs/install-claude-code.md`](docs/install-claude-code.md) step 4.

## Get Claude to help you

Claude can walk you through all of this. What it can do depends on how far you've got:

| Where you are | Use | How |
|---|---|---|
| Nothing installed yet | Claude in your browser at <https://claude.ai> | Paste the prompt from [`docs/setup-with-claude.md`](docs/setup-with-claude.md), part A. It walks you through the install guides one step at a time |
| Claude Code installed, no copy of the repo yet | `claude` in a terminal | Paste the prompt from part B. It checks what's installed and helps fix it |
| Your copy of the repo is on your computer | `claude` inside the repo folder | Type `/check-setup`, or say "check my setup" |

Claude never asks for your passwords or one-time codes. Anything that needs them, you type yourself in a terminal window, and Claude tells you exactly what to type.

## Get your copy of the repo

Do this in Session 2, once steps 1 to 7 above are done. The Session 2 hands-on ([`sessions/02/exercise.md`](sessions/02/exercise.md)) walks through it with a check for each step.

1. **Open a terminal** (see step 1 above).

2. **Make your fork and download it:**

   ```
   gh repo fork fueled-io/os-claude-advanced-training --clone
   ```

   This makes your own copy on GitHub (`github.com/your-username/os-claude-advanced-training`), which is public too, and downloads it into a new folder called `os-claude-advanced-training` in your home folder.

3. **Go into the folder:**

   ```
   cd os-claude-advanced-training
   ```

   `cd` means "change directory": the terminal is now working inside that folder.

4. **Make your own branch,** named after you: first and last name, lowercase, joined with a dash. If you're Alex Kim:

   ```
   git switch -c alex-kim
   ```

   Use your own name. All your work goes on this branch for the rest of the series.

5. **Open it with Claude Code.** Either:
   - type `claude` and press Enter, or
   - open Claude Desktop, click **Code**, choose **Local** → **Open folder…**, and pick `os-claude-advanced-training` in your home folder.

   The first time, Claude Code asks whether you trust the files in this folder. Say yes.

6. **Check your setup:** type `/check-setup` (next section).

## Check your setup

Inside Claude Code, in the repo folder, type `/check-setup` and press Enter, or say "check my setup". It runs a read-only check and tells you what's working and the first thing to fix:

- Git, the GitHub CLI, and Claude Code are installed
- you're signed in to GitHub, and Git knows your name and Opensend email
- your copy pushes to **your fork**, not to Opensend's repo
- pull requests go to Opensend's repo
- you're on your own branch, not `main`
- nothing from `raw/`, `derived/`, or `outputs/history/` is committed or about to be
- whether your pull request is open yet

To run the same check without Claude, from inside the repo folder:

| Mac (Terminal) | Windows (PowerShell) |
|---|---|
| `bash .claude/skills/check-setup/scripts/check-setup.sh` | `powershell -ExecutionPolicy Bypass -File .claude\skills\check-setup\scripts\check-setup.ps1` |

Each line starts with `PASS`, `FAIL`, `WARN`, or `INFO`. Fix the first `FAIL`, then run it again.

## Day to day

### Coming back to the repo

You only fork and download once. Every time after that:

1. Open a terminal.
2. `cd os-claude-advanced-training`
3. `git status`. The first line should say `On branch` followed by your name. If it doesn't: `git switch alex-kim`, with your own branch name.
4. `claude`. (Or, in Claude Desktop, click **Code** and open the `os-claude-advanced-training` folder again.)

To see the folders in Finder or File Explorer: `open .` (Mac) or `explorer .` (Windows), while you're in the repo folder.

### Saving and sending your work

You'll usually ask Claude Code to do these for you. It shows you what it's about to do and waits for your yes.

1. **Have Claude make a change.** It shows you the **diff**: lines it removes are marked `-`, lines it adds are marked `+`. Read it, then choose plain **Yes**. Never choose "allow all edits": that skips the review for every change after.
2. **Commit:** "Commit these changes." A commit saves a snapshot with a note about what changed. Check the list: nothing from `raw/`, `derived/`, or `outputs/history/`, and nothing on the [`CONTRIBUTING.md`](CONTRIBUTING.md) "Never commit" list.
3. **Push:** "Push my branch." This sends your commits to your fork on GitHub.
4. **Pull request (once):** "Open a pull request from my branch to fueled-io/os-claude-advanced-training." Every push after that adds to the same pull request. Sean reviews it there. Participant pull requests aren't merged.

More on each command: [`docs/git-verbs.md`](docs/git-verbs.md).

### Opening the slides

GitHub shows the slide files as code, so open them from your copy. In the repo folder: `open slides/index.html` (Mac) or `start slides\index.html` (Windows). Use the arrow keys to move between slides.

## What's in the repo

```
os-claude-advanced-training/
├── README.md              ← you are here
├── AGENDA.md              ← all four sessions at a glance
├── CLAUDE.md              ← the instructions Claude follows in this repo
├── CONTRIBUTING.md        ← what may and may never be committed (this repo is public)
├── sessions/01 … 04/      ← each session's agenda, hands-on checklist, and assignment
├── slides/                ← the slide deck (open slides/index.html)
├── docs/                  ← short reference docs, each citing its official sources
├── templates/             ← starting points for your CLAUDE.md, workflow, and golden example
├── checklists/            ← the pre-send checklist, and Sean's facilitator checklist
├── raw/                   ← your workflow's inputs. Never leaves your computer
├── derived/               ← files your steps make from the inputs. Never leaves your computer
├── outputs/history/       ← your finished results. Never leaves your computer, never overwritten
├── golden/                ← your golden example: made-up data, committed
└── .claude/               ← Claude Code settings and the /check-setup and /pre-send skills
```

| Folder | What goes there | On GitHub? |
|---|---|---|
| `raw/` | Inputs exactly as they arrived: exports, PDFs, spreadsheets | **Never.** Claude still reads them, so only use files Opensend's AI acceptable use policy allows |
| `derived/` | Files your workflow's steps make from the raw inputs | **Never.** They hold real data |
| `outputs/history/` | Finished results, one new file per run, never overwritten | **Never** in this public repo. They stay on your computer |
| `golden/` | Your golden example: a made-up input and its correct output | Yes. Made-up data only |

### What Claude Code gets from this repo

When you start Claude Code in the repo folder, it picks up:

- **[`CLAUDE.md`](CLAUDE.md):** who you are (not an engineer), how to talk to you, and the rules: never commit real data, check every commit for anything sensitive, never overwrite `outputs/history/`, always show a diff first, never push to Opensend's repo directly. From Session 2 on, your own CLAUDE.md replaces it, built from [`templates/CLAUDE.template.md`](templates/CLAUDE.template.md), which keeps the same rules.
- **[`.claude/settings.json`](.claude/settings.json):** lets Claude run read-only checks (`git status`, `git diff`, the setup check) without asking each time, and blocks force-pushes, pushes to Opensend's repo, and reading `.env` files.
- **[`/check-setup`](.claude/skills/check-setup/SKILL.md):** the setup check and how to fix what it finds, on a Mac or on Windows.
- **[`/pre-send`](.claude/skills/pre-send/SKILL.md):** an example skill that checks a draft against the pre-send checklist before you send it.

## If something goes wrong

Start with `/check-setup` in Claude Code, or paste the exact error into Claude and ask what it means. Common ones:

| You see | What it means |
|---|---|
| `command not found: git` (Mac) or `'git' is not recognized` (Windows) | Git isn't installed, or the terminal was open before you installed it. Open a new terminal window. See [`docs/install-github-cli.md`](docs/install-github-cli.md) step 3. |
| `command not found: brew` (Mac) | Homebrew's "Next steps" commands weren't run. See [`docs/install-github-cli.md`](docs/install-github-cli.md) step 4. |
| `command not found: gh` or `'gh' is not recognized` | The GitHub CLI isn't installed, or the terminal was open before you installed it. Open a new terminal window. See [`docs/install-github-cli.md`](docs/install-github-cli.md) step 4. |
| `winget` is not recognized (Windows) | Download the `.msi` installer from <https://github.com/cli/cli/releases/latest> instead. |
| `command not found: claude` or `'claude' is not recognized` | See [`docs/install-claude-code.md`](docs/install-claude-code.md) step 3. |
| `Claude Code access has not been granted for this account` | Your Opensend Claude seat doesn't include Claude Code yet. Tell Sean Larkin. |
| `You are not logged into any GitHub hosts` | Run `gh auth login` again. |
| `destination path 'os-claude-advanced-training' already exists` | You already downloaded it. Skip to `cd os-claude-advanced-training`. |
| `permission denied` or `403` when pushing | You're pushing to Opensend's repo instead of your fork, probably because you used `gh repo clone`. Inside the folder, run `gh repo fork --remote`: it makes your fork and points your pushes at it. Then push again. |
| `GH013: Repository rule violations` or `Push cannot contain secrets` | GitHub found something that looks like a password or key in your commit and blocked the push. Don't work around it. Tell Sean Larkin. |
| You committed something from the "Never commit" list | Not pushed yet: ask Claude Code to undo the commit. Already pushed: tell Sean Larkin right away. See [`CONTRIBUTING.md`](CONTRIBUTING.md). |

Still stuck? Send Sean Larkin a Slack message with the exact message you see and what you were doing.

## Reference

**Rules and checklists**

- [`CONTRIBUTING.md`](CONTRIBUTING.md): what may and may never be committed. Read it before your first commit
- [`checklists/pre-send.md`](checklists/pre-send.md): run this before you send anything Claude helped you make, or have Claude run it with `/pre-send`
- [`checklists/facilitator.md`](checklists/facilitator.md): what Sean sets up outside the sessions

**Setup**

- [Install the GitHub CLI and sign in](docs/install-github-cli.md)
- [Install Claude Code and Claude Desktop](docs/install-claude-code.md)
- [Get Claude to help you set up](docs/setup-with-claude.md)

**Concepts**

- [Git's six verbs: clone, diff, commit, push, pull, merge](docs/git-verbs.md), plus forks and pull requests
- [CLAUDE.md and README.md](docs/claude-md-and-readme.md)
- [Memories, context, skills, and Projects](docs/memory-context-skills.md)
- [Claude Code vs. Chat and Cowork, and scheduled tasks](docs/code-vs-chat.md)
- [Raw, derived, and historical files](docs/file-types.md)
- [Audit trails](docs/audit-trails.md)
- [Spreadsheets: edit them, or have a script make them?](docs/spreadsheets-and-scripts.md)
- [Golden examples and the handoff test](docs/golden-examples.md)
- [Generative models and decision models](docs/decision-models.md)

**Templates:** copy these for your own workflow.

- [`templates/CLAUDE.template.md`](templates/CLAUDE.template.md): CLAUDE.md for a workflow repo
- [`templates/workflow.template.md`](templates/workflow.template.md): inputs, numbered steps with a definition of done, outputs
- [`templates/golden-example-README.template.md`](templates/golden-example-README.template.md): describe your golden example

Questions about the series: message Sean Larkin on Slack.
