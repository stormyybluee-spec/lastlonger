# VERIFY_R10: Landscape chapter ls-14 (Behind the curtain)

Written 2026-11-12. Verifier pass on round10/DRAFT_R10.md. Money education desk, general education, not financial advice. Not committed.

Files read: DRAFT_R10.md, PATHFINDER_A.md, PATHFINDER_B.md, lanes/R10A-data-footprints.md, lanes/R10A-tables.json (keys only), EXAM_T9.md, holes/*.json (chain grades and probabilities), holes/DEAD.md. Red team and court files were not opened. SEC EDGAR was not used. No request carried an email or any personal identifier.

## Pass checklist

| Check | Result |
|---|---|
| Every number in the draft traced to a source file | Done. Three items are in no source file (see "In no source file") |
| Recompute with python3 -I | Done. All seven recomputes match (table below) |
| Primary re-fetch of about 12 items | Done for 12 of 14. Two not reached at primary (SWIFT tracker 403, China foreign ministry transcript not on the page). Both marked below |
| Claims stronger than their grade | 7 found |
| P or M items stated as fact | 4 found (GAO confidentiality, mBridge reading, "no longer fund", carry/money fund funding) |
| Dates in the dated tests table | Checked against source files. BoJ 17 to 18 Dec and release dates are from the pathfinders, not re-fetched |
| Dashes, semicolons, emails in the draft | None of concern. One stray empty line "Rules:" at the very end of the draft |
| EDGAR rule | Draft [25.2] correctly says the filing database was not used. Wording fix below |

## Recomputes (python3 -I)

| Item | Draft | Recomputed | Status |
|---|---|---|---|
| Gulf Treasuries rise | 51% | 330.3 / 219.2 minus 1 = 50.7%, rounds to 51% | match |
| 219 to 330 | 219 and 330 | 219.2 (Jan 2023, 111.0 + 64.9 + 43.3) and 330.3 (141.2 + 116.1 + 73.0). Rise 111.1, so "$111 billion" in [24] matches | match |
| Four centres vs Japan plus China | 2.41 vs 1.66 trillion | UK 1009.5 + Belgium 490.5 + Cayman 463.0 + Luxembourg 448.2 = 2411.2. Japan 1068.3 + China 590.7 = 1659.0. Jan 2023 (current vintage) 1539.6 vs 1962.2 | match |
| Foreign official share | 66.5% and 40.2% | 4134.7 / 6218.7 = 66.49% (January 2015). 3755.6 / 9331.7 = 40.25% (August 2026) | match (draft says "2015", it is January 2015. Dec 2015 is 66.6%) |
| BIS vs M2 | 0.63 times | 14.7 / 23.41 = 0.628. With the draft's rounded 15 it is 0.64. Dates differ (BIS end-March 2026, M2 September 2026) | match with caveat |
| 17% chain | five links at 70% | 0.7 to the fifth power = 0.168 | match |
| Japan fall | about $171 billion | 1239.3 (Feb) minus 1068.3 (Aug) = 171.0 | match |

## Primary re-fetch log

| # | Item | What I fetched | Result |
|---|---|---|---|
| 1 | TIC Table 5, August 2026 (Gulf lines, four centres, official share) | ticdata.treasury.gov slt_table5.txt, slt_table3.txt, mfhhis01.txt, fetched 2026-11-12 | Match. Saudi 141.2, UAE 116.1, Kuwait 72.96 (slt_table3), UK 1009.5, Belgium 490.5, Cayman 463.0, Lux 448.2, total 9331.7, official 3755.6 |
| 2 | TIC January 2023 and January 2015 | slt_table3.txt (2023-01), mfhhis01.txt (2015) | Match. Jan 2023 Saudi 111.0, UAE 64.9, Kuwait 43.3, UK 598.0, total 7305.1, official 3703.8. Jan 2015 total 6218.7, official 4134.7 |
| 3 | GAO EMD-79-45 | gao.gov/assets/emd-79-45.pdf (text layer read) | Dated 11 June 1979. Add-on system "in 1974 ... originally offered as part of a bilateral financial package to Saudi Arabia", extended to other OPEC states in 1975 then to all official foreign institutions. OPEC 1.6% of US securities and 4.3% of 1978 add-ons. IMPORTANT: the confidentiality claim is "they assert" (government sources) that Treasury "made special commitments of financial confidentiality to Saudi Arabia and perhaps other OPEC governments". The report says Treasury denies it. The draft states it as fact |
| 4 | May 2016 Saudi release | Press pages (CNBC, CNN, Gulf News, Fiscal Times via search) | 16 May 2016, $116.8 billion at March 2016, first published after Bloomberg FOIA request, Treasury said the timing was unrelated to Saudi warnings. Match. Treasury primary release page not opened |
| 5 | White House fact sheet, November 2025 | whitehouse.gov fact sheet | Dated 18 November 2025. Strategic Defense Agreement signed. "Almost" and "nearly" $1 trillion. Sectors: US infrastructure, technology and industry, linked to minerals, nuclear, AI, defence. No mention of Treasury securities. Draft sector wording is off (see table) |
| 6 | Fed staff note on Cayman undercount | federalreserve.gov FEDS Note, 15 October 2025 | Match. "severely undercount ... by around $1.4 trillion" at end 2024. Note names money market funds as the key repo cash lender in the basis trade |
| 7 | Japan 2026 intervention | mof.go.jp 2026 Q3 page, and a news page for April to May | Q3 total 15,399.3 billion yen (30 July 7,975.6, 31 July 5,552.3, 3 August 1,871.4). April to May 11,734.9 billion yen, a record for that period. Total 27.1 trillion yen. The dollar figure of about $170 billion is the pathfinder's own conversion, no rate is stated in any source |
| 8 | BIS global liquidity | bis.org gli2607 | $14.7 trillion at end-March 2026, loans plus international bonds, owed by non-bank borrowers outside the US. Draft says "$15 trillion" |
| 9 | SWIFT yuan share | swift.com tracker returned 403. PIIE page read instead | PIIE: peak 4.7% July 2024, 2.75% now. "About 3%" is fair. Primary SWIFT not reached |
| 10 | China 28% trade settlement | PIIE page | 28% of goods trade in yuan, first half 2025, "official data". PBoC primary not opened. Match at secondary level |
| 11 | SAMA mBridge exit | Search results on FT report (businesstoday, crowdfundinsider, others). FT original not opened | SAMA said it completed its proof of concept on 13 May 2025 and has not been a member since. FT report 20 September 2026. 16 months checks out. SAMA called the exit planned and FT sources said it would be wrong to read it as US pressure. The draft says no statement exists. Mismatch |
| 12 | 28 February strikes and 2 March closure | Search results | 28 February 2026 strikes confirmed. Closure date is disputed in the sources (one says IRGC announced 28 February, one says official confirmation 2 March, shipping halted by 5 March). Draft "from 2 March" is overstated |
| 13 | China foreign ministry on blockade | Search results. Fmprc transcript not on the page fetched | Spokesman Guo Jiakun, 14 April 2026, "dangerous and irresponsible" (some outlets "dangerous and reckless"). Draft order "irresponsible and dangerous" differs. Primary transcript not reached |
| 14 | Saudi and Iran agreement | mfa.gov.cn joint statement | 10 March 2023, Beijing, talks 6 to 10 March, relations within two months. Match |

## In no source file (or only in a claim I could not trace)

1. [25.0] "every one passed the desk's rule checker" and "no chain could hold more than two guesses in a row or four in all". No checker output is in the files I was given. The 14 chain files exist and none breaks the two-in-a-row or four-in-all caps by my count, but "passed the checker" is not in a source.
2. [25.1] "scored 8 of 9 items on a hidden answer key. The miss was a number for the share of Gulf oil sold to Asia." EXAM_T9.md holds the answer, not a score. "8 of 9" and "no access to the desk's files" appear nowhere I was allowed to read.
3. [21] "China buys more Gulf energy, but it pays mostly in dollars outside its own trade" and "the desk's leading scenario, the dollar extending itself onto new rails". No source file supports China paying mostly in dollars. The files say China's crude imports fell in April 2026 and the Middle East share fell to about 31% in May. The scenario name may sit in the frame file, which I did not read.

## Main table

Status key: match, mismatch, unsupported, overstated. Matches are grouped at the end to save space. Old text is copied from the draft. All fixes are plain text and carry no dashes or semicolons.

| Block | Claim as written | Source file | My check | Status | Fix (old text then new text) |
|---|---|---|---|---|---|
| [18] | "Saudi Arabia's central bank quietly left mBridge ... It points to Saudi Arabia choosing US payment rails, which cuts against a three-way alignment. Whether the exit was a term of the US package is a guess (conjecture, about 20%). The test: any statement by the Saudi central bank of its reasons." | PATHFINDER_B 4.1, H4-03, R10Q-18 | SAMA has already given a reason to the FT (proof of concept completed 13 May 2025, planned exit). FT sources said US pressure reading would be inaccurate. The 20% is one link, the chain is 14% | mismatch, overstated | OLD: "It points to Saudi Arabia choosing US payment rails, which cuts against a three-way alignment. Whether the exit was a term of the US package is a guess (conjecture, about 20%). The test: any statement by the Saudi central bank of its reasons." NEW: "The Saudi central bank told the Financial Times that it finished its proof of concept on 13 May 2025 and has not been a member since, and called the exit planned. People close to the decision said it would be wrong to read it as US pressure. Whether the exit was also a term of the US package is a guess (conjecture, chain about 14%). The test: a later Saudi statement that names US terms." |
| [23] | Last row: "Any statement from the Saudi central bank on leaving mBridge | A technical reason | A reason that names US terms | Open" | R10Q-18, web check | A technical reason has already been given. The row shows it as pending | mismatch | OLD: "Any statement from the Saudi central bank on leaving mBridge" NEW: "Any further Saudi central bank statement on leaving mBridge (the proof of concept reason is already on record)" |
| [0] bullet 3 | "A secret 1974 arrangement did exist: a private Treasury buying window for Saudi Arabia and hidden holdings, documented by a 1979 US government audit." | EXAM_T9 L1, L2, GAO text | The add-on window is documented. The confidentiality pledge is reported by government sources and Treasury denied it. Desk gives L2 90%, not 100% | overstated | OLD: "A secret 1974 arrangement did exist: a private Treasury buying window for Saudi Arabia and hidden holdings, documented by a 1979 US government audit." NEW: "A 1974 arrangement did exist: a Treasury buying window offered to Saudi Arabia, and holdings reported only inside a group total. A 1979 US government audit documents the window and reports government sources saying Treasury also pledged confidentiality, which Treasury denied." |
| [4] row 4 | "Documented, but narrower: a private buying window and hidden holdings, not a treaty on oil prices." | EXAM_T9, GAO | Same as above. Also the window was opened to other OPEC states in 1975 and all official institutions after | overstated | OLD: "a private buying window and hidden holdings, not a treaty on oil prices." NEW: "a buying window (opened to all official holders after 1975) and a reported confidentiality pledge, not a treaty on oil prices." |
| [5] | "The US Treasury let Saudi Arabia buy its bonds outside the public auctions and promised to hide Saudi holdings inside a group total. A US government audit described it in 1979." | GAO p.3 and add-on chapter | "Promised" is stated as fact. GAO says "they assert" and "perhaps other OPEC governments". Treasury denied | overstated | OLD: "and promised to hide Saudi holdings inside a group total. A US government audit described it in 1979." NEW: "through an add-on window offered in 1974 as part of a financial package. Saudi holdings were reported only inside a group total. A US government audit in 1979 reported government sources saying this came with a confidentiality pledge. Treasury denied it." |
| [5] | "until a records request forced their release in May 2016" | EXAM_T9 section 4, press | Bloomberg's records request is the reported trigger. Treasury said the timing was unrelated to Saudi warnings. "Forced" is stronger than the sources | overstated | OLD: "until a records request forced their release in May 2016." NEW: "until Treasury began listing them in May 2016, after a news agency's records request." |
| [5] | "It took a handful of officials, one channel and a clear exchange of money for security." | EXAM_T9 section 7 (secrecy load) | This is the desk's inference (coordination level 2), not a documented count. GAO and Congress were partly aware from 1979 | overstated | OLD: "It took a handful of officials, one channel and a clear exchange of money for security." NEW: "By the desk's reading, it took a handful of officials and one channel, and the exchange was money for security. GAO and Congress were partly aware from 1979." |
| [21] | "China buys more Gulf energy, but it pays mostly in dollars outside its own trade. For now this fits the desk's leading scenario ..." | Not in any source file | No source on how China pays. China's Middle East intake fell in 2026 | unsupported | OLD: "China buys more Gulf energy, but it pays mostly in dollars outside its own trade." NEW: "China is the largest single buyer of Gulf crude, though the 2026 war cut its imports, and no source shows how much Gulf oil is paid in yuan." |
| [21] | "Oil revenue still lands in dollars, still flows into Treasuries" | R10A 1.1 | Gulf Treasury lines are up 51%, but the oil revenue link is inferred, and Saudi is still 23% below its 2020 peak | overstated | OLD: "Oil revenue still lands in dollars, still flows into Treasuries," NEW: "Gulf Treasury holdings are up 51% since January 2023 (Saudi Arabia is still 23% below its 2020 peak)," |
| [0] bullet 4 | "Foreign governments no longer fund the growth of the US Treasury market. Private money does:" | PATHFINDER_A H3-04 L3 (I2, 0.55) | Chain is 47% and inferred. Stated as fact | overstated | OLD: "Foreign governments no longer fund the growth of the US Treasury market. Private money does:" NEW: "Foreign governments appear no longer to fund the growth of the US Treasury market (inferred, about 47%). Private money looks to be doing so:" |
| [10] | "the market leans more on leveraged private money than it did ten years ago" | PATHFINDER_A 3.1 | Sources give 2019 (Z.1) and 2018 (CFTC shorts), not ten years | unsupported | OLD: "than it did ten years ago" NEW: "than it did in 2019" |
| [8] | "The records support the first part, correct the second and refute the third." | R10A 3.1, 3.4 | Custody centres do exceed Japan plus China, but Treasury warns custody is not ownership and private lines may hold official money. "Fund managers" is not shown by TIC | overstated | OLD: "The records support the first part, correct the second and refute the third." NEW: "The records partly support the first part (the custody centres do hold more than Japan and China, but who owns the bonds is not shown), correct the second and refute the third." |
| [9] row 3 | "Much of the cash behind those bonds is lent by US money funds, so offshore holders are partly funded onshore | Documented (Fed staff research)" | PATHFINDER_A H3-01 L4 (I2, 0.55). FEDS note names money funds as the key repo lender in the basis trade | overstated | OLD: "Much of the cash behind those bonds is lent by US money funds, so offshore holders are partly funded onshore" NEW: "Fed staff name US money funds as the key repo cash lenders in the basis trade, so offshore holders look partly funded onshore (inferred)" |
| [9] row 5 | "A real figure from the BIS ... about 0.63 times the US money supply." | PATHFINDER_A R10P-25, 26, 27 | BIS number is $14.7 trillion (end-March 2026), not 15. M2 is 23.4 trillion for September 2026, so dates differ. Ratio 0.628 | overstated | OLD: "A real figure from the BIS, the central banks' own bank, but it is dollar debt owed by borrowers outside the US, about 0.63 times the US money supply." NEW: "A rounded version of a real BIS figure ($14.7 trillion at end-March 2026), but it is dollar loans and bonds owed by non-bank borrowers outside the US, about 0.63 times US M2 (23.4 trillion, September 2026)." |
| [9] row 4 | "close to the size of its record yen-buying intervention" | PATHFINDER_A R10P-21, 22 | Two rounds: 11.7 trillion yen (April to May, a record for that period) and 15.4 trillion yen (30 July to 3 August). Total 27.1 trillion yen. The $170 billion conversion is not sourced | overstated | OLD: "close to the size of its record yen-buying intervention." NEW: "close to the roughly $170 billion (desk conversion, no rate stated) Japan spent on yen-buying in two rounds, April to May and late July to early August." |
| [9] row 2 | "Foreign governments held 66.5% of foreign-owned Treasuries in 2015" | R10A Hole 2 | The figure is January 2015 | mismatch (minor) | OLD: "in 2015 and 40.2% in August 2026" NEW: "in January 2015 and 40.2% in August 2026" |
| [4] row 1 | "near 5.4 million barrels a day from the Middle East, about a third of what passes Hormuz" | PATHFINDER_A R10P-01, 04, 05 | 5.4 is Kpler 2025 seaborne, Iran included, T3 secondary. 14.5 is EIA 2024. Ratio 37%. Not all Middle East crude passes Hormuz | overstated | OLD: "near 5.4 million barrels a day from the Middle East, about a third of what passes Hormuz." NEW: "near 5.4 million barrels a day from the Middle East in 2025 (tanker tracker via press, Iran included), roughly 37% of the 14.5 million that passed Hormuz in 2024 (US energy agency)." |
| [6] | "Saudi pledges of close to $1 trillion of investment in the US, aimed at companies, arms and technology" | PATHFINDER_A R10P-16, fact sheet | Fact sheet: US infrastructure, technology and industry, linked to minerals, nuclear, AI and defence | mismatch | OLD: "aimed at companies, arms and technology." NEW: "aimed at US infrastructure, technology and industry." |
| [17] row 4 | "A staged war would need thousands of people across several governments to stay silent for over a year" | PATHFINDER_B 4.6 | War began 28 February 2026, so about 8.5 months by 12 November | mismatch | OLD: "to stay silent for over a year" NEW: "to stay silent for many months" |
| [17] row 4 | "Hormuz closed from 2 March, and China called the US blockade irresponsible and dangerous." | R10Q-15, R10Q-16 | Closure date disputed (28 February vs 2 March vs shipping halted by 5 March). Chinese wording is "dangerous and irresponsible" per most reports, 14 April 2026. Both T2 or T3 | overstated | OLD: "Hormuz closed from 2 March, and China called the US blockade irresponsible and dangerous." NEW: "Hormuz traffic stopped in early March, and on 14 April China's foreign ministry called the US blockade of Iranian ports dangerous and irresponsible." |
| [17] row 5 | "banks and investors sold bonds before the tariff pause, warned of recession and joined the court challenge" | PATHFINDER_B R10Q-23, 24 | The court challenge came from the US Chamber of Commerce and the Consumer Technology Association, not banks. One bank chief executive called recession likely | mismatch | OLD: "But banks and investors sold bonds before the tariff pause, warned of recession and joined the court challenge." NEW: "But bond investors sold before the tariff pause, one bank chief executive called recession likely, and business groups asked a court to strike the tariffs." |
| [13] row 4 | "Crisis behaviour in 2015, 2020 and 2022" | PATHFINDER_B 2.3 | Sealed predictions were 2008, 2020, 2022. 2008 was not coded. 2015 only appears as China's share buying | mismatch | OLD: "Crisis behaviour in 2015, 2020 and 2022" NEW: "Crisis behaviour in 2020 and 2022 (2008 not coded, China's 2015 share buying is the third case)" |
| [14] | "only 6 of 19 countries had full data" | PATHFINDER_B 2.1, 2.2 | Table scores five countries (US, UK, Japan, China, Saudi) while the text says 6. Central bank and bank shares not pulled for most, so "full" is wrong | mismatch | OLD: "only 6 of 19 countries had full data" NEW: "holder data was pulled for only 5 or 6 of 19 countries (the source files disagree) and only the foreign share was scored" |
| [14] | "Likelihood that it adds information: about 25%" | H2-01 | 25% is the single link. The chain is 0.8%. Not an error, but say which | overstated (minor) | OLD: "Likelihood that it adds information: about 25%." NEW: "Likelihood that it adds information: about 25% (the full chain of links is under 1%)." |
| [1] | "Anything under 10% is shown as an open question, not a finding." | PATHFINDER_A 1.2 | Pathfinder A uses under 20% (H1-02 at 17% is an open question). The draft's own items at 14% and 17% are shown as tests | mismatch | OLD: "Anything under 10% is shown as an open question, not a finding." NEW: "Anything under 20% is shown as an open question, not a finding." |
| [25.0] | "Fourteen chains were dug, and every one passed the desk's rule checker." | holes/*.json | 14 chain files confirmed. "Passed the checker" not in any source | unsupported | OLD: "Fourteen chains were dug, and every one passed the desk's rule checker." NEW: "Fourteen chains were dug." |
| [25.1] | "a separate agent sat a blind exam ... scored 8 of 9 items on a hidden answer key. The miss was a number for the share of Gulf oil sold to Asia." | EXAM_T9.md | No score, key or "no access to the desk's files" statement in the file | unsupported | OLD: "It found the 1979 audit and the 2016 release on its own and scored 8 of 9 items on a hidden answer key. The miss was a number for the share of Gulf oil sold to Asia." NEW: "It found the 1979 audit and the 2016 release from fresh sources." (restore the score only if the desk log shows it) |
| [25.2] | "a Fed update of the Cayman estimate for 2026 (not published)" | holes/DEAD.md | Source says none found, not that none exists | overstated | OLD: "(not published)" NEW: "(none found)" |
| [24] | "Holdings booked through London, Belgium or other custodians would not show under the Gulf names, so the true size could be larger." | R10A 0.4, 3.2 | Treasury says this in its own notes. "Could" is the right hedge | match | none |
| end | Stray empty line "Rules:" | DRAFT_R10.md last line | Formatting only | mismatch (minor) | OLD: "Rules:" NEW: (delete) |

### Matches (no fix)

| Block | Claim | Source | Check |
|---|---|---|---|
| [0], [24] | Gulf $330 billion Aug 2026 vs $219 billion Jan 2023, up 51%, rise $111 billion | R10A 1.1, TIC | match |
| [0], [4] | 28% of China's trade settled in yuan, early 2025 | R10P-09, PIIE | match (secondary, first half 2025) |
| [4] row 2 | Yuan about 3% of SWIFT payments | PIIE 2.75%, R10A snippet 3.13% | match, SWIFT primary 403 |
| [4] row 1 | Asia takes 84% | EIA R10P-01 | match (84% of Hormuz crude, 2024) |
| [4] row 3 | Gulf up 51% and Norway same shape, Saudi shares up | R10A 1.2 | match (Saudi equities 57 to 215) |
| [5], [4] | 1979 audit, secrecy about 41 years, ends May 2016 | GAO, press | match |
| [4] row 4 | "Nothing expired in June 2024" | EXAM_T9 | match |
| [6] | November 2025 defence agreement, nearly $1 trillion, no Treasury purchases named | Fact sheet | match |
| [6] | Iran war and Hormuz cut Gulf flows to China in 2026 | R10P-07 | match (April 2026 imports lowest since July 2022) |
| [9] row 1 | 2.41 vs 1.66, reversed in Jan 2023 | R10A 3.1 | match |
| [9] row 2 | 66.5% and 40.2% | R10A Hole 2 | match (see January 2015 note) |
| [9] row 3 | Cayman undercount about $1.4 trillion, end 2024 | FEDS note 15 Oct 2025 | match |
| [9] row 4 | Japan fall about $171 billion Feb to Aug 2026 | TIC | match |
| [13] | 4 of 5 vs 4 of 5, same three central banks | PATHFINDER_B 2.3 | match |
| [17] | 10 March 2023 Saudi and Iran agreement | MFA statement | match |
| [17] | Pledges May and November 2025 | R10Q-14, fact sheet | match |
| [17] | 28 February 2026 strikes | search | match |
| [18] | 13 May 2025 exit, reported September 2026, 16 months | search, SAMA via FT | match |
| [1] | 17% chain | recompute | match |
| [23] | Test thresholds and dates (300, 280, half of imports, 5%, 6%, 10%, 30%) | PATHFINDER_A 1.6, 3.6, EXAM T-a | match. BoJ 17 to 18 December and 20 November customs date not re-fetched |
| [25.0] | Fourteen chains, four rival readings | holes/*.json | match |

## Grade and wording audit

| Item | Draft grade or word | Issue |
|---|---|---|
| [4] row 1 "Footprint" | China about a third | Tanker and customs data via press only (T3). Acceptable if "via press" stays |
| [4] row 2 "Structural" | 30% yuan | Fine. The "likely origin" of the 28% is I2 at 45%. Wording "likely" is slightly strong, use "possible origin" |
| [9] row 4 "Structural" | Japan intervention | Pathfinder I1, 70%, fine |
| [12] and [14] | Lens test | Chain 0.8%. Draft says "predicted nothing the plain lens did not". Fine as a low confidence finding |
| [18] | "documented hidden act" (in source) | Draft avoids this phrase. Keep it out |
| [19] | "Real hidden deals ... left marks and were later documented" | Fine, no number |
| P and M items stated as fact | GAO confidentiality [0], [4], [5]. mBridge reading [18]. Funding claim [0]. Money fund repo [9] | Fixed in the table |

## The five most important fixes

1. mBridge [18] and [23]. SAMA has already told the FT it finished its proof of concept on 13 May 2025, called the exit planned, and sources said US pressure is the wrong reading. The draft says the reason is unknown and leans the other way. Rewrite and update the dated test.
2. GAO confidentiality in [0], [4] and [5]. The audit reports government sources asserting a pledge, and Treasury denied it. The draft says Treasury "promised". Hedge it in all three blocks. The add-on window itself is solid.
3. Unsupported process claims in [25.0] and [25.1]: "passed the rule checker" and "8 of 9 on a hidden answer key". Neither is in any source file. Cut them or restore them from the desk log.
4. [21] "China pays mostly in dollars" has no source and sits against the 2026 import fall. Replace with the sourced sentence, and check the "leading scenario" name against the frame file.
5. [17] errors: banks did not join the court challenge (business groups did), the war has run about 8.5 months not "over a year", the Hormuz closure date is disputed, and the Chinese wording and date should be exact. Also fix [13] (2015 vs 2008) and [14] (5 or 6 of 19 countries).

## Open items for another pass

- SWIFT tracker from swift.com (403 here). PBoC primary for the 28% figure. Treasury's own May 2016 release page. China foreign ministry transcript for 14 April 2026. FT original on mBridge. Fed H.4.1 and BoJ meeting dates not re-fetched.
- The 15 trillion claim has no pairing date. A BIS end-September 2026 reading is due late January 2027.
