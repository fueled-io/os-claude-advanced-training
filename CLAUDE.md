# Customer Lifecycle review

## What this workflow does

Every week a CSM reviews every account in their book and decides what to do first, using one dashboard that ranks accounts by how close each one is to churning. In: the CRM portfolio, product usage numbers, the daily customer report spreadsheet, the email-platform audit and the week's conversations. Out: a status, a reason and a priority for every account, a short list of approved actions, and a one-minute brief for each client meeting of the week.

- **Who runs it:** Mateus Paderes (Customer Success), with Claude.
- **How often:** data refresh every day, review every week (Sunday and Monday), email-platform audit twice a month, client performance reports once a month.
- **Who uses the result:** the CSM, to decide who to call first and what to say. Other CSMs can open the same dashboard on their own portfolio.

## Who you are talking to

The person working in this repo is a CSM, not an engineer.

- Use plain words. If you have to use a technical term (commit, branch, diff, terminal), say what it means the first time it comes up.
- Go one step at a time. Say what you are about to do and why before you do it.
- Before you run a command, say in one sentence what it does.
- When something goes wrong, explain what happened in plain terms and what the person can do next.
- Keep answers short. If the person asks for more detail, give it then.

## Inputs

<!-- Every input lives in raw/ and is never committed. -->

| File | Where it comes from | How to get it |
|---|---|---|
| `raw/customer-report-[YYYY-MM-DD].xlsx` | The company's daily customer report spreadsheet (plans, credits, rollover, overage, add-on numbers) | Exported each morning by the daily refresh task |
| `raw/usage-[YYYY-MM-DD].json` | The product metrics connector (deliveries, emails, spam, unsubscribes, attributed orders and revenue per day) | Pulled each morning by the daily refresh task; numbers are parsed from the tool answers, never retyped |
| `raw/portfolio-[YYYY-MM-DD].json` | The CRM: the CSM's tickets in the customer pipeline (stage, go-live date, tier, renewal) | CRM connector search by owner |
| `raw/email-audit-[YYYY-MM-DD]/` | The email-platform audit of each account (flows, deliverability, complaining domains) | The audit task on the 14th and the 28th |
| (not saved) | Slack, email and meeting notes of the last 7 days | Read by Claude on Sunday and summarized; message text is never stored |

## How it's done today

1. **Every morning** a scheduled task refreshes the numbers (the customer report copy and the usage pull) and updates the dashboard, a claude.ai Data artifact.
2. **The dashboard applies the status rules.** Each account gets one status: red (churn risk within 2 to 4 weeks), yellow (1 to 3 months if nothing changes), green, no status (cannot be measured), paused or not running. Every check says why. Inside each status, a priority score ranks the accounts, and a credits column says whether the plan will run out.
3. **On the 14th and the 28th** the email-platform audit runs for every account, and Claude turns its findings into tasks per account, each linked to a playbook (what to check, which option fits, what to record).
4. **On Sunday** a scheduled task reads the week's conversations and fills two tabs: what changed per account with the new actions, and a brief for each client meeting of the coming week.
5. **On Monday** the CSM approves, rejects or takes each action, then works the list from the top. Any change to a client setting is proposed by Claude, approved by the CSM, applied, read back and recorded.
6. **Once a month** Claude drafts every client's performance report and message; the CSM reviews and sends them.

What gets handed over: the decisions and task status in the dashboard, and the messages the CSM sends. Nothing goes to a client without the CSM.

## Steps

<!-- Leave this section as it is until Session 3. WORKFLOW.md and steps/ don't exist yet. -->

The numbered steps are in `WORKFLOW.md`, one file per step in `steps/`. Run them one at a time. After each step, check its done-check and stop for review before going on.

## Outputs

| File | What it is | Where it goes |
|---|---|---|
| `outputs/history/[YYYY-MM-DD]-weekly-review.md` | The week's review: status, reason and priority per account, and the actions decided | The CSM; kept on this computer |
| `outputs/history/[YYYY-MM-DD]-meeting-briefs.md` | One brief per client meeting of the week | The CSM, before each call |

## How to check it still works

<!-- Leave this section as it is until Session 4, when you make the golden example. -->

Run the golden example in `golden/`. Its README says what the correct output is.

## Where things live

| Folder | What goes there | Committed to GitHub? |
|---|---|---|
| `raw/` | Inputs exactly as they arrived: exports, PDFs, spreadsheets | Never |
| `derived/` | Files the workflow steps create from the raw inputs and can recreate any time | Never: they hold real data |
| `outputs/history/` | Finished results, one file per run, kept forever | Never in this public repo. Kept on this computer, never overwritten |
| `golden/` | The golden example: a made-up input and its correct output | Yes. Made-up data only |
| `templates/` | Starting points for CLAUDE.md, steps, and the golden example | Yes |
| `docs/` | Short reference docs for the series | Yes |

## Rules you must always follow

1. **Never commit anything under `raw/`, `derived/`, or `outputs/history/`.** Before every commit, run `git status` and make sure no file from those folders is staged.
2. **Check every commit for sensitive content.** This repo is public. Read the staged diff, the commit message, and any pull request text for anything on the "Never commit" list in `CONTRIBUTING.md`: client or customer names and details, real business numbers, personal information, passwords, API keys, tokens, internal links, screenshots. If you find any, stop, show me the lines, and suggest a made-up replacement.
3. **Never overwrite anything under `outputs/history/`.** Each run writes a new file with the date in its name. If a step would write over an existing file there, stop and ask.
4. **Always show a diff before applying a change,** and wait for a yes.
5. **Never push to `fueled-io/os-claude-advanced-training` directly.** Push my branch to my fork, and open a pull request.
6. **Nothing is sent to a client, and no client setting is changed, without the CSM's explicit yes.** Claude drafts and proposes; the CSM approves.
7. **Numbers are copied from tool results, never retyped.** A number in a message or a brief must match its source exactly.

## Helping someone set up

If the person asks for help with setup, or hits an install, sign-in, fork, push, or pull-request error, use the `/check-setup` skill (`.claude/skills/check-setup/SKILL.md`). Never ask for, read back, or type a password, one-time code, key, or token: the person runs anything that needs one in their own terminal window.
