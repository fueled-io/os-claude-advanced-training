# Install the GitHub CLI and sign in

**Sources (checked 2026-11-03):**
[GitHub CLI](https://cli.github.com/) ·
[gh install on macOS](https://github.com/cli/cli/blob/trunk/docs/install_macos.md) ·
[gh install on Windows](https://github.com/cli/cli/blob/trunk/docs/install_windows.md) ·
[Creating an account on GitHub](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github) ·
[GitHub CLI quickstart](https://docs.github.com/en/github-cli/github-cli/quickstart) ·
[`gh auth login`](https://cli.github.com/manual/gh_auth_login) ·
[`gh auth status`](https://cli.github.com/manual/gh_auth_status) ·
[Install Git: macOS](https://git-scm.com/install/mac) / [Windows](https://git-scm.com/install/windows) ·
[Setting your username in Git](https://docs.github.com/en/get-started/git-basics/setting-your-username-in-git)

> **Flagged:** three things differ from what you might expect.
> 1. **You need Git as well as `gh`.** `gh` hands downloading (`gh repo clone`) to Git. GitHub's "Set up Git" page says to install Git. No official page says `gh` installs Git for you, so step 3 installs it.
> 2. **On a Mac, the only official ways to install `gh` are Homebrew and the downloadable files.** The downloadable Mac installers are currently unsigned, so macOS will warn about them. This guide uses Homebrew.
> 3. **Two-factor authentication (2FA) is recommended, not required,** for new GitHub accounts, and Opensend's GitHub organization (`fueled-io`) doesn't require it either (checked 2026-11-03). Turn it on anyway.

**Admin rights:** installing Git, Homebrew and `gh` asks for your computer's administrator password. On a company-managed laptop you may not have one. If an installer asks for a password you don't know, or says you aren't an administrator, stop and tell Sean Larkin; IT can install them for you.

`gh` is GitHub's command-line tool: it lets you sign in to GitHub and download repos by typing commands in a terminal. A **terminal** is a window where you type commands instead of clicking.

## 1. Create a GitHub account

1. Go to <https://github.com/signup>.
2. Use your Opensend work email and follow the prompts. GitHub asks you to verify your email address during sign-up.
3. GitHub strongly recommends turning on two-factor authentication: Settings → Password and authentication → **Enable two-factor authentication**. GitHub walks you through it; an authenticator app on your phone is the simplest option.

## 2. Open a terminal

- **Mac:** press `Cmd + Space`, type `Terminal`, press `Return`.
- **Windows:** press the `Windows` key, type `Terminal` (or `PowerShell`), press `Enter`.

To run a command, type it (or paste it) and press Enter.

**After installing anything, close the terminal window and open a new one** before you check it. The terminal only notices new programs when it starts. On Windows, a new tab isn't enough; open a new window.

## 3. Install Git

- **Mac:** run `xcode-select --install`. A window pops up. Click **Install** and wait for it to finish. (If it says the tools are already installed, you're done.)
- **Windows:** go to <https://git-scm.com/install/windows>, download Git for Windows, and run it. The default choice on every screen is fine.

Check it: close the terminal, open a new one, and run `git --version`. You should see a version number.

## 4. Install `gh`

**Mac (Homebrew):**

1. Check for Homebrew: run `brew --version`. If you see a version number, skip to step 3.
2. If you see `command not found`, install Homebrew. The command is on <https://brew.sh>:
   ```
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
   - It asks for your Mac password. Nothing shows while you type the password. That's normal; type it and press Return.
   - It then lists what it will install and says **Press RETURN/ENTER to continue**. Press Return.
   - When it finishes, it prints a **Next steps** section with one or two commands. Copy each one exactly, paste it into the terminal, and press Return. On newer Macs, skipping this is why `brew` comes back as `command not found`.
3. Run:
   ```
   brew install gh
   ```

**Windows (WinGet):**

```
winget install --id GitHub.cli --source winget
```

Or download the `.msi` installer from <https://github.com/cli/cli/releases/latest>.

**Then, on either computer, close the terminal window and open a new one.**

**Check it:** run `gh --version`. You should see a version number.

## 5. Sign in: `gh auth login`

Run:

```
gh auth login
```

It asks a few questions. Use the arrow keys to choose and Enter to confirm:

| It asks | Choose |
|---|---|
| Where do you use GitHub? | **GitHub.com** |
| Preferred protocol for Git operations? | **HTTPS** |
| Authenticate Git with your GitHub credentials? | **Y** (yes) |
| How would you like to authenticate? | **Login with a web browser** |

Then it prints a **one-time code** (8 characters, like `ABCD-1234`) and waits:

1. Copy the code, or write it down. (To copy from a terminal, select it with your mouse, then press `Cmd + C` on a Mac or right-click on Windows.)
2. Press Enter. Your browser opens a GitHub page.
3. Paste or type the code there, click **Continue**, then **Authorize**.
4. Back in the terminal, it says you're logged in.

GitHub doesn't publish the complete list of questions, so if you see one not shown here, take the default (just press Enter).

## 6. Check it worked: `gh auth status`

```
gh auth status
```

It shows your GitHub username and says you're logged in to github.com. If something's wrong, it says what.

## 7. Tell Git who you are (one time)

Every saved change (commit) is labeled with a name and email. Set yours. These are examples: put your own name and Opensend email in place of `Alex Kim` and `alex@opensend.com`, and keep the quote marks.

```
git config --global user.name "Alex Kim"
git config --global user.email "alex@opensend.com"
```

## Going deeper

- All `gh` commands: <https://cli.github.com/manual/>
- The other install options: [macOS](https://github.com/cli/cli/blob/trunk/docs/install_macos.md), [Windows](https://github.com/cli/cli/blob/trunk/docs/install_windows.md)
