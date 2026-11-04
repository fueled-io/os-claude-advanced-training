# Session 2: GitHub as your backend

**60 minutes:** 30 minutes of teaching, then 30 minutes hands-on.

**Premise:** A repo is a project folder that remembers, shows what changed, and can be handed to someone else.

## Teaching (30 minutes)

- **The five verbs:** clone, commit, push, pull, diff. Branches get one slide. Reference: [`docs/git-five-verbs.md`](../../docs/git-five-verbs.md).
- **README and CLAUDE.md:** the two files that make a repo self-explaining to a person and to Claude. Reference: [`docs/claude-md-and-readme.md`](../../docs/claude-md-and-readme.md).
- **Memories vs. context vs. skills,** and where CLAUDE.md fits. Reference: [`docs/memory-context-skills.md`](../../docs/memory-context-skills.md).
- **Claude Code vs. Claude Chat/Cowork:** which one for which job. Reference: [`docs/code-vs-chat.md`](../../docs/code-vs-chat.md).
- **.gitignore for raw inputs:** exports, PDFs, and customer data stay off GitHub. See this repo's [`.gitignore`](../../.gitignore). `.gitignore` doesn't keep them from Claude: anything Claude Code reads goes to Anthropic, so the AI acceptable use policy decides what belongs in `raw/`.
- **Why Artifacts and Projects aren't the source of truth:** no version history, no diff, no merge, owner-only editing on skills, and instructions drift between accounts. Projects and skills are where you deploy a procedure; the repo is where it lives.

## Hands-on (30 minutes)

Clone the starter repo, write a CLAUDE.md for one real workflow, have Claude Code make a change, and read the diff before accepting it.

Step by step: [`exercise.md`](exercise.md).

## Assignment

Move one recurring workflow or daily task into the repo.

Details: [`assignment.md`](assignment.md).
