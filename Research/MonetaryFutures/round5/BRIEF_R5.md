# Round 5 Brief: the open questions, a memory audit, and predictions written down before the events

Today is 2026-10-23. The owner asked to continue with Round 5. The Plan page proposals queue is empty, so this round works the carried-forward queue: the fifteen open questions on the Landscape page, the open items from Round 4, the "re-check from memory" list across the project, and the events of the next three weeks (FOMC 2026-10-28, US Q3 GDP and PCE 2026-10-29, Treasury refunding 2026-11-04, Lisa Cook hearing 2026-11-05, China export-control truce cliff 2026-11-10). Those events have not happened yet, so this round writes dated predictions now (pre-registration), to be scored in a later round.

Read in order before researching:
1. /home/user/lastlonger/Research/MonetaryFutures/round1/BRIEF.md (method, tiers T0 to T5, claims format, style rules)
2. /home/user/lastlonger/Research/MonetaryFutures/REPORT.md (Rounds 1 to 4 in short)
3. /home/user/lastlonger/Research/MonetaryFutures/PLAN.md sections 2 (origin case), 4.1b (decoded intent D1 to D4), 4.1c (market-odds rule), 5.6 (queue) and 10 (round log, especially Rounds 3 and 4)
4. /home/user/lastlonger/Research/MonetaryFutures/round4/DEBATE_R4.md (latest rulings, odds, conditionals and open questions)
5. The earlier lane files named in your task, so you build on them instead of repeating them (cite as "R3 R3A", "R4 R4B" etc.)

## Round 5 questions
Landscape open questions (site/landscape.json "questions"):
- R5-1 Who actually holds dollar stablecoins, country by country?
- R5-2 Is the 2026 rise in real interest rates driven by AI capital demand, or by oil, Japan and the term premium?
- R5-3 Will the 2028 Fed leadership turnover bring a Fed-Treasury accord on yields?
- R5-4 Does the corporate tax collapse reverse when AI capex growth slows?
- R5-5 Next time Japan defends the yen, will it borrow through FIMA or sell Treasuries again?
- R5-6 Do Gulf states get dollar lines from the Treasury, and on what conditions?
- R5-7 Does conditional dollar access show up in central bank gold buying?
- R5-8 How fast can US housing supply actually respond in the 2020s?
- R5-9 Will China pair its solar know-how ban with yuan finance for the Global South?
- R5-10 Is there a real cash premium for human-made goods?
- R5-11 Why was producer price inflation for finished consumer goods flat in 2026 while energy CPI rose 20.4%?
- R5-12 If a UHI or AI dividend law passes, will payments be pledgeable or programmable?
- R5-13 Will Moody's cut France, and does it matter?
- R5-14 How much do new residents cost or contribute to European states? (official studies only, by origin and education where published, neutral wording)
- R5-15 Are Europeans actually moving to Latin America or Southeast Asia in rising numbers?
Carried-forward items:
- R5-16 The next three weeks: a "what to watch" digest with dated, scoreable predictions for FOMC 10-28, GDP and PCE 10-29, refunding 11-04, Cook 11-05, the China truce 11-10, COFER Q3, TIC (mid-November), WGC Q3 gold (about 10-29 to 10-30) and the French budget.
- R5-17 The newsletter spread trade (owner's backlog): "borrow at 6.19%, earn 13.6%". What volatility drag, sequence risk and margin calls do to it, with a model.
- R5-18 Memory audit: every figure the project marked "from memory" or "re-check" (PLAN round log, Rulebook updates 1 to 7, the Round 3 decode lanes, the Round 4 lanes). Verify each against a primary source and list corrections with the exact file and text to change.

## Method
- Evidence ladder T0 to T5, the 7 moves (PLAN 2.8), decoded-intent grades for any hidden-intent claim, and the market-odds rule (a market above $1M traded that differs from the desk by more than 15 points needs a written reason). Polymarket and Kalshi public APIs need no key.
- Pre-registration: for each future event, write the desk's prediction as a number with a date and a clear resolution rule, so it can be scored later.
- At most about 25 WebSearch calls per lane. Prefer primary sources (Fed, Treasury, BEA, BLS, Census, ECB, Eurostat, BIS, IMF, national statistics offices, official fiscal studies) and WebFetch. FRED CSV is bot-blocked. The Treasury fiscaldata API works with curl -g.
- Never invent numbers. Label models as models and show inputs (python3 -I, scripts in /tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts).
- Never put the owner's email address or any personal identifier in any request, header or file.
- Migration questions: use official fiscal studies and neutral wording only. No claims about the character, race or intelligence of groups.
- General research, not personal financial advice.

## Output
Write your lane file to the path in your task with:
1. "Answers" at the top: for each question assigned, a direct plain-English answer (4 to 10 sentences), status (confirmed, plausible, speculative, refuted), confidence 0 to 100, horizon (H0 now to 2028, H1 2028 to 2035, H2 2035 to 2050), and "Three views" (governance, business, ordinary person).
2. Key findings, Say/Do gaps, Anomalies, Mechanism chains, Tripwires (with dates), Open questions.
3. Data tables you build (with sources and dates), and for R5-16 a pre-registration table: event | date | desk prediction (number) | resolution rule | market odds if any.
4. Claims table: id | claim | tier | status | source (URL) | source date | as-of date | falsifier. Ids prefixed by your lane (R5A-01 ...). Aim for 20 to 40 claims.
5. "Proposed changes" to scenario odds (H0 62/15/1/22, H1 44/23/3/30, H2 31/28/10/31, with S2 shown as S2a 13/17/18 plus S2b 2/6/10) or to earlier rulings, with evidence.

Style for everything you write: plain English, no em-dashes, no en-dashes, no semicolons. Use "to" for ranges.

Final reply to the orchestrator: the Answers section, the five most important claims, and Proposed changes (max about 1,200 words). Do not commit or push.
