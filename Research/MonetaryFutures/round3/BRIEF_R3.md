# Round 3 Brief: the moderator's open questions and a market-odds check

Today is 2026-10-22. Read in order:
1. /home/user/lastlonger/Research/MonetaryFutures/round1/BRIEF.md (method, evidence tiers T0 to T5, claims table format, style rules: no em-dashes, no en-dashes, no semicolons)
2. /home/user/lastlonger/Research/MonetaryFutures/REPORT.md (Round 1 and 2 conclusions)
3. /home/user/lastlonger/Research/MonetaryFutures/round2/DEBATE_R2.md sections "Round 3 questions" and the rulings table, so you build on Round 2 instead of repeating it.
4. The Round 1 and 2 lane files named in your task, for numbers you can reuse (cite as "R1 L7", "R2 R2A" etc.).

Rules:
- At most about 25 WebSearch calls. Prefer primary sources and WebFetch. Treasury fiscaldata API works with curl -g. FRED CSV is bot-blocked, congress.gov and cbo.gov pages return 403 (CBO RSS works).
- Never invent numbers. Label models as models and show inputs (python3 -I, scripts in /tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts).
- Never put the owner's email address or any personal identifier in any request, header or file.
- General research, not personal financial advice.

## Round 3 questions (from the Round 2 panel)
R3-1. How much stablecoin demand is new foreign demand for dollars, and how much is money moving out of US money funds and bank deposits?
R3-2. How much of extra demand can robot and AI output actually meet? This single number moves a printed Musk-scale UHI from 0.9% to 9.5% inflation (R2 R2B model).
R3-3. Will the federal tax base shift to capital, energy or compute as labor's share of income falls?
R3-4. Does China let the 2026-11-10 export-control truce lapse, finalize the solar know-how ban, and pair it with yuan-financed supply to the Global South?
R3-5. Can housing reopen through supply (factory and robot-built homes, zoning reform), or do land prices absorb the savings?
R3-6. Is there a measurable cash price premium for human-made goods?
R3-7. Do attention costs (ad prices, platform fees) rise faster than production costs fall?
R3-8. When a US UHI or AI-dividend bill appears, how is it financed, and can payments be pledged or programmed?
R3-9. In a crisis, do Gulf and Asian states get dollars (Fed swap lines, FIMA repo) or turn to the yuan?
R3-10. If T-bill yields fall below about 1.5%, does Congress widen stablecoin reserves (longer bills, gold) or do issuers fold into banks?
R3-11. Does the bottom half's share of equities move at all once child accounts are funded?
R3-12. Does electric freight just swap oil dependence for battery dependence?
R3-13 (new). Market-odds calibration: where prediction markets (Kalshi, Polymarket public APIs, no key needed) price the same events this desk has odds on, how far apart are we, and who is likely right?

## Output
Write your lane file to the path in your task with:
1. "Answers" at the top: for each question assigned to you, a direct plain-English answer (3 to 8 sentences), status (confirmed, plausible, speculative, refuted), confidence 0 to 100, horizon (H0 now-2028, H1 2028-2035, H2 2035-2050, H3 post-scarcity), and a "Three views" line (governance, business, ordinary person on wages or UHI).
2. Key findings, Say/Do gaps, Anomalies, Mechanism chains, Tripwires (with dates), Open questions.
3. Claims table: id | claim | tier | status | source (URL) | source date | as-of date | falsifier. Ids prefixed by your lane (R3A-01 ...).
4. If your findings should change a Round 1 or Round 2 ruling or the scenario odds (S1 to S4 by horizon: H0 62/15/1/22, H1 45/22/3/30, H2 32/28/10/30), say so explicitly in a section "Proposed changes to earlier rulings" with the evidence.
Final reply to the orchestrator: the Answers section and Proposed changes only (max ~1200 words). Do not commit or push.
