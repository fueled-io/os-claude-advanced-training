# Claude Code vs. Claude Chat and Cowork

**Sources (checked 2026-11-03):**
[Claude Desktop quickstart (Code tab)](https://code.claude.com/docs/en/desktop-quickstart) ·
[Claude Cowork](https://claude.com/product/cowork) ·
[Get started with Claude Cowork](https://support.claude.com/en/articles/13345190-get-started-with-claude-cowork) ·
[Claude Cowork and Chat are one Claude](https://support.claude.com/en/articles/16761823-claude-cowork-and-chat-are-one-claude) ·
[Cloud scheduled tasks](https://code.claude.com/docs/en/routines) ·
[Desktop scheduled tasks](https://code.claude.com/docs/en/desktop-scheduled-tasks) (scheduled tasks checked 2026-11-04)

> **Flagged:**
> 1. **Chat and Cowork are being merged into one.** Anthropic is combining them into "a single conversation" in stages. It's in beta on Team plans, and Enterprise admins switch it on. Once merged you can't switch back. The **Code** tab is not affected. Depending on your account, you may see Chat and Cowork as separate modes or as one.
> 2. **Cowork uses your usage limits faster than Chat**, according to Anthropic's product page.

## The three, in one line each

- **Chat:** a conversation. You ask, Claude answers, and you copy out what you need.
- **Cowork:** you give Claude a goal and it works across your files and tools on its own, with no terminal. Anthropic built it for non-coding knowledge work, using the same approach as Claude Code. Paid plans only.
- **Claude Code:** Claude works inside a folder on your computer (a repo). It reads and edits the files there, runs commands, and shows you a diff before changing anything. Use it in a terminal (`claude`) or in Claude Desktop's **Code** tab.

## Which one for which job

| Question to ask yourself | If yes |
|---|---|
| Will I, or a teammate, do this again? | **Claude Code**, in a repo |
| Does the result need to come out the same every time? | **Claude Code**, with the steps written down |
| Does someone need to check what changed? | **Claude Code**: you get a diff and history |
| Is it a one-off: a question, a draft, a brainstorm? | **Chat** |
| Is it a one-off task across my files or apps, and I want Claude to just do it? | **Cowork** |

The test is **repeatability**. Chat and Cowork are great for work that ends when the conversation ends. Anything that should outlive the conversation belongs in files, in a repo, run with Claude Code.

## Scheduled tasks (formerly called routines)

Once a workflow lives in a repo, Claude Code can run it on a schedule. Anthropic now calls these **scheduled tasks**; the cloud kind used to be called **routines**, and that name still shows up in places (the web address is still claude.ai/code/routines). There are two kinds:

| | Cloud scheduled task (formerly a routine) | Local scheduled task (Claude Desktop) |
|---|---|---|
| Runs on | Anthropic's cloud | Your computer |
| Your computer | Can be off | Must be awake, with Claude Desktop open. A run that falls while it's asleep is skipped, and one catch-up run happens when it wakes |
| What it can see | A fresh copy of the repo from GitHub. Nothing on your computer | Everything in the folder, including `raw/` |
| Starts on | A schedule, an API call, or a GitHub event (like a new pull request) | A schedule, or **Run now** |
| Shortest interval | 1 hour | 1 hour in the form; Claude can set shorter |
| Set it up | claude.ai/code/routines, or `/schedule` in Claude Code | Claude Desktop → **Code** → **Scheduled** → **New task** |
| Plans | Pro, Max, Ultra, Team, Enterprise | Needs Claude Desktop 1.1.5368 or later |

**For this series:** `raw/`, `derived/`, and `outputs/history/` never go to GitHub, so a cloud task can't see them. A workflow that reads your real inputs runs as a **local** scheduled task. Cloud tasks fit work that only needs what's in the repo, like reviewing every new pull request.

A third option, `/loop`, repeats a prompt inside a Claude Code session you have open. It stops when the session ends.

## Getting started in the Code tab

1. Open Claude Desktop and click **Code** at the top of the sidebar.
2. Choose **Local**, then **Open folder…**, and pick your repo folder.
3. Ask for what you need. The same CLAUDE.md rules apply here as in the terminal.

The Code tab needs a Pro, Max, Ultra, Team, or Enterprise plan. The Desktop app includes Claude Code, so the Code tab works without the terminal install.

## Going deeper

- [Desktop quickstart](https://code.claude.com/docs/en/desktop-quickstart)
- [Get started with Cowork](https://support.claude.com/en/articles/13345190-get-started-with-claude-cowork)
