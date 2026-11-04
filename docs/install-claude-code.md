# Install Claude Code and Claude Desktop

**Sources (checked 2026-11-03):**
[Claude Code setup](https://code.claude.com/docs/en/setup) ·
[Claude Code quickstart](https://code.claude.com/docs/en/quickstart) ·
[Claude Desktop quickstart (Code tab)](https://code.claude.com/docs/en/desktop-quickstart) ·
[Install Claude Desktop](https://support.claude.com/en/articles/10065433-install-claude-desktop) ·
[Download Claude](https://claude.com/download)

> **Flagged:** some current facts that may surprise you.
> 1. **The recommended install is Anthropic's own installer, not npm.** npm still works (it needs Node.js 22+), but it's listed under "Advanced". You don't need Node.js.
> 2. **The free Claude plan doesn't include Claude Code.** You need a Pro, Max, Ultra, Team, Enterprise, or Console account. Sign in with your Opensend Claude account.
> 3. **Windows doesn't need WSL** (the Linux layer for Windows). Claude Code runs natively on Windows. Git for Windows is optional for Claude Code, but you installed it for GitHub in Session 1, so you're set.
> 4. **Claude Desktop already includes Claude Code** in its Code tab. The terminal version is a separate install. This series uses both.

## What you're installing

- **Claude Desktop:** the Claude app for your computer. It has Chat, and a **Code** tab that runs Claude Code inside the app.
- **Claude Code (terminal):** the same Claude Code, started by typing `claude` in a terminal.

**Requirements:** macOS 13 or later, or Windows 10 (1809) or later, 4 GB+ of memory, and an internet connection.

## 1. Install Claude Desktop

1. Go to <https://claude.com/download> and download the version for your computer.
2. Open the downloaded file and follow the installer.
3. Open Claude from your Applications folder (Mac) or Start menu (Windows).
4. Sign in with your Opensend Claude account.

**Check it:** you can see a **Code** tab at the top of the sidebar.

## 2. Install Claude Code in the terminal

Open a terminal (Mac: `Cmd + Space`, type `Terminal`. Windows: `Windows` key, type `PowerShell`) and run the line for your computer:

**Mac:**

```
curl -fsSL https://claude.ai/install.sh | bash
```

**Windows (PowerShell):**

```
irm https://claude.ai/install.ps1 | iex
```

How to tell you're in PowerShell: the line before your cursor starts with `PS C:\`. You don't need to run it as Administrator.

The install shows no progress while it downloads. Wait for it to finish. It updates itself in the background from then on.

## 3. Check the install

**Close the terminal and open a new one**, then run:

```
claude --version
```

You should see a version number followed by `(Claude Code)`. If something seems off, run `claude doctor`. It checks the install without starting a session.

**If you see `command not found: claude` (Mac):** the installer put Claude Code in a folder your terminal doesn't look in yet. Anthropic's [fix](https://code.claude.com/docs/en/troubleshoot-install) is to run these two lines, then try `claude --version` again:

```
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

**If you see `'claude' is not recognized` (Windows):** close every terminal window, open a new one, and try again. If it still fails, follow the Windows steps on the same [troubleshooting page](https://code.claude.com/docs/en/troubleshoot-install).

## 4. Sign in

Make an empty test folder, go into it, and start Claude Code there:

```
mkdir claude-test
cd claude-test
claude
```

The first time, it asks a few setup questions. Use the arrow keys and Enter:

- **A color theme:** pick any.
- **How to sign in:** pick the option for a Claude account with a subscription (it lists Team and Enterprise). Your browser opens; sign in with your **Opensend** Claude account, not a personal one, and approve.
- **Whether to trust the files in this folder:** say yes. It asks this once for each new folder you open, and you only say yes to folders you made or got from Opensend.

When it's waiting for your message, type `Say hello` and press Enter. It answers. Type `/exit` to leave. To switch accounts later, type `/login` inside Claude Code.

If signing in shows `Claude Code access has not been granted for this account`, your Opensend Claude seat doesn't include Claude Code yet. Tell Sean Larkin.

## Going deeper

- Other install methods (Homebrew, WinGet, npm) and troubleshooting: [setup](https://code.claude.com/docs/en/setup)
- Your first session, step by step: [quickstart](https://code.claude.com/docs/en/quickstart)
- Using Claude Code in the Desktop app: [desktop quickstart](https://code.claude.com/docs/en/desktop-quickstart)
