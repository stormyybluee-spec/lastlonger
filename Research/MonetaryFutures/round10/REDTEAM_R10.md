# Round 10 red team: ls-14 "Behind the curtain" (blind)

Written 2026-11-12 by the blind red team. Read: round10/DRAFT_R10.md, round10/FRAME_R10.md, round10/OWNER_R10.md, PLAN 2C, 4.5 Move 7, 4.7, round10/holes/*.json and DEAD.md, engine/BASE_RATES.md. Not read: the verifier's file, the Pathfinder reports, any court file.

How to use this file. Each point names the block, the problem and a fix. Every "Old" text was copied from the draft and checked to occur exactly once (script at the end). "New" text uses plain English, no em-dashes, no en-dashes and no semicolons. Where two points touch the same block, the later point says "apply after" the earlier one.

Fetches used (6 searches, no personal identifiers sent):
- F1. PBoC and Saudi central bank swap line: 50 billion yuan (26 billion riyals, about $7 billion), three years, signed 20 November 2023 (SAMA news-994, China Daily, Reuters via BNN Bloomberg). Reuters noted traders said Saudi Arabia had not yet used yuan for oil.
- F2. Fed reserve management purchases: FOMC decision 10 December 2025, about $40 billion a month of bills from 12 December 2025 (New York Fed operating policy statement 251210a and FAQ).
- F3. Iranian oil relabelled as Malaysian: Kpler, via press, about 1.38 million barrels a day of Iranian oil to China in 2025, about 13.4% of China's seaborne imports. China customs show zero imports from Iran and more "Malaysian" crude than Malaysia produces (about 0.5 million barrels a day). Imports labelled Malaysian peaked in March 2025, then shifted toward "Indonesian".
- F4. US and Saudi Strategic Defense Agreement, November 2025: White House fact sheet only. ABC News reported very few details had emerged. No published text found (absence, one search).
- F5. Russia was 17.5% of China's oil imports in the first half of 2025 and 19.6% in 2024. Russia's finance minister said over 99% of bilateral trade is settled in roubles and yuan.
- F6. The May 2016 Saudi release followed a Bloomberg records request. Bloomberg's own follow-up and Saudi press said the figure may not include all holdings.

---

## A. Blocking points, ranked

### B1. Block [0] bullet 5 turns "level 0 shown" into "no hidden deal". This is the exact failure the frame's pre-mortem named (FRAME 4.8, row 1), and it breaks the draft's own rule in [1]
Problem. The hole files grade the secret plan at 3% (H4-01 L6, H4-04 L7, both I4 0.03). The draft prints "About 1%" twice in [17], which matches no hole file. The pre-mortem said: report the level shown and the level claimed separately, and say what public data cannot see. Bullet 5 says the evidence supports "not a hidden deal", which is a finding drawn from a chain under 10%. Block [1] says such chains are shown as open questions. H4-02 and H4-03 also put the level at 1 (Hormuz as a public cue), not 0.

Fix 1.
Old:
> The claim that the US, the Gulf and China are secretly aligned found no channel, no enforcement and real costs on every side. The evidence supports shared interests (level 0), not a hidden deal.

New:
> The claim that the US, the Gulf and China are secretly aligned found no channel and no enforcement, and real costs fell on every side. What the public record shows is shared interests (level 0) and one public cue, safe passage through Hormuz (level 1). A deniable deal (level 2) is not shown, and public data could miss a small one. The desk grades a three-way secret plan as remote, about 3%, and keeps it as an open question with dated tests.

Fix 2.
Old:
> Not shown. About 1% |

New:
> Not shown. About 3% (remote). An open question, not a finding |

Fix 3.
Old:
> Dead end. About 1% |

New:
> Not shown. About 3% (remote). Kept as an open question |

### B2. Block [16] and [17]: the rival reading tested is a strawman ("the war is staged"), and the strongest evidence for some coordination is left out
Problem. The table knocks down the extreme form (a staged war needing thousands of silent people). The fair form of "aligned behind the scenes" is a few quiet understandings on single items (shipping lanes, oil sales, payment rails) while the conflict is real. Hole H4-02 L3 has the 17 May 2026 Trump and Xi summit, where the White House says the two sides discussed Iran and Hormuz and set up a Board of Trade and a Board of Investment. That row is missing from the draft, and it is the one fact that leans toward the coordination reading. Leaving it out favours the official reading. The secrecy load argument also cuts less than the draft implies: engine/BASE_RATES.md row 2 and section C record standing arrangements kept by small groups for decades.

Fix 1.
Old:
> The desk split each into parts with named actors and checked what each part would have to leave behind.

New:
> The desk split each into parts with named actors and checked what each part would have to leave behind. The strongest form of the claim is not a staged war. It is a few quiet understandings on single items, such as shipping lanes, oil sales or payment systems, while the public conflict is real. That form is harder to rule out, so the table tests it row by row.

Fix 2.
Old:
> | China brokered a Saudi and Iran agreement | True, 10 March 2023 | Documented |

New:
> | China brokered a Saudi and Iran agreement | True, 10 March 2023 | Documented |
> | The US and Chinese leaders talked about Iran and Hormuz in private | True. After the 17 May 2026 summit the White House said the two sides discussed Iran, Hormuz and North Korea and set up a Board of Trade and a Board of Investment. What they said on Iran was not published | Documented that they talked. Any quiet understanding on Hormuz shipping is conjecture, to be graded with a test: whether Chinese-bound tankers passed Hormuz on different terms from others |

### B3. Inferred links are printed as "Documented" in four places, and one likelihood is stronger than its own grade
Problem. PLAN 4.7: an inferred claim always shows its grade. The hole files grade these links I2 (structural), yet the draft labels them Documented:
- [4] row 3: "instead fails" is H1-03 L4, I2 at 55%. So the specimen's swap claim is about even (45%), not "unlikely" (15 to 40%).
- [9] row 2: "states no longer fund the growth" is H3-04 L3, I2 at 55%.
- [9] row 3: "US money funds lend the cash" is H3-01 L4, I2 at 55%. The split of money fund lending by borrower was not pulled.
- [9] row 5: "not twice the money supply" is H3-03 L3, I2 at 60%. The larger BIS measure (dollar debt inside currency swaps) was not fetched.
- [0] bullet 2 says the 30% "most likely" comes from China's own trade. H1-02 L2 gives that 45%, which is "about even".
- [9] row 4 says Structural. H3-02 L3 is I1 (footprint) at 70%.

Fix 1 ([4] row 3).
Old:
> | Documented (US Treasury data) | Unlikely as a swap |

New:
> | Holdings documented (US Treasury data). The reading that there was no swap is structural, about 55% | About even for single funds, unlikely for each state as a whole. Confidence medium |

Fix 2 ([9] row 2, also carries point V1).
Old:
> | Who is growing | Foreign governments held 66.5% of foreign-owned Treasuries in 2015 and 40.2% in August 2026. The growth came from private buyers: US money market funds, hedge funds and private foreigners | Documented (US Treasury and Fed data) |

New:
> | Who is growing | Foreign governments held 66.5% of foreign-owned Treasuries in 2015 and 40.2% in August 2026. The growth came from US money market funds, hedge funds, private foreigners and the US central bank, which bought heavily in 2020 and 2021 and went back to buying short-term bills in December 2025 | Shares documented (US Treasury and Fed data). That these buyers replaced states is structural, about 55% |

Fix 3 ([9] row 3).
Old:
> | Documented (Fed staff research) |

New:
> | Undercount documented (Fed staff research). That US money funds lend much of the cash is structural, about 55%. Their lending was not split by borrower, and part goes to dealers |

Fix 4 ([9] row 5 and [8]).
Old:
> | Documented (BIS) |

New:
> | Figure documented (BIS). A second BIS measure, dollar debt hidden inside currency swaps, is far larger and was not checked. So the claim is corrected, not refuted, structural about 60% |

Old:
> The records support the first part, correct the second and refute the third.

New:
> The records support the first part and correct the second. The third mixes up debt and money, but one larger BIS measure was not checked, so it stays open.

Fix 5 ([9] row 4).
Old:
> That fits defending the yen better than an unwinding carry trade | Structural |

New:
> That fits defending the yen better than an unwinding carry trade. Part of the fall may be lower prices, since US yields rose near 5% | Footprint, about 70%. Next check: Japan's reserve data |

Fix 6 ([0] bullet 2, also carries point B5).
Old:
> That number most likely comes from China's own trade, 28% of which was settled in yuan in early 2025.

New:
> It is a China number, not a Gulf one. It may come from China's own trade, 28% of which was settled in yuan in early 2025 (structural, about 45%). Or it may come from oil China buys from Russia and Iran, much of it paid in yuan, which made up roughly 30% of China's crude imports in 2025 (press estimates, to verify).

### B4. Overcorrection in [0] bullet 1 and [21]: "still put oil money into Treasuries" replaces one simple story with another
Problem. The hole files hold facts against the clean version, and the draft drops them all:
- Saudi Treasury holdings fell from $160.4 billion to $141.2 billion from February to August 2026, during the Hormuz crisis, and sit 23% below their February 2020 peak (H1-03 L1, H1-04 L4).
- In the annual survey, UAE holdings of long-term US debt fell from $57 billion to $43 billion while its US shares rose from $89 billion to $231 billion (June 2018 to June 2025, H1-03 L2). For the UAE that is close to the specimen's "instead".
- PIF's own filed US share book fell from $56.7 billion (end 2021) to about $12 billion (March 2026) (H1-03 L3). So "they bought shares on top" is not true of the best known fund.
- Accountant's point: "oil money" is not shown. Saudi Arabia borrows abroad heavily: 38% of its direct government debt was external at end 2025 (H2-01 L2). A rise in Treasury holdings can be funded by borrowing, not oil.
The specimen got something right: some Gulf money did move from bonds to shares at the fund level. The overcorrection guard (Move 7) asks the draft to say so.

Fix.
Old:
> - Gulf states still put oil money into US Treasuries. Saudi Arabia, the United Arab Emirates (UAE) and Kuwait held $330 billion in August 2026, up from $219 billion in January 2023. The claim that they buy US shares instead does not hold: they bought shares on top, as Norway's oil fund did.

New:
> - Gulf states hold more US Treasuries than in 2023. Saudi Arabia, the United Arab Emirates (UAE) and Kuwait held $330 billion in August 2026, up from $219 billion in January 2023. But Saudi holdings fell $19 billion during the 2026 Hormuz crisis, and not all of the money is oil money: Saudi Arabia also borrows abroad. Their US share holdings rose too, partly from price gains, as Norway's oil fund did. A straight swap of bonds for shares is not shown for the states as a whole. For single holders the specimen has a point: the UAE's long-term US debt fell while its US shares rose.

### B5. Block [4] row 2: the yuan row misses the likeliest real source of yuan oil money, and reads SWIFT as if it were the whole picture
Problem. SWIFT data miss payments sent through China's own cross-border system (CIPS), so 3% on SWIFT is a floor. China's yuan-paid oil comes largely from sanctioned sellers: Russia (about 17.5% to 19.6% of China's oil imports, F5) and Iran (about 13% of its seaborne imports, F3). Together that is near 30% of China's crude, much of it paid in yuan. That is a fairer origin for the specimen's number than the 28% trade figure alone. The draft also omits a documented piece of Gulf yuan plumbing the hole missed: the Saudi central bank's 50 billion yuan swap line with China's central bank (F1). The dead-end ledger says "PBoC swap with SAMA not found in one search". It exists.

Fix.
Old:
> | No source found. The yuan is about 3% of world payments on SWIFT, the main messaging network banks use for cross-border payments. China settles 28% of its own goods trade in yuan, the likely origin of the number | Structural |

New:
> | No source found. The yuan is about 3% of world payments on SWIFT, a messaging network banks use for cross-border payments. SWIFT misses payments sent through China's own system, so 3% is a floor. Two possible origins of the 30%: China settles 28% of its own goods trade in yuan, and oil from Russia and Iran, much of it paid in yuan, was roughly 30% of China's crude imports in 2025. Saudi Arabia's central bank does hold a 50 billion yuan (about $7 billion) swap line with China's central bank, signed in November 2023 | Structural, origin about 45% |

Also correct DEAD.md line 5 in the next round (not edited here): the SAMA swap line is public (SAMA news-994, 20 November 2023).

### B6. Block [19] uses survivorship as an argument, and the chapter never states the base rate the owner's brief requires
Problem. "Real hidden deals ... left marks and were later documented" counts only the deals that came out. Deals that never came out are, by definition, not on the list. That is the owner's Case 3 point. PLAN 2C.4 (last row) and FRAME 4.3 item 5 require the once-secret base rate (engine/BASE_RATES.md) to set the prior. The chapter never states it. The block also uses "never" twice and "wrong" (word audit).

Fix 1.
Old:
> Myth: Whatever the official story says, the opposite is what is really happening.

New:
> A tempting rule: Whatever the official story says, the opposite is what is really happening.

Fix 2.
Old:
> Reality: That rule can never be wrong, so it can never be tested: it would turn China's public condemnation of the blockade into proof of a secret alliance. The desk logs rules like this and does not use them. Real hidden deals, like the 1974 Treasury window, left marks and were later documented.

New:
> Reality: No event could prove that rule false, so no test can check it. It would turn China's public criticism of the blockade into proof of a secret alliance. The desk logs rules like this and does not use them. That does not make secrets rare. In the desk's list of 11 once-secret cases, standing arrangements run by small groups stayed hidden for decades, like the 1974 Treasury window (about 41 years). We only know about the ones that came out. So the desk treats a small, quiet arrangement as possible, and looks for its marks instead of assuming it away.

### B7. Block [21]: the closing reading on "will energy replace money?" is not earned
Problem. The chapter tested the currency oil is paid in. It did not test whether energy itself acts as money, and it found no evidence about "new rails" for the dollar (no stablecoin or tokenised payment data). "Still flows into Treasuries" ignores the 2026 Saudi fall (B4). "Pays mostly in dollars outside its own trade" has no number in any hole file. Saudi Arabia left mBridge, but the UAE's central bank stays in it (H4-03 L2), and both Gulf central banks have yuan swap lines. The nearest thing to energy as money today, sanctioned oil paid in yuan or swapped for goods, grew where the dollar was blocked. The hard-money critic adds that central banks moved reserves toward gold, which the chapter did not check.

Fix.
Old:
> Energy trade has not pulled Gulf money off the dollar. Oil revenue still lands in dollars, still flows into Treasuries, and Saudi Arabia stepped back from a shared payment system with China in 2025. China buys more Gulf energy, but it pays mostly in dollars outside its own trade. For now this fits the desk's leading scenario, the dollar extending itself onto new rails, rather than an energy-backed rival. This is a reading of the evidence, not a forecast, and the dated tests below would change it.

New:
> The evidence so far does not show energy trade pulling Gulf money off the dollar. Gulf oil is still priced in dollars, and Gulf Treasury holdings are higher than in 2023, though Saudi holdings fell during the 2026 Hormuz crisis. The Gulf is split on new payment systems. Saudi Arabia's central bank left mBridge in 2025, while the UAE's central bank stays in it, and both hold yuan swap lines with China. The largest known oil trade paid outside the dollar is sanctioned oil from Russia and Iran sold to China in yuan. That is the closest thing to energy acting as money today, and it grew where the dollar was blocked, not where it was free. This chapter tested the currency of payment, not whether energy itself becomes money, and it did not check gold. So it gives only weak support (low confidence) to the desk's leading scenario of the dollar extending onto new rails. This is a reading, not a forecast, and the dated tests below would change it.

### B8. Blocks [13] and [14]: the lens test counts do not match, and "predicted nothing" is stronger than five countries allow
Problem. [13] scores "4 of 5". [14] says "6 of 19 countries had full data". The hole files show holder data for five (US, UK, Japan, China, Saudi Arabia) and no 2008 coding (H2-01 L3, L5, H2-02 L4). With five countries neither lens can beat the other, so "not yet shown" is the honest result. Row 2 also says crisis bond buying follows reserve currency status, but in 2020 several emerging central banks bought government bonds (Bank Indonesia under a burden-sharing deal is the clearest case). That weakens the plain lens too. A Malaysian reader will know Bank Negara Malaysia also bought government bonds in 2020 (verifier to confirm the size before adding it).

Fix 1.
Old:
> | Same three, because all issue reserve currencies |

New:
> | Same three. But in 2020 several emerging central banks, such as Bank Indonesia, also bought their governments' bonds, so reserve currency status is not the whole story |

Fix 2.
Old:
> Confidence is low, because only 6 of 19 countries had full data, so the test continues on the rest.

New:
> Confidence is low. Debt holder data covered 5 of the 19 countries sorted in advance (the US, the UK, Japan, China and Saudi Arabia), and the 2008 crisis was not coded. With 5 countries neither lens can beat the other, so the result is "not yet shown", not "adds nothing". The test continues on the other 14, with the next data due in mid December 2026.

### B9. Block [0] bullet 4: the US central bank and American holders are missing from "who funds the market"
Problem (New York Fed open market desk voice). Foreigners hold about 32% of Treasuries (H3-04 L1), so Americans hold about two thirds. The Fed holds about $4.08 trillion and went back to buying bills, about $40 billion a month, from December 2025 (F2). A reader of bullet 4 would think foreign custody centres and hedge funds carry the market. "Custodians" is also undefined for an 18-year-old.

Fix.
Old:
> - Foreign governments no longer fund the growth of the US Treasury market. Private money does: US money market funds, hedge funds (lightly regulated funds that often borrow to trade) and buyers whose bonds are held by custodians in London, Belgium and the Caymans.

New:
> - Americans hold about two thirds of US government debt. Since 2019 foreign governments have not funded its growth (structural, about 55%). The growth came from US money market funds, the US central bank (which went back to buying short-term bills, about $40 billion a month, from December 2025), hedge funds (lightly regulated funds that often borrow to trade) and buyers whose bonds sit with custodians (banks that hold assets for clients) in London, Belgium and the Caymans.

### B10. Inferred claims with no date, or no grade
Problem. PLAN 4.7: every inferred claim shows a grade and a reveal date. Gaps: the mBridge test in [18] and [23] says "Open". The lens's 25% in [14] has no test row in [23]. Block [10] states "level 0" with no grade. Block [6] calls the 2025 exchange "not a secret", but no text of the defence agreement has been published (F4), so part of it is unseen.

Fix 1 ([23] mBridge row).
Old:
> | A technical reason | A reason that names US terms | Open |

New:
> | A technical reason | A reason that names US terms | Desk review by 30 November 2026 (the Financial Times report and the May 2025 fact sheet text), then each Saudi central bank annual report |

Fix 2 ([23], new rows for the lens and for gold; append after the Aramco row).
Old:
> | Saudi Aramco annual report for 2026 | No yuan share disclosed, or under 10% | A disclosed yuan share near 30% | March 2027 |

New:
> | Saudi Aramco annual report for 2026 | No yuan share disclosed, or under 10% | A disclosed yuan share near 30% | March 2027 |
> | Debt holder data for the other 14 countries in the lens test | The plain lens predicts as well as the three kinds | The three kinds lens gets clearly more right | Japan and US data mid December 2026, the rest next round |
> | Central bank gold buying, quarterly survey | Gulf central banks add little gold | A Gulf central bank reports large gold buying while its Treasuries fall | Next quarterly release |

Fix 3 ([6]).
Old:
> A public exchange of security for money is coordination in the plain sense, but it is not a secret.

New:
> A public exchange of security for money is coordination in the plain sense. It is only partly public: the White House published a fact sheet, but the desk found no published text of the defence agreement itself (one search, November 2026). So its full terms are unseen, and a Treasury clause is not ruled out, only not found.

Fix 4 ([10]).
Old:
> That is level 0 on the coordination scale: shared incentives, no agreement.

New:
> That is level 0 on the coordination scale: shared incentives, no agreement found (structural, about 55%, next check in the September data due about 18 November 2026).

---

## B. Nine voices (Move 7)

| Voice | Most important miss or misstatement | Where fixed |
|---|---|---|
| V1. New York Fed open market desk | The Fed is left out of "who funds the market", although it holds about $4.08 trillion and resumed bill buying in December 2025. Also: Iraq, China's second largest Gulf supplier, keeps its oil revenue in an account at the New York Fed, and the US limited dollar transfers to Iraq in 2023. That is a documented, public lever over oil dollars, the kind of enforcement the chapter says it could not find | B9, B3 Fix 2. Iraq lever: add to [6] (fix V1 below) |
| V2. Treasury debt manager | "Who funds" depends on what the Treasury chooses to sell. More bills means more money fund buying. The strain shows in price (10-year near 5%), not in a missing buyer. Auction allotment data by investor class are free and were not pulled | Fix V2 below |
| V3. Bond trader | Treasury tables are at market value. With yields near 5%, falls in holdings (Japan, Saudi) are partly price, not selling. The 51% Gulf rise mixes the old frozen January 2023 file with the new table (FRAME section 0). The verifier should confirm the two series use the same valuation before "51%" is printed | B3 Fix 5. Verifier check |
| V4. Bank treasurer | A Gulf state is several balance sheets. The central bank holds safe dollar assets for the peg (bills, deposits), the funds hold long-term assets. The frame's pre-mortem (1.8 row 3) asked for them to be drawn apart. The draft treats "the Gulf" as one holder | Fix V4 below |
| V5. Accountant | Stocks are not flows, and "oil money" is not shown: Saudi Arabia borrows abroad, so Treasury holdings can be debt-funded. Price changes are mixed with buying in the share figures | B4 |
| V6. Economic historian | Hidden for "41 years" is the holdings, not the arrangement: the 1979 audit was public. The 2016 release came after a Bloomberg records request and was itself questioned as incomplete (F6). The dollar's oil role in the 1970s also rested on Saudi choices, such as resisting OPEC's mid-1970s talk of pricing in a basket of currencies (to verify before use). "No treaty" is right, "nothing there" is not | Fix V6 below |
| V7. Post-Keynesian or MMT critic | "Fund the US deficit" treats the US like a household. The US pays in dollars it issues. Gulf dollars must sit in some dollar asset (a deposit, a bill, a share) unless sold, and a sale passes them to someone else. The real question is which asset, at what price | Fix V7 below |
| V8. Hard-money critic | The chapter tests the yuan and ignores gold, where many central banks moved reserves after 2022. It also leaves out the Fed's own bill buying, which hard-money critics call quiet money printing | B7, B9, B10 Fix 2 |
| V9. Ordinary reader (Malaysia) | Will read bullet 5 as "no secrets". Also misses the hidden oil flow next door: China's customs record more crude "from Malaysia" than Malaysia produces, because Iranian oil is moved between ships off the Malaysian coast and relabelled (F3). That is a real hidden flow with public marks, and it fits the chapter's method perfectly | B1, Fix V9 below |

Fix V1 ([6], apply after B10 Fix 3).
Old:
> So 2026 numbers carry a shock on top of any trend.

New:
> So 2026 numbers carry a shock on top of any trend. The US does hold one public lever over oil dollars: Iraq's oil revenue is kept in an account at the Federal Reserve Bank of New York, and in 2023 the US limited dollar transfers from it. A lever like that works in the open, with no secret deal needed.

(Verifier: confirm the Iraq account and the 2023 limits with a fetched source before publishing. Not fetched here.)

Fix V9 ([6], apply after Fix V1, so the old text is the new last sentence of Fix V1).
Old:
> A lever like that works in the open, with no secret deal needed.

New:
> A lever like that works in the open, with no secret deal needed. One hidden flow is close to home for readers in Malaysia. Tanker trackers count about 1.4 million barrels a day of Iranian oil reaching China in 2025, much of it moved between ships off Malaysia and labelled Malaysian. China's customs show no oil from Iran at all. Nobody announced it, yet its marks are in the numbers.

Fix V2 ([10]).
Old:
> which matters on days when that money needs cash at once.

New:
> which matters on days when that money needs cash at once. It also depends on the US Treasury's own choices: when it sells more short-term bills, money funds buy more of the debt. The sign of strain is the price, not a missing buyer. The 10-year yield was near 5% in October 2026.

Fix V4 ([3]).
Old:
> Each part leaves marks in public records, so each part can be checked.

New:
> Each part leaves marks in public records, so each part can be checked. One warning first: a Gulf state is several balance sheets. Its central bank holds safe dollar assets to back the currency peg. Its sovereign funds hold long-term investments. A claim can be true for a fund and false for the central bank.

Fix V6 ([5]).
Old:
> The holdings stayed hidden for about 41 years, until a records request forced their release in May 2016.

New:
> The arrangement itself was described in public in 1979, but Saudi holdings stayed hidden for about 41 years. The US Treasury released them in May 2016 after a records request by a news agency. Even then, analysts said the figure might not include holdings kept with custodians in other countries.

Fix V7 ([10]).
Old:
> No state was found agreeing to fund the US deficit.

New:
> No state was found agreeing to fund the US deficit. "Funding" here means choosing which dollar asset to hold. The US pays in dollars it issues, so the question is who holds its debt and at what price, not whether the money runs out.

---

## C. Unseen mode audit (PLAN 4.7)

| Rule | Verdict | Points |
|---|---|---|
| Every inferred claim graded and dated | Fails in [0], [9], [10], [14], [18], [21]. Grades missing or upgraded to Documented. mBridge and lens tests undated | B3, B10 |
| Chains under 10% not shown as findings | Fails in [0] bullet 5. The 1% figures match no hole file (holes say 3%) | B1 |
| Rival readings fair | Only the extreme form of coordination is tested. The May 2026 summit is left out. Rival origins of the 30% miss Russia and Iran | B2, B5 |
| Coordination level argued, not asserted | Argued in the hole files, asserted in the draft: [0] says level 0, [17] says 0 with a level 1 cue, H4-02 and H4-03 say level 1. One number should be used everywhere: level 1 shown, level 2 not shown | B1 |
| Nothing inferred stated as documented | Four table cells | B3 |
| Base rate stated | Missing | B6 |
| Rival readings shown to the reader | The four-reading tables exist in the hole files but no reader sees one. At least one should appear, in the go-deeper box (Hole 4), with the inconsistent-evidence counts | Section G |
| The [26] promise "every inferred point is labelled as inferred" | Untrue until B3 and B10 are applied | B3, B10 |

---

## D. The opposite failure (owner's Case 3): where the draft closes doors too fast

Ranked by how much a hidden reading was underdug.

1. H1-04, the 1974 arrangement and what is left (1 search). The draft says "What is left today is public". The search behind that was one query. The 2016 figure was questioned as incomplete at release (F6), and the 2025 defence agreement text is not published (F4). Footprint that would settle it: compare the Saudi central bank's monthly bulletin line "investment in foreign securities" with the Saudi Treasury line in the US tables and the Fed's custody total for foreign official accounts. A large gap that moves with Treasury custody lines in the UK or Belgium would point to Saudi Treasuries held through other custodians. Second footprint: Foreign Relations of the United States, 1969 to 1976, volume 37 (energy) and the Treasury records released in 2016. Budget: 5 searches.
2. H4-03, Saudi exit from mBridge (1 search). The fact sheet text was not searched for payment terms and the FT article was not opened. Footprints: the full 13 May 2025 fact sheet, any US Treasury or State Department remarks on mBridge from 2024 to 2025, the BIS 31 October 2024 statement, and whether other US partners (such as the UAE, which stayed) faced the same pressure. If the UAE stayed with no US cost, the "term of the deal" reading weakens. If US officials named mBridge in talks with Riyadh, it strengthens. Budget: 4 searches.
3. China's Treasury holdings moving to Belgium. FRAME section 0 flagged that mainland China fell about $270 billion since January 2023 while Belgium rose. The draft repeats "in January 2023 it was the other way round" with no note that China's apparent selling may be a custody move. That is a real undisclosed-holder question. Footprint: the June 2026 annual survey (preliminary late February 2027) against the monthly lines. Add one sentence to [24] or the go-deeper box and a row in [23].
4. H4-01 and H4-02, Saudi statements not searched (both list it as missing). The Saudi side is the Mirror move. Two searches of Saudi Press Agency statements on Hormuz and on the summit would test whether Riyadh moved in step with Washington or Beijing.
5. Block [25.2] lists the three-way arrangement as a dead end. Under the draft's own rule it is an open question at 3%.

Fix ([25.2]).
Old:
> a secret three-way arrangement between the US, the Gulf and China (no channel found)

New:
> a staged three-way war plan between the US, the Gulf and China (no channel found and real costs on all sides, kept as a remote open question, not closed)

---

## E. Overcorrection (Move 7 guard)

| Block | Interview story | Draft's replacement story | Balanced version |
|---|---|---|---|
| [0] b1, [21] | Gulf funds dumped Treasuries for shares | Gulf money still flows into Treasuries | Holdings up since 2023, down in the 2026 crisis. UAE and PIF moved toward shares or away from bonds at the holder level (B4) |
| [0] b2 | 30% of Gulf oil in yuan | The number is China's trade figure | It is a China number. Yuan-paid oil from Russia and Iran is about that share of China's crude (B5) |
| [0] b4 | Offshore fund managers fund the market | Private money funds it, states do not | Americans hold two thirds, the Fed is buying again, and states shrank (B9) |
| [0] b5, [17] | Great powers aligned in secret | No hidden deal | Level 1 shown, level 2 not shown, small deniable deals not ruled out (B1, B2) |
| [8] | $15 trillion offshore money, double M2 | Refuted | Corrected for one measure, one larger measure unchecked (B3 Fix 4) |
| [14] | The three kinds lens explains countries | Adds nothing | Not yet shown with 5 countries (B8) |

---

## F. Word audit (Move 7 list)

| Line | Word | Context | Verdict and fix |
|---|---|---|---|
| 7 | cannot | "Much of that cannot be read in any document" | Rewrite (see below) |
| 11 | most, most | "not most of it", "most likely" | First is the specimen's word, fine. Second fixed by B3 Fix 6 |
| 17 | only | "only as likely as its links multiplied" | Fine, arithmetic |
| 22 | mostly | The specimen's claim, marked as such | Fine |
| 27 | most | "China takes most Gulf oil", the claim | Fine |
| 28 | main | "the main messaging network" | Fixed by B5 |
| 28 | all | "Remote for all Gulf oil" | Fine, defined scope |
| 44 | most | "Who holds the most" | Fine |
| 61 | all | "because all issue reserve currencies" | Fixed by B8 |
| 65 | only | "only 6 of 19" | Fixed by B8 |
| 81 | only | "reported only in September 2026" | Fine, dated |
| 83, 84 | Myth, never (twice), wrong | Myth block | Fixed by B6 |
| 89 | mostly | "pays mostly in dollars", no number | Fixed by B7 |
| 108 | all, every | Method description | Fine, countable |
| 116 | every | "every inferred point is labelled" | True only after B3 and B10 |

Fix (line 7, kicker).
Old:
> Much of that cannot be read in any document.

New:
> Much of that is not in any public document the desk could find.

---

## G. Readability for an 18-year-old (non-blocking, but the owner's standard)

Measured: table rows are 984 of 2,445 main-path words (40%). Proposals, in order of gain:
1. Move the [13] table into the go-deeper box. Keep [12] and [14] as prose. Saves about 90 words of table.
2. Move the [9] table into the go-deeper box. Replace it with three plain sentences in the main path: who holds most (Americans, about two thirds), who grew (money funds, the Fed, hedge funds, private foreigners), what the $15 trillion is (dollar debt abroad, not money). Saves about 230 words of table.
3. Cut [23] to three rows in the main path (US Treasury data on about 18 November 2026, China customs on about 20 November 2026, the Saudi central bank's reasons for leaving mBridge). Move the rest, with the new rows from B10, to the go-deeper box.
4. Keep [4] and [17] in the main path, but rename columns so the reader knows which thing is being graded. In [4], "Grade" grades the desk's evidence and "Likelihood" grades the interview's claim. Suggested headings: "How the desk knows" and "Chance the claim is true as stated".
5. Define once, on first use in the main path: Treasuries (loans to the US government that can be bought and sold), custodian, carry trade (borrowing cheaply in yen to buy higher-yield assets), level 0 to 3 (one line in [1]: 0 same interests, 1 same public cue, 2 a quiet deal, 3 one boss). "Carry trade" appears in [8] and [9] with no definition.
6. Put one rival readings table (Hole 4, from H4-01 with the inconsistent-evidence counts) in the go-deeper box, so a reader can see the method rather than be told about it.

Fix (block [1], adds the level key and the likelihood words).
Old:
> Anything under 10% is shown as an open question, not a finding.

New:
> Anything under 10% is shown as an open question, not a finding. Likelihood words: remote is under 15%, unlikely 15 to 40%, about even 40 to 65%, likely 65 to 90%. Coordination levels: 0 means the same interests, 1 means following the same public cue, 2 means a quiet deal that can be denied, 3 means one command.

---

## H. Notes for the verifier (not checked here)

- [5] "about 41 years": 1974 to 2016 is about 42. BASE_RATES row 2 uses 41, which counts from 1975. Pick one and say which.
- [4] row 1 mixes a 2024 Hormuz total (EIA) with a 2025 China Middle East figure that includes Iran (Kpler via press). "About a third" needs both years and the Iran treatment named.
- The 51% Gulf rise compares the frozen January 2023 file with the current table. Confirm the same valuation basis.
- [17] row 4 "Hormuz closed from 2 March": say whether it reopened, and when, so a reader is not left thinking it is still shut.
- Iraq account at the New York Fed and the 2023 limits (Fix V1): fetch before use.
- Bank Negara Malaysia 2020 bond buying: fetch before naming.

## I. Uniqueness check

Every "Old" text above was run against round10/DRAFT_R10.md with a script and occurs exactly once, except the Fix V9 old text, which exists only after Fix V1 is applied (by design). No "New" text contains an em-dash, an en-dash or a semicolon.
