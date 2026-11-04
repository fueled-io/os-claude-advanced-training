# Generative models and decision models

**Sources (checked 2026-11-03):**
[TypeSafe AI: Jev](https://typesafe.ai/) ·
[TypeSafe docs: introduction](https://docs.typesafe.ai/introduction) ·
[OpenAI Decisions API guide](https://developers.openai.com/api/docs/guides/decisions) ·
[Cloudflare: Clef decision models](https://blog.cloudflare.com/clef-decision-models/) ·
[Microsoft: introducing Microsoft-Decision-1](https://techcommunity.microsoft.com/blog/azure-ai-foundry-blog/introducing-microsoft-decision-1-in-microsoft-foundry-for-decision-and-classific/4562742)

> **Flagged:**
> 1. **These are all developer tools, not chat apps.** You reach each one through an API (a way for software to talk to software). None has a chat window like Claude's. Using one means building something, so talk to Sean.
> 2. **They're very new and some are still early.** All launched in September–October 2026. Jev is in "early access", OpenAI's Decisions API is "generally available", and Microsoft-Decision-1 is in "public preview". Speed and price figures in their announcements are the vendors' own claims.

## Two kinds of model

**Generative models write and reason.** Claude is one. You ask in words and get words back: a draft, an analysis, a plan. The answer can be anything.

**Decision models pick from options you already know, with a calibrated probability.** You give them the input and the list of possible answers, and they return one answer and how confident they are. "Calibrated" means the confidence is honest: of the answers it marks 90% sure, about 90% should be right.

## The examples

- **Jev** (from TypeSafe AI) is the decision model we use. TypeSafe calls it a model that "returns typed decisions with calibrated probabilities, so your software can account for uncertainty."
- **OpenAI Decisions:** an API that "evaluates text, images, and JSON and returns typed answers". It handles yes/no, pick-one, and score questions.
- **Clef (Cloudflare):** "A decision model makes classifications to help agents decide how to act, based on certain probabilities." Open weights, and Cloudflare says it's compatible with Jev's interface.
- **Microsoft-Decision-1:** "designed for applications that need to make fast, structured choices among predefined options."

## Is it a decision-model question?

**If the answer is one of a few options you already know, it's a decision-model question.**

| Question | Kind | Why |
|---|---|---|
| Which of our five support queues should this ticket go to? | Decision | The answer is one of five known queues |
| Is this lead a fit: yes or no? | Decision | Two known options |
| Is this invoice a duplicate? | Decision | Yes or no |
| Summarize this customer's last three months | Generative | The answer is new writing |
| Draft a renewal email | Generative | No fixed list of answers |

## The threshold is a policy you set

Every decision comes with a confidence. You choose a line, for example 90%:

- **Above the line:** the decision goes through automatically.
- **Below the line:** it goes to a person.

Where you draw the line is a business choice, not a technical one. A higher line means fewer mistakes and more work for people; a lower line means the reverse. Write the threshold down in the workflow, like any other rule, and everything below the line goes to a person.

## Going deeper

- [TypeSafe docs](https://docs.typesafe.ai/introduction)
- [OpenAI Decisions API guide](https://developers.openai.com/api/docs/guides/decisions)
