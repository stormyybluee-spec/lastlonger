# Round 5 Court (R5X): cross-examination and final rulings

Panel: Round 5 court, R5X. Written 2026-10-23 to 2026-10-24. Facts as of 2026-10-23 unless a row says otherwise.
Inputs read: round5/BRIEF_R5.md (questions R5-1 to R5-18, method, style), the five lanes in round5/lanes/ (R5A rates, Fed and taxes, R5B dollar access, the Gulf and Asia, R5C Europe follow-ups, R5D households, housing and the spread trade, R5E memory audit, whose corrections were already applied and are only referenced here), round4/DEBATE_R4.md (odds, conditionals C1 to C6, tripwires), and for format round4/r4_data.json, site/r4_odds.json, site/r4_learn.json and site/landscape.json.
Method: the court cross-examined the lanes, recomputed where lanes overlapped, and made 9 fresh checks (8 fetches or searches plus one PDF read): the Fed H.4.1 release of 2026-10-22, the FRED title of series WPUFD4111, the Treasury ESF financial statement for August 2026, Kitco on PBoC gold, Caixin on PBoC swap lines, the Assemblée nationale budget calendar, and two attempts to confirm the Moody's decision. Every other number comes from a lane file, cited by claim id. 'Model' means arithmetic on stated inputs, not data. Status words are lowercase (confirmed, plausible, speculative, refuted). Horizons: H0 now to 2028, H1 2028 to 2035, H2 2035 to 2050. Scenarios: S1 dollar extension, S2 neutral reserve layer (shown as S2a gold and Bitcoin plus S2b multipolar fiat), S3 energy or compute standard, S4 disorderly reset.
Companion files: round5/r5_data.json (page data), site/r5_odds.json, site/r5_learn.json, round5/r5_visual_data.json (diagram numbers), round5/prereg.json (full ledger, 72 entries), round5/r5_landscape_edits.json (28 edits) and round5/r5_other_edits.json (25 edits). None of the edits has been applied.

## The short version

Real rates rose because markets expect a tighter Fed in an oil-hit, AI-fed economy, with Japan adding a push. The accord Warsh wants would shrink the Fed, not cap yields. Crisis dollars for most countries now depend on politics, and the countries left outside the Fed's circle buy gold and sell Treasuries in a squeeze. Moody's held France. Housing supply is shrinking, and borrowing to invest mostly adds downside. The scenario odds stay at 62/15/1/22, 44/23/3/30 and 31/28/10/31. Five new conditionals (C7 to C11) replace the lanes' overlapping proposals. The desk wrote 72 dated predictions, and the first, on Moody's, is already a pending score in the desk's favour.

## 1. Conflicts between lanes, and how each was settled

### X1. Scenario odds: R5A (H1 45/23/3/29) against R5B, R5C, R5D and R5E (no change)
- **Tension.** R5A moves 1 point from S4 to S1 in H1 because the repression leg of S4 rested on a yield-cap accord after the 2028 turnover, which it now rates less likely (25 to 15). The other four lanes keep all odds.
- **Cross-examination.** R5A's own evidence cuts both ways. A Trump-appointed Board majority arrives by early 2028 through Powell's seat even if Cook stays (R5A-24), which is exactly the 'dovish Board' leg of the cap chain. The Kim-Wright term premium is at its highest since 2010 (R5A-03), the FY2026 deficit grew 12.2% (R5A-10), Japan pays for yen defense by selling Treasuries (R5B-06), and the producer to consumer core-goods gap of about 3 points is a 2027 inflation risk (R5A-21). Against that, a cap replaced by 'repression by plumbing' is S1-type, as R5A argues.
- **Ruling.** Headline odds unchanged. The cap-to-plumbing substitution is real but not yet observed, so it becomes the reverse leg of conditional C7: a joint statement committing to a smaller, shorter Fed portfolio with Treasury managing duration moves the point R5A wanted. The S2 display split stays 13/17/18 plus 2/6/10.

### X2. Conditional numbering: R5A C7, R5B C7 to C9 and R5C's BBB-band rule
- **Ruling.** One list, numbered after Round 4's C1 to C6: C7 yield-level text (R5A), C8 Gulf line with published conditions (R5B C7), C9 Japan FIMA draw above $10B (R5B C8), C10 domestic gold storage above 12% (R5B C9), C11 two agencies in the BBB band (R5C). Stacking caps keep moves bounded: C7 with C4 at most 5 points from S1 in H1, C8 with C10 at most 2 points to S2a, and C11 shares the 4-point H0 cap with C1 and C2. Table in section 5.

### X3. Yield-cap odds and DCC-L3
- **Tension.** R5A asks to lower DCC-L3 'Fed yield support then an accord after turnover' from 40 to 30 by 2032. But the decode panel had already retired the bundled 40 (DCX-03), splitting it into a bond episode forcing Fed balance-sheet action (30 by 2028, 45 by 2035) and an explicit cap or accord on yields (25 by 2035). The Landscape still quotes the retired 40.
- **Ruling.** The explicit cap or accord on yields falls to 15 by 2035. DCC-L3 is reissued for the narrower event 'Fed long-end support with yield language after the 2028 turnover', D2, 30 by 2032, which nests between 45 and 15. A Warsh-style balance-sheet accord by end 2028 is a separate row at 25, and it is not a cap.

### X4. Foreign official custody: R5B $2,567.7B against the H.4.1 weekly average
- **Fresh check.** H.4.1 for the week ended 2026-10-21: weekly average $2,572.8B, +$18.5B on the week, -$176.0B on the year (R5X-04). R5B's changes match exactly, its level is about $5B lower, probably a different measure. R3A's '$254B sold' ran from the 18 February peak to 14 October.
- **Ruling.** House figure: weekly average $2,572.8B, up $18.5B in the week to 21 October. Official selling paused in October. The fall from the February peak is now about $230B on the weekly average.

### X5. Moody's France: Round 4's '1 point off H0 crisis odds if no cut' against R5C
- **Ruling.** R5C upheld. The hold is conditional on a deficit-reducing 2027 budget, the spread rose from 130.3bp (1 October) to 171.8bp (23 October), and the 2026 deficit slipped to about 5.4%. A France-led euro crisis stays at 20 by 2028.

### X6. Argentina's ESF repayment date: R3A '9 January 2026' against R5B 'December 2025'
- **Fresh check.** ESF statement note 9: the $2.5B swap executed in October 2025 was fully repaid in December 2025 (R5X-03).
- **Ruling.** December 2025. R3A's press date is corrected (edit in r5_other_edits.json).

### X7. PBoC gold: '23t' in September (R4 open item), 21t (Kitco), and holdings of 2,196t against about 2,410t
- **Fresh check.** Kitco: 21t in September, 23rd straight month, holdings 2,196t (R5X-06).
- **Ruling.** 21t stands. The 23t was WGC's July net figure for all central banks (R4A-08), not a PBoC month. Kitco's holdings total conflicts with WGC's 2,346t at end June plus later buying and is not used. No published page used 23t.

### X8. Small level differences
- 10-year yield on 23 October: 5.00% (Treasury par, R5A) against 4.99% (Yahoo, R5B). House figure 5.00%.
- Real 10-year: Landscape '82bp to 2.76%' (2 January to 21 October) against R5A '+73bp to 2.66%' (31 December to 23 October). Both right for their dates. House figure +73bp to 2.66%.
- Term premium share: ACM -3bp against Kim-Wright +42bp. Not settled by prices. Carried as 0 to 40bp.
- Foreign official reverse repo: R5B $326.9B against the H.4.1 weekly average $333.8B, again a measure difference.

### X9. A prediction written after the event
- R5C's P08 (Moody's or S&P downgrade by 31 October, desk 2) was written after Moody's held. It is excluded from scoring. The ledger keeps only the original desk number (70) for that event, as a pending score.

## 2. Rulings table

| id | group | question (short) | status | confidence | horizon | change vs lane |
|---|---|---|---|---|---|---|
| R5-2 | r5-rates | Is the 2026 rise in real interest rates driven by AI capital demand... | plausible | 55 | H0 | kept (R5A 55), desk split given central values |
| R5-3 | r5-rates | Will the 2028 Fed leadership turnover bring a Fed-Treasury accord o... | plausible | 60 | H0 to H1 | kept (R5A 60), yield-cap odds 25 to 15 by 2035 adopted, DCC-L3 reissued at 30 by 2032 |
| R5-4 | r5-rates | Does the corporate tax collapse reverse when AI capex growth slows? | plausible | 65 | H0 | kept (R5A 65), dated tests replace the Round 3 test |
| R5-11 | r5-rates | Why was producer price inflation for finished consumer goods flat i... | confirmed | 85 | H0 | kept (R5A 85), court verified the series title |
| R5-1 | r5-access | Who actually holds dollar stablecoins, country by country? | plausible | 60 | H0 | kept (R5B 60), R3-1 upgraded to plausible 60 |
| R5-5 | r5-access | Next time Japan defends the yen, will it borrow through FIMA or sel... | plausible | 75 | H0 | kept (R5B 75), custody level set to the H.4.1 weekly average |
| R5-6 | r5-access | Do Gulf states get dollar lines from the Treasury, and on what cond... | plausible | 70 | H0 | kept (R5B 70), court verified the ESF statement |
| R5-7 | r5-access | Does conditional dollar access show up in central bank gold buying? | plausible | 60 | H0 to H1 | kept (R5B 60), PBoC September purchase 21t |
| R5-9 | r5-access | Will China pair its solar know-how ban with yuan finance for the Gl... | plausible | 65 | H0 to H1 | kept (R5B 65) |
| R5-13 | r5-europe | Will Moody's cut France, and does it matter? | confirmed | 80 | H0 | kept (R5C 80), no 1-point H0 cut applied, desk score pending |
| R5-14 | r5-europe | How much do new residents cost or contribute to European states? | confirmed | 80 | H0 to H2 | kept (R5C 80), page limited to official studies |
| R5-15 | r5-europe | Are Europeans actually moving to Latin America or Southeast Asia in... | refuted | 75 | H0 | kept (R5C refuted 75), R4D estimate lowered 75 to 45 |
| R5-8 | r5-households | How fast can US housing supply actually respond in the 2020s? | plausible | 70 | H0 to H1 | kept (R5D 70), shelter input s narrowed |
| R5-10 | r5-households | Is there a real cash premium for human-made goods? | plausible | 60 | H0 to H1 | kept (R5D 60), R3-6 confidence 55 to 60 |
| R5-12 | r5-households | If a UHI or AI dividend law passes, will payments be pledgeable or ... | plausible | 70 | H0 to H1 | kept (R5D 70) |
| R5-17 | r5-households | The newsletter spread trade: 'borrow at 6.19%, earn 13.6%'. What do... | plausible | 75 | H0 to H1 | kept (R5D 75 in direction, 50 in exact percentages) |
| R5-16 | r5-audit | The next three weeks: what to watch, with dated, scoreable predictions | speculative | 60 | H0 | new ledger, 73 entries merged from four lanes |
| R5-18 | r5-audit | Do the project's figures marked 'from memory' or 're-check' hold up? | confirmed | 85 | H0 | kept (R5E 85), corrections already applied |

## 3. Full answers

Each answer gives the direct answer first, then status, confidence, horizon and three views (governance, business, ordinary person).

### Why real rates rose, whether the Fed will cap yields, and where the corporate tax went (r5-rates)

The 2026 rise in real rates is mostly a hawkish Fed in an oil-hit, AI-fed economy, plus Japan. The accord Warsh wants would shrink the Fed, not cap yields. The corporate tax hole closes when AI capex stops growing, and the 'flat producer prices' puzzle was a mislabelled series.

#### R5-2. Is the 2026 rise in real interest rates driven by AI capital demand, or by oil, Japan and the term premium?

Mostly by a higher expected path for US policy rates, with Japan as the clearest outside push, while oil, the term premium and AI are each smaller pieces. From 31 December 2025 to 23 October 2026 the 10-year Treasury yield rose 82bp (4.18% to 5.00%) and the inflation-protected, or real, 10-year yield rose 73bp (1.93% to 2.66%, peak 2.95% on 5 October), while expected inflation (the breakeven) rose only 9bp. So 2026 was a real-rate move, not an inflation scare. The desk's central split of the 73bp is: the Fed path in a strong, oil-hit economy about 35bp (range 30 to 40), Japan and global spillover about 18bp (15 to 20), term premium and fiscal supply about 10bp (0 to 20) and direct AI crowding-out about 10bp (5 to 15). AI matters mostly indirectly, by feeding the strong growth that lets a hawkish Fed hike.

The two term structure models the Fed itself publishes disagree. The New York Fed's ACM model puts the whole rise in expected short rates (+87bp) with the term premium flat (0.75% to 0.72%). The Board's Kim-Wright model splits it about half and half (term premium 0.57% to 0.99%, its highest since 2010). The court treats the term premium share as 0 to 40bp until a survey-based check settles it. A daily regression on named drivers (a model, with low explanatory power) gives Japan about 17bp (the Japanese 10-year yield rose from 2.07% to 2.91%), oil about 10bp (Brent $60.8 to $111.7, which mostly lifted breakevens), an AI stock proxy about zero, and about 47bp unexplained, which is where the Fed path, fiscal supply and AI capital demand sit.

AI capital demand is real and large: the four biggest spenders' cash capex was $294.8B in the first half of 2026, up 84% on a year earlier (SEC filings). It shows up as growth and as a higher long-run expected rate (ACM's 5-year rate five years ahead rose 61bp), not as a daily price factor. The earlier Landscape figure of '82bp to 2.76%' was right for 21 October against 2 January. The court's house figure is +73bp to 2.66% at the 23 October close. Either way the AI dividend does nothing for the debt ratio while real rates rise with growth.

- Status: plausible. Confidence: 55. Horizon: H0.
- Three views. Governance: The bond market charges a higher real price for money because the Fed is expected to stay tight, so fiscal relief from lower rates is not on offer while oil and growth stay high. Business: Plan on real borrowing costs near 2.5% to 3% for ten years, and allow for the term premium part to rise if the Kim-Wright model is right. Ordinary person: Mortgage and car-loan rates are high because the Fed is fighting fuel-driven inflation in a strong economy, not because investors fear a US default.

#### R5-3. Will the 2028 Fed leadership turnover bring a Fed-Treasury accord on yields?

Probably not an accord that caps yields. Some kind of accord is likely to be discussed, but the one Kevin Warsh has floated points the other way: a joint Fed and Treasury statement on the Fed's balance sheet and on Treasury's issuance, so the Fed can shrink its footprint, which he says would not mean a return to pre-1951 practice. Desk odds: a Warsh-style balance-sheet accord by end 2028, 25. An explicit cap or ceiling on Treasury yields, 3 by end 2028 and 15 by 2035 (down from 25). Fed long-end yield support with yield language after the 2028 turnover, 30 by 2032 (the Round 3 bundled figure of 40 was retired by the decode panel). A bond-market episode that forces Fed balance-sheet action stays at 45 by 2035.

The 2028 turnover is a change of Board majority, not of chair. Warsh's chair term runs to 2030-05-21 and his governor seat to 2040. Trump appointees hold 3 of 7 seats (Warsh, Bowman, Waller). Jefferson's vice-chair term ends in September 2027 and Powell's governor term on 2028-01-31, so a fourth appointee gives a Trump-appointed majority by early 2028 even if Lisa Cook stays. Rate decisions still need 7 of 12 FOMC votes, and the Warsh FOMC has been hawkish.

History cuts against a cap without a crisis. The 1942 peg held bills at 3/8% and long bonds near 2.5% until consumer prices rose 17.6% in a year (1946 to 1947) and at a 21% annual rate in February 1951, and the 4 March 1951 Accord ended the cap. Today Treasury already manages duration itself through bills (22.4% of marketable debt) and long-end buybacks of at least $4B per operation, which substitutes for a cap. A cap needs a different chain: a disorderly 30-year auction or bond volatility far above normal, plus a dovish Board. Conditional C7 records what would move the scenario odds.

- Status: plausible. Confidence: 60. Horizon: H0 to H1.
- Three views. Governance: The live design is a smaller Fed, with Treasury managing duration and regulation creating captive buyers. That is repression by plumbing, not by peg. Business: Buying long bonds ahead of a yield cap has weak support before a disorderly episode. Watch FOMC and refunding texts for any yield level. Ordinary person: A cap would only come after a crisis or with a much more dovish Fed, and its cost would be inflation above savings rates for years, as in 1946 to 1951.

#### R5-4. Does the corporate tax collapse reverse when AI capex growth slows?

Yes, mostly, because the drag comes from the growth of AI investment, not its level, and two of its parts are one-offs that are already fading. Net federal corporate receipts fell from $529.9B (FY2024) to $452.1B (FY2025) and $381.4B (FY2026). The 2025 law made 100% bonus depreciation permanent and restored immediate expensing of domestic research, with a catch-up of 2022 to 2024 amounts, which nearly doubled refunds in FY2026 ($34.3B to $61.5B). The desk's timing model puts the big-four expensing drag at about $43B in 2026, peaking near $55B in 2027 if capex grows another 25%, then shrinking to about $5B to $12B by 2030 once capex goes flat. The deferred tax is not paid back while investment continues, but the annual hole closes.

The fall was front-loaded. Receipts fell 28% from October to March but only 8.6% from April to September, and September 2026 was up 38% on a year earlier. The three hyperscalers that report it show current federal tax falling from $32.7B to $6.5B in a year (Microsoft, Amazon, Meta, SEC filings). Alphabet has said 2027 capex will rise 'significantly', so the drag likely peaks in 2027.

Dated tests replace the old one: FY2027 net corporate receipts above FY2026's $381.4B, desk 65. The corporate share of federal receipts above 9% in FY2028, desk 40, rising to about 60 if 2027 capex guidance comes in flat. Both are in the pre-registration ledger.

- Status: plausible. Confidence: 65. Horizon: H0.
- Three views. Governance: Do not budget on a permanent 7% corporate share, and do not expect the lost years back either. Expensing defers tax for as long as capex grows. Business: The cash-tax holiday ends when capex stops growing, not when it stops, so a plateau in 2027 or 2028 raises cash taxes within one to three years. Ordinary person: Workers carried more of the federal tax load while the AI boom ran (individual and payroll taxes were 86.2% of receipts), and that tilt eases only after the boom levels off.

#### R5-11. Why was producer price inflation for finished consumer goods flat in 2026 while energy CPI rose 20.4%?

It was not flat. The puzzle came from a mislabelled series. The series the project used, WPUFD4111, is 'Finished Consumer Foods' (the court checked the official title), not finished consumer goods, and food prices at the producer level were indeed flat (minus 0.9% on a year in September 2026, index 283.977). Producer energy actually rose more than consumer energy: the producer price index for final demand energy was up 35.4% on a year, gasoline 64.3%, diesel about 115%, and finished goods in total 8.4%.

Energy CPI rose 'only' 20.4% because about half of it is electricity and piped gas, which rose 4.4% and 5.0% under regulated and contract pricing. Consumer energy goods rose 35.3%, almost exactly in line with producer energy (35.4%). Wholesale natural gas fell while oil products soared, which kept power and gas bills near 5%.

The real gap worth watching is in everyday goods. Producer prices for finished consumer goods excluding food and energy rose 4.0% while consumer core goods prices rose only 0.7%. A stronger dollar (index 98.28 to 101.75 this year), import prices for consumer goods up only 2.7% before duties, and squeezed margins between factory and shelf explain the gap. If stores rebuild margins in 2027, core goods inflation rises. That is the pipeline risk.

- Status: confirmed. Confidence: 85. Horizon: H0.
- Three views. Governance: The 2026 shock is visible in producer prices, so the Fed is right to treat it as broad, not as a consumer-only quirk. Business: Retailers and importers are holding a margin squeeze of about 3 points on core goods that they will try to pass on in 2027. Ordinary person: Fuel rose about a third and power bills about 5%. The next wave, if it comes, is in everyday goods as stores rebuild margins.

### Who gets dollars in a crisis, who holds them on new rails, and what China offers instead (r5-access)

Dollar stablecoins are mostly held abroad. Japan sells Treasuries instead of borrowing. The Gulf has no US line, and the Treasury's fund has only about $25B of dollar securities. Central banks without a Fed line buy gold, and China grows the yuan through debt deals, not solar loans.

#### R5-1. Who actually holds dollar stablecoins, country by country?

Nobody publishes a country table, so the honest answer is a range by region. On the desk's model about two thirds of the $304.5B of dollar stablecoins is held outside the US (central 68%, range 59% to 78%, about $208B) and about $96B inside it (range $66B to $126B). An IMF working paper of 2 October 2026 covering 188 countries puts about three quarters with emerging and developing economies, at the top of the desk's range because it attributes exchange balances by web traffic and misses US institutions. By region the central estimates are Asia-Pacific about $94B, Europe including Turkey, Russia and Ukraine about $46B, Africa and the Middle East about $35B, and Latin America about $33B. Country names inside each region, such as Korea, Vietnam, India, Turkey, Brazil, Argentina and Nigeria, are a ranking from adoption studies, not measured holdings.

The chain data point the same way. $92.6B of USDT, 30% of all dollar stablecoins, sits on Tron, the cheap network used for payments in emerging markets. Chainalysis finds only $98B to $109B in personal wallets and ranks the US first in balances but 11th in cross-border flows. The IMF also finds that holdings rise about 75% within a year of a currency crisis and stay up.

No regulator publishes resident holdings. Brazil's central bank comes closest, because since February 2026 it books stablecoin trades as foreign exchange and reports that stablecoins are above 90% of crypto flows. The court upgrades Round 3's 'most supply is held abroad' from speculative to plausible, confidence 60.

- Status: plausible. Confidence: 60. Horizon: H0.
- Three views. Governance: Stablecoins are already a dollarization channel in weak-currency countries, which is why GENIUS reserve rules in US bills matter more abroad than at home. Business: The paying customer is the saver or importer in Lagos, Istanbul, Buenos Aires or Manila, not the US household. Ordinary person: If your currency has lost value, a dollar token is a cheap way to hold dollars. In the US it adds little over a bank account.

#### R5-5. Next time Japan defends the yen, will it borrow through FIMA or sell Treasuries again?

It will most likely sell dollar securities again. Japan's own reserve data show both 2026 interventions were funded that way: the April to May operation (¥11.73T, about $75B) matched a $75.6B fall in foreign securities with deposits unchanged, and the July to August operation (¥15.40T, about $97B) matched an $87.8B fall in securities plus $6.9B of deposits. The desk gives about 80% that the next intervention is funded mainly by selling securities, bills first, and about 20% that the Fed's FIMA repo line is drawn above $1B during it.

FIMA was zero for 35 straight weeks from 18 February to 21 October 2026, even though Japan said on 3 August that it 'plans to utilize' it. The line is capped at $60B, below the size of either 2026 episode, and it charges a backstop rate. Japan still holds $821.7B of foreign securities and $154.8B of deposits with foreign central banks and the BIS (September 2026). Official selling paused in October: foreign official Treasuries in Fed custody rose $18.5B in the week to 21 October to a weekly average of $2,572.8B, down $176.0B on a year.

USD/JPY is about 156.8, below the 160 line where Japan acted twice, so the next test is not imminent (desk: any intervention by end 2026, 20). The 20% FIMA figure rises only if the Fed raises the cap and cuts the rate, or if Treasury market stress makes selling dearer than borrowing (conditional C9).

- Status: plausible. Confidence: 75. Horizon: H0.
- Three views. Governance: FIMA is a signal, not a funding tool, unless the Fed resizes it. Each yen defense adds supply to the Treasury market. Business: Expect long US yields to rise when Japan defends the yen, and treat a FIMA draw as the surprise. Ordinary person: A weak yen and Japanese sales of US bonds both feed slowly into US mortgage rates.

#### R5-6. Do Gulf states get dollar lines from the Treasury, and on what conditions?

Not yet. Six months after the UAE raised a swap line with Treasury and Fed officials in April 2026, no US dollar line with any Gulf state has been announced. The Treasury's Exchange Stabilization Fund (ESF) statement for August 2026 lists only two agreements: Mexico ($9B, nothing drawn) and Argentina ($20B, a $2.5B swap in October 2025 fully repaid in December 2025). The Fed's swap lines stay with its five standing partners, with $170M outstanding on 21 October. Desk odds of a public US dollar line with a Gulf state: 7 by end 2026 and 20 by end 2028.

The ESF is smaller than its headline. Of its $218.8B of assets, $173.2B are Special Drawing Rights (SDRs), matched by $157.6B of SDR allocation liabilities and $15.2B of SDR certificates already issued to the Fed. Its net position is $44.3B and its dollar securities are $24.9B (court check of the statement). A Gulf line of real size would need more SDR certificates sold to the Fed, which the law allows only to finance exchange stabilization, or Fed participation.

Past conditions were hard. Mexico in 1995 got up to $20B, backed by its oil export proceeds and tied to an IMF programme with spending cuts, a small surplus, credit limits and data publication, and it repaid more than three years early with a net gain to the US of nearly $580M. Argentina's 2025 line was openly political, timed before its midterm elections. For the Gulf the stated aim is 'to prevent the sale of the US assets in a disorderly way', so the likely collateral is the Gulf's own Treasuries. Unstated conditions such as dollar oil pricing or limits on Chinese technology are decoded intent, graded D2, about 55.

- Status: plausible. Confidence: 70. Horizon: H0.
- Three views. Governance: Crisis dollars for non-core states are moving from technical Fed lines to political Treasury lines, but the Treasury has neither a large dollar balance sheet nor a signed Gulf deal. Business: The Gulf finances itself in markets ($102.7B of bonds and sukuk in the first half of 2026) and that will continue. Ordinary person: For people in the Gulf the dollar peg stays. A US line would be insurance for the central bank, not a change in your money.

#### R5-7. Does conditional dollar access show up in central bank gold buying?

Partly, yes. The clearest sign is who buys. In 2026 the reported net buyers are central banks without a standing Fed swap line: China (about 101 tonnes from January to September, 23 straight months, 21 tonnes in September), Poland (98 tonnes to August), Uzbekistan, Kazakhstan, the Czech Republic, Jordan, Malaysia, Ghana and the UAE. The five central banks with standing Fed lines bought nothing. The sellers are those most cut off from dollars or short of them: Russia (50 tonnes to July) and Turkey (85 tonnes to July). So conditional dollar access is one strong motive among several, not the whole story.

The World Gold Council's 2026 survey of 76 central banks adds motive and action: 90% cite gold's performance in crises, 85% of emerging-market respondents cite it as a geopolitical hedge, 74% expect the dollar's reserve share to be lower in five years, and 9% raised domestic storage in the past year (5% a year earlier). Moving gold home makes sense mainly if you fear a foreign custodian could freeze it.

Other motives matter. Poland is a NATO ally with full market access, and buying slows when prices are high (the first half of 2026 was the weakest since 2022 at 345 tonnes, then Q2 was 289 tonnes). The next checks are the WGC's Q3 data (desk 240 tonnes, 45% above 250) and the 2027 survey's storage answers (conditional C10).

- Status: plausible. Confidence: 60. Horizon: H0 to H1.
- Three views. Governance: Each time dollar access becomes political, through frozen reserves or conditional lines, the self-insurance demand for gold rises, and it shows first in where gold is stored. Business: Central bank demand is a durable bid, but it slows when prices are high. Ordinary person: Central banks buying gold signals distrust between governments, not a reason to swap your savings for bars.

#### R5-9. Will China pair its solar know-how ban with yuan finance for the Global South?

Not explicitly, and so far only thinly. MOFCOM Announcement 2026 No. 48 (16 October) would ban or restrict 12 solar technologies and their core equipment, with comments due 15 November. Unlike its AI items, which get facilitation for members of a Chinese-led AI cooperation body, the solar part has no Global South clause. The pattern is 'sell the panels for cash, keep the factory know-how, and grow the yuan through debt management'. Desk odds: 20 that the final rule adds a solar facilitation clause for Global South partners, 30 that China announces a named yuan credit line tied to solar or green manufacturing exports by end 2027.

The yuan side is growing, but through refinancing and bonds rather than new solar loans. Chinese loan commitments to Africa were only $2.1B in 2024 with a single energy loan, but all of Kenya's 2024 infrastructure loans were in yuan. Panda bond issuance rose about 60% in the first half of 2026 to above RMB 160B, with first sovereign deals from Pakistan and Indonesia (RMB 7B).

The People's Bank of China (PBoC) now has 32 swap agreements worth about RMB 4.5T (about $672B), with RMB 132.8B (about $19.8B) drawn at end June 2026, up from RMB 79.3B in September 2025. That replaces the earlier single-source figure of RMB 3.84T across 42 central banks. The Fed's swap lines had $170M outstanding on 21 October, but the two serve different purposes.

- Status: plausible. Confidence: 65. Horizon: H0 to H1.
- Three views. Governance: Beijing keeps the technology lever and the currency lever separate, which lets it sell goods widely without giving away factories. Business: Expect cheap Chinese panels to keep flowing, line equipment and know-how to need licences, and yuan finance to be offered mainly on refinancing and bond deals. Ordinary person: Solar keeps getting cheaper where you buy Chinese panels for cash. A yuan loan for your country changes little for you unless your government struggles to earn yuan to repay it.

### France's rating, what official studies say about new residents, and where Europeans move (r5-europe)

Moody's held France, and a one-notch cut would have mattered little. Official fiscal studies agree that route, age at arrival and earnings set the result. Europeans are not moving to Latin America or Southeast Asia in rising shares.

#### R5-13. Will Moody's cut France, and does it matter?

Moody's did not cut. On 23 October 2026 it kept France at Aa3 with a negative outlook, against most analysts' expectations of a cut to A1, and said the rating assumes that a deficit-reducing 2027 budget will be adopted. A one-notch cut would have mattered little mechanically. What would matter is a slide of two agencies into the BBB band, which the court now treats as a scenario conditional (C11).

The mechanics explain why. Bond indices that use the middle of three ratings already see France at A+, the ECB's backstop (TPI) does not use ratings at all, and EU banks hold euro-area government debt in their own currency at a zero risk weight. History agrees: across 11 French downgrades since 2012 the France to Germany 10-year spread moved a median 4bp tighter from the month before to the month after. The one big widening, June 2024, came from the snap dissolution, not from the rating cut. Ratings follow spreads more than they lead them.

Scoring: the desk had 70 on 'Moody's or S&P downgrades France by 31 October' while a thin market priced 87.5 to 90.5. The contract settles on 31 October, and only an off-calendar S&P move could make it Yes, so it is recorded as a pending score. The court does not apply Round 4's 'no cut lowers H0 crisis odds by about 1 point': the hold is conditional, the spread was 171.8bp on 23 October against 130.3bp on 1 October, and the 2026 deficit slipped from 5.0% to about 5.4% of GDP. S&P reviews France next on 27 November.

- Status: confirmed. Confidence: 80. Horizon: H0.
- Three views. Governance: The agencies grade the budget process, not the debt stock, so the 2027 finance bill and any use of Article 49.3 are the real rating events. Business: A one-notch move is noise for funding costs. The spread already prices worse than an A1 rating. The cliff to watch is the BBB band. Ordinary person: A rating cut does not change mortgage rates by itself. The 10-year yield does, and that is driven by the budget fight, the ECB and the 2027 election.

#### R5-14. How much do new residents cost or contribute to European states?

Official studies find that the fiscal result depends mainly on the route of entry, age at arrival, and employment and earnings after arrival, and that method choices can change the sign of headline totals. Work routes are fiscally positive in every official study found, family routes lower, and humanitarian routes the most negative on fiscal accounts. Arrival in the 20s to about 30 gives the best lifetime result, because the host state did not pay for schooling and receives a full working life of taxes.

The UK Migration Advisory Committee (December 2025) finds the 2022/23 Skilled Worker cohort worth about +£47bn over its lifetime. Main applicants outside health and care average about +£689,000 each in present value, care workers about -£36,000 and adult dependants of health and care workers about -£67,000, against an average of -£39,000 for UK residents over their remaining lives. Denmark's Finance Ministry counted a net public cost of DKK 31bn in 2018 for immigrants and descendants from non-Western countries and a positive net contribution from immigrants from Western countries, and linked the difference mainly to the grounds of residence (asylum and family versus work). Australia's Treasury (2021, cited by the MAC) ranks its streams the same way: skill +A$198,000, family -A$126,000, humanitarian -A$400,000.

Totals move with method. In the MAC baseline even UK residents are negative on average because the base year ran a deficit, and the resident figure ranges from -£163,000 at a 1% discount rate to -£7,000 at 5%. How shared costs such as defence are split, whether children are counted, and who stays or leaves also change the result, so comparisons with residents on the same method are more informative than any single headline number. The UK fiscal watchdog (OBR, 2024) adds that an average-wage migrant arriving at 25 is more fiscally positive than a UK-born worker on the same wage, while low-wage profiles are negative over a lifetime.

- Status: confirmed. Confidence: 80. Horizon: H0 to H2.
- Three views. Governance: The fiscal sign is set mostly by admission route and by labour-market access after arrival, so the levers are route design, faster work permission and recognition of qualifications, and these studies should be run regularly by official bodies with published methods. Business: Employer-sponsored routes are fiscally positive in every official study found, and the gain is concentrated in higher earners (in the UK, 72% of the Skilled Worker gain comes from the top 30% of earners). Ordinary person: The honest summary is 'it depends on the route, age and job'. Headline totals in either direction usually hide a method choice, above all how shared costs are split.

#### R5-15. Are Europeans actually moving to Latin America or Southeast Asia in rising numbers?

No, not as a rising share. Slightly more people go in absolute numbers because total emigration rose, but in Eurostat's table of emigration by next country of residence for six EU countries with full detail (Italy, the Netherlands, Sweden, Belgium, Austria, Finland), Latin America took 4.5% of emigrants in 2019 and 4.1% in 2024, and Southeast Asia 1.6% in both years. Much of the Latin American flow is return migration or new citizens by descent going home. Intra-EU moves are over half of all emigration (53.8% in 2024).

For German citizens in 2025, Switzerland took 7.9%, the US 3.1% and Thailand 1.0% (2,894 people), while the four Latin American countries in the top 50 together took 1.1%. Southeast Asia in the top 50 took at least 5,175 Germans against at most about 5,000 for all of Latin America. Italy's statistics office says Latin America took almost 10% of Italian emigrants in 2023 to 2024, 'in part' new citizens returning home. So the court lowers Round 4's estimate that more Europeans (excluding heritage registrations) go to Latin America than to Southeast Asia from 75 to 45.

The fastest-rising non-European destination before the 2026 war was the UAE (0.4% to 0.9% of the six-country total from 2019 to 2024). Dubai's population fell 1.3% in March 2026 and was back above its pre-war level by mid-year, so the best reading is a shock and partial rotation, not a lasting exodus.

- Status: refuted. Confidence: 75. Horizon: H0.
- Three views. Governance: Europe's emigration goes mostly to its neighbours, Switzerland, the US and the Gulf, so talent policy should watch those channels, and statistics should separate returns and descent-citizens from native movers. Business: Latin America and Southeast Asia are niche destinations for European people (retirees, remote workers, heritage returns), not a talent-pool shift. Ordinary person: If you hear that 'everyone is moving to Mexico or Bali', official numbers say a few thousand a year per large country, while far more go to Switzerland, Spain or Austria.

### Housing supply, the human-made premium, dividend protections and the spread trade (r5-households)

Housing supply is shrinking under 7% mortgages. The human-made premium shows up as an AI discount. A new dividend would be less protected than Social Security unless the law says so. And borrowing at 6.19% to earn 13.6% mostly adds downside.

#### R5-8. How fast can US housing supply actually respond in the 2020s?

Slowly, and in 2026 it is going backwards. Completions peaked at 1.627M in 2024, fell to 1.489M in 2025 and are running 12.5% below last year so far in 2026 (September annual rate 1.192M). Starts (1.221M) and permits (1.400M) say no rebound is coming soon. The desk's estimate of supply elasticity is about 1.0 nationally (range 0.5 to 1.75, coastal metros 0.3 to 0.8), which means new homes meet only about 5% to 10% of a demand shock within 3 years, 15% to 25% within 10 years and 25% to 40% within 20 years (model).

The brakes are price, not physics. The 30-year mortgage rate is 7.32%, about half of all mortgages carry 4% or less, so owners do not sell (existing supply 4.8 months), while builders sit on 8.5 months of new-home supply and cut starts. Input costs rose sharply in early 2026, and builders cite a shortage of about 300,000 construction workers. Factory-built homes are still 3% of single-family completions.

Zoning works where it is broad and by-right (Auckland, Austin) and narrow reforms deliver little. Mainstream shortage estimates cluster at 3.7M to 4.7M homes. Completions near 1.2M to 1.3M a year roughly match new households plus losses, so the gap is not closing. The court narrows Round 3's shelter supply input to 0.05 to 0.10 (now to 2028), 0.15 to 0.25 (2028 to 2035) and 0.25 to 0.40 (2035 to 2050), with 0.40 or more needing broad reform.

- Status: plausible. Confidence: 70. Horizon: H0 to H1.
- Three views. Governance: Rate cuts unlock existing homes, not new ones. Only by-right zoning plus faster permits moves the 20-year number, and it takes a decade to show. Business: Builders are destocking, so expect incentives and rate buydowns, not new starts, until mortgage rates fall below about 6.5%. Ordinary person: Do not wait for a building wave to fix rent where you live this decade. Your city's zoning votes set your price more than robot or factory news.

#### R5-10. Is there a real cash premium for human-made goods?

Yes, but it is narrow, and the clearest money evidence shows a discount on AI-made goods rather than a measured premium on human-made ones. At the marketplace CGTrader, AI-made 3D models were about one in six uploads but 2.6% of sales and about $1 of every $90 of revenue (June 2025 to May 2026), so they sold less often and at lower prices, partly because of quality. No peer-reviewed, transaction-based estimate of the premium's cash size exists yet.

Experiments show a label effect: the same artwork is valued higher when labelled human-made, handmade lifts purchase intent mainly for gifts, and disclosing ads as AI-made cut clicks by up to 31.5% in a field test. Auctions show AI art sells when a known human stands behind it (Christie's Augmented Intelligence sale, $728,784). Stated surveys are louder than behaviour: 68% say they would pick human-made at the same price, yet readers paid the same for a story labelled AI-written.

Platforms that certify 'handmade' keep a growing slice: Etsy's take rate rose from 16.5% in 2019 to 24.2% in 2025 while its sales fell 5.3%. Proof decides who keeps the premium, so provenance rules matter more than robots.

- Status: plausible. Confidence: 60. Horizon: H0 to H1.
- Three views. Governance: The premium depends on proof, so provenance rules and penalties for false 'human-made' labels decide whether it reaches makers or fakers. Business: Sell the maker, the story, the gift and the service. Avoid putting 'AI' on the label of an emotional product, and expect platforms to tax the premium. Ordinary person: Human-made pays where buyers care who made it (gifts, art, care, personal services), not for commodity goods, where machines win on price.

#### R5-12. If a UHI or AI dividend law passes, will payments be pledgeable or programmable?

Most likely neither pledgeable nor fully programmable, but less protected than people assume. US law decides benefit by benefit. Social Security payments cannot be assigned or garnished by private creditors (42 USC 407), but the rule that makes banks shield two months of deposited benefits (31 CFR 212) covers only Social Security, veterans, federal retirement and railroad payments, so a new AI dividend would get no automatic bank-account shield unless the statute or Treasury adds it. Desk odds for a federal cash AI dividend enacted by 2035: an anti-assignment clause 75, protection from private garnishment 55, still subject to child-support and federal-debt offsets 85, paid with spending restrictions 10, explicitly pledgeable 5.

Congress has chosen case by case. The 2021 advance child tax credit was protected from federal offsets but, per the IRS, not from state or private garnishment, while the December 2020 relief law shielded the second stimulus checks from private creditors. Alaska's dividend, the only US universal dividend, is only 20% exempt from creditors.

Programmability already exists without a central bank digital currency. SNAP benefits are spend-restricted on EBT cards and 22 states had waivers to bar soda or candy by March 2026. A retail Fed digital dollar is barred through 2030-12-31, so any token payment would ride private stablecoins, whose issuers must be able to freeze, seize or burn coins on lawful orders. No 2025 to 2026 AI dividend bill found addresses assignment or programmability.

- Status: plausible. Confidence: 70. Horizon: H0 to H1.
- Three views. Governance: Write anti-assignment, a bank-account shield and offset rules into the bill on day one, because the 2021 patchwork left families exposed to private garnishment. Business: The lending product will be underwriting against a dividend as income, not buying the stream, and stablecoin wallets will compete to receive deposits, not to restrict them. Ordinary person: Expect a dividend that cannot be sold or pledged and can be taken for child support or federal debts, and that a private creditor may be able to freeze at your bank unless the law says otherwise.

#### R5-17. The newsletter spread trade: 'borrow at 6.19%, earn 13.6%'. What do volatility drag, sequence risk and margin calls do to it?

The spread is real on paper and mostly disappears once volatility, leverage and taxes are counted. Both legs are quoted at their best: 6.19% is Freddie Mac's 30-year mortgage rate a year ago (the same loan costs 7.32% today), and 13.6% matches the S&P 500's average for the ten years to 2022, above the 1928 to 2025 compound return of 10.0%. In the desk's model, borrowing half the position (a 50% loan) over 10 years leaves $100 of own money at a median of about $226 after tax against $216 unlevered, but the bad case (10th percentile) is about $38 against $107. The chance of at least one margin call is about 35% to 52% over 10 to 20 years at a 50% loan, and 8% to 18% at a 30% loan.

Volatility drag is the core problem. At 20% volatility a 13.6% average compounds at about 11.4% a year. Doubling exposure doubles volatility to about 40%, so the levered compound return is only about 11.7%, and at 25% volatility it is 6.8% against 10.1% unlevered (model). With interest added to the loan, a 50% position is called at a 65% loan-to-value after a 23% fall at the start, or after about 4.4 years even if prices go nowhere. Forced sales lock in losses, so the position cannot fully recover.

History is blunt. Starting at the 2000 or 2007 market peak, a 50% borrower was called and five years later held about $44 to $49 of every $100, while an unlevered investor held about $90 to $108. 19% of rolling 10-year windows since 1928 compounded below 6.19%. The trade clearly wins only in the calm, high-return world the 13.6% describes, at modest leverage (30% or less), with interest paid from income, over a horizon long enough to survive a 2000 or 2008.

This is general education about how leverage behaves, not personal financial advice.

- Status: plausible. Confidence: 75. Horizon: H0 to H1.
- Three views. Governance: Margin rules and lender calls force selling into crashes, which is why leveraged households amplify drawdowns. Business: Lenders earn either way (interest plus forced-sale fees), and portfolio lines float, so a hiking Fed raises the borrowing cost mid-trade. Ordinary person: Borrowing to invest roughly doubles the downside while adding only a little to the typical outcome. The model says small loans, interest paid from income and long horizons are what make it survivable.

### Predictions written down before the events, and a check of the project's memory (r5-audit)

The desk wrote 72 dated, scoreable predictions for the next weeks and months. The memory audit found the project's recalled figures mostly right, with six corrections already applied.

#### R5-16. The next three weeks: what to watch, with dated, scoreable predictions

The desk wrote down 72 dated predictions before the events, each with a number and a resolution rule, to be scored with the Brier rule in a later round. The headline calls: the Fed holds on 28 October (91), Q3 GDP above 3.0% on 29 October (60), the ECB holds on 29 October (97), the French Assembly adopts the first part of its 2027 budget on 3 November (30), Treasury keeps coupon auction sizes unchanged on 4 November (85), the Lisa Cook hearing goes ahead with her taking part on 5 November (75), China issues a numbered extension of its export-control suspension by 10 November (72), and foreign official Treasury holdings fall in the September TIC data (90).

Further out: central bank gold demand above 250 tonnes in the WGC's Q3 report (45, point estimate 240), the dollar's share of reserves below 56.70% in the Q3 COFER data (80, point 56.2%), S&P cutting France below A+ by 30 November (25), the France to Germany spread above 150bp on 30 November (62) and above 200bp (12), a December Fed hike (70) and the 30-year mortgage rate above 7.00% at year end (70).

Market check: on every event with a market above $1M traded (the Fed decisions), the desk is within 15 points. The largest gap is on USDT reaching $200B by year end (desk 15, a thin market 42), because the coin has been flat for a year. One item is already resolved pending its score: Moody's held France on 23 October, so the desk's 70 against the market's 87.5 to 90.5 on a downgrade by 31 October will very likely score in the desk's favour on 31 October.

- Status: speculative. Confidence: 60. Horizon: H0.
- Three views. Governance: Writing predictions down before events is how a desk earns trust. The ledger will show whether the court's judgment beats thin markets. Business: The crowded window is 28 October to 10 November: the Fed, GDP and inflation, the ECB, the French vote, the refunding, the Cook hearing and China's deadline. Ordinary person: Most of these calls say 'no surprise'. The ones to watch for your own costs are the Fed in December and mortgage rates at year end.

#### R5-18. Do the project's figures marked 'from memory' or 're-check' hold up?

Mostly yes. Of 52 memory-tagged items checked against primary or official sources, 38 are confirmed, 6 are corrected, 2 are confirmed but needed a precision fix, 1 is partly confirmed from a secondary source, and 5 stay unverifiable (three of them are funds that publish nothing, so 'estimate' is the right label). No published headline number or scenario odd changed.

The six corrections: China's CIC publishes total assets of $1.57T (end 2024), Saudi Arabia's PIF about $905B (2025, below the 'about $1T' shown), Hong Kong's Exchange Fund HK$4.15T (end 2025) and Temasek S$518B (March 2026), all four previously labelled as estimates or 'hundreds of billions'. The Winsemius mission to Singapore started in 1960, not 1961. And a lane figure was wrong: the German 10-year yield was about 2.4%, not 2.6%, at the start of 2025. These corrections were already applied.

All four decode items on the re-check list hold: the 1947 inflation peak was 19.7% (March 1947), the Bank of England bought £19.3B of gilts in 2022, the 1934 gold profit was about $2.8B with $2B to the ESF, and the legal gold cover on Federal Reserve notes ended on 18 March 1968. The lesson is a sourcing habit: label a size 'estimate' only after checking that the institution does not publish one.

- Status: confirmed. Confidence: 85. Horizon: H0.
- Three views. Governance: The project's recall was accurate on dates and laws. Its weak spot was 'estimate' labels on numbers that institutions publish. Business: None of the corrections changes a decision. The PIF figure matters slightly for anyone sizing Gulf capital, because it is below $1T and fell in 2025. Ordinary person: The history in the Rulebook (gold, the 1940s yield cap, 2022 inflation, Malaysia 1998, crypto dates) can be trusted as written.


## 4. Scenario odds decision

**Headline odds: no change.** H0 62/15/1/22, H1 44/23/3/30, H2 31/28/10/31. Four of five lanes proposed no change. R5A's H1 move is folded into conditional C7 (X1). No market above $1M traded disagrees with the desk by more than 15 points.

**S2 display split: unchanged.** Central banks without a Fed line buying gold and moving it home supports S2a, PBoC swap drawings (+67% in nine months) and panda bonds (+60%) support S2b, and both are small against the totals.

| Horizon | S1 dollar extension | S2 neutral layer (total) | S2a gold and Bitcoin | S2b multipolar fiat | S3 energy or compute | S4 disorderly reset |
|---|---|---|---|---|---|---|
| H0 (now to 2028) | 62 | 15 | 13 | 2 | 1 | 22 |
| H1 (2028 to 2035) | 44 | 23 | 17 | 6 | 3 | 30 |
| H2 (2035 to 2050) | 31 | 28 | 18 | 10 | 10 | 31 |

**Other probability rulings.** Explicit Fed yield cap or accord on yields: 3 by end 2028, 15 by 2035. Warsh-style balance-sheet accord by end 2028: 25. Fed long-end support with yield language after the 2028 turnover (DCC-L3): D2, 30 by 2032. Bond episode forcing Fed balance-sheet action: 30 by 2028, 45 by 2035 (kept). Public US dollar line with a Gulf state: 7 by end 2026, 20 by end 2028. France-led euro crisis: 20 by 2028 (kept). More European emigrants to Latin America than to Southeast Asia: 45 (was 75).

## 5. Merged conditionals

| id | Trigger | Move | Result | Origin |
|---|---|---|---|---|
| C1a | OAT-Bund closes above 200bp for five consecutive sessions without TPI activation | 2 points S1 to S4 in H0 | H0 60/15/1/24 | Round 4, kept |
| C1b | OAT-Bund above 250bp for ten sessions, or above 200bp for five with BTP-Bund above 150bp | 4 points S1 to S4 in H0 (replaces C1a) | H0 58/15/1/26 | Round 4, kept |
| C2 | National Rally president elected in May 2027 and the first budget rejected by the Commission or breaking the EU fiscal framework | 2 points S1 to S4 in H0, combined with C1 and C11 capped at 4 points | H0 60/15/1/24 alone | Round 4, kept |
| C3 | A euro sovereign crisis (court definition) by end 2028 | H1: S1 +2, S2a +1, S4 -3 | H1 46/24/3/27 | Round 4, kept |
| C4 | Supreme Court or Congress ends Fed governor tenure protection, or the US taxes or freezes foreign official Treasury holdings | 3 points from S1 in H1 and H2: 2 to S2b, 1 to S4 | H1 41/25/3/31, H2 28/30/10/32 | Round 4, kept |
| C5 | Permanent EU joint bonds above 1 trillion euros a year in the 2028 to 2034 budget, or COFER dollar share below 54% in any 2027 print | 2 points S1 to S2b in H2 (bond), 1 point S1 to S2b in H1 (COFER) | as applicable | Round 4, kept |
| C6 | China fully opens its capital account | WIF's S2 gains booked to S2b, not S2a | display only | Round 4, kept |
| C7 | An FOMC statement, Fed-Treasury joint statement or refunding statement names a Treasury yield level, ceiling or target before 2029 | 3 points S1 to S4 in H1. Reverse leg: a joint statement committing to a smaller, shorter Fed portfolio with Treasury managing duration moves 1 point S4 to S1 in H1. C7 and C4 combined capped at 5 points from S1 in H1 | H1 41/23/3/33 (cap) or 45/23/3/29 (reverse) | R5A C7 |
| C8 | A US dollar line with a GCC state is announced with published non-monetary conditions (technology, China, oil pricing) | 1 point S1 to S2a in H1 | H1 43/24/3/30 (S2a 18) | R5B C7 |
| C9 | Japan draws FIMA above $10B during an intervention | 1 point S4 to S1 in H0 | H0 63/15/1/21 | R5B C8 |
| C10 | The 2027 WGC central bank survey shows more than 12% of central banks raising domestic gold storage | 1 point S1 to S2a in H1. C8 and C10 combined capped at 2 points | H1 43/24/3/30 (S2a 18) | R5B C9 |
| C11 | Two of Moody's, S&P and Fitch rate France in the BBB band (Baa1 or BBB+ or lower). Rating actions at A level move nothing | 1 point S1 to S4 in H0, counted inside the 4-point cap shared with C1 and C2 | H0 61/15/1/23 | R5C BBB-band rule |

Reversal rule for C1 (Round 4) stays. C11 is reversed if either agency returns France to the A band within six months.

## 6. Corrections ruled on

| id | Earlier text | Corrected to | Ruling |
|---|---|---|---|
| K1 | Producer prices 'flat' in 2026 (R3 R3D finding 5, R3 court X13, Landscape question 11) | WPUFD4111 is Finished Consumer Foods (minus 0.9% in September 2026). Producer energy +35.4%, finished goods +8.4%. The live gap is core goods: producer +4.0% against consumer +0.7% | Accepted. Court checked the official series title (R5X-01) |
| K2 | ESF 'about $219B' (R3 R3A finding 11 and say/do table, Landscape question 6) | Of $218.8B, $173.2B are SDRs matched by $157.6B SDR allocations and $15.2B SDR certificates. Net position $44.3B, dollar securities $24.9B (August 2026) | Accepted. Court read the statement (R5X-02) |
| K2b | Argentina's ESF swap 'repaid on 9 January 2026' (R3A finding 11, R3A-18) | The ESF statement says the $2.5B swap was fully repaid in December 2025 | Court addition from the same statement (R5X-03) |
| K3 | PBoC 'active lines RMB 3.84T across 42 central banks' (R3A-20) | 32 agreements, about RMB 4.5T, RMB 132.8B drawn at end June 2026. R4A's 'more than 40 swap lines' can stay as a count of all arrangements | Accepted (R5X-05) |
| K4 | Explicit Fed yield cap or accord on yields, 25 by 2035 (R3 DCC 3.6, decode panel, Landscape) | 15 by 2035. A Warsh-style balance-sheet accord by end 2028 is a separate row at 25 | Accepted |
| K4b | DCC-L3 Fed yield support then an accord after the 2028 turnover, D2, 40 by 2032 | D2, 30 by 2032, for the narrower event 'Fed long-end support with yield language'. The bundled 40 had been retired by the decode panel (DCX-03). Nested between 45 (bond episode by 2035) and 15 (explicit cap by 2035) | Accepted in narrower form |
| K5 | Round 4 calendar 'French budget vote 2026-10-27' | First-part debate resumes 10-27 to 11-02, solemn vote 11-03, S&P review 11-27, no Fitch date for the rest of 2026, Article 47 clock mid December | Accepted. Court checked the Assembly page (R5X-07) |
| K6 | R4D 'more European emigrants go to Latin America than to Southeast Asia', 75 | 45 | Accepted (German 2025 data and Istat on returns) |
| K7 | PBoC September gold purchase '23t' (R4A open question) | 21t (Kitco, 23rd straight month). The 23t was WGC's July net figure for all central banks. Kitco's 2,196t holdings figure conflicts with WGC and is not used | Accepted (R5X-06). No published text used 23t |
| K8 | Foreign governments 'sold $254B' (R3A-14, Landscape) | Custody rose $18.5B in the week to 21 October to a weekly average of $2,572.8B, down $176.0B on a year. Official selling paused in October | Accepted with the H.4.1 weekly-average level (R5X-04) |
| K9 | R3-1 stablecoins mostly held abroad, speculative 55 | Plausible 60 (IMF country panel) | Accepted |
| K10 | R3 shelter supply input s 0.10 / 0.25 / 0.40 | 0.05 to 0.10 / 0.15 to 0.25 / 0.25 to 0.40, with 0.40 or more needing broad reform | Accepted. R3 UHI headline stays inside its error band |
| K11 | R3-6 human-made premium, plausible 55 | Plausible 60, with the CGTrader transaction data | Accepted |
| K12 | R4 court 'no Moody's cut lowers H0 crisis odds by about 1 point' | Not applied. France-led crisis stays 20 by 2028 | Accepted (R5C) |

R5E's 18 distinct corrections (sovereign fund sizes, Winsemius 1960, the Bund level, precision edits and tag closures) were already applied and are not repeated. The edits for everything above are in round5/r5_landscape_edits.json and round5/r5_other_edits.json. Note that site/index.html embeds a copy of landscape.json, so the page must be rebuilt or patched with twin edits after these are applied.

## 7. Pre-registration ledger and scoring

The full ledger has 72 entries in round5/prereg.json (lane R5A 28, R5B 23, R5C 15, R5D 5, court 1). Score each with the Brier rule on its resolution date. Market-odds rule: every event with a market above $1M traded (the October and December Fed decisions) is within 15 points of the desk. The largest gap on any market is USDT reaching $200B by year end (desk 15, Polymarket 42 on $150k), explained by a year of flat supply.

**Pending score.** Moody's or S&P downgrades France by 31 October 2026: desk 70 (R3E C16), market 87.5 (R3E) to 90.5 (R4E, $10.2k). Moody's held on 23 October, S&P is not due until 27 November. If the contract settles No on 31 October, the desk's Brier error is 0.49 and the market's 0.82 (at 90.5). Status: resolved pending score. The court could not open the Moody's release itself (CNBC returned 403 and search returned only previews and the April 2026 affirmation), so the outcome rests on R5C-01 and R5C-02 (CNBC and Reuters) until the contract settles.

| id | Event | Date | Desk | Market | Resolution rule | Lane | Status |
|---|---|---|---|---|---|---|---|
| P5-01 | FOMC holds the target range at 3.75% to 4.00% | 2026-10-28 | 91 | 92.5 | Fed statement target range | R5A | open |
| P5-02 | FOMC hikes 25bp | 2026-10-28 | 8 | 7.5 | Fed statement target range | R5A | open |
| P5-03 | At least one dissent at the FOMC | 2026-10-28 | 78 | 73.5 | Vote list in the FOMC statement | R5A | open |
| P5-04 | Two or more dissents at the FOMC | 2026-10-28 | 50 | 58 | Vote list in the FOMC statement | R5A | open |
| P5-05 | FOMC statement changes balance-sheet policy (restart of reserve purchases or new SOMA composition language) | 2026-10-28 | 15 | none | FOMC statement and implementation note | R5A | open |
| P5-06 | FOMC statement or implementation note contains the word 'accord' or names a Treasury yield level | 2026-10-28 | 2 | none | Text search of both documents | R5A | open |
| P5-07 | 10-year Treasury yield moves less than 10bp on FOMC day | 2026-10-28 | 80 | none | Treasury par yield 2026-10-28 minus 2026-10-27 | R5A | open |
| P5-08 | Q3 real GDP advance estimate above 2.0% annualized (desk point 3.3%) | 2026-10-29 | 90 | 90 | BEA advance release, 8:30 ET | R5A | open |
| P5-09 | Q3 real GDP advance estimate above 3.0% annualized | 2026-10-29 | 60 | 61.5 | BEA advance release, 8:30 ET | R5A | open |
| P5-10 | Q3 real GDP advance estimate above 3.5% annualized | 2026-10-29 | 30 | 29.5 | BEA advance release, 8:30 ET | R5A | open |
| P5-11 | Q3 real GDP advance estimate above 4.0% annualized | 2026-10-29 | 12 | 11.5 | BEA advance release, 8:30 ET | R5A | open |
| P5-12 | September core PCE price index, month on month, rounded, 0.3% or more (desk point 0.3%) | 2026-10-29 | 85 | 90 | BEA Personal Income and Outlays, 8:30 ET | R5A | open |
| P5-13 | September core PCE price index, month on month, above 0.3% | 2026-10-29 | 20 | 19.5 | BEA Personal Income and Outlays, 8:30 ET | R5A | open |
| P5-14 | September headline PCE price index, year on year, between 3.0% and 3.6% | 2026-10-29 | 65 | none | BEA Personal Income and Outlays | R5A | open |
| P5-15 | October to December privately held net marketable borrowing estimate above the August estimate of $628B | 2026-11-02 | 60 | none | Treasury borrowing estimate press release | R5A | open |
| P5-16 | Nominal coupon auction sizes unchanged at the November refunding | 2026-11-04 | 85 | none | Refunding statement table (3-year $58B, 10-year $42B, 30-year $25B and the 2, 5 and 7-year sizes) | R5A | open |
| P5-17 | Refunding guidance 'for at least the next several quarters' dropped or softened | 2026-11-04 | 40 | none | Refunding statement text compared with 2026-08-05 | R5A | open |
| P5-18 | Long-end buybacks kept at or above $4B per operation for November to January | 2026-11-04 | 75 | none | Refunding statement buyback schedule | R5A | open |
| P5-19 | Any new tenor, century bond or fee on foreign official holders | 2026-11-04 | 1 | none | Refunding statement | R5A | open |
| P5-20 | Bills above 22.37% of marketable debt held by the public at end December | 2026-12-31 | 60 | none | Monthly Statement of the Public Debt table 1, 2026-12-31 against 2026-09-30 | R5A | open |
| P5-21 | The Cook removal hearing is held with Cook or her counsel taking part (in person or in writing) | 2026-11-05 | 75 | none | Credible press reports | R5A | open |
| P5-22 | The panel's recommendation to remove Cook is reported | 2026-11-30 | 45 | none | Credible press reports of a written removal recommendation by 2026-11-30 | R5A | open |
| P5-23 | Trump issues a removal order for Cook | 2026-12-31 | 40 | none | White House statement or court filings by 2026-12-31 | R5A | open |
| P5-24 | Cook officially out as governor by 30 November | 2026-11-30 | 3 | 3.1 | Fed Board roster no longer lists her | R5A | open |
| P5-25 | Cook officially out as governor by 31 December | 2026-12-31 | 8 | 8.65 | Fed Board roster no longer lists her | R5A | open |
| P5-26 | December FOMC hikes 25bp | 2026-12-09 | 70 | 72 | Fed statement target range | R5A | open |
| P5-27 | FY2027 net corporate income tax receipts above FY2026's $381.4B | 2027-10-15 | 65 | none | Monthly Treasury Statement table 4, September 2027 edition | R5A | open |
| P5-28 | Corporate tax above 9% of federal receipts in FY2028 | 2028-10-15 | 40 | none | Monthly Treasury Statement, September 2028 edition | R5A | open |
| P5-29 | China issues a numbered extension of all six suspended export-control measures (Nos. 55 to 58, 61 and 62) | 2026-11-10 | 72 | none | MOFCOM or GAC numbered announcement dated on or before 2026-11-10 Beijing time | R5B | open |
| P5-30 | China extends only some measures or uses general licences (partial) | 2026-11-10 | 16 | none | Same source. Partial if some measures lapse or licences replace the suspension | R5B | open |
| P5-31 | China's suspension fully lapses with no notice | 2026-11-10 | 12 | none | No notice by 2026-11-11 00:00 Beijing time | R5B | open |
| P5-32 | China extends Announcement No. 72 suspension (gallium, germanium, antimony to the US) | 2026-11-27 | 80 | none | Numbered notice extending No. 72 by 2026-11-27 | R5B | open |
| P5-33 | WGC Q3 2026 central bank net gold demand above 250 tonnes (desk point 240) | 2026-10-30 | 45 | none | Headline central bank figure in the first Gold Demand Trends Q3 release | R5B | open |
| P5-34 | WGC Q3 2026 central bank net gold demand above Q2's 289 tonnes | 2026-10-30 | 25 | none | Same release | R5B | open |
| P5-35 | TIC September: foreign official Treasury holdings below August's $3,755.6B (desk point $3,675B) | 2026-11-18 | 90 | none | TIC table 'of which foreign official', September 2026, first print | R5B | open |
| P5-36 | TIC September: Japan's holdings below August's $1,068.3B | 2026-11-18 | 85 | none | TIC major foreign holders table, September 2026, first print | R5B | open |
| P5-37 | IMF COFER Q3 2026: dollar share of allocated reserves below Q2's 56.70% (desk point 56.2%) | 2026-12-31 | 80 | none | USD share of allocated reserves for 2026 Q3, first IMF release | R5B | open |
| P5-38 | IMF COFER Q3 2026: dollar share below 56.0% | 2026-12-31 | 30 | none | Same release | R5B | open |
| P5-39 | IMF COFER Q3 2026: yuan share above 2.5% | 2026-12-31 | 3 | none | Same release | R5B | open |
| P5-40 | Japan MOF reports zero intervention for 29 September to 28 October | 2026-10-30 | 95 | none | MOF monthly intervention release | R5B | open |
| P5-41 | Any Japan yen-buying intervention | 2026-12-31 | 20 | none | MOF releases covering dates to 2026-12-31 | R5B | open |
| P5-42 | FIMA repo weekly average above $1B in any H.4.1 week | 2026-12-31 | 8 | none | H.4.1 table 1 foreign official repo | R5B | open |
| P5-43 | FOMC changes the FIMA facility or adds a swap-line partner | 2026-10-28 | 4 | none | FOMC statement or implementation note | R5B | open |
| P5-44 | Public US dollar line (ESF or Fed) with a GCC state by end 2026 | 2026-12-31 | 7 | none | Treasury or Fed announcement, or an ESF statement note naming the agreement | R5B | open |
| P5-45 | Public US dollar line (ESF or Fed) with a GCC state by end 2028 | 2028-12-31 | 20 | none | Same rule | R5B | open |
| P5-46 | USDT circulation reaches $200B on any day | 2026-12-31 | 15 | 42 | DefiLlama or Tether figure at or above $200B | R5B | open |
| P5-47 | Total USD stablecoins reach $500B | 2026-12-31 | 1 | 2.6 | Total USD stablecoins at or above $500B before 2027 | R5B | open |
| P5-48 | SWIFT yuan share of payments at or above 3.0% in the September 2026 edition | 2026-11-30 | 55 | none | Headline yuan share by value in the SWIFT tracker | R5B | open |
| P5-49 | PBoC reports a 24th straight monthly gold addition (October) | 2026-11-07 | 90 | none | PBoC or SAFE reserve data, gold ounces above September | R5B | open |
| P5-50 | Final MOFCOM No. 48 includes a solar facilitation clause for Global South partners | 2027-06-30 | 20 | none | Final text of No. 48 published by 2027-06-30 | R5B | open |
| P5-51 | China announces a named yuan credit line tied to solar or green manufacturing exports | 2027-12-31 | 30 | none | Official Chinese announcement naming the line by 2027-12-31 | R5B | open |
| P5-52 | France's 2027 finance law (LFI 2027) is promulgated | 2026-12-31 | 40 | 46.5 | Journal officiel publishes the LFI 2027 by 2026-12-31. A special law or ordinances do not count | R5C | open |
| P5-53 | Article 49.3 used on the 2027 state budget bill | 2026-12-31 | 55 | 61.5 | Prime Minister engages responsibility under 49.3 on the PLF 2027 before 2027-01-01 | R5C | open |
| P5-54 | At least one censure motion tabled against the government | 2026-12-31 | 85 | none | Any motion de censure filed under Article 49.2 or 49.3 from 2026-10-24 to 2026-12-31 | R5C | open |
| P5-55 | A censure motion is adopted and the government falls | 2026-12-31 | 15 | 19 | Any censure motion gets 289 or more votes by 2026-12-31 | R5C | open |
| P5-56 | The Assembly adopts the first part of the PLF 2027 in its solemn vote | 2026-11-03 | 30 | none | Adopted by recorded vote. Rejection, a 49.3 instead of a vote, or postponement past 2026-11-10 count as No | R5C | open |
| P5-57 | France's 2027 deficit target stays at or below 5.0% of GDP | 2027-02-28 | 65 | none | Target in the enacted LFI 2027, or the government's latest stated target on 2027-02-28 | R5C | open |
| P5-58 | INSEE's first estimate of the 2026 deficit is at or above 5.3% of GDP | 2027-03-31 | 70 | none | INSEE first annual release for 2026 | R5C | open |
| P5-59 | S&P cuts France below A+ | 2026-11-30 | 25 | 33 | S&P long-term foreign-currency rating of A or lower announced by 2026-11-30 | R5C | open |
| P5-60 | S&P cuts France or moves its outlook to negative | 2026-11-30 | 55 | none | Either action announced by 2026-11-30 | R5C | open |
| P5-61 | Fitch changes France's rating or outlook | 2026-12-31 | 7 | none | Any Fitch rating or outlook action on France before 2027 | R5C | open |
| P5-62 | OAT-Bund 10-year spread closes above 150bp | 2026-11-30 | 62 | none | ideal-investisseur.fr daily close for 2026-11-30 (or last November close). Backup: AFT TEC10 minus Bundesbank 10-year | R5C | open |
| P5-63 | OAT-Bund 10-year spread closes above 200bp | 2026-11-30 | 12 | none | Same source and rule | R5C | open |
| P5-64 | Conditional C1a triggered: five consecutive closes above 200bp without TPI | 2026-11-30 | 9 | none | Same source, 2026-10-26 to 2026-11-30 | R5C | open |
| P5-65 | ECB deposit rate unchanged at 2.50% | 2026-10-29 | 97 | 97.9 | ECB monetary policy decision | R5C | open |
| P5-66 | Lagarde names TPI at the press conference | 2026-10-29 | 50 | none | ECB transcript contains 'TPI' or 'Transmission Protection Instrument' | R5C | open |
| P5-67 | Census October housing completions below 1.30M annual rate | 2026-11-18 | 80 | none | First print in the October 2026 New Residential Construction release | R5D | open |
| P5-68 | Census October housing starts below 1.35M annual rate | 2026-11-18 | 70 | none | First print | R5D | open |
| P5-69 | Freddie Mac 30-year fixed rate above 7.00% on the last survey of 2026 | 2026-12-31 | 70 | none | PMMS 30-year fixed, last weekly survey of 2026 | R5D | open |
| P5-70 | Etsy Q3 2026 take rate at or above 24% | 2026-11-05 | 65 | none | Q3 2026 revenue divided by gross merchandise sales | R5D | open |
| P5-71 | Federal AI dividend bill with an assignment, garnishment or programmability clause introduced | 2027-06-30 | 15 | none | Bill text on congress.gov or govinfo by 2027-06-30 | R5D | open |
| P5-72 | Moody's or S&P downgrades France by 31 October 2026 (R3E C16, R4E M7) | 2026-10-31 | 70 | 90.5 | Polymarket rule: a rating cut announced by either agency by 2026-10-31. Moody's held Aa3 negative on 2026-10-23. Score on 2026-10-31 unless S&P acts off-calendar. If No: desk Brier 0.49, market 0.82 | R5X | resolved-pending-score |

## 8. Tripwires (with dates)

| Date | Event | What would move the odds |
|---|---|---|
| 2026-10-27 to 11-02 | French first-part debate resumes | A 49.3 before the 3 November vote resolves ledger entries early and raises the censure path |
| 2026-10-28 | FOMC | A hike (desk 8) or any yield-level text (C7). Any FIMA or swap-line change |
| 2026-10-28 to 10-30 | Alphabet, Microsoft, Amazon Q3 results | 2027 capex guidance flat: R5-4 reversal sooner. Up more than 25%: the tax drag peaks in 2027 |
| 2026-10-29 | Q3 GDP and September PCE (8:30 ET), ECB meeting | GDP below 2% weakens the AI-growth leg of real rates. An ECB hike with the spread above 170bp raises H0 crisis odds |
| About 2026-10-29 to 10-30 | WGC Gold Demand Trends Q3 | Central bank demand above 250t supports the conditional-access motive |
| 2026-10-30 | Japan MOF intervention release | Any non-zero figure |
| 2026-10-31 | Polymarket France downgrade contract settles | Records the pending score |
| 2026-11-02 and 11-04 | Borrowing estimate and refunding | Coupon increases or softer guidance: the term premium leg |
| 2026-11-03 | French solemn vote on the first part | Adoption lowers the spread tail |
| 2026-11-05 | Cook hearing | A removal order path raises the odds of a Trump majority before 2028 and of C4 |
| 2026-11-07 | PBoC and Japan October reserves | 24th month of PBoC gold. Japan's securities and deposits split |
| 2026-11-10 | China Announcement 70 legal cliff | A full lapse moves 2 points S1 to S4 for 2028 (Round 3 rule) |
| 2026-11-15 | MOFCOM No. 48 comments close | Any Global South clause for solar |
| 2026-11-18 | TIC September, Census October housing | Official holdings and Japan. Completions below 1.2M annual rate for a second month |
| 2026-11-27 | S&P France review, end of No. 72 suspension | A cut to A plus a spread above 200bp moves toward C1a |
| 2026-11-30 | OAT-Bund close | Ledger entries on 150bp and 200bp |
| 2026-12-09 | FOMC with projections | December hike (desk 70). Any balance-sheet task force language (C7 reverse leg) |
| Mid December 2026 | Article 47 clock, ESF and NY Fed FX reports | A special law instead of a budget. Any Gulf agreement in the ESF notes (C8) |
| Late December 2026 | IMF COFER Q3 | Dollar below 56.0% (desk 30) |
| 2027-01-18 | GENIUS rules take effect | Freeze and seize rules for issuers, any benefit paid in stablecoins |
| June 2027 | WGC central bank survey | Domestic storage above 12% triggers C10 |
| September 2027 and 2028-01-31 | Jefferson's vice-chair term, Powell's governor term | A fourth Trump appointee gives a Board majority |

## 9. Open questions

1. The term premium share of the real-rate rise (ACM against Kim-Wright) needs a survey-based check of the expected policy path for 2027 to 2030.
2. The FY2026 corporate refund jump ($27.2B) is not split by cause. IRS or CBO detail needed.
3. No regulator publishes resident stablecoin holdings. The IMF paper's regional table was not readable.
4. SWIFT's September 2026 yuan share was not found, and the May and June chart readings (about 2.2% and 2.4%) stay low confidence.
5. The ESF September 2026 statement was not yet posted on 2026-10-23.
6. The Moody's release text itself was not read by the court (403). Confirmation comes from lane sources and will come from the contract settlement.
7. The OBR's pound figures by wage and age at arrival, and any official Danish update after the 2019 data year.
8. Whether Powell stays as governor past 2028-01-31 until a successor is confirmed.
9. Margin-loan and portfolio-line rates for 2026, which the spread model replaced with the owner's 6.19% and a 7.40% stress case.
10. Host-country residence data for Europeans in Southeast Asia and the UAE by nationality.

## 10. Claims table (court's fresh checks and rulings)

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R5X-01 | FRED series WPUFD4111 is 'Producer Price Index by Commodity: Final Demand: Finished Consumer Foods', September 2026 value 283.977 | T1 | confirmed | https://fred.stlouisfed.org/series/WPUFD4111 | 2026-10 | 2026-10-24 | BLS retitles the series |
| R5X-02 | ESF at 31 August 2026: total assets $218.79B, SDR holdings $173.16B, nonmarketable Treasuries $24.87B, liabilities $174.47B (SDR allocations $157.62B, SDR certificates to the Fed $15.2B), net position $44.32B | T0 | confirmed | https://home.treasury.gov/system/files/206/ESF-August-2026-FS-Trunc-Notes.pdf | 2026-09 | 2026-08-31 | September statement differs materially |
| R5X-03 | ESF note 9: Mexico $9B agreement with nothing drawn. Argentina $20B agreement of 18 October 2025, a $2.5B swap in October 2025 fully repaid in December 2025, nothing outstanding | T0 | confirmed | https://home.treasury.gov/system/files/206/ESF-August-2026-FS-Trunc-Notes.pdf | 2026-09 | 2026-08-31 | A later note naming a new or Gulf agreement |
| R5X-04 | H.4.1 week ended 2026-10-21: foreign official marketable Treasuries in custody weekly average $2,572.8B, +$18.5B on the week, -$176.0B on the year. FIMA repo 0, swaps $170M, foreign official reverse repo $333.8B | T0 | confirmed | https://www.federalreserve.gov/releases/h41/20261022/ | 2026-10-22 | 2026-10-21 | Fed revision |
| R5X-05 | PBoC: 32 bilateral swap agreements of about RMB 4.5T (about $672B), RMB 132.8B drawn at end June 2026. Pan: yuan 6% to 7% of payments on a broad measure, 3% to 4% on SWIFT | T2 via T4 | plausible | https://www.caixinglobal.com/2026-10-19/yuan-ranks-third-in-global-payments-under-broader-measure-pboc-chief-says-102495028.html | 2026-10-19 | 2026-06-30 | PBoC report differs |
| R5X-06 | PBoC added 21t of gold in September 2026, its 23rd straight month. Kitco's 2,196t holdings figure conflicts with WGC and is not used | T4 | plausible | https://www.kitco.com/news/article/2026-10-07/chinas-central-bank-buys-21-tonnes-gold-september-largest-monthly-purchase | 2026-10-07 | 2026-09-30 | PBoC or WGC data differ |
| R5X-07 | PLF 2027 first-part debate resumes 27 October to 2 November 2026, solemn vote on the first part 3 November (afternoon) | T1 | confirmed | https://www.assemblee-nationale.fr/dyn/actualites-accueil-hub/examen-du-projet-de-loi-de-finances-pour-2027 | 2026-10 | 2026-10-24 | Conference of presidents changes the date |
| R5X-08 | Moody's kept France at Aa3 negative on 2026-10-23. Court could not open the release or CNBC (403), search returned only previews, so this rests on R5C-01 and R5C-02 | T2 via T4 (lane) | plausible | https://www.cnbc.com/2026/10/23/moodys-holds-steady-on-frances-credit-rating-as-country-grapples-with-turmoil-and-higher-yields.html | 2026-10-23 | 2026-10-24 | A Moody's release showing a cut |
| R5X-09 | Moody's previously affirmed France at Aa3 negative in April 2026, citing a budget agreement | T4 | confirmed | https://allnews.ch/node/152441 | 2026-04-10 | 2026-10-24 | n/a |
| R5X-10 | Court odds: explicit Fed yield cap or accord on yields 3 by end 2028 and 15 by 2035. Balance-sheet accord 25 by end 2028. DCC-L3 narrowed, D2, 30 by 2032 | judgment | speculative | this file, X3 | 2026-10-24 | 2026-10-24 | Any official text naming a Treasury yield level |
| R5X-11 | Scenario odds unchanged at 62/15/1/22, 44/23/3/30, 31/28/10/31 with S2 split 13/17/18 plus 2/6/10, and conditionals C7 to C11 added | judgment | speculative | this file, sections 4 and 5 | 2026-10-24 | 2026-10-24 | A conditional triggers |
| R5X-12 | Pending score: if the 31 October contract settles No, the desk's Brier error is 0.49 against the market's 0.82 | arithmetic | plausible | this file, section 7 | 2026-10-24 | 2026-10-24 | S&P downgrades France by 2026-10-31 |
