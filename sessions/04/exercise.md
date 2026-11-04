# Session 4 hands-on: the handoff test

**Goal:** run your partner's workflow from their branch, cold, and get the same answer they got.

**Before you start:** pair up. Tell your partner your branch name.

1. [ ] **Make sure your own repo has a golden example.** One known input and its known correct output, described with [`templates/golden-example-README.template.md`](../../templates/golden-example-README.template.md). If the input is raw data that can't go on GitHub, say in the golden example README where your partner can get it.
   *Done when* your golden example is committed and pushed on your branch.

2. [ ] **Get your partner's work.** In a terminal, inside the repo folder:

   ```
   git pull
   git switch sam-lee
   ```

   Use your partner's branch name in place of `sam-lee`. `git pull` brings down everything new from GitHub, including your partner's branch. `git switch` moves you onto it.
   *Done when* the terminal says `Switched to branch` followed by your partner's name.

3. [ ] **Get the golden input.** Follow their golden example README to put the input file in `raw/`.
   *Done when* the input is in place, without asking your partner anything they didn't write down.

4. [ ] **Run it cold.** Start Claude Code and ask it to run the workflow in `WORKFLOW.md`, one step at a time, checking each done-check. Don't ask your partner for help. Write down every question you would have asked them.
   *Done when* you reach the last step, or get stuck.

5. [ ] **Compare.** Compare your output with their golden output.
   *Done when* you know whether they match. If they don't, find the first step where they split apart.

6. [ ] **Hand back the gaps.** Give your partner your list of questions and any place the results split apart. Each one is something their repo is missing.
   *Done when* your partner has the list.

7. [ ] **Switch back** to your own branch: `git switch alex-kim`, with your own branch name.
