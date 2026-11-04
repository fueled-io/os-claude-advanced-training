---
name: check-setup
description: Check and fix a participant's setup for the "We're All Software Developers Now" training on Mac or Windows — Git, the GitHub CLI, GitHub sign-in, Claude Code, their fork, branch, and pull request. Use when someone says "check my setup", "help me set up", "is everything installed", "something's not working", or hits an install, sign-in, fork, push, or pull-request error.
when_to_use: Also use at the start of Session 2, 3, or 4 if the person isn't sure their copy of the repo is ready, and before their first commit.
allowed-tools: Bash(bash ${CLAUDE_SKILL_DIR}/scripts/check-setup.sh)
---

# Check and fix setup

You're helping someone who is **not an engineer** get their computer ready for this training. Many of them have never used a terminal. Follow the "Who you are talking to" rules in the repo's `CLAUDE.md`: plain words, one step at a time, say what each command does before you run it.

## 1. Run the check

The check is read-only. It changes nothing.

- **Mac, or Windows where your Bash tool works:** run
  `bash ${CLAUDE_SKILL_DIR}/scripts/check-setup.sh`
- **Windows without a working Bash tool:** run, in PowerShell,
  `powershell -ExecutionPolicy Bypass -File "${CLAUDE_SKILL_DIR}\scripts\check-setup.ps1"`

Each line starts with `PASS`, `FAIL`, `WARN`, or `INFO`, and every `FAIL` and `WARN` says how to fix it.

## 2. Report it in plain words

Don't paste the output. Say, in two or three short lines:

- what's working ("Git, the GitHub CLI and Claude Code are installed, and you're signed in to GitHub as alex-kim-os"),
- the **first** thing to fix, and why it matters for the session.

Fix one thing at a time, then run the check again.

## 3. Fix it

Work through the `FAIL` lines in order, then the `WARN` lines. The exact steps are in the repo's own docs, which name the official source for every step. Use them; don't invent install steps.

| Problem | Where the steps are |
|---|---|
| Git missing | `docs/install-github-cli.md` step 3 |
| GitHub CLI (`gh`) or Homebrew missing | `docs/install-github-cli.md` step 4 |
| Not signed in to GitHub | `docs/install-github-cli.md` step 5 |
| Git name or email not set | `docs/install-github-cli.md` step 7 |
| Claude Code missing or `command not found: claude` | `docs/install-claude-code.md` steps 2 and 3 |
| `Claude Code access has not been granted for this account` | Their Opensend Claude seat. Tell them to message Sean Larkin |
| No fork yet | `sessions/02/exercise.md` step 2 |
| Copy points at Opensend's repo, not their fork | Run `gh repo fork --remote` inside the repo folder |
| gh's default repo isn't `fueled-io/os-claude-advanced-training` | Run `gh repo set-default fueled-io/os-claude-advanced-training` |
| Not on their own branch | `git switch -c first-last` the first time (their own first and last name, lowercase, joined with a dash), `git switch first-last` after that |
| Real-data files staged or committed | Stop. See "Real data" below |
| No pull request yet | `sessions/02/exercise.md` step 10 |

**Who runs what:**

- **You may run, after saying what it does and getting a yes:** `git config --global user.name "…"` and `user.email` (with the name and email they give you), `gh repo fork --remote`, `gh repo set-default …`, `git switch …`, `git restore --staged …`.
- **They run it themselves, in a separate terminal window:** anything that asks for a password or waits for typed answers: `xcode-select --install`, the Homebrew installer, `brew install gh`, `winget install …`, the Claude Code installer, and `gh auth login`. Give them the exact command from the docs, tell them what they'll see, and wait for them to say it's done.
- **Never** ask for, read back, or type a password, a one-time code, an API key, or a token. If one appears in the conversation, tell them to treat it as seen and change it.
- **After any install,** they must close the terminal window and open a new one before the check sees it. On Windows, a new tab isn't enough.

## Mac and Windows differences

| | Mac | Windows |
|---|---|---|
| Open a terminal | `Cmd + Space`, type `Terminal`, `Return` | `Windows` key, type `Terminal` (or `PowerShell`), `Enter` |
| Git | `xcode-select --install` | Git for Windows from git-scm.com |
| GitHub CLI | Homebrew: `brew install gh` | `winget install --id GitHub.cli --source winget` |
| Claude Code | `curl -fsSL https://claude.ai/install.sh \| bash` | `irm https://claude.ai/install.ps1 \| iex` in PowerShell |
| `claude` not found | PATH fix in `docs/install-claude-code.md` step 3 | Close every terminal window and open a new one; then the troubleshooting link in step 3 |
| Open a folder | `open raw` | `explorer raw` |

## Real data

This repo is public, and so is their fork. If the check finds files from `raw/`, `derived/`, or `outputs/history/` staged or committed:

1. Tell them plainly: these files would be public.
2. **Not pushed yet:** offer to unstage them (`git restore --staged <file>`), or undo the last commit while keeping the files (`git reset --soft HEAD~1`, then unstage). Show the command and wait for a yes.
3. **Already pushed:** tell them to message Sean Larkin now. Don't try to rewrite history or force-push.

See `CONTRIBUTING.md` for everything that never gets committed.

## When you're stuck

If a fix doesn't work after two tries, or the error isn't covered here or in the docs, stop. Tell them to send Sean Larkin a Slack message with the exact error text and what they were doing.
