# CLAUDE.md and README.md

**Sources (checked 2026-11-03):**
[About the repository README file (GitHub)](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes) ·
[How Claude remembers your project (Claude Code memory)](https://code.claude.com/docs/en/memory)

> **Flagged:**
> 1. **CLAUDE.md is guidance, not a lock.** Anthropic's docs say Claude treats CLAUDE.md as "context, not enforced configuration". Claude follows it closely, but nothing physically stops a forbidden action. That's why this series also uses `.gitignore`, and why you read every diff.
> 2. **Claude Code also reads `AGENTS.md`**, but only when there's no CLAUDE.md. If a repo has both, it reads only CLAUDE.md. Stick to CLAUDE.md.

Two files make a repo explain itself: **README.md** for a person, **CLAUDE.md** for Claude.

## README.md: for people

GitHub: a README tells "other people why your project is useful", and it's "often the first item a visitor will see". GitHub shows it on the repo's front page.

**Put in it:** what the project does and why, who it's for, how to get started, where to get help, and who maintains it.

## CLAUDE.md: for Claude

Claude Code reads CLAUDE.md automatically at the start of every session in that folder. It's the instructions you'd otherwise retype every time.

**Put in it:** who Claude is talking to, what the workflow is, where the inputs and outputs live, and the rules it must always follow.

**Keep it short.** Anthropic recommends under 200 lines per CLAUDE.md. Longer files cost more and get followed less reliably.

## What goes where

| Information | README.md | CLAUDE.md |
|---|---|---|
| What this repo is for | ✓ (for a person deciding whether to use it) | ✓ (one line, so Claude has the purpose) |
| How to install and clone | ✓ | |
| Who the audience is, and how to talk to them | | ✓ |
| The rules: never commit `raw/`, never overwrite history, show diffs | (mention them) | ✓ (word for word) |
| Where inputs and outputs live | ✓ | ✓ |
| Who to ask for help | ✓ | |

## Examples

**README.md excerpt:**

```markdown
# Monthly churn report

Builds the monthly churn summary the CS team sends to leadership.

## Get started
1. Clone: `gh repo clone fueled-io/churn-report`
2. Put this month's export from the billing system in `raw/`.
3. Open the folder in Claude Code and ask it to run WORKFLOW.md.

Questions: ask the CS ops team.
```

**CLAUDE.md excerpt:**

```markdown
# Monthly churn report

You're working with CS team members, not engineers. Use plain words.

## Inputs
- raw/billing-export.csv: the billing system's monthly cancellations export

## Rules
1. Never commit anything under raw/.
2. Never overwrite anything under outputs/history/.
3. Always show a diff before applying a change.
```

## Useful Claude Code commands

- `/init` writes a starter CLAUDE.md by looking at the repo. If one already exists, it suggests improvements instead.
- `/memory` shows which CLAUDE.md files are loaded and opens them for editing.

Templates for this series: [`templates/CLAUDE.template.md`](../templates/CLAUDE.template.md).

## Going deeper

- [Claude Code memory docs](https://code.claude.com/docs/en/memory): file locations, imports, and rules folders
