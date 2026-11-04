# Session 4 hands-on: the handoff test

**Goal:** run your partner's workflow from their pull request, cold, and get the same answer they got.

**Before you start:** pair up. Tell your partner your pull request's number: it's the `#` number on <https://github.com/fueled-io/os-claude-advanced-training/pulls>.

1. [ ] **Make sure your own repo has a golden example.** One known input and its known correct output, in `golden/`, described with [`templates/golden-example-README.template.md`](../../templates/golden-example-README.template.md). This repo is public, so both are **made-up data**: invented names and amounts, in the same format as the real thing. See [`docs/golden-examples.md`](../../docs/golden-examples.md).
   *Done when* your golden example is committed and pushed, and shows in your pull request.

2. [ ] **Get your partner's work.** In a terminal, inside the repo folder:

   ```
   gh pr checkout 12
   ```

   Use your partner's pull request number in place of `12`. This downloads their branch from their fork and moves you onto it.
   *Done when* the terminal says it switched to a branch named after your partner.

3. [ ] **Get the golden input.** Follow their golden example README to copy the input file from `golden/` into `raw/`.
   *Done when* the input is in place, without asking your partner anything they didn't write down.

4. [ ] **Run it cold.** Start Claude Code and ask it to run the workflow in `WORKFLOW.md`, one step at a time, checking each done-check. Don't ask your partner for help. Write down every question you would have asked them.
   *Done when* you reach the last step, or get stuck.

5. [ ] **Compare.** Compare your output with their golden output.
   *Done when* you know whether they match. If they don't, find the first step where they split apart.

6. [ ] **Hand back the gaps.** Give your partner your list of questions and any place the results split apart. Each one is something their repo is missing.
   *Done when* your partner has the list.

7. [ ] **Switch back** to your own branch: `git switch alex-kim`, with your own branch name.
