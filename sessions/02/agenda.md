# Session 2: GitHub as your backend

**60 minutes:** 30 minutes of teaching, then 30 minutes hands-on.

**Premise:** A repo is a project folder that remembers, shows what changed, and can be handed to someone else.

## Teaching (30 minutes)

- **Under the hood:** you talk to Claude, and Claude runs Git. You don't need to type the commands, but knowing what they do lets you read what Claude is about to do and say no.
- **The six verbs:** clone, diff, commit, push, pull, merge. Branches, forks, and pull requests get one slide: a pull request asks the repo's owner to review your branch and merge it. Reference: [`docs/git-verbs.md`](../../docs/git-verbs.md).
- **README and CLAUDE.md:** the two files that make a repo self-explaining to a person and to Claude. Reference: [`docs/claude-md-and-readme.md`](../../docs/claude-md-and-readme.md).
- **Memories vs. context vs. skills,** and where CLAUDE.md fits. Reference: [`docs/memory-context-skills.md`](../../docs/memory-context-skills.md).
- **Claude Code vs. Claude Chat/Cowork:** which one for which job. Reference: [`docs/code-vs-chat.md`](../../docs/code-vs-chat.md).
- **Scheduled tasks (formerly routines):** cloud tasks run without your computer but only see what's on GitHub; local tasks in Claude Desktop run on your computer and can see `raw/`. Reference: [`docs/code-vs-chat.md`](../../docs/code-vs-chat.md#scheduled-tasks-formerly-called-routines).
- **.gitignore for raw inputs:** exports, PDFs, spreadsheets, and your workflow's real data stay off GitHub. See this repo's [`.gitignore`](../../.gitignore). `.gitignore` doesn't keep them from Claude: anything Claude Code reads goes to Anthropic, so the AI acceptable use policy decides what belongs in `raw/`.
- **What `.gitignore` can't catch:** personal information (PII), passwords, API keys, tokens, client details, and real numbers never go in any repo, public or private. They hide inside files you do commit, so read every diff.
- **What "public" means:** a GitHub setting. Anyone can read a public repo without an account, including your fork and pull request. This training repo is public. Reference: [`CONTRIBUTING.md`](../../CONTRIBUTING.md).
- **Why Artifacts and Projects aren't the source of truth:** no version history, no diff, no merge, owner-only editing on skills, and instructions drift between accounts. Projects and skills are where you deploy a procedure; the repo is where it lives.

## Hands-on (30 minutes)

Fork the starter repo, write a CLAUDE.md for one real workflow, have Claude Code make a change, read the diff before accepting it, and open a pull request.

Step by step: [`exercise.md`](exercise.md).

## Assignment

Move one recurring workflow or daily task into the repo.

Details: [`assignment.md`](assignment.md).
