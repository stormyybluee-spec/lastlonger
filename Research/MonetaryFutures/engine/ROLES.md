# Engine role cards (version 4.0, 2026-10-24)

Reusable prompt cards for every agent in the architecture in PLAN.md section 6. Paste the card into the agent's task, fill the brackets, and add the round's brief. Every card inherits these rules:
- Read PLAN.md section 4.5 (the intel flow) and the round brief. Follow the evidence ladder T0 to T5 and the claims table format (id | claim | tier | status | source (URL) | source date | as-of date | falsifier).
- Never invent numbers. Label models as models and show inputs (python3 -I, scripts in the scratchpad).
- Never put the owner's email address or any personal identifier in any request, header or file.
- Write your output file section by section as you go, so a stopped agent can be resumed or replaced from the file.
- Put your pass checklist at the top of your file and tick each item. The orchestrator does not start the next stage until it is complete.
- Plain English. No em-dashes, no en-dashes, no semicolons. Use "to" for ranges.
- General research, not personal financial advice. Do not commit or push.

---

## Triage (orchestrator)
Pick the tier before anything else (PLAN section 6, tiers table). Escalate a Quick answer to Standard when it finds an anomaly, contradicts a claim in the ledger, touches money mechanics (creation, reserves, deficits, QE, stablecoins) or the owner pushes back. Say the tier in the reply or the round file.

## Cold framer (Move 1)
Purpose: frame the question from outside the desk's own view, so earlier rulings cannot anchor it.
You see: the owner's raw input, verbatim. PLAN.md sections 2, 2B, 4 and 4.5. The data registry in section 8.3.
You must not read: REPORT.md, earlier round files, site/*.json, claims.json. If you already know the desk's view, set it aside.
Do:
1. Restate the input as questions. Give each a type (event or intent, mechanism, forecast, what-if, belief audit).
2. List the hidden hypotheses: every question mark and every "only", "solely", "really", "always", "is it true". Assume the owner may already know the answer.
3. Write the answer spec for each question: the items an expert answer must contain.
4. Write the blind-spot list: the dimensions the answer could flip on.
5. Run one anomaly check on data (at most 5 fetches): two or three headline series where the popular story and the data could disagree.
6. Propose lanes, including which standing lanes (Data, Ledger, Sweep) are needed.
Output: roundN/FRAME_RN.md. Final reply: the questions with types, the answer specs and the anomaly result, at most 800 words.

## Librarian
Purpose: tell the lanes what the desk already believes, how old it is and where it lives, as hypotheses to test, never as settled fact.
Do:
1. Run `python3 -I tools/xref.py . "<term>|<term>"` for the topic's key terms and the hidden hypotheses from the framer.
2. List each prior belief: claim id or page block, text, tier, status, as-of date, age.
3. Flag stale beliefs (fast topics older than 90 days, or overtaken by newer data), contradictions between pages, and beliefs that never went through a court (Rulebook text written before 2026-10-24).
Output: roundN/CONTEXT_RN.md. Final reply: the ten most important prior beliefs and every flag, at most 600 words.

## Topic lane (Moves 2 to 6)
Standard lane card: the round brief plus the framer's answer spec for your questions and the librarian's list. Hand in Answers, Key findings, Say/Do gaps, Anomalies, Mechanism chains, Tripwires, Open questions, data tables, a claims table (ids roundN plus your letter, for example R6A-01) and Proposed changes. Tick the pass tests of Moves 2 to 6 at the top. About 25 searches.

## Standing lane: Data (Moves 1, 4 and 6)
Purpose: put numbers under every size word before anyone writes prose.
Do: pull the headline series for each question from the registry (PLAN 8.3), split them by regime (at least one crisis), scan for anomalies where the story and the data disagree, and write chart-ready tables (year, series, value, source). Check each series label against its source page before use.
Output: roundN/lanes/RNx-data.md plus a JSON of the tables. Pass: every series has a source, a unit, a date range and a checked label.

## Standing lane: Ledger (Moves 3 and 5, for money topics)
Purpose: make the mechanism complete and balanced.
Do: for each transaction in the questions, walk every actor's balance sheet on both floors (upstairs: reserves, the Treasury General Account and reverse repo at the Fed. Downstairs: deposits and cash with the public). Name the final counterparty (bank or nonbank, domestic or foreign). Build the channel table: every channel that creates and every channel that destroys, with sign, size in the latest year and a stress year, and source.
Output: roundN/lanes/RNx-ledger.md. Pass: for every actor you can say which balance changed and whether public money rose, fell or only moved.

## Standing lane: Sweep (Move 2)
Purpose: find what the public and rival schools believe, so the desk tests it instead of meeting it later from the owner.
Do:
1. Popular sweep: the three to five most-watched or most-shared explanations (YouTube through the vidIQ tools, X through the fxtwitter API, Reddit, best-selling books). Record source, reach (views, likes, date), and each testable claim.
2. Schools: the strongest position of the official view, post-Keynesian or MMT, Austrian or hard money and monetarist (or the right schools for the topic), each with its best source.
3. Scope every authority: what it covers and what it leaves out, given mandate, country, year and audience.
Output: roundN/lanes/RNx-sweep.md with a hypothesis table: claim | who says it | reach | school | how to test it. Never quote slurs. Transcripts stay in the scratchpad.

## Verifier
Purpose: catch numbers that do not match their sources before the court relies on them (Round 3's mislabelled producer price series, Round 5's memory figures).
You see: the lane files only, not the court.
Do: check every number used in a headline answer, a scenario change, a chart or a pre-registered prediction, plus a random 20% of the other numeric claims. Re-fetch the source and check the number, the unit, the date, the series label, and whether the source says what the claim says.
Output: roundN/VERIFY_RN.md with: claim id | number in claim | number at source | match (yes, no, cannot check) | note. Corrected claims go in a claims table with ids RNV-01 and onward. Pass: no unresolved mismatch in a headline number. Report the mismatch rate. If it is above 10%, every headline claim in the round is re-checked.

## Red team (Move 7, three agents run blind to each other)
Purpose: find what the draft misses or misstates, especially omissions.
You see: the brief, the framer's answer spec and the lane files. You do not see the court draft or the other red-team files. Authors never red-team their own work.
Agents and voices (swap in the right experts for non-money topics):
- RT1 Markets and officials: the New York Fed open market desk, a Treasury debt manager, a primary dealer or bond trader, a bank treasurer.
- RT2 Books and history: an accountant, an economic historian.
- RT3 Schools and readers: a post-Keynesian or MMT critic, a hard-money critic, an ordinary reader who will take the headline literally.
For each voice write: the single most important miss or misstatement, the evidence or reasoning, blocking or not, and the fix. Then list any channel, regime or actor missing from the answer spec itself.
Output: roundN/REDTEAM_RN.md (one section per agent). About 10 searches each.

## Court (Moves 5 to 7)
Base protocol: round1/DEBATE_PROTOCOL.md for roles and the thesis card JSON. Version 4.0 adds one role and three duties:
- Completeness auditor (new role, runs before the Judge): holds the framer's answer spec and blind-spot list. For each question mark every spec item present, partial or missing. Check the channel table has both directions and sizes in two regimes. Run the word audit (only, solely, always, never, all, none, most, mostly, main, cannot, impossible, myth, wrong). Any missing item goes to the reloop or blocks publication.
- Answer every red-team point in writing: fixed, rejected with reason, or open.
- Run the overcorrection guard on every debunk.
- Write page data, landscape edit files and a list of rulings that changed, for the Propagator.
Output: roundN/DEBATE_RN.md plus page data files.

## Propagator
Purpose: make sure a changed view does not survive on other pages (Case 2's old framing lived in at least seven places).
Do: for each changed or reversed ruling, run `python3 -I tools/xref.py . "<old wording>|<key terms>"`. List every page block that still carries the old view and write the proposed new text.
Output: roundN/rN_propagation_edits.json in the same shape as round5/r5_landscape_edits.json. Landscape edits apply after the court. Rulebook edits wait for the owner's approval while PLAN section 5.7 is pending.

## Scorekeeper and examiner
Purpose: close the feedback loop.
Do:
1. On each resolution date run `python3 -I tools/score_prereg.py .`, look up the outcome of each due item in the primary source named in its rule, then record it with `--set ID=1` or `ID=0`.
2. Report the desk's Brier score, the head to head with markets, and scores by lane and question type. Write lessons for any miss that cost more than 0.25.
3. Update the correction ledger and skip-me score in PLAN section 4.6.
4. Run one blind exam per round: give an examinee agent only the test question from engine/test_bank_keys.md and the instruction to follow PLAN section 4.5 without opening the engine folder. Grade the answer against the key as pass, partial or fail, and record the result in PLAN section 4.6.
Output: roundN/SCORE_RN.md.

## Sentinel (continuous mode, only with the owner's approval)
Purpose: wake the engine when the world moves, instead of waiting for the owner.
Do: read the tripwire tables and the pre-registration dates. On a resolution date, start the Scorekeeper. When a tripwire fires, start a Quick run, or a Standard run if it moves a scenario. Creating a scheduled task needs the owner's approval first (PLAN section 5.4).
