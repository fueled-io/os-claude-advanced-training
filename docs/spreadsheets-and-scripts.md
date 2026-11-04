# Spreadsheets: edit them, or have a script make them?

**Source:** This is Opensend practice for the series (Session 4). Python install pages: [python.org downloads](https://www.python.org/downloads/).

Many workflows end in a spreadsheet. There are two ways to have Claude make one.

## Two ways

| | Claude edits the spreadsheet | Claude writes a script that makes the spreadsheet |
|---|---|---|
| What happens | Claude opens the file and changes cells, every time you ask | Claude writes a Python script once. The script reads `raw/` and writes the spreadsheet |
| Next month | You ask again, and it works it out again | You run the script again |
| Same input, same result? | Not guaranteed: each run is a new attempt | Yes: the script does the same thing every time |
| Can you review it? | Hard: a spreadsheet has no readable diff | Yes: the script is a text file, and changes to it show in a diff |
| Can a teammate run it? | Only by asking Claude the same way you did | Yes: it's a file in the repo, with a step that says how to run it |

**For anything you'll run more than once, have Claude write the script.** Editing a spreadsheet directly is fine for a one-off.

This is the same idea as the rest of the series: the procedure lives in a file, not in a conversation.

## How to ask for it

In Claude Code, inside your repo:

> Write a Python script at `steps/03-build-summary.py` that reads `raw/[your input file]` and writes a new spreadsheet to `outputs/history/[YYYY-MM]-[name].xlsx`. Never write over an existing file there. Don't edit any spreadsheet by hand. Show me the script before you run it, then add a step to WORKFLOW.md that says how to run it.

Then:

1. **Read the script's diff,** the same way you read any change. You don't need to understand every line. Ask Claude to explain any part in plain words.
2. **Run it on your golden example** (`golden/`) and compare with the golden output.
3. **Commit the script,** not the spreadsheet. The spreadsheet holds real results and stays in `outputs/history/` on your computer.

## What you need

- **Python 3.**
  - **Mac:** it usually comes with Apple's command line tools, which you installed with Git in Session 1. Check: `python3 --version`.
  - **Windows:** install it from <https://www.python.org/downloads/>. Check, in a new terminal window: `python --version`.
- **A library for spreadsheets.** Python needs an add-on to read and write `.xlsx` files. Claude Code tells you which one and asks before it installs anything.

If either check fails, ask Claude Code, or run `/check-setup`.
