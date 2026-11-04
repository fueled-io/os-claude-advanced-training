# Memories, context, skills, and Projects

**Sources (checked 2026-11-03):**
[Context windows](https://platform.claude.com/docs/en/build-with-claude/context-windows) ·
[Claude Code context window](https://code.claude.com/docs/en/context-window) ·
[Usage and length limits](https://support.claude.com/en/articles/11647753-how-do-usage-and-length-limits-work) ·
[Claude Code memory](https://code.claude.com/docs/en/memory) ·
[Chat search and memory (claude.ai)](https://support.claude.com/en/articles/11817273-use-claude-s-chat-search-and-memory-to-build-on-previous-context) ·
[Use skills in Claude](https://support.claude.com/en/articles/12512180-using-skills-in-claude) ·
[Claude Code skills](https://code.claude.com/docs/en/skills) ·
[What are Projects?](https://support.claude.com/en/articles/9517075-what-are-projects) ·
[Create and manage Projects](https://support.claude.com/en/articles/9519177-how-can-i-create-and-manage-projects)

> **Flagged:**
> 1. **Anthropic's own docs disagree about sharing skills.** The developer docs say claude.ai skills are individual to each user, can't be shared org-wide, and don't sync between apps. The newer Help Center says Team and Enterprise plans *can* share skills, publish them to the whole organization, and sync them one-way into Claude Code. This doc follows the newer Help Center page. Check in the app before relying on either.
> 2. **No official page says whether Projects or chat artifacts keep version history.** The series' claim that they don't comes from our own use, not from Anthropic's docs.
> 3. **Claude Code now keeps its own automatic memory** (on by default), in addition to CLAUDE.md. It's stored on your computer only. Teammates don't get it.
> 4. **Projects are changing.** A new version (one conversation per project, with parallel threads) is in beta.

## Context: what Claude can see right now

The **context window** is "all the text a language model can reference when generating a response". It's Claude's working memory for one conversation: your messages, the files it has read, and its own replies.

- It has a size limit. In Claude Code, `/context` shows how full it is.
- **More isn't better.** Anthropic warns about "context rot": a stuffed context makes answers worse. In Claude Code, use `/clear` when you switch to unrelated work.
- When it fills up, Claude summarizes the older part (`/compact` in Claude Code). Details can get lost in the summary.
- **When the conversation ends, its context is gone.**

## Memories: what carries between conversations

- **claude.ai memory:** Claude can build a memory from your past chats. You can see and edit it under Settings. Each Project has its own memory. On Team and Enterprise, it starts *off* for members until they turn it on.
- **Claude Code auto memory:** Claude Code writes itself notes about your project. They stay on your computer and nobody else sees them.

Memory is a helper, not a record. You can't diff it, review it, or hand it to a teammate.

## Skills: packaged instructions

A **skill** is a folder with a `SKILL.md` file of instructions (plus any supporting files). Claude loads it when a task calls for it, or you call it by name, like `/skill-name`.

- **In Claude Code:** skills live in `.claude/skills/<name>/SKILL.md`. Put one in the repo and commit it, and everyone who clones gets it.
- **In claude.ai:** upload a zipped skill folder under Customize → Skills. It's private until you share it. On Team and Enterprise you can share it (people you share with can view, not edit) or publish it to the org.

## Projects: workspaces on claude.ai

A **Project** is a workspace with its own chats, uploaded files (project knowledge), and instructions that apply to every chat inside it. On Team and Enterprise you can share it as view-only or editable.

## Where CLAUDE.md fits

CLAUDE.md is instructions **in a file in your repo**. Claude Code reads it at the start of every session.

## Why the repo is the source of truth

| | Context | Memory | Skill / Project on claude.ai | CLAUDE.md and files in the repo |
|---|---|---|---|---|
| Survives the conversation | ✗ | ✓ | ✓ | ✓ |
| Same for every teammate | ✗ | ✗ | Only if shared, and copies drift | ✓ (everyone clones the same thing) |
| Shows exactly what changed | ✗ | ✗ | ✗ | ✓ (`git diff`) |
| Full history you can go back to | ✗ | ✗ | Not documented | ✓ (every commit) |

**Projects and skills are where you deploy a procedure. The repo is where it lives.** Write it in the repo, review it with a diff, then copy it into a Project or skill if that's where people will use it.

## Going deeper

- [Context windows explained](https://platform.claude.com/docs/en/build-with-claude/context-windows)
- [Claude Code skills](https://code.claude.com/docs/en/skills)
