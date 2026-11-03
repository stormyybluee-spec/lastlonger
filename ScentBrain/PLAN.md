# Sion Scent Brain: Master Plan

Version 0.3. Last updated 2026-11-03. Live page: https://claude.ai/artifact/4P366aMVQNjg4MCwUXo9fL (private until the owner shares it). Source: `ScentBrain/index.html` on branch `claude/magical-carson-wz65e9`.

This file is the backend. It is written so a future AI or human can pick the project up cold. Keep Case 1 (section 2) intact: it defines what "good" looks like.

## 0. Quick start for a future AI

1. Read this file, then open `index.html` and run the page (the Virtual Nose and the exam run offline).
2. Rules that never change:
   - Owner style rule: no em dashes and no semicolons in prose for the owner.
   - Never invent numbers. Label estimates as estimates.
   - Tag data with an evidence tier (section 4). Higher beats lower.
   - Run every brief through the 7 moves (section 5) at the right tier (section 6).
   - No claim words ("long-lasting", "natural", "hypoallergenic", "safe", "kills") without a test.
   - The model proposes, deterministic code disposes: palette IDs, caps, beauty floor, IFRA and dosing are always enforced in code.

## 1. Mission

Sion starts as a custom-scented detergent (Sion Wash) and grows into a fragrance house. A person types anything ("DMT", "World War 3", "soybeans", "smells like Kanye West") and gets three formulas: Scent 1 Creative, Scent 2 Accurate, Scent 3 Luxury. The engine must reach what a senior perfumer team would hand over, without the owner having to push ("skip me").

## 2. Case 1: Chrysanthemum brief v2 (keep in full)

On 2026-11-03 another chat produced nine chrysanthemum tea laundry formulas (accords CH-1 to CH-4, capsule oils CAP-1 to CAP-3, 8.5 g free plus 2.5 g capsule oil per kg, amino-silicone detergent, Singapore). It said: "I'm no master perfumer and can't smell these." A senior panel review, triggered by the owner, found ten paper failures:

| # | Finding | Number |
|---|---|---|
| 1 | Geosmin makes Set 3 musty | about 15 to 17 ppm of oil, two thirds from CAP-3, limit 1 ppm |
| 2 | Dryer stage smells of musk and salicylate, not tea | dryer-proof tea core 6 to 9% of free oil |
| 3 | Camphor and medicinal notes | camphor index 0.31 to 0.58% |
| 4 | Marine and melon, banned by the brief | Calone plus Melonal 0.08 to 0.17% |
| 5 | Colour formers and aldehyde-amine reactions | colour formers 0.52 to 0.70% |
| 6 | Candy notes in Set 1 | candy index 0.31 to 0.43% |
| 7 | Musk and wood dominate the Luxury versions | up to 42.8% by weight in 1.3 |
| 8 | CH-1 reads as generic softener floral | 30% salicylates, theaspirane 0.1% |
| 9 | Oxidation and ester hydrolysis | citrus, lipase, no antioxidant |
| 10 | Capsule oils leak | 70 to 77% of capsule oil at logP 3.5 or more |

Also: Creative and Accurate in a set were duplicates after the dryer (1.1 vs 1.2 similarity 99). Hexyl salicylate is now EU CLP Repr. 2 (22nd ATP), and the oils carried 8 to 12%.

Lesson: a formula is not done when it looks complete. It is done when it has been framed, measured, attacked and scored.

## 3. What the page contains

1. Composer: offline engine (24-dimension latent map, 64-cartridge palette, three heads) plus "Deepen with Claude".
2. Virtual Nose: CAS-level audit. Accords, dilutions and natural oils expanded (COMP table, typical GC). Touchpoint model: deposition from logP, survival from boiling point, perceived = sqrt(grams x impact). Checks: brief limits by loudness, 12 senior rules, IFRA 10A limits, EU CLP, allergens, distinctness.
3. Gemini data check: batched prompt, paste-back import (browser only), three-source reconciliation.
4. Engine: this plan in page form, plus the exam.

## 4. Evidence ladder

| Tier | Type |
|---|---|
| T0 | Measured on our product: GC-MS headspace, panel scores, 40 °C stability |
| T1 | Binding rules: IFRA certificate, EU CLP, Singapore NEA and EPMA |
| T2 | Supplier technical and safety data sheets |
| T3 | Measured values in public databases (PubChem, TGSC) |
| T4 | AI search, literature estimates, research-agent snippets |
| T5 | Model memory, popular notes lists, reviews |

Reconciliation rule (verifier): measured T3 wins. Two sources within tolerance (logP 0.8, bp 25 °C, impact 1.6 steps on 1 to 10) agree. Otherwise keep the brain value and list the clash. Two sources against one wins (impact raised for beta-ionone, Ebanol, Javanol, Safraleine, alpha-irone). Status on 2026-11-03: 22 measured, 62 agree, 18 clashes held, 15 IFRA 10A limits (Gemini-reported, unverified).

## 5. The 7 moves for scent

1. Frame: type the brief (literal, evocative, associative, abstract) and the job. Hidden hypotheses. Answer spec before any material. Blind-spot list (bottle vs dry fabric, free vs capsule, heat pump vs vented, humid vs temperate, weight vs loudness).
2. Default and benchmarks: the default accord, market benchmarks, a popular sweep as hypotheses, every source scoped.
3. Materials as actors: role (signature, bridge, booster, fixative, filler) and a touchpoint where each matters.
4. Conditions and precedents: bottle, wash, line, dryer, 7 and 21 days, rubbing, 40 °C. Classic accords as precedents.
5. Complete map: every channel that builds or destroys the target smell.
6. Data first: audit before claim words. Dated predictions for the panel.
7. Attack: evidence tiers, word audit, overcorrection guard, blind red team, court.

## 6. Agents and tiers

| Tier | On the page | Agents |
|---|---|---|
| Quick | Composer offline, paper audit | none |
| Standard | Senior panel review | one call playing three perfumers |
| Full | Full review | cold framer (blind to formula), 3 blind red-team agents in parallel, court with completeness auditor, re-audit, predictions |

Independence: the framer never sees the formula. Red-team agents never see each other. The court answers every point. Exam keys are never shown to the examinee.

## 7. Scorekeeper

- Test bank: Case 1 (training case, public key) scores 10 of 10 on 2026-11-03. Because the rules came from Case 1, this proves the rules, not generalisation.
- Held-out tests to write next (keys kept outside the page): a rose fabric softener, a white-musk extrait, a joke brief ("durian"), a fragrance-free-claim detergent with a masking accord.
- Skip-me score: findings the owner had to trigger. Goal zero.
- Prediction ledger: the Full review emits dated predictions. Next step: store them in the artifact database with the panel results, and Brier-score them.

## 8. Correction ledger

| Date | Correction | Triggered by | Cause |
|---|---|---|---|
| 2026-11-03 | Chrysanthemum v2 ten paper failures | Owner asked for a review | No audit, no red team, traces judged by weight |
| 2026-11-03 | Hexyl salicylate EU CLP Repr. 2 | Engine (data agent) | Regulation newer than the formula |
| 2026-11-03 | 18 Gemini values held as clashes | Engine (verifier) | Single-source data |

## 9. Next

1. Write held-out tests and run them blind.
2. GC-MS headspace of the reference drink (T0 target), then score formulas against it.
3. Prediction ledger with the `db` capability.
4. Resolve the 18 clashes with supplier TDS and IFRA certificates.
5. Apply the Full review to all nine Case 1 formulas and write brief v3 (owner approval first).
6. Sentinel (owner approval): watch IFRA 52nd Amendment (expected January 2027) and EU CLP dates.

## 10. Round log

- 2026-11-03 build 0.1: composer, palette, rules, landscape, roadmap.
- 2026-11-03 build 0.2: Virtual Nose, agent-checked data, hexyl salicylate flag.
- 2026-11-03 build 0.2.1 to 0.2.2: 12 senior rules from the panel review, visible Gemini check.
- 2026-11-03 build 0.3: Gemini data reconciled, IFRA 10A check, Engine section, Full review (5 blind agents), exam, this PLAN.md.
