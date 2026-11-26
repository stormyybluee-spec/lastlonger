# Round 20 draft notes, for the verifier and the red team (2026-11-26)

Files written: round20/r20_data.json (5 groups, 18 items, 4 tables), round20/DESK_EDITS.md (29 edits), round20/prereg.json (19 predictions, P20-01 to P20-19), and this file. Both JSON files load with python3 -I. No em-dashes, en-dashes or semi-colons in any of the four files. No web search was used. Every figure comes from the three lanes. General education, not advice.

## Check these three first

1. The NVIDIA leadership claim (R20C-10). R20C marks it verified from NVIDIA's own results release of 17 November ("Colette Kress is interim CEO and CFO", "a search for a new CEO"). It is NOT printed anywhere in files 1 or 2. It is not needed for the Desk's question, and a leadership change at that firm would be large news resting on one fetch. Before any later round prints it, open the release and the matching SEC 8-K. If the release cannot be confirmed, treat the NVIDIA revenue and guidance figures from the same page (R20C-08, R20C-09, printed in R20-13) as at risk too.
2. Secondary figures that carry weight in the text: China's extension of the export-control pause to 10 January 2027 (R20B-47, MOFCOM text not opened), the Treasury borrowing estimate of $618B and $800B (R20B-25, press summary), Fitch's move to a negative outlook on France on 30 October (R20A row for P5-72, secondary), and the PBoC October gold figure (R20B-40). All are hedged in the text with "as reported". The Fitch item also resolves an open Round 5 prediction early (see section c).
3. D15 and D11 in DESK_EDITS.md. D15 replaces the newsletter check's "$29.6T" and "12×" with a rough scaling ("roughly $25T", "12× to 15×"), which R20B marks as an approximation. D11 switches "Broad dollar up 2.8% this year" to the Fed's broad index (+3.2% on 20 November). R20B notes the Desk's 2.8% may have come from a different index, since the Fed index was only +1.3% on 21 October. Decide whether to accept, reword or drop these two.

## (a) Every figure in files 1 and 2, with its lane claim id

Lane rows that carry no ledger id are cited by section and row, with the lane's status. "Computed" means the lane did the arithmetic.

### File 1, lead
- Fed held at 3.75% to 4.00% on 28 October, two of twelve wanted a hike: R20B-10, R20B-12
- Minutes of 18 November, almost all expect more tightening: R20B-13
- December hike 92% to 94%, as reported 25 November: R20B-16 (plausible, news flash)
- Q3 real GDP 4.3%, second estimate: R20B-32
- Core PCE 3.3% on a year in October: R20B-34
- 10-year 5.13% to 4.91% (24 November): R20B-07
- Real 10-year near 2.8%: R20B-08. Real growth 2.3%: R20B-53
- Brent down about 20% in November to about $92: R20C-03 (plausible)
- IEA surplus this quarter: R20C-04 (plausible)
- Gold down about 14% to $3,557 on 24 November: R20B-36, R20B-37
- Central banks 321 tonnes in Q3, up 42%: R20B-38
- Foreign official holdings down $335B since February: R20B-26 and R20B section 3 row ($334.9B, verified)
- Yen touched 160: R20B-46 and R20B section 6 row (intraday above 160, secondary)
- Export-control truce to 10 January 2027: R20B-47
- About $296B of cloud-firm bonds in 2026, by one estimate: R20C-17 (plausible)
- Fed minutes name opaque AI financing: R20B section 2, financial stability row (verified)
- Nasdaq 100 down about 5.9% on 5 to 6 November: R20C-12
- Brier 0.117 on 37, desk 0.095 against market 0.115 on 12: R20A Brier block
- Scenario odds 62/15/1/22 unchanged: DESK_NOW, R5_SUMMARY

### File 1, items
- R20-1 scorecard: all figures from the R20A table and Brier block. Desk numbers 91, 80, 60, 97, 95, 90, 75, 25, 60, 40 and market 90.5 from PREREG_DUE. 10-year up 6bp (R20A P5-07). Gold 289t and 321t (R20A P5-34). Borrowing $10B lower (R20A P5-15). Cook hearing moved (R20A P5-21).
- R20-2: 10 to 2, Cook and Hammack (R20B-12). Minutes, more than 25bp (R20B-13). 4.3% and 3.4% (R20B-32, R20B-31). PCE 3.8% and core 3.3% (R20B-34). Unemployment 4.1%, payrolls 165k (R20B-35). Polymarket 94, Kalshi 92 (R20B-16, plausible). CPI on 10 December (R20B section 4 row, verified). Strategy meetings 2027 and 2028 (R20B-18, plausible, wire reports).
- R20-3: 10-year 5.13%, 4.91%, low 4.84% on 5 November, high 5.15% on 13 November (R20B-07 and hero row). Breakeven 2.37% to 2.12% (R20B-09). Real 2.76% to 2.79%, high 2.92% on 16 November (R20B-08). Real growth 2.3% (R20B-53). Gap about 0.5 points (computed from R20B-08 and R20B-53). JGB 10-year 2.914% to 2.713% (R20B-45). JGB 30-year near 4% (R20B section 6 row, 3.998%, verified). US 2-year 4.81% to 4.63% (R20B hero row, verified).
- R20-4: reserve management purchases at zero, no long-end buying (R20B-14). None planned 16 November to 11 December, about $14B reinvestment (R20B-15, plausible). Balance sheet $6,753.6B to $6,741.5B (R20B hero row WALCL, verified). No accord (R20B-20, plausible). Task force (R20B section 2 row, secondary). Cook hearing moved, counsel letter of 16 November (R20B-19, plausible).
- R20-5: $125B, $58B, $42B, $25B, about $28B new cash (R20B-21). "for the next several quarters", "at least" dropped (R20B-22). Bills larger in January, strong demand (R20B section 3 bills row, verified). Buybacks $70B and $25B (R20B-24). 7-year from March 2027 (R20B-23). No new tenor or fee (R20A P5-19). $618B, $10B lower, $800B (R20B-25, plausible). Cash $850B end December (R20B section 3 cash row, verified).
- R20-6: $40.79T, up $349B from $40.44T (R20B-01). Deficit $404.1B against $284.3B (R20B-05). "Largest October on record" (R20B section 3 row, secondary). Receipts down 8.8%, customs $31.4B to $19.2B, refund link (R20B-06, plausible for the cause). Net interest $1,064.0B, defense $994.1B (R20B-02, R20B-03). 19.8% from 19.5% (R20B-04). 25% tripwire (DESK_NOW). Average rate 3.570% from 3.518% (R20B-52 and section 9 row). Nominal GDP 6.0% (R20B-53).
- R20-7: official $3,674.7B, down $80.9B, down $334.9B from $4,009.6B (R20B-26 and section 3 row). Official bills $288.5B from $453.3B (R20B section 3 row, verified). Japan $1,063.1B, down $176.2B (R20B-27). China $563.9B, down $130.3B (R20B-28). Cayman up $23.8B to $486.8B, Belgium up $17.4B to $507.9B (R20B-29 and section 3 row). Total $9,241.2B (R20B-26). Net inflow $261.0B, official long-term purchases $27.6B (R20B-30). Stablecoins $288.87B, $305B, about 4.1% (R20C-19, R20C-44).
- R20-8: $3,556.82 (R20B-36). About $4,130 implied, about 14% (R20B-37, R20B section 5 row, arithmetic). 321.2t, up 42%, about 120t reported (R20B-38 and section 5 row). PBoC 63t, Poland 40t, Kazakhstan 14t, Uzbekistan 14t, Czech 5t, UAE small reduction (R20B-39). Russia minus 19t (R20B section 5 sellers row, verified). PBoC about 26t in October, 24th month (R20B-40, plausible). Book $42.22 and $11B (DESK_NOW). About $930B and $1.08T (R20B section 5 row, computed).
- R20-9: ¥0 (R20B-41). 159.93 on 13 November and 158.76 on 20 November (R20B-46). Trades above 160 (R20B section 6 row, secondary). Katayama quote (R20B section 6 row, Bloomberg, secondary). BoJ 1.25%, 8 to 1, Takata 1.5% (R20B-43). ETF sales ¥860B (R20B-44). 18 December and above 70% (R20B section 6 row, secondary). JGB 2.713% (R20B-45). Japan holdings (R20B-27).
- R20-10: extension to 10 January 2027, Nos. 55 to 58, 61 and 62, items covered (R20B-47, R20B section 7 row, secondary). Seven heavy rare earths still licensed (R20B section 7 row, secondary). BIS filing 5 November, China's 24% tariff suspended (R20B section 7 row, secondary). Yuan 6.6770 and 6.6745 (R20B-48). China holdings (R20B-28). About 129t of gold January to October (R20B section 5 row, secondary). No mBridge or CIPS figures (R20B section 7 row, absence).
- R20-11: swaps $146M and $170M, FIMA $1M (R20B-49 and section 8 rows). Zero other Wednesdays (R20B section 8 row, verified). Standing repo about $0.1B (R20B section 8 row, verified). No new line, five standing lines, no Gulf line (R20B-50, plausible). Official reverse repo $333.8B to $316.7B (R20B section 8 row, verified). ¥79.4B, about $0.5B, Fed did not intervene (R20B-51).
- R20-12: about $110 on 2 November (R20C section 1 row, secondary). About 16%, steepest since 2020, $92.57 (R20C-02). $92.44 (R20C-01). About $92 and about 20% (R20C-03, plausible). IEA 1.7 million barrels a day (R20C-04, plausible). OPEC+ core seven held, 29 November meeting (R20C-05). Hormuz recovering, mine claims unverified by Reuters, talks via Qatar (R20C-06, plausible). SPR lowest since October 1982 (R20C section 1 row, verified). Euro area 3.8% (R20C-27, plausible). Note: the OPEC+ "2.04 million barrels a day" output rise (secondary) was left out.
- R20-13: NVIDIA $115.8B, 103%, $107.6B (R20C-08). $130B guide, extra week, no China data centre compute (R20C-09). Alphabet $51.4B, $42.3B, minus $9.1B (R20C-13, plausible). Meta minus $2.12B (R20C-14, plausible). EUR 6B and $10B at 7.000% to 8.650% (R20C-16, plausible). $296B and $250B (R20C-17, plausible). Minutes on AI financing (R20B section 2 row, verified). Nasdaq 5.9%, over $2 trillion, midterm, neocloud stress, UBS 30% (R20C-12 and section 2 row, verified).
- R20-14: Brent about a fifth (R20C-03). $296B (R20C-17). EUR 6B (R20C-16). PJM 134,479 MW, short of requirement (R20C section 2 PJM row, secondary, December 2025 auction). ERCOT about 198 GW in Q1 2026 (R20C section 2 Texas row, secondary). Confidence 65 (DESK_NOW).
- R20-15: $288.87B, USDT $175.33B, USDC $69.24B (R20C-19). $305B (DESK_NOW). About 7% below about $309.7B (R20C-20, plausible). About 4.1% (R20C-44, derived). OCC final rule 21 October (R20C-21, plausible). Fed 24 September, Treasury 30 September, no final Fed or FDIC rule (R20C-22, plausible). Effective date rule (R20C section 3 row, OCC Bulletin, secondary). $270M, five years, first half 2027 (R20C-23, plausible). DBS and Kinexys 16 November (R20C-24, plausible).
- R20-16: 458 to 0 on 4 November (R20C-31). 5.0% to 5.9% per the Budget Minister (R20C section 4 row, verified on LCP). Senate 20 November to 9 December, ordinance after 17 December, 49.3 (R20C-32). Moody's Aa3 negative (R20C-30). Fitch outlook negative 30 October (R20A P5-72 row, secondary). S&P A+ and 27 November (R20C-33). 4.74% (R20C-34). 3.26% (R20C-35). About 148bp (R20C-36, derived). Peak about 174bp on 22 October (R20C section 4 row, secondary). Below 4.8% on 23 November and President Macron's signal (R20C section 4 row, verified). The "other parties dispute" wording replaces the lane's naming of one side.
- R20-17: 2.50%, 2.65%, 2.90%, statement wording (R20C-26 and section 4 row, verified). 3.8% and 3.2% (R20C-27, plausible). About 80%, two rises by mid 2027 (R20C-28). TPI not named, "instruments available to respond" (R20A P5-66, checked by a fetch summariser).
- R20-18: OPR 2.75%, eighth meeting, growth above 5%, inflation 1.8% and core 1.9%, data-led 2027 (R20C-37 and section 5 row, verified). 5.5% revised and 5.3% advance (R20C-38). October 1.9% from 1.8%, fuel group 4.7% (R20C-39, plausible). Ringgit 4.0915 and 4.1130 (R20C-40). Broad dollar up 1.9% (R20B-11). Deficit 3.3% from 3.6%, RM40B, RM15.5B (R20C-41 and section 5 row, plausible). The ringgit's 4.0445 on 5 November was left out, since R20C verified only 17 and 18 November.

### File 1, tables
- r20-t-scores: every row from R20A. Market column from PREREG_DUE. Final row from the R20A Brier block.
- r20-t-hero: debt (R20B-01), net interest (R20B-02), 10-year (R20B-07), Fed funds (R20B-10, R20B-12), odds (DESK_NOW, unchanged), real yield (R20B-08), breakeven (R20B-09), interest over receipts (R20B-04), average cost (R20B-52), stablecoins (R20C-19), USD/JPY (R20B-46), spread (R20C-36), Brent (R20C-03), gold (R20B-36, R20B-37). The "then" column is DESK_NOW, except breakeven 2.37% (R20B-09) and gold $4,130 (R20B section 5 row, arithmetic).
- r20-t-overtaken: ids are in the table's third column.
- r20-t-prereg: copied from prereg.json.

### File 2, edits (D01 to D29)
- D01 hero debt, R20B-01. D02 hero net interest (12 months), R20B-02. D03 hero 10-year, R20B-07. D04 facts as of 2026-11-26, frame instruction. D05 next refresh FOMC 12-09, R20B-17.
- D06 debt card, R20B-01. D07 net interest card, $1,064.0B and $994.1B, R20B-02, R20B-03, with FY2026 $1,051.8B kept. D08 3.57% → 4.91%, R20B-52, R20B-07 ("70% reprices within 5 years" kept, not re-checked). D09 Fed funds card, R20B-12. D10 stablecoins $288.9B and about 4.1%, R20C-19, R20C-44.
- D11 broad dollar 3.2%, R20B-11. D12 gold about $930B, R20B section 5 row (computed). D13 Japan $176B, February to September, R20B-27. D14 Brent about $110 to about $92, Hormuz fragile, R20C-01, R20C-03, R20C-06, R20C-43. D15 gold roughly $25T, 12× to 15×, R20B section 5 and section 10 rows (approximation).
- D16 S&P review 11-27, Moody's held 10-23, Fitch outlook 10-30, R20C-30, R20C-33, R20A. D17 OPEC+ 11-29, R20C-05. D18 FOMC 12-09, 92 to 94%, held 10 to 2, R20B-12, R20B-16, and French Senate 12-09, 458 to 0, ordinance after 12-17, R20C-31, R20C-32. D19 CPI 12-10, Q3 4.3%, core PCE 3.3%, R20B-32, R20B-33, R20B-34. D20 Cook hearing 12-14, R20B-19. D21 TIC 12-15, $3,674.7B, R20B-26. D22 BoJ 12-18 (secondary) and China 2027-01-10, R20B-47.
- D23 spread ~148bp, R20C-36. D24 19.8%, R20B-04. D25 ~4.1%, R20C-44. D26 158.76, R20B-46. D27 touched near 160 on 11-13, R20B-46 and section 6 row (secondary for the intraday trade). D28 2.79% and 2.3%, R20B-08, R20B-53. D29 reserve buying at zero, R20B-14, R20B-15.

## (b) Claims I was unsure of

- Not printed at all, because a lane marks them unverified or memory, or they add little: NVIDIA interim chief executive (R20C-10, see above), "no Japanese intervention reported 29 October to 26 November" (R20B-42, unverified, so the text only says the figure is due), Lagarde leaving after February (R20C-29, unverified), Qivalis launch (R20C-25), "no oil settled in non-dollar currencies" (R20C-07), "no new ASEAN local-currency item" (R20C-42), gold near $3,446 on 25 November (R20B, not cross-checked), Oracle CDS at 295bp (date unknown), Microsoft capex (sources conflict), OPEC+ October output rise (secondary, dropped for space).
- R20B-25, the borrowing estimate, rests on press summaries. The refunding statement itself is verified.
- R20B-18, FOMC strategy meetings, rests on wire reports. No Fed document.
- R20C-17, the $296B of hyperscaler bonds, is a blog summary of a Goldman count. Printed as "by one estimate".
- R20C-14: the Meta release is dated 21 October, just before the window.
- R20C-41: R20C cites a pre-budget statement dated August for a budget tabled in October. The verifier should check the 3.3% and 3.6% against the Budget 2027 documents.
- PJM and ERCOT figures in R20-14 are secondary and the PJM auction is from December 2025. They are used only as background for "power is still the scarce input".
- "Strongest official quarter in a year" in R20-8 is the lane's reading, not a WGC phrase.
- R20A scoring ambiguities that could change the Brier: P5-14 (3.6% at the edge, read as inside), P5-18 (TIPS buybacks excluded), P5-13 (rounded print), P5-33 and P5-34 (released 3 November, not 30 October), P5-66 (summariser check, not a raw text search). If P5-14 were read as exclusive, the desk's overall Brier rises by about 0.008 (one item goes from 0.12 to 0.42, over 37 items).
- The calendar edits (D16 to D22) re-use past rows for future dates. The ECB December meeting is not on the calendar because no lane gives its date.
- The front-page "Neutral corner" line (gold worth more than euro reserves) was not edited. R20B says the margin narrowed by about 14% and must be checked against IMF COFER before it is reprinted.
- Stale tripwires not edited, because no lane re-checked them: MOVE 95.9, Kalshi recession ~21%, Hormuz market ~48%. R20C says Hormuz odds have probably moved up. They should be re-pulled or marked with their October date.
- The masthead eyebrow says "Rounds 1 to 3" and the stamp says "419 dated claims". Neither is a claim about events, so neither was edited. The site builder may want to update both.

## (c) Reasons the lanes give to change the scenario odds or the front-page answer

The draft does not change any odds. These are for the court.

Toward a lower S4 (disorderly reset) in H0:
- The Round 3 note names "an oil-shock inflation episode with the euro periphery as the weak link" as the likeliest near-term S4 path. Both legs eased in the window. Brent fell from about $110 to about $92 and the IEA sees a Q4 surplus (R20C-02, R20C-03, R20C-04). The France to Germany spread fell from a reported peak near 174bp to about 148bp (R20C-36).
- No yield-cap signal: reserve purchases at zero, no long-end buying, no accord (R20B-14, R20B-20). Dollar plumbing was calm (R20B-49).
- None of the conditionals C1 to C11 fired. C11 needs two agencies in the BBB band, and France is still Aa3, A+ and Fitch's rating with a negative outlook.

Against that, or toward a higher S4:
- Interest over receipts rose to 19.8% and the October deficit was a record for the month (R20B-04, R20B-05). The Fed is still hiking.
- Foreign official holders sold another $80.9B in September, and private buyers in custody centres now take up more of the supply (R20B-26, R20B-29).
- AI financing showed its first strain (R20C-12) and the Fed's minutes flag it (R20B section 2). This is a new route to stress that the scenario notes do not name.
- The French budget has no majority and may come in by ordinance (R20C-31, R20C-32).

S1 and S2:
- Stablecoin supply fell to $288.87B (R20C-19), so the S1 funding channel is shrinking for now. Banks building tokenized deposits and a bank stablecoin (R20C-23, R20C-24) support S1 as "acquisition".
- Central bank gold buying rose 42% in Q3 while the price fell (R20B-38). This supports the S2 accumulation story. The price fall shrinks gold's market-value share.

Draft view for the court: the lanes give a weak case for moving 1 point from S4 to S1 in H0 (62/15/1/22 to 63/15/1/21), mainly on the eased oil and France legs. It is offset in part by the new AI financing risk and the rising interest share. The court may also want to reword the Round 3 note so it no longer calls the oil path "now" the likeliest, or to add AI credit stress as a named S4 route.

Front-page answer: no lane gives a reason to change "Energy will not replace the dollar. It is replacing gold's old job" or its confidence of 65. The window supports both halves (R20-14). One small addition the court could weigh: Alphabet's EUR 6B bond (R20C-16) shows that watts are also financed in euros, so "today that is the dollar" is still true but not exclusive.

Open Round 5 predictions affected by the lanes (not scored here, for R20A or the next round):
- P5-61 "Fitch changes France's rating or outlook" by end 2026, desk 7. R20A reports Fitch moved the outlook to negative on 30 October (secondary). If confirmed, this resolves Yes early, with a desk Brier of 0.865 on that item.
- P5-22 panel recommendation on Cook by 30 November (45) and P5-24 Cook out by 30 November (3): the hearing moved to 14 December (R20B-19), so both look likely to resolve No.
- P5-26 December hike, desk 70 against a market now at 92 to 94 (R20B-16). No new P20 item duplicates it. P20-01 to P20-03 cover other parts of the meeting.
- P5-59 and P5-60 (S&P on France by 30 November) cover the 27 November review, so no P20 item duplicates them.
- P5-62 spread above 150bp on 30 November (62): the spread is about 148bp (R20C-36), so this is close to a coin flip.
- P5-46 USDT at $200B by end 2026 (15): USDT is $175.33B (R20C-19).
- P5-32 (China's Announcement No. 72, due 27 November) is not covered by any lane.

## (d) Open questions for the next Desk round

1. Did Japan intervene between 29 October and 26 November? The MOF figure is due at month end (P20-07).
2. What did the 9 December FOMC do, and what do its projections say about 2027? Does the term premium explain the gap between market and survey paths, as the minutes suggest?
3. What did S&P decide on 27 November, did the Senate pass the budget by 9 December, and does the government use 49.3 or an ordinance? How close is C11?
4. Is AI financing stress spreading beyond weaker borrowers? Check the Oracle rating and spreads from primary sources, private credit exposure, and the Fed's next financial stability report.
5. Is the fall in stablecoin supply cyclical or lasting? When do the Fed and FDIC finish their GENIUS rules (P20-18)?
6. Who are the unreported central bank gold buyers (about 63% of Q3)? Re-check gold against euro reserves with the Q3 COFER release (also P5-37).
7. Oil: what quotas did OPEC+ set on 29 November, is there a Hormuz deal, and is there any dated evidence of oil settled outside the dollar?
8. China: what happens at the 10 January 2027 cliff (P20-15), and is there any new mBridge or CIPS figure?
9. Re-pull the stale tripwires: MOVE, Kalshi recession odds, Hormuz market odds, and PJM's backstop proposal.
10. Malaysia: the ringgit after 18 November, reserves after June, and the first 2027 Bank Negara meeting (P20-19).
11. How large are the tariff refunds behind the fall in customs receipts, and how much do they add to the deficit?
12. Verify or drop the report that President Lagarde will leave after February 2027.
13. Confirm the NVIDIA leadership statement from the company's own filing before any round prints it, and keep any wording neutral.
