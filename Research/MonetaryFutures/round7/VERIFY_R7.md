# VERIFY_R7: number check of DRAFT_R7 (L2.1 Bonds, L2.4 The money clubs)

Role: Verifier (engine/ROLES.md version 4.0). Tier: Standard, Round 7. Date: 2026-10-25. Inputs: round7/DRAFT_R7.md, round7/lanes/R7A-bonds-people.md, round7/lanes/R7B-clubs-print.md. Court and red-team files were not read. General research, not personal financial advice.

Scripts (scratchpad/scripts): r7v_math.py (ticket prices, yield to maturity, loan steps, household examples, shares), h15.py (Fed H.15 yields and H.10 ringgit via DBnomics), clubs_v.py (club shares from a fresh World Bank WDI pull), ka.py (Chinn-Ito 2023), sample.py (carried-over Round 6 duration, mortgage and 30-year history checks). All run with python3 -I.

## Pass checklist
- [x] Read the Verifier card and shared rules (ROLES.md), data registry (PLAN 8.3)
- [x] Every number on the main path of both chapters checked (tldr, kickers, tables, charts, curiosity and check answers, gauge notes, household examples)
- [x] 10% sample of Round 6 carry-over go-deeper blocks in L2.1 ([61.6], [88.1], [89.1])
- [x] 20% sample of the other non-main-path blocks ([11.0], [30.0], [31.0], [56.1], [56.2])
- [x] Recomputed by script: RM92.28, RM108.53, 1.9%, about 15%, RM60 per OPR step, RM33, $14,400, 4.77%, club shares
- [x] Re-fetched primary or official sources for the priority list (BNM Bond Market Report 2025, BNM reserves release, MOF Fiscal Outlook via The Vibes, EPF via Bernama, IMF COFER brief, World Bank DSSI page, PIDM FAQ, ADB Asia Bond Monitor September 2026 for Malaysia, Indonesia and Thailand, H.15, H.10, World Bank WDI, Chinn-Ito, BoE LDI letter of 5 October 2022)
- [x] Copy errors against the lanes checked, and lane "not confirmed" items checked against the draft
- [x] Cross-chapter consistency of Malaysia holder shares checked
- [x] S&P 500 return basis checked (price or total)
- [x] Mismatch table, corrected claims (R7V-01 onward), mismatch rate
- [x] Style: no em-dashes, no en-dashes, no semicolons. No personal identifier in any request or file

## Result in one paragraph
131 numeric claims checked. 10 mismatches (7.6%), all fixable by a word or a label, none in the recomputed arithmetic. 8 claims could not be checked this round (6.1%), 6 of them on the main path. The rate is below the 10% line, so no full re-check is triggered. All priority numbers match their sources except four wording or label errors: "98.8% owed at home" (MOF says domestic debt, not resident-held), the 2022 ringgit fall (a peak-to-trough move set beside year-end yields), the August RM15.9 billion inflow (all bonds, not government bonds) and the 0.67 point gilt move (a move within one afternoon, not a one-day jump). The two chapters do not contradict each other on Malaysian holders once each table names its denominator, but as written a reader sees Bank Negara at about 1% in L2.1 and 3.8% in L2.4, so labels are needed. The S&P 500 figures (-37.0% for 2008, -18.1% for 2022) are both total returns, matching the bond index total returns and the chart caption, so they are consistent.

## Check table
Match: yes, no, or cannot check. "Lane" in the source column means the lane's cited source, which this round did not re-open.

### L2.1 Bonds, main path
| # | Block ref | Claim | Number in draft | Number at source | Match | Fix |
|---|---|---|---|---|---|---|
| 1 | [18] [23] [95] | 10-year RM4 ticket when new tickets pay RM5 | RM92.28 | RM92.28 (script, annual coupons) | yes | none |
| 2 | [18] [33] | Same ticket when new tickets pay RM3 | RM108.53 | RM108.53 (script) | yes | none |
| 3 | [18] | 2-year ticket fall when new tickets pay RM5 | about 1.9% | 1.86% (script) | yes | none |
| 4 | [21] [96] | 30-year and 2-year fall for one point | about 15% and about 2% | 15.37% and 1.86% (script) | yes | none |
| 5 | [27] | Spread cost on RM10,000 at RM99.50 and RM99.60 | about RM10 | RM10 (0.10%) | yes | none |
| 6 | [28] [30] | US Treasury daily trading, January to July 2026 | about $1.21 trillion | $1,209.1 billion, up 12.1% (SIFMA, primary dealer volume) | yes | Optional: "primary dealer trading" |
| 7 | [28] [30] | Malaysian government bond daily trading 2025 and 2024 | RM6.2 billion, RM3.8 billion | RM6.2 billion, RM3.8 billion (BNM Bond Market Report 2025, p.19). MGS plus GII are 87%, the rest bills and corporate bonds | yes | none |
| 8 | [29] | Fed Treasury purchases in five weeks, March 2020 | $1.27 trillion | Round 6 verified (R6B-27) | yes | none |
| 9 | [30] | Residents and foreigners, end 2025 | 78.5% and 21.5% | "over 78.5%" and 21.5% (RM279.2 billion) (BNM report p.19) | yes | none |
| 10 | [30] | Pension funds and banks each hold roughly a third | roughly a third | 41.6% and 42.9% of resident holdings, times 78.5% gives 32.7% and 33.7%. ADB (BNM data): social security 32.6% (Mar 2026), financial institutions 31.6% (Dec 2025) | yes | none |
| 11 | [30] | RM6.2 billion in dollars and ratio to US | about US$1.5 billion, several hundred times | US$1.52 billion at 4.08, ratio 796 (script) | yes | none |
| 12 | [15] | Share of government paper that is sukuk | about half | 47.9% Islamic (MOF via The Vibes) | yes | none |
| 13 | [39] [41] | EPF fixed income share of investment assets, end 2025 | 44.7% of RM1.41 trillion | 44.7% of total assets, investment assets RM1.41 trillion (EPF via Bernama, 28 Feb 2026) | yes | none |
| 14 | [41] | EPF fixed income return and share of income | 4.3%, about a third | 4.3%, RM26.3 billion or 33% (Bernama) | yes | none |
| 15 | [39] | Sukuk Prihatin minimum | RM500 | Lane R7A-26 (terms sheet), not re-opened | cannot check | none needed if court accepts lane T1 |
| 16 | [39] | Standard lot for direct government bonds | RM10 million | Lane R7A-25 (The Edge, 2021), not re-opened, may be outdated | cannot check | Add "(2021)" or "usually" |
| 17 | [39] [41] | Bursa and seasoned bonds from about RM1,000 | about RM1,000 | Lane R7A-23 and R7A-24 (BIX, The Edge, plausible) | yes | none (lane's own sources agree) |
| 18 | [40] | TreasuryDirect minimum | $100, no fees | Treasury rule (lane R7A-21, T1) | yes | none |
| 19 | [40] | Big index bond ETF fees | about 0.03% | AGG and BND 0.03% (lane R7A-22, issuer fees) | yes | none |
| 20 | [45] | PIDM limit | RM250,000 per depositor per bank | RM250,000 per depositor per member bank, separate for Islamic and conventional (PIDM FAQ) | yes | none |
| 21 | [45] [70] | OPR | 2.75%, unchanged since July 2025 | Held on 3 Sep 2026 (ADB September 2026 summary, lane R7A-13) | yes | none |
| 22 | [45] | Malaysian floating loans since August 2022 | "floating loans follow a base rate that moves only with the OPR" | SBR applies to new retail floating loans and refinancing from 1 Aug 2022. Existing loans stay on the old Base Rate (BNM revised Reference Rate Framework) | no | "Since August 2022 new floating loans follow a base rate that moves only with the OPR" |
| 23 | [45] [72] | One 0.25 point OPR step on RM400,000, 35 years, 4.00% | about RM60 a month | RM60.48 (base RM1,771.10) (script) | yes | none |
| 24 | [45] | Foreign share and ringgit in 2026 | about a fifth, near 4.08 | 21.5% (BNM), 4.079 on 16 Oct 2026 (H.10) | yes | none |
| 25 | [45] | Malaysia debt service share of revenue | about 16% | 15.8% (2026), 16% (2025) (MOF via The Vibes) | yes | none |
| 26 | [47] | SBR start date | 1 August 2022 | 1 August 2022 (BNM framework) | yes | none |
| 27 | [47] | US 10-year in 2022 | 1.52% to 3.88% | 1.52% (31 Dec 2021) to 3.88% (30 Dec 2022) (H.15) | yes | none |
| 28 | [47] | Ringgit fall in 2022 | about 12% | 12.1% from 4.171 (3 Jan) to the low of 4.746 (4 Nov). Over the full year 4.171 to 4.400, about 5% (H.10) | no | "and the ringgit fell about 12% at its weakest, in November" |
| 29 | [47] | US 10-year rise in 2026 | 1.12 points | 4.19% (2 Jan) to 5.31% (5 Oct) (H.15) | yes | none |
| 30 | [47] [53] [70] | Ringgit range in 2026 | 3.89 to 4.15 | 3.8864 (26 Feb) to 4.1455 (22 Jun) (H.10) | yes | none |
| 31 | [53] | US bond index 2022 | lost 13.01%, "its worst year since 1976" | -13.01%, worst calendar year since the index began in 1976 (lane R7A-19, IPE and index reports). "Since 1976" implies 1976 was worse | no | "its worst year since the index began in 1976" |
| 32 | [53] | 2020 low yield and 2022 inflation peak | 0.52% and 9.1% | Round 6 verified | yes | none |
| 33 | [53] | Malaysia federal debt domestic | 98.8% domestic | 98.8% domestic, 1.2% offshore (MOF via The Vibes) | yes | none |
| 34 | [53] | BoE gilt purchases, 2022 | £19.3 billion | £19.3 billion bought 28 Sep to 14 Oct 2022 (BoE, lane R7A-38) | yes | none |
| 35 | [54] [56] | 2008 bond index return | +5.24% | +5.24% (fund filing, lane R7A-20), about 5.2% in index tables | yes | none |
| 36 | [54] [56] | 2008 S&P 500 | -37.0% (labelled total return) | -37.00% total return. Price return about -38.5% | yes | none. Basis consistent |
| 37 | [54] [56] | 2022 bond index return | -13.01% | -13.01% | yes | none |
| 38 | [54] | 2022 S&P 500 | -18.1% (labelled total return) | -18.11% total return. Price return about -19.4% | yes | none. Basis consistent |
| 39 | [56] | Previous worst bond index year | -2.92% in 1994 | -2.92% (lane R7A-19) | yes | none |
| 40 | [55] | US 10-year real yield now and end 2021 | about 2.6 points, about minus 1 | 2.64% (22 Oct 2026), -1.04% (31 Dec 2021) (H.15) | yes | none |
| 41 | [58] [59] | 10-year and 2-year yields, 21 Oct 2026 | 5.13% and 4.81% | 5.13% and 4.81% (H.15) | yes | none |
| 42 | [58] | 10-year inflation-linked yield, 21 Oct 2026 | 2.76% | 2.76% (H.15) | yes | none |
| 43 | [58] | Expected inflation part | about 2.4 points | 2.37 (5.13 minus 2.76) | yes | none |
| 44 | [59] | Tax and inflation walk | $51.30, about $39, $24, about 1.5% | $38.99, $14.99 left, 1.5% (script) | yes | none |
| 45 | [70] | Dial 1, US 10-year | 4.96%, up 0.95 point in a year | 4.96% (22 Oct 2026), 4.01% (23 Oct 2025) (H.15). Note: one day after the 5.13% used in [58] | yes | Optional: add "(22 October)" so readers see why it differs from 5.13% |
| 46 | [70] | Dial 1, Malaysia 10-year | about 3.95% | Lane R7A-45 (press, 3.947%), not re-opened | cannot check | none |
| 47 | [70] | Dial 2, Malaysia inflation and real yield | 1.8%, about 2.1 points | 1.8% (lane R7A-13, PLAN sources 2026-10-23). 3.95 minus 1.8 is 2.15 | yes | none |
| 48 | [70] | Dial 2, US real yield | about 2.6% | 2.64% (22 Oct 2026) | yes | none |
| 49 | [70] | Dial 3, Fed hiked September 2026 | hiked | Round 6 and lane (IORB 3.90% from 17 Sep 2026) | yes | none |
| 50 | [70] | Dial 4 | about 4.08, 3.89 to 4.15 | 4.079, 3.8864 to 4.1455 | yes | none |
| 51 | [70] | Dial 5 | 21.5% (end 2025) | 21.5% (BNM report) | yes | none |
| 52 | [70] [86.0] | Dial 6, bid to cover 7 Oct 2026 | 2.77 times | Round 6 verified (R6B-11) | yes | none |
| 53 | [71] | Two OPR steps | about RM120 | RM121.93 (script) | yes | none |
| 54 | [71] | Duration lines | 6 years falls 6%, 2-year about 2% | rule of thumb, 1.9 for 2-year (script) | yes | none |
| 55 | [72] | Aisyah's FD rate | 2.45% | Maybank 12-month board rate 2.45%, page effective 19 Mar 2025, before the July 2025 OPR cut. Current board rate not found | cannot check | Label "a 12-month FD at about 2.45%" or re-check the Maybank page before publishing |
| 56 | [72] | Aisyah's real gain on RM5,000 | about RM33 | RM32.50 by subtraction, RM31.93 exact (script). Depends on the 2.45% input | yes | none (arithmetic). If the FD rate is now 2.20% the gain is about RM20 |
| 57 | [72] | Rahman fund paper loss for 1 point | about RM1,000 | RM1,000 at duration 5 on RM20,000 (script, lane assumption) | yes | Add "(duration about 5)" as the lane does |
| 58 | [72] | Linda's bond fund loss for 1 point | about $14,400 | $240,000 times 6 times 1% is $14,400 | yes | none |
| 59 | [72] | Linda's real yield | 2.6 points | 2.64% | yes | none |
| 60 | [76] | RM5.6 billion against RM1.309 trillion | 0.43% | 0.428% | yes | none |
| 61 | [78] | July 2026 foreign sales headline | RM5.6 billion | Headline "Why Foreign Investors Disposed RM5.6 Billion In Malaysian Govt Bonds In July" (Business Today, 10 Aug 2026). Some coverage gives RM5.3 billion | yes | none |
| 62 | [78] | Inflows the next month | about RM15.9 billion | RM15.9 billion into all Malaysian bonds, including corporate. Government bonds took RM11.1 billion (Kenanga via Bernama) or RM10.6 billion of MGS plus GII (RAM). Lane flagged the gap | no | "the next month brought about RM11 billion back into government bonds (RM15.9 billion into all Malaysian bonds, the most since 2013)" |
| 63 | [78] | Ringgit start and end of July 2026 | 4.09 and 4.08 | 4.0924 (1 Jul), 4.0824 (31 Jul) (H.10) | yes | none |
| 64 | [78] | 30-year above 5.31% in most years 1977 to 2007 | most years | 26 of 31 yearly averages above 5.31% (H.15, script) | yes | none |
| 65 | [78] | 30-year on 7 October 2026 | 5.67% | 5.67% (H.15) | yes | none |
| 66 | [78] | US 10-year, April 2025 | rose 0.47 point in a week | 4.01% (4 Apr) to 4.48% (11 Apr) (H.15) | yes | none |
| 67 | [78] | UK 30-year gilt, September 2022 | "a one-day jump of 0.67 point" | BoE letter (5 Oct 2022): yields fell 20 bp on the morning of 27 Sep, then "by that evening 30 year gilt yields had risen by 67 basis points compared to that morning". Largest daily rises were "more than 35 basis points". Intraday range 127 bp on 28 Sep | no | "a rise of 0.67 point in a few hours on 27 September and a swing of 1.27 points within 28 September" |
| 68 | [82] [83] | Malaysia debt service 2026 | RM57.3 billion, about 15.8% of revenue | RM57.3 billion projected for 2026, 15.8% of revenue (MOF via The Vibes) | yes | Optional: "is projected at" rather than "was" |
| 69 | [83] | 2027 debt service near 16% | near 16% | Lane R7A-32 (press summary, plausible), not re-opened | yes | none (hedged with "near") |
| 70 | [82] [83] | US net interest FY2026 | above $1 trillion, about $1.05 trillion | $1,051.8 billion (Round 6 verified) | yes | none |
| 71 | [99] | Tax and inflation check | 3.8%, about -0.2% | 3.8%, -0.2% (script) | yes | none |
| 72 | [3] | Roediger and Karpicke one-week recall | 61% against 40% | 61% and 40% (lane R7A-03, paper read) | yes | none |

### L2.1 go-deeper boxes (Round 7 box [31] and a 10% sample of Round 6 carry-over)
| # | Block ref | Claim | Number in draft | Number at source | Match | Fix |
|---|---|---|---|---|---|---|
| 73 | [31.0] | Malaysian principal dealers | 20, 7 Islamic | 20 PDs including seven iPDs (BNM report p.12) | yes | none |
| 74 | [31.0] | Banks, pensions, insurers, asset managers, Bank Negara, foreigners | about 34%, 33%, 6%, 3%, 1%, 21.5% | 33.7, 32.7, 6.2, 2.7, 1.0 (computed from BNM resident shares), 21.5 | yes | Numbers fine. Label needed, see row 128 |
| 75 | [61.6] | 2020 0.625% 10-year now worth | about $84 per $100 | $84.5 to $85.0 for a 4-year yield of 4.95% to 4.80% (script) | yes | none |
| 76 | [88.1] | 2-year: price, duration, plus and minus 1 point | $99.89, 1.9, -1.9%, +1.9% | same (script, half-yearly) | yes | none |
| 77 | [88.1] | 10-year: price, duration, moves | $96.09, 7.9, -7.5%, +8.3% | same | yes | none |
| 78 | [88.1] | 30-year: price, duration, moves | $93.81, 15.0, -13.4%, +16.8% | same | yes | none |
| 79 | [89.1] | $400,000, 30 years at 6.40% and 7.40% | $2,502, $2,770, about $267 and $3,210 | $2,502.02, $2,769.52, $267.50, $3,210 | yes | none |

### L2.4 The money clubs, main path
| # | Block ref | Claim | Number in draft | Number at source | Match | Fix |
|---|---|---|---|---|---|---|
| 80 | [0] [41] [46] [53] [59] | Malaysia's federal debt "owed at home" | 98.8% owed at home | MOF: "Domestic debt accounted for 98.8% of outstanding federal debt", offshore borrowing 1.2%. Domestic means ringgit debt issued at home. About a fifth of it is held by foreigners | no | "98.8% of its federal debt is domestic debt, issued at home in ringgit" (and in [53] "Malaysia owes ringgit, 98.8% of it issued at home") |
| 81 | [0] [45] [46] [59] | Foreign share | a fifth | 21.5% (BNM end 2025), 21.4% (Mar 2026, ADB) | yes | none |
| 82 | [1] [42] | Peg dates and level | 3.80, September 1998 to July 2005 | 1 Sep 1998 controls, 2 Sep 1998 fixed at 3.80, 21 Jul 2005 managed float (BNM, lane R7B-21) | yes | none |
| 83 | [7] | Club start dates and members | G7 1975 (Canada 1976), G10 1962 (11), G20 1999, summits 2008, AU 2023 | Standard history (lane R7B-05, R7B-06, T4) | yes | none |
| 84 | [8] | G7 shares of output, people, exports | 44.5%, 9.6%, 30.2% | 44.5, 9.6, 30.2 (fresh WDI 2024 pull, script) | yes | none |
| 85 | [8] | G10 shares | 47.6%, 10.3%, 38.1% | 47.6, 10.3, 38.1 | yes | none |
| 86 | [8] | G20 with the EU | 86.3%, 61.0%, 75.8% | 86.3, 61.0, 75.8 | yes | none |
| 87 | [8] | G20 with the EU and AU | 88.5%, 78.8%, 77.5% | 88.5, 78.8, 77.5. WDI lacks 2024 exports for Nigeria and five other AU members, so 77.5% is slightly low | yes | Optional note "exports exclude a few AU members with no data" |
| 88 | [8] [9] | Malaysia shares, and exports about two and a half times output | 0.38%, 0.44%, 0.93%, two and a half times | 0.378, 0.437, 0.928, ratio 2.45 | yes | none |
| 89 | [11.0] [53] [54] | Reserve shares, mid 2026 | 56.70%, 20.60%, 4.96%, 2.11% | 56.70, 20.60, 4.96, 2.11, total $13.22 trillion (IMF data brief, 30 Sep 2026) | yes | none |
| 90 | [53] | Dollar against euro | nearly three times | 2.75 times | yes | none |
| 91 | [11.1] | China share of world output | about 17% | 16.8% (WDI 2024) | yes | none |
| 92 | [11.0] [44] [30.0] | Chinn-Ito openness 2023 | 1.00 (US, Japan, UK, euro members, Singapore, Hong Kong, Korea), 0.42 (Malaysia, Indonesia, Thailand, Zimbabwe), 0.16 (China, India, Brazil, South Africa, Russia, Argentina), 0.7 (Mexico, Saudi Arabia, Ecuador), 0.0 (Sri Lanka) | identical (kaopen_2023.xls, script). Turkey not matched by name in the file | yes | none |
| 93 | [14] [53] [54] | London 2009 package | $1.1 trillion, $5 trillion | Communique (lane R7B-09, T1) | yes | none |
| 94 | [14] | FSB created | April 2009 | Communique (lane R7B-10) | yes | none |
| 95 | [14] | US Basel III re-proposal | March 2026, no final rule | 19 Mar 2026 (lane R7B-16, T1) | yes | none |
| 96 | [14] [53] | DSSI | $12.9 billion, 48 of 73, one private lender | $12.9 billion May 2020 to Dec 2021, 48 of 73, "only one private creditor participated" (World Bank) | yes | none |
| 97 | [14] [53] | Common Framework durations | about 2 to more than 5 years, Ethiopia more than five | Chad about 2 years, Ethiopia requested Feb 2021, bondholder agreement in principle 29 Jun 2026 (lane R7B-12, R7B-13). Ethiopia's final exchange not confirmed | yes | Optional in [53]: "Ethiopia's deal took more than five years to reach agreement in principle" |
| 98 | [14] [39] [55.0] | Minimum tax | Malaysia from 1 Jan 2025, US carve-out January 2026 | LHDN guideline, OECD package 5 Jan 2026 (lane R7B-14, R7B-15) | yes | none |
| 99 | [15] | Scorecard count | 2, 4, 2, 1 | Count of grades in [14]: 2, 4, 2, 1 | yes | none |
| 100 | [24] [35] [53] | Sri Lanka stopped paying | 12 April 2022 | 12 April 2022 (lane R7B-34) | yes | none |
| 101 | [24] | Turkey and Argentina inflation | 72% (2022), 220% (2024) | 72.3% and 219.9% (World Bank, lane R7B-31) | yes | none |
| 102 | [24] | Turkey and Argentina "owed much of their debt at home" (lock 3 example) | passes lock 2 | Lane C4: Argentina "fails test 2 and 3", owes much of its debt in dollars ($62.7 billion of foreign-currency bonds abroad, BIS) | no | "Turkey and Argentina had their own money and still saw inflation reach 72% (2022) and 220% (2024). Argentina also owed much of its debt in dollars" |
| 103 | [29] [41] [44] | Bank Indonesia share of government debt | about 29%, "after buying it from 2020 to 2022" | 29.4% at end June 2026, "rising to 29.4% from 25.1% at end of March due to bond purchases aimed at supporting financial market stability" (ADB September 2026). Much of the share is 2026 buying | no | "holds about 29% of its government's debt (June 2026), after buying from 2020 to 2022 and again in 2026 to steady markets" |
| 104 | [29] | Indonesia inflation 2025 | 1.9% | 1.9% (World Bank, lane) | yes | none |
| 105 | [29] | Germany's borrowing cost | "the cheapest borrowing in Europe" | Lane: "lowest risk premium in Europe". Swiss government yields are below German yields, so the cheapest in Europe is Switzerland | no | "the cheapest borrowing in the euro area" |
| 106 | [30.1] | Share of IMF members not floating, 2023 | about two thirds | 65 floating or free floating of about 199 (lane R7B-19 relay), 67% not floating | yes | none |
| 107 | [31] | Views of the printing short | about 75 million | 74.8 million (lane, vidIQ) | yes | none |
| 108 | [31] | US interest bill 2026 | passed $1 trillion | $1,051.8 billion | yes | none |
| 109 | [32] | Years since 1971 | 55 | 2026 minus 1971 | yes | none |
| 110 | [39] | ASEAN founding, BRICS partner seat | 1967, October 2024 | 1967 (standard), 24 Oct 2024 (MIDA, lane R7B-28) | yes | none |
| 111 | [40] | MOF holders, end June 2026 | EPF 30.5, banks 28.5, insurers 5.2, BNM 3.8, KWAP 2.2, DFIs 2.1, other domestic 6.2 | identical (MOF Fiscal Outlook 2027 via The Vibes, 10 Oct 2026). Domestic institutions RM1.08 trillion, 78.5% | yes | none |
| 112 | [40] | The rest, mostly foreigners | about 21.5% | Implied residual (100 minus 78.5). Includes RM16.7 billion of offshore loans (1.2%) | yes | Optional: "(implied)" |
| 113 | [41] | Federal debt, share of GDP, Islamic share | RM1.38 trillion, 63.1%, 47.9% | RM1.38 trillion, 63.1%, RM660.6 billion or 47.9% (MOF via The Vibes) | yes | none |
| 114 | [41] [44] | Bank Negara holds of federal debt | 3.8% | 3.8% (MOF) | yes | Label, see row 128 |
| 115 | [42] [53] | Ringgit early 1997 and worst point | about 2.50, about 4.885 | L1 rb-em, R5E-06 (T3, confirmed in Round 5) | yes | none |
| 116 | [43] | IMF calls the ringgit floating | floating | IMF 2023 classification via a relay and Article IV annexes via a search summary (lane R7B-20, IMF returned 403) | cannot check | none (lane plausible) |
| 117 | [44] | Foreign share of government bonds, Malaysia and Indonesia | 21.4% (Mar 2026), 12.8% (Jun 2026) | 21.4% (ADB, BNM data, Mar 2026), 12.8% (ADB, Jun 2026) | yes | none |
| 118 | [44] | Foreign share, Thailand | not checked | 9.3% at end March 2026 (ADB Asia Bond Monitor, June 2026, search summary) | yes | Fill the cell: "9.3% (Mar 2026)" |
| 119 | [44] | Central bank holds of government bonds | 3.8%, 29.4%, 8.0% | 3.8% (MOF), 29.4% (ADB), 8.0% Bank of Thailand, June 2026 (ADB) | yes | none |
| 120 | [44] | Reserves 2024 | $116, $156, $237, $384 billion | 116.2, 155.7, 236.9, 383.9 (World Bank FI.RES.TOTL.CD) | yes | none |
| 121 | [45] | Highest foreign share of the three ASEAN peers | highest | Malaysia 21.4%, Indonesia 12.8%, Thailand 9.3% | yes | none once row 118 is filled |
| 122 | [46] [56.1] [54] | Reserves against short-term external debt | about 0.9 times | 0.9 times, reserves at 30 Jun 2026 against short-term debt at Q1 2026 (BNM release, 7 Jul 2026) | yes | none |
| 123 | [53] [54] | Malaysia reserves 1997 and June 2026 | $21.5 billion, $132.6 billion | $21.5 billion (World Bank, 1997), $132.6 billion (BNM, 30 Jun 2026) | yes | none |
| 124 | [53] | Brazil "currency war" | 2010 | 27 Sep 2010 (lane R7B-35) | yes | none |
| 125 | [53] | Japan central bank and foreign holders | about 41%, about 13% | L2.3 figures, not re-opened this round | cannot check | none |
| 126 | [54] | Tripwire dates | Miami 14 to 15 Dec 2026, truce around 10 Nov 2026, Ethiopia 31 Mar 2027 | Lane R7B-07 (confirmed), truce date lane "to verify" (hedged with "around"), Ethiopia lane | yes | none |

### Non-main-path sample in L2.4 (20%)
| # | Block ref | Claim | Number in draft | Number at source | Match | Fix |
|---|---|---|---|---|---|---|
| 127a | [30.0] | Switzerland exchange rate regime | Floating | Lane "to verify", not checked | cannot check | Confirm on the IMF list or write "Floating (to verify)" off the page |
| 127b | [30.0] | Zimbabwe own currency | Yes, since 2024 | ZiG launched April 2024 (lane "to verify", consistent with public record) | yes | none |
| 127c | [56.1] | Policy rate kept at | 2.75% | 2.75% | yes | none |
| 127d | [56.2] | Greek deposits before June 2015 controls | about EUR 41 billion | R4B-31 (T4), not re-opened | cannot check | none |

### Cross-chapter consistency
| # | Block ref | Claim | Number in draft | Number at source | Match | Fix |
|---|---|---|---|---|---|---|
| 128 | L2.1 [31.0] against L2.4 [40] [41] [44] | Who holds Malaysian government debt | L2.1: banks about 34%, pensions about 33%, Bank Negara about 1% (end 2025). L2.4: banks 28.5%, EPF 30.5%, Bank Negara 3.8% (end June 2026) | Both are right for their own measure. L2.1 uses BNM's resident shares of government securities (MGS, GII and bills) times 78.5%. L2.4 uses MOF shares of all federal debt. The two series differ most for Bank Negara (BNM's own count 1.3% of resident holdings, MOF 3.8% of federal debt). Neither table says which measure it uses, so a reader sees a contradiction | no (label) | L2.1 [31.0] column header: "Malaysian government securities, share of the whole market (end 2025, BNM)". L2.4 [40] header: "Who holds Malaysia's federal government debt, MOF measure (end June 2026)". Add one line under [40]: "Bank Negara's own market count puts its share near 1% of government securities. The MOF counts all federal debt, so its shares differ." Foreign share (about 21.5%) and pension share (EPF plus KWAP 32.7% against pensions 32.7%) agree across both |

Rows checked: 72 (L2.1 main path) plus 7 (L2.1 boxes) plus 47 (L2.4 main path, rows 80 to 126) plus 4 (L2.4 sample) plus 1 (cross-chapter) = 131 claims.

## Lane "not confirmed" items against the draft
| Lane item | Lane status | In the draft as | Verdict |
|---|---|---|---|
| R7A-08 holder shares of the whole market | Plausible (denominator to confirm) | "worked out from its resident shares" [30], computed [31.1] | Confirmed this round: BNM's six resident shares add to 100%, so they are resident shares. Fine |
| R7A-30 Maybank FD 2.45% | Plausible (rate page may be stale) | Stated as fact in [72] | Not confirmed. Page dated 19 Mar 2025, before the July 2025 cut. Label or re-check |
| R7A-34 RM15.9 billion August inflows | Plausible (coverage differs) | Stated beside a government bond headline in [78] | Mismatch, row 62 |
| R7A-14 share of floating home loans | Open | Not used | Fine |
| R7A-27 no standing retail government sukuk | Open | "It was a one-off and has ended" [39] | Fine (refers to Sukuk Prihatin only) |
| R7B fossil fuel subsidies above $1 trillion | T4, to verify | Softened to "still very large in 2022" [14] | Fine |
| R7B Ghana exchange date, Ethiopia final settlement | Open | Durations only, Ethiopia "more than five years" | Fine (see row 97 option) |
| R7B US and China truce date | To verify | "due around 10 November 2026" [54] | Fine (hedged) |
| R7B Switzerland regime, Zimbabwe ZiG | To verify | Stated in [30.0] | Zimbabwe consistent with public record. Switzerland cannot check |
| R7B 65% debt ceiling, CMIM size and never drawn, largest sukuk market | To verify | Not used | Fine |
| R7B Thailand foreign share | Not given | "not checked" in [44] while [45] claims "highest" | Filled this round: 9.3% (Mar 2026), claim holds |

## Corrected claims
| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R7V-01 | 98.8% of Malaysia's federal debt is domestic debt (ringgit, issued at home). 1.2% is offshore borrowing (RM16.7 billion, mainly dollars and yen). About a fifth of the domestic debt is held by foreigners, so "owed at home" overstates it | T0 via press (MOF Fiscal Outlook 2027) | Confirmed | https://www.thevibes.com/articles/news/128170/debt-servicing-bill-hits-rm57.3b-as-malaysias-federal-debt-climbs-to-rm1.38-trillion-mof | 2026-10-10 | 2026-06-30 | MOF document defines domestic debt by holder |
| R7V-02 | In 2022 the ringgit fell about 12% at its weakest (4.171 per dollar on 3 Jan to 4.746 on 4 Nov) and about 5% over the full year (4.400 on 30 Dec), while the US 10-year rose from 1.52% to 3.88% | T3 | Confirmed | https://api.db.nomics.world/v22/series/FED/H10/RXI_N.B.MA and https://api.db.nomics.world/v22/series/FED/H15/RIFLGFCY10_N.B | 2026-10-25 | 2022-12-30 | H.10 revision |
| R7V-03 | The Bloomberg US Aggregate returned -13.01% in 2022, its worst calendar year since the index began in 1976 | T3 | Confirmed (wording fix) | https://hub.ipe.com/asset-manager/principal-asset-management/multi-sector-fixed-income-2023/10065688.supplierarticle | 2023 | 2022-12-31 | Index provider data show a worse year |
| R7V-04 | Foreign investors put about RM15.9 billion into all Malaysian bonds in August 2026, the most since September 2013. Government bonds took about RM11.1 billion (Kenanga) or RM10.6 billion of MGS plus GII (RAM). Corporate bonds took a record RM4.8 billion | T4 (research houses via press) | Plausible | https://www.thestar.com.my/business/business-news/2026/09/09/peak-in-capital-market-net-inflows and https://www.businesstoday.com.my/2026/09/23/malaysian-bond-remains-sturdy-after-record-rm15-9-billion-net-inflow-in-august-says-ram/ | 2026-09-09 and 2026-09-23 | 2026-08-31 | BNM monthly flow data differ |
| R7V-05 | On 27 September 2022 the UK 30-year gilt yield rose 67 basis points from that morning's level by the evening, after a 20 basis point fall in the morning. Two daily rises exceeded 35 basis points. On 28 September its intraday range was 127 basis points | T2 | Confirmed (letter text read) | https://www.bankofengland.co.uk/-/media/boe/files/letter/2022/october/letter-from-jon-cunliffe-ldi-5-october-2022 | 2022-10-05 | 2022-09-28 | none (historical) |
| R7V-06 | Since 1 August 2022 the Standardised Base Rate, linked solely to the OPR, is the reference rate for new retail floating loans and refinancing. Existing loans stay on the Base Rate | T1 | Confirmed | https://www.bnm.gov.my/-/pd-revised-reference-rate | 2021-08 | 2026-10-25 | BNM revises the framework |
| R7V-07 | Argentina passes lock 1 but fails locks 2 and 3: it owes much of its debt in dollars ($62.7 billion of foreign-currency bonds abroad alone at 2026Q2) and inflation hit 219.9% in 2024 | T0 (BIS, World Bank via lane) | Confirmed (lane data) | https://stats.bis.org/api/v1/data/WS_DEBT_SEC2_PUB/ and https://api.worldbank.org/v2/country/ARG/indicator/FP.CPI.TOTL.ZG | 2026 | 2026Q2 | BIS revision |
| R7V-08 | Bank Indonesia held 29.4% of Indonesian government debt securities at end June 2026, up from 25.1% at end March after bond purchases to support market stability. Foreigners held 12.8%, banks 15.1% | T0 relayed by ADB | Confirmed | https://asianbondsonline.adb.org/indonesia/market_summary/id_market_summary_202609.pdf | 2026-09 | 2026-06-30 | Bank Indonesia data differ |
| R7V-09 | Germany has the cheapest government borrowing in the euro area, not in Europe (Swiss yields are lower) | T3 | Plausible (standard market knowledge, not fetched this round) | market yields, standard (no fetch this round) | 2026-10 | 2026-10 | German 10-year yield above another euro member's |
| R7V-10 | Malaysian holder shares differ by measure. BNM (government securities, end 2025): residents 78.5%, of which pension funds 41.6%, banks 42.9%, insurers 7.9%, asset managers 3.4%, Bank Negara 1.3%, others 2.9%. MOF (all federal debt, end June 2026): EPF 30.5%, banks 28.5%, insurers 5.2%, Bank Negara 3.8%, KWAP 2.2%, DFIs 2.1%, other domestic 6.2% | T0 | Confirmed | https://www.bnm.gov.my/documents/20124/54166/Malaysia_Bond_Market_Report_2025.pdf and the R7V-01 URL | 2026 and 2026-10-10 | 2025-12-31 and 2026-06-30 | Either source revises its table |
| R7V-11 | Thailand's foreign holders had 9.3% of Thai government bonds at end March 2026, so Malaysia (21.4%) has the highest foreign share of Malaysia, Indonesia (12.8%) and Thailand | T0 relayed by ADB | Plausible (search summary of the ADB report) | https://asianbondsonline.adb.org/thailand/market_summary/th_market_summary_202606.pdf | 2026-06 | 2026-03-31 | Bank of Thailand data differ |
| R7V-12 | The S&P 500 figures beside the bond index are both total returns: -37.0% (2008) and -18.1% (2022). Price returns were about -38.5% and -19.4% | T3 | Confirmed (total), price figures from index history | https://ycharts.com/indicators/sandp_500_total_return_annual | 2026 | 2022-12-31 | S&P index data differ |

## Cannot check on the main path (6)
1. [39] Sukuk Prihatin RM500 minimum (lane T1, not re-opened). Low risk.
2. [39] RM10 million standard lots (The Edge, 2021). May be outdated.
3. [70] Malaysia 10-year about 3.95% (press via lane).
4. [72] Aisyah's FD rate 2.45% (Maybank page dated 19 Mar 2025, before the July 2025 OPR cut). The RM33 gain depends on it.
5. [43] IMF "floating" label for the ringgit (IMF site 403).
6. [53] Japan central bank about 41%, foreigners about 13% (L2.3, not re-opened).
Off the main path (2): [30.0] Switzerland "Floating", [56.2] EUR 41 billion.

## Mismatch rate
10 mismatches out of 131 claims: 7.6%. 8 cannot check: 6.1%. Below the 10% line, so no full re-check is triggered. No mismatch is in an arithmetic or recomputed figure. All ten are fixable with the wording in the fix column, and none is an unresolved headline number once the fixes are applied.

## Notes for the court
- Priority numbers confirmed at source: EPF 44.7% of RM1.41 trillion, 4.3% and 33% of income. EPF's 6.15% dividend is correct (Bernama) but does not appear in either chapter. Foreign share 21.5% (end 2025). RM6.2 billion daily trading. SBR from 1 August 2022. OPR 2.75%. PIDM RM250,000. -13.01% and +5.24%. DSSI $12.9 billion and 48 of 73. Club shares. Reserve shares. $132.6 billion and 0.9 times. 1998 to 2005 dates. MOF holder table and 47.9% Islamic share. Indonesia 29.4%.
- Dial 1 uses 22 October (4.96%) while the rest of L2.1 uses 21 October (5.13%). Both are correct H.15 closes. The yield fell 17 points in one day, so a date in the dial cell would avoid a reader thinking one is a typo.
