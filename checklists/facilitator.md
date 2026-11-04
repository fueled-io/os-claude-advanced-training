# Facilitator checklist (for Sean)

Things that happen outside the sessions.

## How the repo is set up (2026-11-04)

- **Public.** Anyone can read it, so participants don't need an invitation. They fork it in Session 2 and send their work back as a pull request.
- **Only Sean changes `main`.** `main` changes only through a pull request with an approving review. Force pushes and deleting `main` are blocked. Repo admins can merge their own pull requests without a second reviewer, but still only through a pull request.
- **Every pull request asks Sean to review** ([`.github/CODEOWNERS`](../.github/CODEOWNERS)), and the pull request template carries the "nothing sensitive" checklist from [`CONTRIBUTING.md`](../CONTRIBUTING.md).
- **GitHub secret scanning and push protection are on.** A push that contains a recognizable password or API key is blocked.
- The other fueled-io organization owners also have admin rights on this repo. GitHub doesn't let a repo take that away from an organization owner.

## Before Session 1

- [ ] **Add the AI acceptable use policy link** to [`sessions/01/agenda.md`](../sessions/01/agenda.md) when it's ready. It says "(link coming)" until then.
- [ ] **Suggest Mac users run `xcode-select --install` the day before.** It downloads Apple's command line tools, which can take a large part of a 30-minute hands-on.

## From Session 2 on

- [ ] **When someone is stuck on setup,** have them run `/check-setup` in Claude Code inside the repo folder, or the script directly ([`README.md`](../README.md#check-your-setup)), and send you the output.
- [ ] **Review participants' pull requests.** Each participant opens one pull request in Session 2, and every later push adds to it. Review there; don't merge them. Check each one against the "Never commit" list in [`CONTRIBUTING.md`](../CONTRIBUTING.md).
- [ ] **If something sensitive is pushed,** have the participant rotate any password or key first. Deleting it in a new commit doesn't remove it from the history, their fork, or the pull request.

## Claude Code seats

Claude Code is included with every Team plan seat. On Enterprise, it's included with the single Enterprise seat on new and self-serve plans; older Enterprise plans include it only on Chat + Claude Code seats and Premium seats ([Anthropic: Use Claude Code with your Team or Enterprise plan](https://support.claude.com/en/articles/11845131-use-claude-code-with-your-team-or-enterprise-plan), checked 2026-11-04). A participant without it sees `Claude Code access has not been granted for this account` when they sign in.
