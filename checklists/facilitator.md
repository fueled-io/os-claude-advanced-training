# Facilitator checklist (for Sean)

Things that have to happen outside the sessions, or participants get stuck. Checked against the fueled-io organization's settings on 2026-11-03: members get **read** access to repos by default, and the organization does **not** require two-factor authentication.

## A week before Session 1

- [ ] **Send the Session 1 material outside the repo.** The repo is private, so participants can't open it until the end of Session 1. Send each participant [`sessions/01/exercise.md`](../sessions/01/exercise.md) and [`docs/install-github-cli.md`](../docs/install-github-cli.md), pasted into an email or Slack message or exported as PDFs.
- [ ] **Check admin rights with IT.** Installing Git, Homebrew (Mac) and the GitHub CLI asks for an administrator password. Find out which participants' laptops are managed and don't give them one, and have IT install Git and the GitHub CLI for them before Session 1.
- [ ] **Suggest Mac users run `xcode-select --install` the day before.** It downloads Apple's command line tools, which can take a large part of a 30-minute hands-on.
- [ ] **Add the link to the AI acceptable use policy** to [`sessions/01/agenda.md`](../sessions/01/agenda.md), so participants can find it after Jessica Wallen's preface.

## During and after Session 1

- [ ] **Create a team with Write access to this repo.** In the fueled-io organization, make a team (for example `claude-training`) and give it the **Write** role on `os-claude-advanced-training`. The organization default is read, and read isn't enough to push a branch in Session 2.
- [ ] **Invite each participant into that team** as their GitHub username arrives. Invitations expire after 7 days; resend any that lapse.
- [ ] **Check every participant's access before Session 2.** Each one runs `gh repo view fueled-io/os-claude-advanced-training --json viewerPermission` (Session 1 hands-on, step 8). It should say `WRITE`.

## Before Session 2

- [ ] **Confirm every participant's Claude seat includes Claude Code.** On an Enterprise plan, an organization Owner grants Claude Code access through roles. A participant without it sees `Claude Code access has not been granted for this account` when they sign in from Claude Code (see [Anthropic's troubleshooting page](https://code.claude.com/docs/en/troubleshoot-install)).
