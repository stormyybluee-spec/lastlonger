# R5A: Rates, the Fed and taxes

Lane R5A, Round 5. Questions R5-2, R5-3, R5-4, R5-11 and the rates part of R5-16.
Written 2026-10-23. As-of date for market data: Treasury curves to the close of 2026-10-23, ACM to 2026-10-22, Kim-Wright to 2026-10-16, prediction markets snapshot 2026-10-23 23:36 UTC.
Reused (cited as R1 L1, R1 L7, R3 R3A, R3 R3B, R3 R3D, R3 R3E, R3 DCC, R4 court): round1/lanes/L1-fed-treasury.md, L2-law-regulation.md, L7-quant.md, round3/lanes/R3A, R3B, R3D, R3E, round3/decode/DCC-reset-cbdc.md and WIF-whatif.md, round4/DEBATE_R4.md.
Method: 13 web searches plus direct primary pulls: Treasury daily nominal and real par curves (2025 and 2026), the NY Fed ACM term premium workbook (daily), the Fed's Kim-Wright file (feds200533.csv), Japan MoF JGB curve (historical and current month), Brent, WTI, the PHLX semiconductor index, USD/JPY and the dollar index (Yahoo chart API), SEC XBRL company facts for Alphabet, Microsoft, Meta, Amazon and Oracle (capex, cash taxes, current federal tax), Treasury fiscaldata MTS tables 1 and 4, BLS public API (PPI, CPI, import prices), Fed Board biographies, the BEA release schedule, the TBAC financing table of 2026-08-05, Kalshi and Polymarket public APIs.
Scripts (run with python3 -I): `/tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/r5a_realrate.py` (real-rate attribution) and `.../scripts/r5a_tax.py` (expensing timing model). Raw downloads: `/tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/r5a/dl/`. Anything labelled "model" is arithmetic on stated inputs, not data.
Access notes: bls.gov web pages and download.bls.gov return 403 to scripts. The BLS public API worked for some calls and hit the shared daily cap on others. FRED pages reset the connection. CME FedWatch was not found in fresh press.

---

## Answers

### R5-2. Is the 2026 rise in real interest rates driven by AI capital demand, or by oil, Japan and the term premium?

Mostly neither in the narrow sense: the largest piece is a higher expected path for US policy rates, and Japan is the clearest outside push. From 31 December 2025 to 23 October 2026 the 10-year nominal yield rose 82bp (4.18% to 5.00%), the 10-year TIPS real yield rose 73bp (1.93% to 2.66%, peak 2.95% on 5 October) and the breakeven only 9bp (2.25% to 2.34%), so this is a real-rate move, not an inflation-expectations move. The two Fed-published term structure models disagree on the term premium: ACM puts the whole rise in expected short rates (+87bp) with the term premium flat (0.75% to 0.72%), while Kim-Wright splits it about half and half (term premium 0.57% to 0.99%, +42bp). A daily regression on named drivers (model) assigns about 17bp of the real-yield rise to Japanese 10-year yields (JGB 2.07% to 2.91%), about 10bp to oil (Brent $60.8 to $111.7, which mainly lifted breakevens by about 19bp), about zero to an AI equity proxy, and leaves about 47bp unexplained, which is where the Fed path, fiscal supply and AI capital demand sit. AI capital demand is real and large (big-four cash capex $294.8B in the first half of 2026, up 84% on a year earlier, against $376.0B for all of 2025, SEC filings) but it shows up mainly as strong growth that lets a hawkish Fed hike, and in a higher long-run expected rate (ACM 5y5y expected short rate +61bp), not as a measurable daily price factor. Desk split of the 73bp (judgment on the model ranges): Fed path in a strong, oil-hit economy 30 to 40bp, Japan and global spillover 15 to 20bp, term premium and fiscal supply 0 to 20bp, direct AI crowding-out 5 to 15bp. So the owner-facing answer is "a Fed that hikes into oil inflation in an AI-fed boom, plus Japan", and the AI dividend still does nothing for the debt ratio while it lifts rates with growth.
- Status: plausible (prices T3, decomposition a model on two official models). Confidence: 55. Horizon: H0.
- Three views. Governance: the bond market is charging a higher real price for money because the Fed is expected to stay tight, so fiscal relief from lower rates is not on offer while oil and growth stay high. Business: plan on real borrowing costs near 2.5% to 3% for 10 years, and note that the term premium part may still rise if Kim-Wright is right. Ordinary person: mortgage and car-loan rates are high because the Fed is fighting fuel-driven inflation in a strong economy, not because investors fear default.

### R5-3. Will the 2028 Fed leadership turnover bring a Fed-Treasury accord on yields?

An accord is more likely than not to be discussed, but an accord that caps yields is unlikely, because the accord Warsh has floated points the other way. The 1951 Accord ended a yield peg (3/8% bills and an implicit 2.5% cap on long bonds from April 1942) after CPI inflation hit 17.6% (June 1946 to June 1947) and a 21% annualized rate in February 1951. Warsh's version, in his own public description, would jointly state the Fed's intended balance sheet and Treasury's issuance plans so the Fed can shrink its footprint, and he said it would not mean a return to pre-1951 practice. The 2028 turnover is also not a chair change: Warsh's chair term runs to 2030-05-21 and his governor seat to 2040. What turns over is the Board majority. Trump appointees hold 3 of 7 seats now (Warsh, Bowman, Waller), Jefferson's vice-chair term ends in September 2027, and Powell's governor term ends on 2028-01-31, so a fourth appointee gives a Trump-appointed Board majority by early 2028 even if Cook stays. The FOMC still needs 7 of 12 votes, and rate decisions have been hawkish under Warsh. Desk odds: a Warsh-style balance-sheet accord (a joint Fed-Treasury statement on the Fed's portfolio and Treasury's duration) by end 2028: 25. An explicit cap or ceiling on Treasury yields by end 2028: 3, by 2035: 15 (down from the desk's 25). Treasury already runs a mild "twist" itself through bills and buybacks, which is a substitute for a cap, not a step toward one.
- Status: plausible (terms T1, history T1, statements T2, odds judgment). Confidence: 60. Horizon: H0 to H1.
- Three views. Governance: the live design is a smaller Fed with Treasury managing duration and regulation creating captive buyers, which is repression by plumbing, not by peg. Business: the yield-cap trade (buy long bonds ahead of a cap) has weak support before a disorderly episode. Ordinary person: a cap would only come after a crisis or a much more dovish Fed, and its cost would be inflation above savings rates for years, as in 1946 to 1951.

### R5-4. Does the corporate tax collapse reverse when AI capex growth slows?

Yes, mostly, because the drag comes from capex growth, not from the level of capex, and two of its parts are one-offs that are already fading. Net corporate receipts fell from $529.9B (FY2024) to $452.1B (FY2025) and $381.4B (FY2026) (MTS table 4). Inside FY2026, refunds almost doubled from $34.3B to $61.5B and gross payments fell $43.5B, and the fall was concentrated in October to March (minus 28%) while April to September fell only 8.6% and September 2026 was up 38% on September 2025. The 2025 law made 100% bonus depreciation permanent for property acquired after 19 January 2025 and restored immediate expensing of domestic research costs, with a catch-up of 2022 to 2024 amounts in the first one or two tax years, which explains the refund jump. The three hyperscalers that tag it show current federal tax falling from $32.7B to $6.5B (Microsoft FY2025 to FY2026, Amazon and Meta 2024 to 2025, SEC filings). The timing model shows the big-four expensing drag at about $43B in 2026, rising to about $55B in 2027 if capex grows another 25%, then shrinking to about $12B by 2030 once capex goes flat, and turning slightly positive only if capex falls. The deferred tax is not paid back while investment continues, but the annual hole closes. Alphabet has said 2027 capex will rise "significantly", so the drag likely peaks in 2027, while the one-off refunds fade.
- Status: plausible (receipts and filings T0, law T1 via law-firm summaries, the reversal a model). Confidence: 65. Horizon: H0.
- Three views. Governance: do not budget on a permanent 7% corporate share, but do not expect the lost years back either. Expensing defers tax for as long as capex grows. Business: the cash-tax holiday ends when capex stops growing, not when it stops, so a plateau in 2027 or 2028 raises cash taxes within one to three years. Ordinary person: workers carried more of the tax load while AI capex boomed (individual plus payroll 86.2% of receipts), and that tilt eases only after the boom levels off.

### R5-11. Why was producer price inflation for finished consumer goods flat in 2026 while energy CPI rose 20.4%?

It was not flat. The puzzle comes from a mislabelled series. The series the project used, WPUFD4111, is "Finished Consumer Foods" (FRED title), not finished consumer goods, and food prices at the producer level were indeed flat (minus 0.9% year on year in September 2026, annual average 284.5 in 2025 against 284.6 for January to September 2026). Producer energy rose more than consumer energy: the PPI for final demand energy was up 35.4% year on year in September, gasoline 64.3%, diesel 115.2%, and finished goods in total 8.4%. Energy CPI rose 20.4% because about half of it is electricity and piped gas, which rose only 4.4% and 5.0% under regulated and contract pricing, while CPI energy goods rose 35.3%, exactly in line with producer energy (35.4%). The real gap worth watching is in core goods: producer prices for finished consumer goods less food and energy rose 4.0% while CPI core goods rose only 0.7%. That gap reflects a stronger dollar (index 98.28 to 101.75 this year), import prices for consumer goods up only 2.7% before duties, and margins absorbed somewhere between factory and shelf. That squeeze is the pipeline risk for 2027.
- Status: confirmed for the mislabel and the energy match (T0 BLS series, T1 series title). Plausible for the margin reading. Confidence: 85. Horizon: H0.
- Three views. Governance: the 2026 shock is visible in producer prices, so the Fed is right to treat it as broad, not as a consumer-only quirk. Business: retailers and importers are holding a 3-point margin squeeze on core goods that they will try to pass on in 2027. Ordinary person: fuel rose about a third, power bills about 5%, and the next wave, if it comes, is in everyday goods as stores rebuild margins.

---

## 1. Key findings

1. **The 2026 rise is in real yields, not breakevens.** 10-year: nominal 4.18% to 5.00%, real 1.93% to 2.66%, breakeven 2.25% to 2.34% (31 December 2025 to 23 October 2026). Peak real 2.95% and nominal 5.31% on 5 October. The landscape figure "up 82bp to 2.76%" was correct on 21 October against 2 January. On 22 and 23 October the real yield fell back to 2.64% and 2.66%. [R5A-01]
2. **The two official term premium models disagree.** ACM 10-year: yield 4.24% to 5.09% (+85bp, to 21 October), term premium 0.75% to 0.72%, risk-neutral yield 3.50% to 4.37%. Kim-Wright: yield 4.24% to 5.11% (+87bp, to 16 October), term premium 0.57% to 0.99%, expected path 3.67% to 4.12%. Kim-Wright's 0.99% is its highest since May 2010 apart from early October 2026. [R5A-02, R5A-03]
3. **Long-run expected rates rose in both models, by different amounts.** 5y5y forward expected short rate: ACM 3.59% to 4.20% (+61bp), Kim-Wright 3.87% to 4.06% (+19bp). 5y5y real forward from the TIPS curve: 2.39% to 2.98% (+59bp). The front end rose more (5-year real 1.47% to 2.34%, +87bp), which is the Fed-path signature. [R5A-04]
4. **Named-driver attribution (model).** Daily changes, January 2025 to October 2026, 449 observations. Real 10-year betas: JGB 10-year 0.22 (t 3.6), Brent log change 0.18 (t 2.7), semiconductor index 0.04 (not significant). Contributions to the +73bp: Japan +17, oil +10, AI equity proxy minus 2, residual +47. Breakeven: oil +19 of +9 total. R-squared is low (0.05 for real yields), so these are indicative. [R5A-05]
5. **Japan moved a lot.** JGB 10-year 2.066% (30 December 2025) to 2.914% (22 October 2026), +85bp, after about 3.09% at the start of October. Foreign official Treasury custody fell $254B from February (R3 R3A). [R5A-06]
6. **Oil shock size.** Brent $60.85 at end 2025, peak $118.35 on 31 March, $111.66 on 23 October. WTI $57.42 to $103.44. [R5A-07]
7. **AI capex from filings (T0).** Cash capex, first half 2026 against first half 2025: Alphabet $80.6B vs $39.6B, Microsoft $66.7B vs $33.8B (calendar halves from fiscal filings), Meta $49.1B vs $29.5B, Amazon $98.4B vs $57.2B. Big four $294.8B vs $160.1B (+84%). Calendar 2025 total $376.0B. Meta's nine months to September: $83.1B vs $48.3B. Oracle June to August 2026: $28.5B vs $8.5B. Guidance after Q1 2026: about $725B for 2026 including leases, with about 60% of the upgrade blamed on chip and memory prices (T4). [R5A-08, R5A-09]
8. **Fiscal supply grew.** FY2026 deficit $1,992.5B vs $1,775.4B (+$217B, +12.2%, MTS table 1). Coupons have been frozen since early 2025, bills filled the gap (bill share 22.37% at end September, R1 L7). [R5A-10]
9. **The accord Warsh floated is a balance-sheet accord.** Reuters via Marketscreener: a new accord could let the chair and the Treasury secretary state balance sheet goals jointly, and it "would not be working in conjunction with the administration" in the pre-1951 sense. Bloomberg Tax (9 February 2026): his call "rattled" bonds because the 1951 pact "dramatically limited the Fed's footprint in the bond market". No accord text exists (R1 L2). [R5A-11, R5A-12]
10. **Board terms (Fed bios, T1).** Warsh chair to 2030-05-21, governor to 2040-01-31. Powell governor to 2028-01-31. Waller to 2030-01-31. Barr to 2032-01-31. Bowman to 2034-01-31 (vice chair for supervision). Jefferson governor to 2036-01-31, vice chair four-year term from 2023-09-13 (to September 2027). Cook to 2038-01-31. [R5A-13]
11. **1942 to 1951.** Peg from April 1942 at Treasury's request: 3/8% bills, long bonds implicitly capped at 2.5%. CPI inflation 17.6% (June 1946 to June 1947), 9.5% (June 1947 to June 1948), 21% annualized in February 1951. Truman met the FOMC on 31 January 1951, the Fed told Treasury on 19 February it would no longer "maintain the existing situation", and the joint statement of 4 March 1951 reached "full accord". [R5A-14]
12. **Corporate receipts (MTS table 4, T0).** Net: FY2024 $529.9B, FY2025 $452.1B, FY2026 $381.4B. Refunds $35.2B, $34.3B, $61.5B. Gross $565.0B, $486.4B, $442.9B. October to March: $161.6B to $116.0B (minus 28%). April to September: $290.5B to $265.4B (minus 8.6%). September: $62.5B to $86.6B (+38%). December 2025 was $59.4B vs $87.3B a year earlier. [R5A-15]
13. **Hyperscaler taxes (SEC XBRL, T0).** Current federal tax expense: Microsoft $14.1B (FY2025) to $2.5B (FY2026), Amazon $9.0B (2024) to $1.2B (2025), Meta $9.6B to $2.8B. Cash income taxes paid (worldwide): Microsoft $28.7B to $21.2B, Alphabet $27.4B (2024) to $21.5B (2025), Meta $6.3B to $2.9B (nine months 2025 vs 2026), Amazon $5.6B to $4.0B (first halves). [R5A-16]
14. **The 2025 law (T1 via law-firm summaries).** 100% bonus depreciation made permanent for property acquired after 19 January 2025 (the TCJA phase-down would have given 40% in 2025, 20% in 2026, 0% from 2027). Domestic research costs expensed again from 2025 (section 174A), with an election to deduct unamortized 2022 to 2024 amounts in the first one or two tax years, and full retroactivity for small businesses. A 100% deduction for qualified production property (factory buildings, section 168(n)), which does not cover data centers as such. [R5A-17]
15. **The flat-PPI series is consumer foods.** WPUFD4111 = "Final Demand: Finished Consumer Foods" (FRED). Its September 2026 value 283.977 is minus 0.9% on a year earlier. [R5A-18]
16. **Producer and consumer energy agree.** September 2026 year on year: PPI final demand energy +35.4%, gasoline +64.3%, light fuel oils +115.4%, industrial electric power +4.2%, natural gas minus 1.7% (minus 42.7% since December). CPI energy +20.4%, energy commodities +35.3%, gasoline +34.2%, fuel oil +74.2%, energy services +4.6%, electricity +4.4%, piped gas +5.0%. [R5A-19, R5A-20]
17. **The core-goods gap.** PPI finished consumer goods less food and energy +4.0%, finished goods less food and energy +3.9%, final demand goods less food and energy +5.1%, final demand services +4.9%, final demand +6.3%. CPI core goods +0.7%, core +2.6%, headline +3.7%, food at home +1.8%. Import prices: all +8.1%, fuels +34.5%, nonfuel +6.0%, consumer goods excluding autos +2.7%, autos +1.1%, from China +3.1%, from Canada +16.1%. [R5A-21, R5A-22]

## 2. Say/Do gaps

| Actor | Says | Does | Gap |
|---|---|---|---|
| Warsh | A new Fed-Treasury accord, modelled on 1951, to shrink the Fed's footprint | Hiked in September, keeps no forward guidance, reserve purchases paused (R3 R3E) | Small. Words and actions both point to less Fed in the bond market, the opposite of a yield cap |
| Trump | Wants rates near 1% (R3 DCA) | Appointed a hawk, now pursues Cook's removal through a panel hearing | Large on rates, consistent on personnel. The route to looser money runs through Board seats in 2027 and 2028 |
| Treasury | Coupons unchanged "for at least the next several quarters" | Deficit +$217B, bills fill the gap, long-end buybacks raised to at least $4B per operation (R1 L1) | Treasury is doing duration management itself. That is a twist without an accord |
| Hyperscalers | AI investment is a long-term productivity bet | First-half cash capex +84%, current federal tax down about 80% for the three that tag it | The tax cut is a deferral that lasts while capex grows |
| This desk | "PPI for finished consumer goods was flat" (R3 R3D, landscape) | The series was consumer foods | Corrected here |

## 3. Anomalies

1. **A real-rate selloff with no breakeven move during an oil shock.** Default: an 84% oil rise lifts breakevens a lot. Actual: 10-year breakeven +9bp, 5-year +22bp, 5y5y flat (2.24% to 2.20%). Reading: markets trust the Warsh Fed to lean against oil, so the shock lands in the real rate.
2. **ACM and Kim-Wright give opposite term premium stories.** Default: models roughly agree on direction. Here ACM says minus 3bp and Kim-Wright +42bp. The Kim-Wright model uses survey forecasts of short rates, which tend to lag a hawkish repricing, so it books more of the move as premium. Treat the term premium share as 0 to 40bp.
3. **22 October 2026.** The 10-year fell 17bp, the 2-year 16bp and the real 10-year 12bp while the semiconductor index fell 6.7% and Brent rose 4%. A growth or AI scare lowered yields despite higher oil. The cause was not verified this session. Meta filed its Q3 10-Q that day.
4. **Corporate receipts rebounded in September.** Net September receipts were $86.6B against $62.5B a year earlier, while the full year was down 15.6%. Default under "AI capex hollows corporate tax": continued declines. Reading: the one-off refund and catch-up wave peaked in the first half of FY2026.
5. **Producer energy up 35%, natural gas down 43% since December.** Wholesale natural gas fell while oil products soared, which is why electricity and piped gas CPI stayed near 5%.

## 4. Mechanism chains

**A. Real rates (likeliest reading).** Hormuz oil shock (Brent to $118) → headline inflation 3.7% and producer prices +6.3% → strong growth from AI capex (big-four capex +84%, GDPNow 3.6% for Q3) → the Fed hikes in September and markets price December (Kalshi 72%) → expected policy path +45 to +87bp at 10 years → real 10-year +73bp. Japan adds an outside push (JGB +85bp, about 17bp passed through). Test: real 10-year falling with oil if the Fed signals a pause, ACM risk-neutral yield vs term premium.

**B. Term premium leg (if Kim-Wright is right).** Deficit +12% with coupons frozen → bills to 22.4% → TBAC's $1.45T coupon gap for FY2027 to FY2028 → coupon increases in 2027 → term premium up. Test: the November and February refundings, Kim-Wright above 1.1%.

**C. Accord without a cap.** Warsh's task force (Dynan, Rajan, Stein) reports → a joint Fed-Treasury statement on a smaller, shorter SOMA → Treasury takes more duration through buybacks and issuance → private captive buyers (stablecoins under GENIUS, eSLR relief) absorb bills → repression by plumbing (S1-type). A yield cap needs a different chain: a disorderly 30-year auction or MOVE above 130, plus a dovish Board majority after Powell's seat turns over → Fed buys long bonds for "market functioning" → explicit language on yields (S4-lite). Test: any FOMC or Treasury text naming a yield level.

**D. Corporate tax.** Capex grows → 100% expensing deducts it at once → current tax falls → when capex growth slows, depreciation on past assets catches up and new deductions stop rising → the annual drag shrinks within one to three years. One-offs (research cost catch-up, retroactive refunds) fade in FY2027 to FY2028. Test: MTS corporate receipts in December 2026 and April 2027, Q3 capex guidance for 2027.

**E. Price pipeline.** Producer core consumer goods +4.0% vs CPI core goods +0.7% → retail and import margins compressed → if the dollar stops rising or tariffs stay, stores pass on 2 to 3 points in 2027 → core goods CPI up → the Fed holds longer. Test: CPI core goods above 2% year on year by mid-2027.

## 5. Tripwires (dated)

| Date | Event | What would move the desk |
|---|---|---|
| 2026-10-28 to 10-30 | Alphabet, Microsoft, Amazon Q3 results | 2027 capex guidance flat or down: R5-4 reversal arrives sooner (plateau scenario). Up more than 25%: drag peaks 2027 |
| 2026-10-28 | FOMC | A hike (7 to 8% priced) raises the Fed-path share of real rates. Any balance-sheet or accord language |
| 2026-10-29 | Q3 GDP advance and September PCE (BEA, both 8:30) | GDP below 2%: the AI-growth leg of real rates weakens |
| 2026-11-02 and 11-04 | Borrowing estimate and refunding | Coupon increases or softer guidance: term premium leg (chain B) |
| 2026-11-05 to 11-10 | Cook hearing, written response deadline | A removal order raises odds of a Trump majority before 2028 |
| About 2026-11-12 | MTS October | Corporate receipts up year on year for a second month |
| 2026-11-13 and 12-10 | October and November CPI | Core goods CPI above 1.5% year on year: pipeline (chain E) starting |
| 2026-12-09 | FOMC with SEP | Dots for 2027, any word on the balance sheet task force |
| 2027-01 to 2027-04 | Q4 earnings, MTS December and April | Corporate share of receipts above 9% |
| September 2027 | Jefferson's vice-chair term ends | Nominee's views on balance sheet and yields |
| 2028-01-31 | Powell's governor term ends | Fourth Trump appointee, Board majority |

## 6. Open questions

1. The ACM and Kim-Wright split cannot be settled with prices alone. A survey-based check (SPD or SMP expected policy path for 2027 to 2030) would help.
2. The FY2026 corporate refund jump ($27.2B) is not split by cause (research cost catch-up, bonus depreciation, amended returns). IRS or CBO detail needed (cbo.gov returns 403).
3. Labels for PPI series WPUFD4121, WPUFD4122 and WPUFD4123 (+29.6%, +53.7%, +64.5% year on year) were not confirmed, so they are not used.
4. Hyperscaler external financing (bonds, leases, private credit) in 2026 was not totalled, so direct AI crowding-out is a range.
5. The cause of the 22 October rally.
6. Whether Powell would stay as governor past 2028-01-31 until a successor is confirmed (governors serve until a successor takes office).

---

## 7. Data tables

### 7.1 The 2026 real-rate move, decomposed (r5a-t-real)

Change from 2025-12-31 to the date shown, basis points. Sources: Treasury par curves, NY Fed ACM, Fed Kim-Wright, MoF, Yahoo.

| Layer | Item | Start | End | Change | Source |
|---|---|---|---|---|---|
| Identity | 10-year nominal | 4.18% | 5.00% (10-23) | +82 | Treasury nominal curve |
| Identity | 10-year real (TIPS) | 1.93% | 2.66% (10-23) | +73 | Treasury real curve |
| Identity | 10-year breakeven | 2.25% | 2.34% (10-23) | +9 | Difference of the two |
| Identity | 5-year real / 5y5y real forward | 1.47% / 2.39% | 2.34% / 2.98% | +87 / +59 | Treasury real curve |
| Model 1 (ACM) | Term premium / expected path, 10-year | 0.75% / 3.50% | 0.72% / 4.37% (10-21) | minus 3 / +87 | NY Fed ACM daily |
| Model 2 (Kim-Wright) | Term premium / expected path, 10-year | 0.57% / 3.67% | 0.99% / 4.12% (10-16) | +42 / +45 | Fed feds200533.csv |
| Model 3 (daily regression) | Japan (JGB 10-year 2.07% to 2.91%) | | | +17 of real | r5a_realrate.py |
| Model 3 | Oil (Brent $60.8 to $111.7) | | | +10 of real, +19 of breakeven | r5a_realrate.py |
| Model 3 | AI equity proxy (SOX 7,083 to 10,779) | | | minus 2 of real | r5a_realrate.py |
| Model 3 | Residual (Fed path, fiscal, AI demand, other) | | | +47 of real | r5a_realrate.py |
| Desk split | Fed path in a strong, oil-hit economy | | | 30 to 40 | judgment |
| Desk split | Japan and global spillover | | | 15 to 20 | judgment |
| Desk split | Term premium and fiscal supply | | | 0 to 20 | judgment |
| Desk split | Direct AI crowding-out | | | 5 to 15 | judgment |

Regression detail (daily, 2025-01 to 2026-10-23, n 449, lagged dependent variable included, contributions use the long-run multiplier):

| Dependent | JGB beta (t) | Brent beta (t) | SOX beta (t) | R-squared |
|---|---|---|---|---|
| 10-year real | 0.22 (3.6) | 0.18 (2.7) | minus 0.04 (minus 0.6) | 0.05 |
| 10-year breakeven | 0.05 (1.7) | 0.34 (11.2) | 0.11 (3.5) | 0.24 |
| 10-year nominal | 0.28 (3.9) | 0.51 (6.9) | 0.07 (0.9) | 0.14 |

Caveat: the JGB change on a Tokyo day partly reflects the previous US session, so the Japan share is an upper estimate.

### 7.2 AI capex from filings (r5a-t-capex)

Cash purchases of property and equipment, $B (SEC XBRL, Amazon "productive assets"). Microsoft calendar halves built from fiscal quarters.

| Company | H1 2025 | H1 2026 | Change | Calendar 2025 | Latest |
|---|---|---|---|---|---|
| Alphabet | 39.6 | 80.6 | +104% | 91.4 | 10-Q filed 2026-07-23 |
| Microsoft | 33.8 | 66.7 | +97% | 83.1 | 10-K filed 2026-07-29 |
| Meta | 29.5 | 49.1 | +66% | 69.7 | 9M 2026 83.1 vs 48.3 (10-Q 2026-10-22) |
| Amazon | 57.2 | 98.4 | +72% | 131.8 | 10-Q filed 2026-07-31 |
| Big four | 160.1 | 294.8 | +84% | 376.0 | Guidance about 725 for 2026 incl. leases (T4) |
| Oracle (fiscal Q1) | 8.5 | 28.5 | +235% | n/a | 10-Q filed 2026-09-11 |

### 7.3 Fed Board seats and the 2028 turnover (r5a-t-board)

| Member | Role | Appointed by | Term ends | Note |
|---|---|---|---|---|
| Kevin Warsh | Chair (to 2030-05-21) | Trump | 2040-01-31 | Took office 2026-05-22 |
| Philip Jefferson | Vice Chair (term from 2023-09-13) | Biden | 2036-01-31 | Vice-chair term ends September 2027 |
| Michelle Bowman | Vice Chair for Supervision | Trump | 2034-01-31 | |
| Christopher Waller | Governor | Trump | 2030-01-31 | |
| Michael Barr | Governor | Biden | 2032-01-31 | |
| Lisa Cook | Governor | Biden | 2038-01-31 | Removal hearing 2026-11-05 |
| Jerome Powell | Governor | Obama, reappointed | 2028-01-31 | Powell leaves before 2028-01-31: 64 to 72 priced (R3 R3E) |

Trump appointees: 3 of 7 now. A fourth (Powell's seat, or Cook's if removed) gives a majority. The FOMC majority needs 7 of 12 votes.

### 7.4 Accord history and today (r5a-t-accord)

| Item | 1942 to 1951 | 2026 |
|---|---|---|
| Rule | 3/8% bills, long bonds implicitly capped at 2.5% (from April 1942, at Treasury's request) | No cap. Fed funds 3.75% to 4.00%, 10-year 5.00%, 30-year 5.33% |
| Inflation | 17.6% (June 1946 to June 1947), 21% annualized (February 1951) | CPI 3.7%, core 2.6% (September) |
| Fed balance sheet | Forced to buy to hold the peg | About $6.7T, reserve purchases paused, bills bought to reinvest agency principal (R3 R3E) |
| Who manages duration | The Fed (by peg) | Treasury (bill share 22.4%, long-end buybacks at least $4B per operation) |
| The accord | 4 March 1951: "full accord with respect to debt management and monetary policies", to minimize monetization | Floated by Warsh: a joint statement on the Fed's balance sheet and Treasury issuance. No text |
| Direction | Ended the cap | Would shrink the Fed's footprint |

### 7.5 Corporate receipts and the expensing model (r5a-t-tax)

MTS table 4, $B.

| Fiscal year | Gross | Refunds | Net | Oct to Mar net | Apr to Sep net |
|---|---|---|---|---|---|
| FY2024 | 565.0 | 35.2 | 529.9 | n/a | n/a |
| FY2025 | 486.4 | 34.3 | 452.1 | 161.6 | 290.5 |
| FY2026 | 442.9 | 61.5 | 381.4 | 116.0 | 265.4 |

Model (r5a_tax.py): big-four expensing drag on federal tax vs the TCJA phase-down, $B a year (negative = revenue lost). Equipment share 60%, 5-year MACRS, 21% rate.

| Scenario | 2025 | 2026 | 2027 | 2028 | 2029 | 2030 | 2032 |
|---|---|---|---|---|---|---|---|
| A: capex +25% in 2027, +10% in 2028, then flat | minus 22.7 | minus 43.3 | minus 55.4 | minus 41.5 | minus 23.6 | minus 11.5 | minus 0.6 |
| B: plateau from 2027 at $650B | minus 22.7 | minus 43.3 | minus 39.1 | minus 23.5 | minus 12.8 | minus 5.0 | 0.0 |
| C: flat 2027, minus 30% in 2028 | minus 22.7 | minus 43.3 | minus 39.1 | minus 3.8 | minus 1.0 | +2.1 | +1.4 |

Reading: the drag tracks capex growth. It halves within about two years of a plateau and turns into a small payback only if capex falls. The research-cost catch-up and the FY2026 refund wave are on top of this and fade by FY2028.

### 7.6 Producer vs consumer prices, September 2026 (r5a-t-ppi)

Year on year, not seasonally adjusted (BLS API).

| Series (id) | Year on year | December 2025 to September 2026 |
|---|---|---|
| PPI finished consumer foods (WPUFD4111), the "flat" series | minus 0.9% | minus 0.1% |
| PPI finished goods (WPUFD49207) | +8.4% | +9.5% |
| PPI finished consumer goods less food and energy (WPSFD41312, seasonally adjusted) | +4.0% | +2.9% |
| PPI final demand (WPUFD4) | +6.3% | +5.9% |
| PPI final demand energy (WPUFD412) | +35.4% | +44.4% |
| PPI final demand foods (WPUFD411) | 0.0% | +0.8% |
| PPI gasoline (WPU0571) | +64.3% | +95.8% |
| CPI energy (CUUR0000SA0E) | +20.4% | +24.6% |
| CPI energy commodities (CUUR0000SACE) | +35.3% | +46.7% |
| CPI energy services (CUUR0000SEHF) | +4.6% | +3.4% |
| CPI core goods (CUUR0000SACL1E) | +0.7% | +2.0% |
| CPI all items / core | +3.7% / +2.6% | +4.0% / +2.7% |
| Import prices, consumer goods excluding autos (EIUIR4) | +2.7% | +2.6% |
| Import prices, fuels (EIUIR10) | +34.5% | +39.5% |
| Dollar index (DX-Y.NYB, level) | 98.28 at end 2025 | 101.75 on 10-23 |

---

## 8. R5-16 pre-registration: rates, Fed and Treasury events (r5a-t-prereg)

Snapshot 2026-10-23 23:36 UTC. Desk numbers are probabilities in percent unless a point estimate is stated. Score with the Brier rule on the resolution date. Market odds are mid prices. Venues: Kalshi (K), Polymarket (P). CME FedWatch: no fresh press figure found.

| # | Event | Date | Desk prediction | Resolution rule | Market odds |
|---|---|---|---|---|---|
| P1 | FOMC holds the target range at 3.75% to 4.00% | 2026-10-28 | 91 | Fed statement target range | K hold 92.5 ($7.1M on the hold leg), P no change 92.5 ($61.0M event) |
| P2 | FOMC hikes 25bp | 2026-10-28 | 8 | Same | K 7.5 ($5.1M), P 6.5 |
| P3 | At least one dissent | 2026-10-28 | 78 | Statement vote list | P 73.5 (1 minus "0 dissents", $34k, thin). K Hammack 73 |
| P4 | Two or more dissents | 2026-10-28 | 50 | Same | P 58 (thin) |
| P5 | Statement changes balance-sheet policy (restart of reserve purchases, or new SOMA composition language) | 2026-10-28 | 15 | Statement and implementation note | none |
| P6 | Statement or implementation note contains the word "accord" or names a Treasury yield level | 2026-10-28 | 2 | Text search of both documents | none |
| P7 | 10-year yield moves less than 10bp on decision day | 2026-10-28 | 80 | Treasury par yield 10-28 minus 10-27 | none |
| P8 | Q3 real GDP, advance, annualized: point 3.3% | 2026-10-29 | above 2.0%: 90. Above 3.0%: 60. Above 3.5%: 30. Above 4.0%: 12 | BEA advance release, 8:30 ET 10-29 (BEA schedule) | K above 2.0: 90, above 3.0: 61.5, above 3.5: 29.5, above 4.0: 11.5 ($32k to $93k per leg). GDPNow 3.6 (10-15) |
| P9 | September core PCE price index, month on month (rounded): point 0.3% | 2026-10-29 | 0.3 or more: 85. Above 0.3: 20 | BEA Personal Income and Outlays, 8:30 ET 10-29 | K above 0.2: about 90, above 0.3: 19.5 ($4.5k to $4.9k, thin) |
| P10 | September headline PCE price index year on year between 3.0% and 3.6% | 2026-10-29 | 65 | Same release | none (judgment from CPI 3.7%, lower PCE energy weight) |
| P11 | Oct to Dec privately held net marketable borrowing estimate above the August estimate of $628B | 2026-11-02 | 60 | Treasury borrowing estimate press release | none |
| P12 | Nominal coupon auction sizes unchanged (Nov refunding 3-year $58B, 10-year $42B, 30-year $25B, and the 2, 5, 7-year sizes for Nov to Jan) | 2026-11-04 | 85 | Refunding statement table | none. TBAC provisional table shows unchanged sizes |
| P13 | Forward guidance sentence "for at least the next several quarters" dropped or softened | 2026-11-04 | 40 | Refunding statement text compared with 2026-08-05 | none |
| P14 | Long-end buybacks (10 to 20-year and 20 to 30-year) kept at or above $4B per operation for the Nov to Jan quarter | 2026-11-04 | 75 | Refunding statement buyback schedule | none |
| P15 | Any new tenor, century bond or fee on foreign official holders | 2026-11-04 | 1 | Refunding statement | none |
| P16 | Bills as a share of marketable debt held by the public above 22.37% at end December | 2027-01 (MSPD) | 60 | MSPD table 1, 2026-12-31 vs 2026-09-30 | none |
| P17 | The Cook hearing is held on 11-05 with Cook or her counsel taking part (in person or in writing) | 2026-11-05 | 75 | Credible press reports | none |
| P18 | The panel's removal recommendation is reported by 11-30 | 2026-11-30 | 45 | Credible press reports of a written recommendation for removal | none |
| P19 | Trump issues a removal order for Cook by 12-31 | 2026-12-31 | 40 | White House or court filings | none |
| P20 | Cook officially out as governor by 11-30 / by 12-31 | 2026-11-30 / 12-31 | 3 / 8 | Fed Board roster no longer lists her | P 3.1 / 8.65 ($31.6k, thin) |
| P21 | December FOMC hikes 25bp (context, scored 12-09) | 2026-12-09 | 70 | Statement | K 72 ($257k on the leg). P another hike in 2026: 77.5 ($1.0M) |

Market-odds rule: on every row with a market above $1M traded (P1, P2, P21), the desk is within 15 points. No written dissent needed.

---

## 9. Claims table

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R5A-01 | 10-year nominal 4.18% to 5.00%, real 1.93% to 2.66%, breakeven 2.25% to 2.34% (2025-12-31 to 2026-10-23). Peak real 2.95% on 10-05 | T3 | confirmed | https://home.treasury.gov/resource-center/data-chart-center/interest-rates/daily-treasury-rates.csv/2026/all?type=daily_treasury_real_yield_curve&field_tdr_date_value=2026&page&_format=csv | 2026-10-23 | 2026-10-23 | Treasury revises the curve |
| R5A-02 | ACM 10-year term premium 0.75% to 0.72% while the risk-neutral yield rose 3.50% to 4.37% (to 10-21) | T3 (official model) | confirmed | https://www.newyorkfed.org/medialibrary/media/research/data_indicators/ACMTermPremium.xls | 2026-10-22 | 2026-10-23 | NY Fed re-estimation |
| R5A-03 | Kim-Wright 10-year term premium 0.57% to 0.99% (to 10-16), highest since May 2010 outside October 2026 | T3 (official model) | confirmed | https://www.federalreserve.gov/data/yield-curve-tables/feds200533.csv | 2026-10-16 | 2026-10-23 | Fed revision |
| R5A-04 | 5y5y expected short rate +61bp (ACM) or +19bp (Kim-Wright). 5y5y real forward 2.39% to 2.98% | model on T3 | plausible | same files and Treasury curves | 2026-10-22 | 2026-10-23 | n/a |
| R5A-05 | Daily-regression attribution of the +73bp real rise: Japan +17, oil +10, AI equity proxy minus 2, residual +47 | model | plausible | r5a_realrate.py on the sources above | 2026-10-23 | 2026-10-23 | Different sample or controls flip the Japan or oil sign |
| R5A-06 | JGB 10-year 2.066% (2025-12-30) to 2.914% (2026-10-22) | T3 | confirmed | https://www.mof.go.jp/english/policy/jgbs/reference/interest_rate/jgbcme.csv | 2026-10-22 | 2026-10-23 | MoF revision |
| R5A-07 | Brent $60.85 at end 2025, peak $118.35 on 2026-03-31, $111.66 on 10-23 | T3 | confirmed | https://query1.finance.yahoo.com/v8/finance/chart/BZ%3DF | 2026-10-23 | 2026-10-23 | n/a |
| R5A-08 | Big-four cash capex $294.8B in H1 2026 vs $160.1B in H1 2025 (+84%). Calendar 2025 $376.0B | T0 | confirmed | https://data.sec.gov/api/xbrl/companyconcept/CIK0001652044/us-gaap/PaymentsToAcquirePropertyPlantAndEquipment.json (and CIK0000789019, CIK0001326801, CIK0001018724 PaymentsToAcquireProductiveAssets) | 2026-07-31 | 2026-10-23 | Restatement |
| R5A-09 | 2026 big-four capex guidance about $725B after Q1, about 60% of the upgrade from chip and memory prices. Alphabet: 2027 capex to rise "significantly" | T2 via T4 | plausible | https://www.thewealthadvisor.com/article/magnificent-7-earnings-rush-reveals-ai-spending-surge-hyperscaler-capex-set-reach-725 | 2026-04 | 2026-10-23 | Q3 guidance cut |
| R5A-10 | FY2026 deficit $1,992.5B vs $1,775.4B (+12.2%) | T0 | confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_1 | 2026-10 | 2026-10-23 | MTS revision |
| R5A-11 | Warsh's proposed accord would jointly state balance sheet goals and is not a return to pre-1951 practice | T2 via T4 (Reuters) | plausible | https://in.marketscreener.com/news/ex-fed-governor-warsh-says-new-accord-between-treasury-central-bank-needed-ce7c5cd9d18bf426 | 2025 | 2026-10-23 | Warsh endorses yield targets |
| R5A-12 | Warsh's accord call unsettled bonds in February 2026 because the 1951 pact limited the Fed's bond footprint | T4 | plausible | https://news.bloombergtax.com/banking-law/warshs-cryptic-call-for-fed-treasury-accord-rattles-bond-market | 2026-02-09 | 2026-10-23 | n/a |
| R5A-13 | Board terms: Warsh chair to 2030-05-21 and governor to 2040, Powell 2028-01-31, Waller 2030, Barr 2032, Bowman 2034, Jefferson 2036 (vice chair from 2023-09-13), Cook 2038 | T1 | confirmed | https://www.federalreserve.gov/aboutthefed/bios/board/warsh.htm (and powell, jefferson, bowman, barr, cook, waller) | 2026-10-23 | 2026-10-23 | Roster change |
| R5A-14 | 1942 peg 3/8% bills and 2.5% long bonds. CPI 17.6% (1946 to 1947), 21% annualized (Feb 1951). Accord 1951-03-04 | T1 (Fed history) | confirmed | https://www.federalreservehistory.org/essays/treasury-fed-accord | essay | 2026-10-23 | n/a |
| R5A-15 | Corporate net receipts $529.9B, $452.1B, $381.4B (FY2024 to FY2026). Refunds $34.3B to $61.5B. Oct to Mar minus 28%, Apr to Sep minus 8.6%, September +38% | T0 | confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_4 | 2026-10 | 2026-10-23 | MTS revision |
| R5A-16 | Current federal tax: Microsoft $14.1B to $2.5B, Amazon $9.0B to $1.2B, Meta $9.6B to $2.8B | T0 | confirmed | https://data.sec.gov/api/xbrl/companyconcept/CIK0000789019/us-gaap/CurrentFederalTaxExpenseBenefit.json | 2026-07-29 | 2026-10-23 | Restatement |
| R5A-17 | 2025 law: permanent 100% bonus depreciation for property acquired after 2025-01-19, domestic research expensing from 2025 with a 2022 to 2024 catch-up, 168(n) for factory buildings | T1 via T4 | confirmed | https://www.wilmerhale.com/insights/client-alerts/20250714-one-big-beautiful-bill-act | 2025-07-14 | 2026-10-23 | Statute text differs |
| R5A-18 | WPUFD4111 is finished consumer foods, not finished consumer goods. Minus 0.9% year on year in September 2026 | T1 (series title) and T0 | confirmed | https://fred.stlouisfed.org/series/WPUFD4111 , https://api.bls.gov/publicAPI/v2/timeseries/data/WPUFD4111 | 2026-10 | 2026-10-23 | BLS title differs |
| R5A-19 | PPI final demand energy +35.4% year on year, gasoline +64.3%, diesel +115.2% (September 2026) | T0 | confirmed | https://api.bls.gov/publicAPI/v1/timeseries/data/WPUFD412 | 2026-10 | 2026-10-23 | BLS revision |
| R5A-20 | CPI energy +20.4% = energy commodities +35.3% and energy services +4.6% (electricity +4.4%, piped gas +5.0%) | T0 | confirmed | https://api.bls.gov/publicAPI/v1/timeseries/data/CUUR0000SACE | 2026-10 | 2026-10-23 | BLS revision |
| R5A-21 | Producer core consumer goods +4.0% vs CPI core goods +0.7% (September 2026). Margin squeeze of about 3 points | T0 plus inference | plausible | https://api.bls.gov/publicAPI/v2/timeseries/data/WPSFD41312 | 2026-10 | 2026-10-23 | CPI core goods catches up without margin data showing compression |
| R5A-22 | Import prices +8.1%, fuels +34.5%, consumer goods excluding autos +2.7%. Dollar index 98.28 to 101.75 | T0 and T3 | confirmed | https://api.bls.gov/publicAPI/v1/timeseries/data/EIUIR4 | 2026-10 | 2026-10-23 | BLS revision |
| R5A-23 | The big-four expensing drag is about $43B in 2026 and shrinks to about $5B to $12B by 2030 if capex goes flat | model | plausible | r5a_tax.py | 2026-10-23 | 2026-10-23 | Corporate receipts keep falling in a capex plateau |
| R5A-24 | A Trump-appointed Board majority (4 of 7) arrives by early 2028 via Powell's seat even if Cook stays | T1 plus arithmetic | plausible | Fed bios (R5A-13) | 2026-10-23 | 2026-10-23 | Powell stays past term with no confirmed successor |
| R5A-25 | Explicit Fed cap or ceiling on Treasury yields: 3 by end 2028, 15 by 2035 | judgment | speculative | this file | 2026-10-23 | 2026-10-23 | Any Fed or Treasury text naming a yield ceiling |
| R5A-26 | A Warsh-style balance-sheet accord (joint statement) by end 2028: 25 | judgment | speculative | this file | 2026-10-23 | 2026-10-23 | Task force reports without a joint statement by end 2028 |
| R5A-27 | October FOMC: hold priced 92.5 on Kalshi and Polymarket ($61.0M event). December hike 72 (Kalshi) | T3 | confirmed | https://api.elections.kalshi.com/trade-api/v2/markets?series_ticker=KXFEDDECISION | 2026-10-23 | 2026-10-23 | n/a |
| R5A-28 | Q3 GDP above 3.0% priced 61.5, above 4.0% 11.5 (Kalshi). GDPNow 3.6% on 10-15 | T3 and T4 | confirmed | https://api.elections.kalshi.com/trade-api/v2/markets?series_ticker=KXGDP , https://investinglive.com/central-banks/atlanta-fed-gdpnow-holds-at-3-6-for-q3-as-consumer-spending-outlook-improves/ | 2026-10-23 | 2026-10-23 | n/a |
| R5A-29 | GDP advance and September PCE are both released 2026-10-29 at 8:30 | T1 | confirmed | https://www.bea.gov/news/schedule | 2026-10 | 2026-10-23 | BEA reschedules |
| R5A-30 | TBAC provisional November refunding sizes unchanged (3-year 58, 10-year 42, 30-year 25) | T2 | confirmed | https://home.treasury.gov/system/files/221/TBACRecommendedFinancingTableByRefundingQuarter-08052026.pdf | 2026-08-05 | 2026-10-23 | Treasury upsizes |
| R5A-31 | Treasury's August estimate for Oct to Dec 2026 privately held net marketable borrowing: $628B, end-December cash $850B | T2 via T4 | plausible | https://home.treasury.gov/news/press-releases/sb0584 | 2026-08 | 2026-10-23 | Release text differs |
| R5A-32 | Cook hearing: closed, transcribed, DOJ lawyers question her, written statement allowed up to five days after, panel recommends on cause | T2 via T4 | plausible | https://michiganadvance.com/2026/10/09/repub/trump-appoints-committee-to-revive-quest-to-remove-lisa-cook-from-fed-board/ | 2026-10-09 | 2026-10-23 | Hearing cancelled |
| R5A-33 | Cook out by 12-31 priced 8.65 (thin) | T3 | confirmed | https://gamma-api.polymarket.com/public-search?q=Lisa%20Cook | 2026-10-23 | 2026-10-23 | n/a |
| R5A-34 | On 2026-10-22 the 10-year fell 17bp and the real 10-year 12bp while SOX fell 6.7% and Brent rose 4% | T3 | confirmed (cause unverified) | Treasury curves, Yahoo ^SOX | 2026-10-23 | 2026-10-23 | n/a |

---

## 10. Proposed changes

1. **Correct the R5-11 premise and R3 R3D finding 5.** File round3/lanes/R3D-ownership-markets.md line 75, text "PPI for all finished consumer goods was flat from 2025 to 2026 year to date while the core index rose about 3.5%. The energy component in this series fell or flattened even as CPI energy rose 20.4%". Replace with: "The series used (WPUFD4111) is finished consumer foods, which was flat (minus 0.9% year on year in September 2026). Producer energy rose 35.4% and finished goods 8.4%." Same correction for the R3D source line (line 189) and site/landscape.json question 11, whose answer should read: "Resolved: a mislabelled series. Producer energy rose 35.4%, more than CPI energy (20.4%), because half of CPI energy is regulated power and gas (+4.4% and +5.0%). The live gap is core goods: producer +4.0% vs consumer +0.7%." Evidence R5A-18 to R5A-21.
2. **Update the landscape answer for R5-2** ("No decomposition exists yet"): replace with the 7.1 table summary. Also note that the real 10-year was 2.66% on 10-23 (2.76% on 10-21).
3. **Lower "explicit Fed yield cap or Fed-Treasury accord on yields by 2035" from 25 (R3 DCC) to 15**, and split it from a new row "balance-sheet accord (joint Fed-Treasury statement on SOMA and issuance) by end 2028: 25". Reason: Warsh's accord is the 1951 direction (less Fed), the 2028 turnover changes the Board majority but not the chair, and Treasury already does the duration work by bills and buybacks. Keep DCC-L3 "yield support after turnover" at D2 but lower it from 40 to 30 by 2032.
4. **Scenario odds.** H0 unchanged at 62/15/1/22. The real-rate evidence supports R3 R3E's relabel (S4 in H0 is an oil-inflation and term-premium episode met by a hiking Fed), and the core-goods margin squeeze (R5A-21) adds persistence, which offsets the lower yield-cap odds. H1: move 1 point from S4 to S1, giving 45/23/3/29 (S2a 17, S2b 6), because the repression leg of S4 in H1 rested on a yield-cap accord after the 2028 turnover, which this lane rates less likely. H2 unchanged at 31/28/10/31.
5. **New conditional C7.** If any FOMC statement, Fed-Treasury joint statement or refunding statement names a Treasury yield level, ceiling or target before 2029: move 3 points from S1 to S4 in H1. If instead a joint statement commits to a smaller, shorter Fed portfolio with Treasury managing duration: move 1 point from S4 to S1 in H1.
6. **R5-4 test refined.** Replace "corporate share above 10% while capex keeps growing" with two dated tests: FY2027 net corporate receipts above FY2026's $381.4B (desk 65) and the corporate share of receipts above 9% in FY2028 (desk 40, rising to about 60 if 2027 capex guidance is flat).
7. **Calendar fixes.** BEA confirms both the GDP advance and September PCE at 8:30 on 2026-10-29 (Kalshi's GDP contract closes 10-30, which is only its close time). Add the hyperscaler Q3 results (10-28 to 10-30) and the October MTS (about 11-12) to the tripwire table.
