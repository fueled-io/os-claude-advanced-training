# Session 4: Same result, every time, for everyone

**60 minutes:** 30 minutes of teaching, then 30 minutes hands-on.

**Premise:** Predictable results come from narrowing what you ask for and writing it down.

## Teaching (30 minutes)

- **Procedures as files,** never as memory of what worked last time.
- **Pinned inputs and explicit output formats.** A sample output file in the repo is the best spec.
- **Golden examples:** one known input with a known correct output, so anyone can check the workflow still works. Template: [`templates/golden-example-README.template.md`](../../templates/golden-example-README.template.md). Reference: [`docs/golden-examples.md`](../../docs/golden-examples.md).
- **The handoff test:** a teammate clones the repo cold and runs it. A different answer means the repo is missing something.
- **The honest limits:** claude.ai can't pin model or effort per project, so some workflows need a real agent behind an API. If yours is one of them, flag it to Sean and we'll scope it.
- **Two kinds of model (10 minutes):** generative models write and reason; decision models pick from options you already know with a calibrated probability. Jev is the decision model we use; OpenAI Decisions, Clef, and Microsoft-Decision-1 are the same category. If the answer is one of a few options you already know, it's a decision-model question. The confidence threshold is a policy you set, and everything below the line goes to a person. Reference: [`docs/decision-models.md`](../../docs/decision-models.md).

## Hands-on (30 minutes)

Pairs swap repos and run each other's workflow.

Step by step: [`exercise.md`](exercise.md).

## Graduation

Every participant has a repo someone else has successfully run.

Details: [`assignment.md`](assignment.md).
