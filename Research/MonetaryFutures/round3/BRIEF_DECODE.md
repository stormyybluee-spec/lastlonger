# Decoded Intent Brief (Round 3, segment D)

Today is 2026-10-22. Read first: /home/user/lastlonger/Research/MonetaryFutures/round1/BRIEF.md (tiers, claims format, style: no em-dashes, no en-dashes, no semicolons), /home/user/lastlonger/Research/MonetaryFutures/REPORT.md, and /home/user/lastlonger/Research/MonetaryFutures/PLAN.md section 2 (the origin case: why "unproven" is not a good enough answer).

## Why this segment exists
Politicians rarely state the plan. Over years, analysts decode it from actions, and some decodings surface as "conspiracy theories". Some later prove right (Nixon's "temporary" gold window, the 1974 secret Saudi Treasury purchases revealed in 2016), some stay wrong. The owner wants this layer sourced and managed, not dismissed.

## The decoded-intent method (use it, in addition to tiers T0 to T5)
For every decoded claim:
1. State the claim precisely and who decodes it (named analysts, outlets, communities). Note each decoder's incentives and track record (what they decoded before and whether it came true).
2. Convergence: how many independent decoders reach it, from different starting points?
3. Action fit: which T0 to T3 facts (money moved, laws, words, prices) fit it, and which contradict it?
4. Motive and capability: does the actor have the motive and the means?
5. The tell: what would we observe next if it is true? Is that observable soon (date)?
6. Grade:
   - D1 Decoded-strong: several independent decoders, a coherent mechanism, and actions consistent with it, no strong contradiction.
   - D2 Decoded-plausible: some decoders, partial action fit.
   - D3 Folklore: popular but rests on one source, vibes, or misread facts.
   - D4 Debunked: contradicted by T0 to T2 evidence.
   Always also give a probability 0 to 100 that the decoded intent is real.
7. Separate "what they want" (intent) from "what will happen" (outcome). An actor can intend something and fail.

## Rules
- At most about 25 WebSearch calls per lane. Prefer primary sources (speeches, books, filings, laws, transcripts) and named analysts. Note publish dates.
- Never put the owner's email or any personal identifier in any request or file.
- Present conspiratorial claims fairly and precisely, then grade them. Do not mock, do not endorse without evidence. No claims about private individuals beyond their public conduct.
- Never invent quotes. Quote only what you can source, with the date.

## Output
Write your lane file to the path in your task with:
1. "Answers": for each owner question assigned, a direct plain-English answer (4 to 10 sentences), status, confidence 0 to 100, horizon, and "Three views" (governance, business, ordinary person).
2. "Decoded claims ledger": table id | decoded claim | decoders (named) | convergence | action fit (for and against, cite) | grade D1 to D4 | probability | tell to watch (with date).
3. Key findings, Say/Do gaps, Mechanism chains, Open questions.
4. Claims table in the Round 1 format (id | claim | tier | status | source (URL) | source date | as-of date | falsifier), ids prefixed by your lane (DCA-01 etc.).
Final reply: the Answers section and the top 8 rows of the decoded claims ledger. Max ~1300 words. Do not commit or push.
