# Instructions for Claude in this repo

This is the starter repo for **We're All Software Developers Now**, Opensend's four-session training on using Claude Code with GitHub as the backend. The agenda is in `AGENDA.md`. Session material is in `sessions/`, reference docs in `docs/`, templates in `templates/`, and the slide deck in `slides/`.

## Who you are talking to

The people working in this repo are **not engineers**. They work in sales, customer success, finance, and operations. Many of them have never used a terminal before this series.

- Use plain words. If you have to use a technical term (commit, branch, diff, terminal), say what it means the first time it comes up.
- Go one step at a time. Say what you are about to do and why before you do it.
- Before you run a command, say in one sentence what it does.
- When something goes wrong, explain what happened in plain terms and what the person can do next. Don't paste a wall of error text without explaining it.
- Keep answers short. If the person asks for more detail, give it then.

## Rules you must always follow

**This repo is public.** Everything committed and pushed, including to a person's fork and pull request, can be read by anyone. `CONTRIBUTING.md` lists what may never be committed.

1. **Never commit anything under `raw/`, `derived/`, or `outputs/history/`.** Raw inputs, derived files, and real results hold real data and stay on this computer. Before every commit, run `git status` and check that no file from those folders is staged. If one is, unstage it, tell the person, and do not commit until it's gone.
2. **Check every commit for sensitive content.** Before you commit, read the staged diff for anything on the "Never commit" list in `CONTRIBUTING.md`: client or customer names and details, real business numbers, personal information, passwords, API keys, tokens, internal links, screenshots. If you find any, stop, show the person the exact lines, and suggest a made-up replacement ("Client A", "$12,345"). Don't commit until they've decided. Check the commit message and pull request text the same way.
3. **Never overwrite anything under `outputs/history/`.** Don't edit, replace, rename, move, or delete any file there. A new run writes a new file with a new name (for example, the date in the filename). If a step would write over an existing file in `outputs/history/`, stop and ask the person.
4. **Always show a diff before applying a change.** Before you change any file, describe the change in plain words, show the diff (the before and after), and wait for the person to say yes. This applies to every change, however small.
5. **Never push to `fueled-io/os-claude-advanced-training` directly.** Participants push their branch to their own fork and open a pull request. If a push would go to `fueled-io`, stop and explain.

## Helping someone set up

If the person asks for help with setup, or hits an install, sign-in, fork, push, or pull-request error, use the `/check-setup` skill (`.claude/skills/check-setup/SKILL.md`). It runs a read-only check on a Mac or on Windows and lists the fix for each problem. The step-by-step install guides are `docs/install-github-cli.md` and `docs/install-claude-code.md`; use their commands, don't invent your own. Never ask for, read back, or type a password, one-time code, key, or token: the person runs anything that needs one in their own terminal window.

## Where things live

| Folder | What goes there | Committed to GitHub? |
|---|---|---|
| `raw/` | Inputs exactly as they arrived: exports, PDFs, spreadsheets | Never |
| `derived/` | Files the workflow steps create from the raw inputs and can recreate any time | Never: they hold real data |
| `outputs/history/` | Finished results, one file per run, kept forever | Never in this public repo. Kept on your computer, never overwritten |
| `golden/` | The golden example: a made-up input and its correct output | Yes. Made-up data only |
| `templates/` | Starting points for a workflow's CLAUDE.md, steps, and golden example | Yes |
| `checklists/` | The pre-send checklist and the facilitator checklist | Yes |
| `docs/` | Short reference docs for the series | Yes |
| `.claude/` | Claude Code settings for this repo and the `/check-setup` skill | Yes |
