# Session 1 hands-on: get set up on GitHub

**Goal:** leave the session with a GitHub account, the GitHub CLI (`gh`) signed in, and a check that you can reach this repo, so Session 2 starts on the work instead of setup.

This repo is public, so you can read all of it on github.com before you install anything. The full install guide, with the official source for every step, is [`docs/install-github-cli.md`](../../docs/install-github-cli.md). Keep it open next to this checklist.

**Before you start:**

- **Mac:** if you can, do step 3 (Apple's command line tools) the day before. It's a big download.

Work through the steps in order. Each one says how you know it's done.

1. [ ] **Create a GitHub account** at <https://github.com/signup>. Use your Opensend work email. GitHub asks you to verify your email during sign-up.
   *Done when* you can sign in at github.com and see your own profile.

2. [ ] **Open a terminal.** A terminal is a window where you type commands instead of clicking.
   - **Mac:** press `Cmd + Space`, type `Terminal`, press `Return`.
   - **Windows:** press the `Windows` key, type `Terminal`, press `Enter`. If nothing called Terminal shows up, type `PowerShell` instead.

   *Done when* you have a window with a blinking cursor waiting for you to type.

3. [ ] **Install Git.** `gh` uses Git to download repos, so you need both. Follow step 3 of the install guide.
   *Done when* typing `git --version` in a new terminal window prints a version number.

4. [ ] **Install the GitHub CLI (`gh`).** Follow step 4 of the install guide for your computer. Then close the terminal window and open a new one.
   *Done when* typing `gh --version` and pressing Enter prints a version number.

5. [ ] **Sign in.** Type `gh auth login` and press Enter, then answer the questions as step 5 of the install guide shows: GitHub.com, HTTPS, Yes, Login with a web browser. It then shows a one-time code: copy it or write it down, press Enter, paste the code into the page that opens in your browser, and approve.
   *Done when* the terminal says you are logged in.

6. [ ] **Check that it worked.** Type `gh auth status` and press Enter.
   *Done when* it shows your GitHub username and says you are logged in to github.com.

7. [ ] **Tell Git who you are.** Follow step 7 of the install guide: two commands, with your own name and your Opensend email in place of the examples.
   *Done when* `git config --global user.email` prints your email.

8. [ ] **Check you can reach this repo from the terminal.** Type this and press Enter:

   ```
   gh repo view fueled-io/os-claude-advanced-training
   ```

   *Done when* it prints the start of this repo's README. You don't need any access beyond that: in Session 2 you make your own copy (a fork) and send your work back as a pull request.

Stuck? Write down the exact message you see and send it to Sean Larkin on Slack, or bring it to Session 2.
