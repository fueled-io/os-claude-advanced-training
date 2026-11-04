# Get Claude to help you set up

Claude can walk you through every part of the setup, on a Mac or on Windows. What it can do depends on how far you've got:

| Where you are | Use | Claude can |
|---|---|---|
| **A. Nothing installed yet** | Claude in your browser (claude.ai), or the Claude Desktop app's chat | Read the install guides and walk you through them. It can't see your computer, so you paste what the terminal says |
| **B. Claude Code installed, no copy of the repo yet** | Claude Code in a terminal | Check what's installed, explain errors, and run safe commands for you |
| **C. Your copy of the repo is on your computer** | Claude Code inside the repo folder | Run the setup check (`/check-setup`) and fix what it finds |

Sign in to Claude with your **Opensend** Claude account, not a personal one, in all three.

## A. Nothing installed yet

1. Go to <https://claude.ai> in your browser (or open Claude Desktop) and sign in with your Opensend account.
2. Start a new chat and paste this. Change the words in brackets first.

> I'm setting up my computer for Opensend's Claude Code training, "We're All Software Developers Now". I'm on a **[Mac / Windows]** computer and I've never used a terminal. Please read these two setup guides:
>
> https://raw.githubusercontent.com/fueled-io/os-claude-advanced-training/main/docs/install-github-cli.md
>
> https://raw.githubusercontent.com/fueled-io/os-claude-advanced-training/main/docs/install-claude-code.md
>
> Walk me through them one step at a time, only the steps for my computer. After each step, tell me what I should see, and wait for me to paste what my terminal says before you go on. Use only the commands in those guides. Never ask me for a password, a one-time code, or a key.

3. Do one step, paste what the terminal says back into the chat, and keep going.

**If Claude says it can't open the links:** open each link yourself, select everything on the page (`Cmd + A` on a Mac, `Ctrl + A` on Windows), copy it, and paste it into the chat.

## B. Claude Code installed, no copy of the repo yet

1. Open a terminal (Mac: `Cmd + Space`, type `Terminal`, `Return`. Windows: `Windows` key, type `Terminal` or `PowerShell`, `Enter`).
2. Type `claude` and press Enter.
3. Paste this:

> I'm setting up for Opensend's training, "We're All Software Developers Now". I'm not an engineer. Read the setup instructions at https://raw.githubusercontent.com/fueled-io/os-claude-advanced-training/main/.claude/skills/check-setup/SKILL.md and follow them, but I don't have my copy of the repo yet, so instead of the script, check these yourself: Git installed, GitHub CLI installed, signed in to GitHub (`gh auth status`), and my Git name and email set. Tell me what's working and the first thing to fix. Ask before you run anything that changes my computer.

Claude Code asks before it runs each command. Read its one-line description, and say yes if it matches what you asked for.

## C. Your copy of the repo is on your computer

This is the usual case from Session 2 on.

1. Open a terminal, type `cd os-claude-advanced-training`, press Enter.
2. Type `claude` and press Enter. (Or, in Claude Desktop, click **Code** and open the `os-claude-advanced-training` folder.)
3. Type `/check-setup` and press Enter. Or just say "check my setup".

It runs a read-only check of everything: Git, the GitHub CLI, your GitHub sign-in, Claude Code, your Git name and email, your fork, your branch, your pull request, and that no real data is about to be committed. It tells you what's working and the first thing to fix, and helps you fix it.

**Running the check without Claude:** from inside the repo folder,

- Mac: `bash .claude/skills/check-setup/scripts/check-setup.sh`
- Windows (PowerShell): `powershell -ExecutionPolicy Bypass -File .claude\skills\check-setup\scripts\check-setup.ps1`

## What Claude won't do

- **Type passwords or codes for you.** Anything that asks for your computer's password, or shows a one-time code (`gh auth login`), you run yourself in a terminal window. Claude tells you the exact command and what you'll see.
- **Push to Opensend's repo.** You push to your own fork and open a pull request. See [`CONTRIBUTING.md`](../CONTRIBUTING.md).
- **Guess.** If a fix doesn't work after two tries, it tells you to send Sean Larkin the exact error on Slack.
