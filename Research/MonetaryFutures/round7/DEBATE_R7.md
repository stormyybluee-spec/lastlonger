# DEBATE_R7: Court-lite (completeness auditor plus judge), Round 7

Date: 2026-10-25. Tier: Standard. Role: Court card (engine/ROLES.md version 4.0), run as one agent covering the completeness auditor and the Judge.
Read: ROLES.md (shared rules and Court card), PLAN.md sections 4.5 and 2B, round7/FRAME_R7.md, CONTEXT_R7.md, both lane files and their tables, DRAFT_R7.md, VERIFY_R7.md, REDTEAM_R7.md, and the Level 1 and Level 2 chapter text in site/rulebook.json (to check every bridge).
Fetches used: 5 of 5, all to settle disputes the red team raised (EPF dividend rule, two fetches. Malaysian tax exemption, one blocked and one read. Act 850 limits, one read). The FD rate was not fetched and is ruled on without it.
Files written: this file, round7/r7_court_edits.json (the edit list as data, 168 edits), round7/r7_apply_court_edits.py (applies them to a copy, never in place), round7/r7_wordcount.py (the court's word count). No site file was edited. Nothing was committed or pushed.
General research, not personal financial advice.

## Pass checklist
- [x] Read the Court card, PLAN 4.5 and 2B, the frame, context, lanes, draft, verifier and red team
- [x] Completeness auditor: every framer spec item for Q1 and Q2 marked present, partial or missing, before and after the court's edits (section 2)
- [x] Channel table check: both directions and sizes in two regimes (section 2.3)
- [x] Word audit (only, solely, always, never, all, none, most, mostly, main, cannot, impossible, myth, wrong) on the edited main paths (section 2.4)
- [x] Every red-team point and every verifier mismatch or label ruled on: accept, accept in part or reject, with a reason (section 3, 131 rows)
- [x] Overcorrection guard run on every debunk (section 3, rows OC-1 to OC-8, and section 2.5)
- [x] Bonds restructure: target length, part-by-part plan with blocks kept, moved, deleted and rewritten, vocabulary rule, where duration is defined, gauge fix with each household's score, Malaysian corrections (section 4)
- [x] Clubs: payoff boxes as table blocks, specification errors fixed, lock 2 evidence, Malaysia's legal brakes, scorecard rule, BRICS date, headline-as-a-game routine with a worked and a faded example (section 5)
- [x] No invented numbers. Every new number traces to a lane, the verifier, the red team or a court fetch. Gaps are marked "needs data" and left off the page (section 9)
- [x] Edit list the orchestrator can apply, tested: applied to a scratch copy of site/rulebook.json, the result re-counted and the gauge re-scored by script (section 6)
- [x] Proposed changes for the owner, outside these two chapters (section 7)
- [x] Claims table R7X-01 onward (section 8)
- [x] Style: no em-dashes, no en-dashes, no semicolons, "to" for ranges, they/them for the owner. Checked by script on every string in the edit list. No personal identifier in any request or file

---

## 1. Decisions in brief

1. **Bonds length.** The red team is right that the main path is far too long (5,780 words by its count, 5,039 by the court's). The court sets a hard cap of **3,500 words** on the main path, counted by round7/r7_wordcount.py (every text field outside the go-deeper boxes, tables, checks and the gauge included, kicker and rules excluded), with running prose at **no more than 1,800**. The edited chapter measures **3,499 words, of which 1,720 are running prose**. That is 31% shorter than the draft on the same count, and the go-deeper boxes keep every verified number. The court accepts the red team's 2,000 to 2,500 figure **for the running prose** and rejects it for the whole path, because the owner's own asks (the resale stall, the gauge, four households, the touch points and SCALES) need about 1,600 words of tables, checks and tool on their own. The cold-reader misses traced to vocabulary and definitions more than to raw length, and those are fixed below. The cold-reader test must be re-run on the edited text before publication (open item U-1).
2. **Gauge.** Rebuilt around what drives bond exposure: how much of your savings sits in bond funds, how soon you draw on it, and its duration. New scores: **Linda 9, High. Aisyah 2, Low. The Rahmans 5, Some (7 if two rate rises would hurt, still Some). Hamid, a Malaysian EPF retiree living on fixed deposits, 0, Low. Hamid, if he had put his lump sum into a bond fund he draws on, 10, High.**
3. **Clubs.** Six payoff boxes added on the main path, the 2009 game corrected to a stag hunt, the 1930s recast (tariffs are the prisoner's dilemma, devaluation is contested), self-insurance recast as a run on a currency with the IMF as the outside option, lock 2 evidence (BIS foreign-currency bonds) put under the ladder, Malaysia's legal brakes added, the scorecard's selection rule stated, and a four-step "read any headline as a game" routine with a worked and a faded example. The chapter moves from three parts to four. Main path **4,096 words (cap 4,100)**, up from 3,526, because the owner's main ask (the game framework) lacked its payoff boxes.
4. **Counts.** 131 points ruled (105 red-team points, 26 verifier mismatches and labels): 100 accepted, 27 accepted in part, 4 rejected (EPF-2 the realised-income rule, SH-5 the subsidy number, PA-3 Indonesia in BRICS, V-87 an optional note).

---

## 2. Completeness auditor

### 2.1 Q1, the Bonds chapter (framer section 3)
"Draft" is DRAFT_R7. "After" is the chapter once the edit list in section 6 is applied.

| Spec item | Draft | After | Note |
|---|---|---|---|
| 3.1 Reader and reading level: Level 1 path about 1,500 words | Missing (5,039 court count) | Partial | Main path 3,499, prose 1,720. The 1,500 target is met only by the tldr plus Part 1 prose. Ruling in section 4.1 |
| 3.1 Sentences of 15 words or fewer, one new term per paragraph | Partial | Partial | Average sentence length was fine (12.6, red team). Term load cut by moving US tax, routes, auctions, forces and stats off the main path. Not re-measured per paragraph |
| 3.1 Money before percentages | Present | Present | |
| 3.1 Malay glossary checked by a native speaker | Partial | Partial | Kept at six terms, moved into a box. No new Malay term added without a native-speaker check (owner list item P-6) |
| 3.1 Readability measured per part by script | Missing | Partial | The court measured words per part (section 4.2). A grade-level count is still owed (open item U-2) |
| 3.2 Learning methods graded, weak ones named | Partial | Present | Box [3] now gives the exact study condition, the pretest caveat, and names learning styles, highlighting and rereading as weak, each from the lane's graded sources. Speed reading and brain-training games are not named because the lane did not grade them (needs data) |
| 3.2 Every part uses at least two strong techniques | Partial | Present | Each part has prediction-first questions, a worked or faded example and a stop box. Day 3 card added |
| 3.3.1 What a bond is, with sukuk checked against a Shariah-structure source | Wrong | Present | GII described as a deferred commodity sale (murabahah since 2013) |
| 3.3.2 Seesaw worked example and the duration rule of thumb | Partial | Present | Duration defined on the main path in [21], before the gauge uses it |
| 3.3.3 Duration table at 2, 10 and 30 years (model) | Present (box) | Present (box) | [88] unchanged |
| 3.3.4 Real yield, Malaysia and US, two regimes | Partial | Partial | Malaysia now first on the main path ([58]: about 2.1 points). US end 2021 against October 2026 in [55]. Malaysia in a second regime: needs data |
| 3.3.5 Holding to maturity against selling early | Present, overstated | Present | Bounded to a single bond. Funds never end |
| 3.3.6 Yield curve with a base rate | Partial (box) | Partial (box) | No base-rate number in the lanes (needs data) |
| 3.3.7 Credit risk and spreads | Missing | Partial | Corporate bonds 42.4% of the market is in the lane, but no Malaysian default case or spread series (needs data). Default risk sits in the "Five more risks" box |
| 3.3.8 Own-currency against foreign-currency bonds, bridge to L2.4 | Partial | Partial | Default-risk row and L2.4 |
| 3.3.9 Who buys and holds, US and Malaysia | Present (box) | Present (box) | Measure named on each table (verifier row 128) |
| 3.3.10 Ledger table, four buyers, both floors | Missing | Present (box) | New box "Who pays whom when a bond is bought" from lane R7A section G |
| 3.4.1 Primary against secondary in one picture | Present | Present | |
| 3.4.2 Dealers, spread, OTC, clean price, accrued interest | Partial | Present | "The dealer's gap" is the one name. Clean price added. Retail gaps are wider |
| 3.4.3 Who trades, with Malaysia's principal dealers | Partial | Present | 20 principal dealers on the main path [25] |
| 3.4.4 Why prices move day to day | Present (main) | Present (box) | Seven forces moved into a box |
| 3.4.5 Liquidity, March 2020 | Present | Present | |
| 3.4.6 How a person buys and sells, Malaysia and US, with costs, and Malaysians buying US bonds | Partial | Present | Malaysian routes on the main path with a scam check. US routes, rare Malaysian routes and the foreign exchange rule (labelled plausible) in a box |
| 3.5 Normal person's lens, ten touch points | Partial | Present | Six on the main path, six more in a box. PTPTN and Tabung Haji added. EPF dividend added |
| 3.5 Young against old answer | Overstated | Present | Conditional on yields beating inflation |
| 3.6 Hidden risks, with what bonds protect | Partial | Present | Three on the main path, five in a box, including reinvestment and concentration. Bank and sovereign link covered by the concentration row. Fiscal risk sits in the government box. Sukuk structure risk: needs data |
| 3.7 Gauge: dials with free sources, self-check, three colours, tested on households, gives different answers | Partial, fails its pass test | Present | Four dials on the main path, three more (including interest cost against Malaysia's 15% limit) in a box. Six questions. Linda High, Aisyah Low, Rahmans Some, Hamid Low (High in the fund variant). Points shown in a table |
| 3.8 Headline filter with real headlines, one Malaysian, one US, one alarm that was right | Present | Present | Malaysian headline and the UK alarm on the main path, two US headlines in a box |
| 3.9 Government-lens audit | Lane only | Present | Lane result (household 8.8% of words in the old chapter) is accepted as the baseline. Government side now one optional box |
| 3.10 Cold reader test, pass at 8 of 10 | Failed (7 and 8) | Not yet re-run | Open item U-1 |
| 3.11 Part 9 evidence across time, US and Malaysia | Partial | Partial | US episodes table kept in a box. Malaysian yield history 1998 to 2026: needs data |
| 3.11 Part 10 debates, edge cases, tripwires | Partial | Present (box) | Tripwire box added from lane R7A |
| 3.11 Part 11 quiz of 10, revisit prompts, glossary | Partial | Present | 6 checks on the main path at the end, 4 more plus a Day 3 card in a box |

### 2.2 Q2, the Clubs chapter (framer section 4)
| Spec item | Draft | After | Note |
|---|---|---|---|
| 4.1 Bridges checked against L1 and L2 text | Partial | Present | Court checked every bridge (section 3, rows BR-1 to BR-4). rb-leader bridge rewritten so it no longer quotes the devaluation claim this chapter corrects |
| 4.2.1 Membership table with dates, overlap picture | Present | Present | |
| 4.2.2 to 4.2.4 What each club is, does through others, cannot do | Present | Present | Treaty defined |
| 4.2.5 G20 scorecard with T0 or T1 evidence | Partial | Partial | Selection rule stated, 2021 SDR allocation added, $5 trillion relabelled. Three more delivered candidates (2014 tax information exchange, central clearing, 2010 IMF quota reform) need T0 or T1 evidence before grading |
| 4.2.6 Base rate, crisis against calm, and which regime the impression comes from | Present | Present | Stated as a base rate with exceptions |
| 4.3 Printing ladder with tests A to G and 15 to 25 countries | Partial | Partial | Tests A, B, C (BIS foreign-currency bonds and foreign holders), D (in the "membership is not power" box), E (openness) now shown. F (central bank law) only for the US, the euro area and Malaysia, with Malaysia's clause marked "needs data". G (inflation) only in text |
| 4.3 Worked contrasts | Partial | Partial | Switzerland printing to hold its currency down: needs data |
| 4.4.1 Malaysia's seats | Partial | Present | BRICS dates corrected |
| 4.4.2 De jure and de facto regime | Present | Present | |
| 4.4.3 History incl. 2016 measures and the IMF then and later | Partial | Present (box) | 2016 measures added from lane D2 |
| 4.4.4 Who holds Malaysian debt | Present, label missing | Present | Measures named |
| 4.4.5 Statutory debt limit and share in ringgit | Missing, wrong | Present | "Malaysia's own brakes" table. 98.8% defined correctly |
| 4.4.6 Rule-taker | Present | Present | |
| 4.4.7 Peers incl. Chile and Poland | Partial | Partial | Thailand filled (9.3%). Chile and Poland: needs data |
| 4.5 Games: players, moves, payoffs, type, case, what it misses, tripwire, primer with 2 by 2 boxes | Partial | Present | Six payoff boxes, each with where it settles and what it misses. Tripwires in a box |
| 4.5 Pass test: four or more distinct game types, Malaysia directly in one, T0 to T2 case and a tripwire each | Partial | Present | Five types (stag hunt, free rider, prisoner's dilemma, focal point, run) plus chicken in the faded example |
| 4.6 Part 8 quiz and revisit prompts linking back to L2.1 | Partial | Present | One L2.1 question in Say it back, Day 3 card, a new Part 3 stop box |

### 2.3 Channel table check (Court card duty)
- L2.4: the lane's channel table (R7B section F) has creating and destroying channels with signs. Sizes in a normal year (2026 holdings) and a stress year (1997: Malaysia's reserves fell from $27.9 billion to $21.5 billion) are present for the currency door. The central bank purchase channel has sizes for 2026 only, no stress year. **Partial.** Not added to the page, because the three balance-sheet walks box [56] already teaches the mechanism. Next round: add the 2020 to 2022 Bank Indonesia purchases as the stress-year size (needs data on the flow).
- L2.1: the new ledger box gives direction (rises, falls or only moves) for four buyer cases, without sizes. **Partial.** Sizes in two regimes: needs data.

### 2.4 Word audit on the edited main paths
Scanned by script on every main-path string after the edits. "Solely", "impossible" and "wrong" do not appear. Every remaining use is exact, bounded by a regime or date, or quoted as the myth being corrected:
- Bonds: "only with the OPR" appears only for floating loans taken since August 2022 (true by rule, verifier R7V-06). "never ends" refers to bond funds (true). "never says buy or sell" describes the gauge. "her only cash" is a household fact. "main US bond index" names an index. "mostly government paper", "Mostly through the OPR", "Mostly no" and "most years from 1977 to 2007" are hedges or verified counts (26 of 31 years, verifier row 64). "you cannot lose money" is the myth itself.
- Clubs: "cannot print on their own", "cannot issue euros", "a rupee printer cannot make dollars", "cannot pass a law" are exact. "all lose when all raise them" is now said of tariffs only, with devaluation marked as contested. "largely because", "largely decides" replace single-cause claims. "Locals mostly cannot leave the ringgit" and "A pension fund at home mostly cannot leave the currency" are hedged.
- Red-team word-audit items all fixed, except "typical of its class in most ways", which the red team itself said to keep.

### 2.5 Overcorrection guard (every debunk)
| Debunk | Guard applied |
|---|---|
| "Bonds are safe" | Safe from default, not from price. 2008 shows the cushion, 2022 shows the failure, and [55] says why |
| "A bond crash hurts everyone" | Rising yields help future savers only if yields stay above inflation |
| "Hold to the end and the dip disappears" | Only for a single bond, in money terms. Not for funds, not for buying power |
| "Headlines are rage-bait" | Softened to "many headlines are written to grab attention", with the real-alarm box and the UK 2022 alarm on the main path |
| "Foreigners control Malaysia's bonds" | About a fifth, and 98.8% of debt is ringgit debt issued at home, which is not the same as held at home |
| "The G20 is a talking shop" | Half right, with the selection rule stated and the crisis exceptions named |
| "Any country can print its way out" | Ladder and three locks, plus the US debt-limit caveat at the top |
| "Membership is power" | Openness matters more, along with size, trust in the law and deep markets |
| "Deposits are born from loans" | Normal years against 2020 to 2021 (Case 2) |

---
## 3. Rulings

Sources: CR = cold readers, LS = learning scientist, EPF = EPF member, DL = Malaysian bond dealer, PF = Malaysian personal-finance writer, DM = Treasury debt manager, PD = primary dealer, BN = Bank Negara official, AC = accountant, EH = economic historian, MMT, HM = hard-money critic, LR = literal headline reader, GT = game theorist, SH = G20 sherpa, IE = international economist, PA = Malaysian policy analyst, CP = consumer-protection voice, WA = red-team word audit, OC = red-team overcorrection list, V = verifier row number. Edit numbers refer to DRAFT_R7 blocks.

### 3.1 Red-team points
| id | Point | Source | Ruling | Reason |
|---|---|---|---|---|
| CR-1 | L2.1 main path about 5,780 words, about 40 minutes, against a 1,500-word Level 1 path | Cold readers, LS | Accept in part | Cut to 3,499 words (court count, was 5,039), prose 1,720. The red team's 2,000 to 2,500 is adopted for running prose, not for the whole path, because the owner's asks (resale stall, gauge, households, touch points, SCALES) need about 1,600 words of tables, checks and tool. See 4.1 |
| CR-2 | "Yield", "rate" and "what new tickets pay" used for one idea | CR A, LS | Accept | Vocabulary rule in 4.3: always "yield" for bonds |
| CR-3 | "Point" never defined | CR A, LS | Accept | Defined once in [21] |
| CR-4 | Duration used in the gauge but defined only in a box | CR A, LS | Accept | Defined on the main path in [21]. The gauge question cites the factsheet |
| CR-5 | About 20 terms used as if known (Treasury, nominal, bracket, S&P 500, seasoned bonds, lots, ETF, margin calls, bid-to-cover, debt service, SIFMA, factsheet, OPR, SBR) | CR A | Accept in part | Most moved into boxes with the material that needs them. OPR, EPF, the 10-year and Bank Negara defined at first use. "Inflation-linked bond" and "factsheet" remain on the main path, each explained by its sentence |
| CR-6 | US 10-year 5.13% in [58] against 4.96% in [70] | CR A | Accept | Both are true H.15 closes a day apart (verifier row 45). 5.13% now appears only in a box, and dial 1 says "22 October" |
| CR-7 | US 10-year "rose 1.12 points" against "up 0.95 point in a year" | CR A | Accept | Different windows (2 January to 5 October against 12 months). 1.12 now only in a box, with its dates |
| CR-8 | Real yield 2.6 against 2.76 | CR A | Accept | 2.76% is 21 October, 2.64% is 22 October (H.15). Main path uses "about 2.6", the box keeps 2.76% with its date |
| CR-9 | Foreign share 21.4%, 21.5% and 21.6% across blocks | CR A, DL | Accept in part | One figure (21.5%, end 2025, Bank Negara) in all prose and single-country tables of both chapters. The peer table keeps the ADB figure (21.4%, March 2026) because all four peers come from that one source |
| CR-10 | "Ringgit fell about 12%" in 2022 is peak to trough | CR A | Accept | Same as V-28 |
| CR-11 | "Worst year since 1976" reads as if 1976 was worse | CR A | Accept | "since the index began in 1976" (V-31) |
| CR-12 | "The price of being able to leave" [29] unclear | CR A | Accept | "what you pay to be able to sell quickly" |
| CR-13 | "Highest since 2007 is also normal for 1977 to 2007" [76] unclear | CR A | Accept | "can still be lower than most years from 1977 to 2007" |
| CR-14 | "Since 2007 made a return to normal sound unheard of" [78] unclear | CR A | Accept | Reworded, moved to the US headline box |
| CR-15 | "Only the word loan does not fit" [15] unclear | CR A | Accept | Replaced by the GII sale structure |
| CR-16 | Rahmans: fund falls RM1,000 in [72] but "touched only through the OPR and the ringgit" in [73] | CR A, AC | Accept | [72] and [73] rewritten. They now say "partly", through the OPR, the ringgit and a small fund |
| CR-17 | L2.4 terms unexplained (treaty, binding vote, FSB, Basel committee, OECD talks, carve-out, Common Framework) | CR A | Accept in part | Treaty defined, the bodies described in a line. "Carve-out" and "Common Framework" stay, each explained by its table row |
| CR-18 | "Free rider" and "prisoner's dilemma" used before the primer | CR A | Accept in part | [16] now explains its game inline. The tldr only names the games |
| CR-19 | "0.9 times short-term foreign debt": is that good? | CR A | Accept | "below a common rule of thumb of 1" (IE) |
| CR-20 | "Rung 3, near the top" against the diagram's wording | CR A | Accept in part | Text aligned. The diagram caption already says near the top of rung 3, no change |
| CR-21 | Reserves $116 billion (2024) against $132.6 billion (2026) unexplained | CR A | Accept in part | Both dated. The peer table moves into a box. No extra line (word budget) |
| CR-22 | US reader: Malaysian terms, no dollar equivalents, gauge built around a Malaysian loan | CR B | Accept in part | Terms defined at first use, gauge options now generic. Dollar equivalents not added (word budget) |
| CR-23 | "Self-insurance" listed as a game but not in the primer | CR B | Accept | Recast as a run on a currency, in the primer and box 5 |
| CR-24 | Bank Negara never introduced in L2.4 | CR B | Accept | "Bank Negara, the central bank" in [41] |
| CR-25 | "98.8% at home" next to "a fifth held by foreigners" looks like a contradiction | Both readers | Accept | Same as DL-1 |
| LS-1 | Cognitive load breaks the techniques | LS | Accept in part | Same ruling as CR-1 |
| LS-2 | End quiz 6 and 3 items against 10. Hide answers until a tap | LS | Accept in part | L2.1: 5 checks at the end plus 4 in a box plus 9 in stop boxes. L2.4: 4 at the end, a faded game check and a new stop box. The site already hides answers (check blocks render as a closed "details" element) |
| LS-3 | Spacing weak, no Day 3 card, L2.4 never sends the reader back | LS | Accept | Day 3 cards in both chapters, one L2.1 question in L2.4 |
| LS-4 | No faded examples for gauge, SCALES, real return | LS | Accept in part | Faded headline-as-a-game check added, SCALES check [79] is half faded, a box check on duration. No faded gauge run: the households table is the worked run |
| LS-5 | Touch-map colours should be in words too | LS | Accept | [44] caption says the table carries the same in words |
| LS-6 | Analogy limits hidden in a box | LS | Accept | Two limits in [13] |
| LS-7 | "Bonds cannot lose money" refuted only in a box | LS | Accept | Moved to the main-path myth [22]. [89.4] deleted |
| LS-8 | "Students who tested themselves three times" is more exact | LS | Accept | [3] |
| LS-9 | "A wrong guess helps" only if the answer follows | LS | Accept | [3] |
| LS-10 | "Everyone learns better from words plus a picture" too strong | LS | Accept | Line deleted |
| LS-11 | Name the weak "biohacks" and sleep | LS | Accept in part | Learning styles, highlighting and rereading named, each graded in the lane. Speed reading, brain-training games and sleep were not graded in the lane (needs data), so not named |
| EPF-1 | EPF dividend (6.15% for 2025) missing | EPF | Accept | [41] |
| EPF-2 | EPF pays dividends only from realised income, so paper dips do not cut it | EPF | Reject | The court read both cited sources. Neither says this. Bernama (28 February 2026) says EPF's reported income "includes unrealised mark-to-market gains and losses on securities". The page says only what is sourced: the dividend is declared once a year, and higher yields lift future income |
| EPF-3 | Add a Malaysian retiree | EPF | Accept | Encik Hamid, 60, in [8], [72], [73] |
| DL-1 | "98.8% owed at home" misdefines domestic debt | DL | Accept | "borrowed in ringgit in Malaysia's own market", with the fifth held by foreigners next to it (V-80) |
| DL-2 | GII is murabahah (deferred commodity sale) since 2013, not an asset share | DL | Accept | [15] and [92.0]. The 2024 wakalah ruling rests on a search summary and is not stated |
| DL-3 | RM99.50 and RM99.60 is an interdealer gap | DL | Accept | [27] says ordinary buyers usually pay a wider gap |
| PF-1 | Malaysian individuals generally pay no tax on bond and sukuk interest | PF | Accept | Court fetch of the Securities Commission page confirms profit on SC-approved sukuk is exempt for individuals (T1). The government-securities part rests on PwC via the red team (page blocked to the court), so the page says "generally" |
| PF-2 | SBR covers loans from August 2022 only. Islamic financing often states a ceiling rate | PF | Accept in part | Scope fixed in [45], [64] (V-22). Ceiling rate: no source, needs data |
| PF-3 | PTPTN and Tabung Haji missing | PF | Accept | "Six more places" box, from lane D1 |
| PF-4 | Say whether ASB and FDs are "like bonds" | PF | Accept in part | FDs: [45] says their rates follow the OPR. ASB: needs data |
| PF-5 | Add Malay terms for yield, coupon, maturity, secondary market, profit rate | PF | Accept in part | Not added without the native-speaker check the framer required (owner item P-6) |
| DM-1 | Malaysia's interest bill has no yardstick: Act 850's 15% limit | DM | Accept | The Edge (court fetch): 15% of revenue. Debt service 15.8%. In the government box and the dials box |
| DM-2 | Add interest cost as a gauge dial | DM | Accept | Dial 7, in a box |
| DM-3 | Most gross issuance repays maturing bonds | DM | Accept in part | "Much of each year's new borrowing repays old tickets". No share in the lanes |
| PD-1 | The Malaysian booth is never shown | PD | Accept | [25] |
| BN-1 | Central bank law on lending to the state missing | BN | Accept in part | Row in Malaysia's brakes table. The clause of the 2009 Act was not read (needs data) |
| BN-2 | Managed float against floating is well explained | BN | Accept | No change |
| AC-1 | "Deposits are born from loans" [84.4] repeats the Case 2 error | AC | Accept | [84.4] and the chapter's connects line now give both regimes (PLAN 2B.4) |
| AC-2 | [61.5] ends with a leftover reference to the old title | AC | Accept | Sentence deleted |
| EH-1 | 1930s devaluation as a prisoner's dilemma contradicts Eichengreen and Sachs (1985) | EH | Accept | Tariffs are the clean case, devaluation is contested ([53], box 3, tripwire box). Level 1 rb-leader carries the same claim (owner item P-1) |
| MMT-1 | L2.1 teaches the household view of government borrowing as fact | MMT | Accept in part | Government box says borrowing is also a self-set rule, with the US rule sourced to Level 1. Malaysia's rule: needs data |
| HM-1 | Give the household cost of rung-1 printing (what a 1971 dollar buys) | HM | Accept in part | Accepted in principle. The number was not fetched (needs data), so nothing is added |
| LR-1 | "A young saver mostly gains" heard as "rising rates are good for me" | LR | Accept | Condition added in [0], [46], [65], [45] |
| LR-2 | "A price dip only costs you if you sell" false for funds and buying power | LR | Accept | [0], [22], Rules, [92.0] |
| LR-3 | "It can always pay in dollars" ignores the US debt limit | LR | Accept | [25] and the "what people say" box |
| GT-1 | Games named but not specified: no payoff boxes | GT | Accept | Six boxes, each with where it settles and what it misses (5.1) |
| GT-2 | "Acting together is each member's best move" is harmony, not coordination | GT | Accept | 2009 is a stag hunt ([16], [20], box 1) |
| GT-3 | Self-insurance has no second player | GT | Accept | Run on a currency against speculators, IMF as outside option (box 5) |
| GT-4 | Add a four-step routine with a worked and a faded headline | GT | Accept | New section 8 in L2.4 |
| SH-1 | Scorecard selection drives the verdict | SH | Accept | Selection rule stated in [13] |
| SH-2 | Missing delivered items: 2021 SDRs ($650 billion), 2014 tax information exchange, central clearing, 2010 quota reform | SH | Accept in part | 2021 SDR allocation added from lane A3, without a size (no source in lanes or red team URL). The other three need T0 or T1 evidence before grading |
| SH-3 | "Delivered" for 2009 rests on 2010 growth (timing) | SH | Accept | Now rests on the SDR allocation and IMF money |
| SH-4 | The $5 trillion was mostly national packages already announced | SH | Accept | [14] |
| SH-5 | Give the fossil fuel subsidy number | SH | Reject | The lane's "above $1 trillion" is T4 and marked "to verify". Kept as "very large" until a T0 or T1 figure is read |
| IE-1 | Ladder lacks lock 2 evidence | IE | Accept | Lock 2 table and matrix column from the lane's BIS series (5.3) |
| IE-2 | "Central bank holds" column is "not checked" in 20 of 28 rows | IE | Accept | Column replaced. The four known values moved to the sources line |
| IE-3 | Turkey and Argentina also fail lock 2 in part | IE | Accept | [24], [0], lock 2 table, Turkey's 42% labelled T4 |
| IE-4 | Add a column on the law on central bank lending | IE | Accept in part | Only where sourced (US in Level 1, euro area Article 123 in L2.2, Malaysia's row without the clause). Full column next round |
| IE-5 | 0.9 times is below the 1 times rule. Bank Negara argues much short-term debt is ringgit or intragroup | IE | Accept in part | Rule of thumb added. Bank Negara's argument has no source in the file, so it is not stated |
| IE-6 | China in rung 3 "shows up fast in foreign selling" does not fit capital controls | IE | Accept | Rung 3 text adds "or behind capital controls" |
| IE-7 | Switzerland printing to hold its currency down is missing | IE | Accept in part | Accepted, deferred: no lane number (needs data) |
| IE-8 | "Openness, not membership, decides" too absolute | IE | Accept | [11.1] |
| PA-1 | Malaysia's legal brakes missing (Act 850, 65% ceiling, central bank law) | PA | Accept | New brakes table after [41] (5.4) |
| PA-2 | BRICS partner from 1 January 2025, named in October 2024 | PA | Accept | [39]. MIDA (24 October 2024) and Malay Mail (1 January 2025) agree once both dates are given |
| PA-3 | Indonesia is now a full BRICS member, put it in the peer table | PA | Reject | No source given. Not added until sourced |
| PA-4 | Thailand "not checked" while [45] claims "highest" | PA | Accept | Filled with the verifier's 9.3% (March 2026, ADB) |
| PA-5 | 2016 offshore ringgit measures thin | PA | Accept | One sourced line in the Malaysia box (lane D2) |
| PA-6 | Chile and Poland missing | PA | Accept in part | Accepted, deferred: no lane data (needs data) |
| CP-1 | Gauge puts Linda in Low | CP | Accept | Rebuilt (4.4). Linda 9, High |
| CP-2 | Imperatives drift into advice ("Never borrow", "Save in the currency you will spend in", "Never be a forced seller") | CP | Accept | Rewritten as what reduces a risk |
| CP-3 | "Bond headlines are written to make you feel something" teaches blanket distrust | CP | Accept | [75] softened |
| CP-4 | No scam check | CP | Accept | New line after [39] |
| CP-5 | Rename the low band from "background noise" | CP | Accept | New band text |
| WA-1 | [22] "Usually it only means new tickets pay more" | WA | Accept | Old myth replaced. New myth states the cases |
| WA-2 | [27], [35] "its fee for always being ready" | WA | Accept | "standing ready" |
| WA-3 | [38] "Most people already own bonds" | WA | Accept | "If you have EPF savings, you already own bonds" |
| WA-4 | [78] "China's selling was never shown in the data" | WA | Accept | "Treasury's monthly data did not show large Chinese selling at the time" |
| WA-5 | L2.4 [0] "cannot print their own money at all" | WA | Accept | "cannot print on their own" |
| WA-6 | L2.4 [53] "only 2.1% because China keeps capital controls" | WA | Accept | "largely because" |
| WA-7 | L2.4 [53] "decides it" | WA | Accept | "largely decides it" |
| WA-8 | L2.4 [45] "typical of its class in most ways" | WA | Accept | Kept, as the red team advised, because it lists the ways |
| OC-1 | "Rising yields are good for the young" overcorrects "bond crashes are bad" | OC | Accept | Conditions added |
| OC-2 | "Hold to the end and the dip disappears" applied to funds and EPF | OC | Accept | Bounded |
| OC-3 | "Deposits are born from loans" slides back to one printer | OC | Accept | Same as AC-1 |
| OC-4 | "Openness decides" replaces "membership is power" | OC | Accept | Same as IE-8 |
| OC-5 | "The ringgit is the real brake" replaces the legal brakes | OC | Accept | Both brakes named ([46], brakes table) |
| OC-6 | Neat crisis-or-calm rule hides 2009 free riding and calm-year deliveries | OC | Accept | Stated as a base rate with exceptions ([15], [16]) |
| OC-7 | SCALES swings toward distrust | OC | Accept | Same as CP-3 |
| OC-8 | "Malaysia borrows more cheaply" may read as "Malaysia is safer" | OC | Accept | [90.1] adds the policy-rate and currency-risk line |

### 3.2 Verifier mismatches and labels
| id | Point | Source | Ruling | Reason |
|---|---|---|---|---|
| V-22 | "Since August 2022 floating loans follow" the SBR, but existing loans stay on the Base Rate | Verifier row 22 | Accept | [45], [64] |
| V-28 | Ringgit "fell about 12%" in 2022 is to the November low. Full year about 5% | Row 28 | Accept | Curiosity moved to a box with both figures |
| V-31 | "Worst year since 1976" | Row 31 | Accept | "since the index began in 1976" |
| V-62 | August RM15.9 billion was all bonds. Government bonds about RM11 billion | Row 62 | Accept | "about RM11 billion came back into government bonds" in [78] and the L2.4 worked example |
| V-67 | Gilt 0.67 point was within one afternoon, not a one-day jump | Row 67 | Accept | "within a few hours on 27 September" |
| V-80 | "98.8% owed at home" | Row 80 | Accept | Same as DL-1, applied in both chapters |
| V-102 | Turkey and Argentina "owed much of their debt at home" | Row 102 | Accept | Same as IE-3 |
| V-103 | Bank Indonesia's 29% includes 2026 buying | Row 103 | Accept | [29] |
| V-105 | Germany is the cheapest in the euro area, not Europe | Row 105 | Accept | [29] |
| V-128 | Malaysian holder tables use different measures without saying so | Row 128 | Accept | [31.0] and [40] headers name the measure. Line added under [40] |
| V-15 | Sukuk Prihatin RM500 (cannot check) | Row 15 | Accept | Lane T1 terms sheet accepted. Moved to a box |
| V-16 | RM10 million lots (cannot check, 2021) | Row 16 | Accept | Labelled "(2021 report)", moved to a box |
| V-46 | Malaysia 10-year about 3.95% (cannot check) | Row 46 | Accept in part | Kept as "about 3.95%" (lane R7A-45, T3 via press). Re-check against BIX before publishing |
| V-55 | Aisyah's FD rate 2.45% predates the July 2025 OPR cut | Row 55 | Accept | The 2.45% and the RM33 real gain are removed from the page. Aisyah's row now says her dials are inflation against her FD and the ringgit |
| V-116 | IMF "floating" label read through a search summary | Row 116 | Accept in part | Kept (lane plausible). Read the annex next round |
| V-125 | Japan's central bank about 41% and foreigners about 13% not checked | Row 125 | Accept | Replaced by L2.3's courted figure: about 43%, foreigners about 13% (end 2025). L2.2's "about half" is owner item P-3 |
| V-127a | Switzerland "Floating" not checked | Row 127a | Accept | Cell set to "not checked" |
| V-127d | Greek deposits EUR 41 billion not re-opened | Row 127d | Accept in part | Kept in its box at T4 (R4B-31) |
| V-6 | SIFMA $1.21 trillion is primary dealer trading | Row 6 | Accept | Label added in the moved table |
| V-45 | Dial 1 uses 22 October, the rest 21 October | Row 45 | Accept | Date in the cell |
| V-57 | Rahman fund loss assumes duration 5 | Row 57 | Accept | The RM1,000 line is gone. The households table shows the duration answer instead |
| V-68 | RM57.3 billion is a projection | Row 68 | Accept | "is projected at" |
| V-87 | Add a note that AU exports miss some members | Row 87 | Reject | Optional. Word budget. 77.5% is already labelled as including the AU, and the gap is recorded here |
| V-97 | Ethiopia: "agreement in principle" | Row 97 | Accept | [53] |
| V-112 | "The rest" is implied | Row 112 | Accept | "(the rest, implied)" |
| V-rate | Mismatch rate 7.6%, below the 10% line | Verifier summary | Accept | No full re-check triggered |

### 3.3 Court's own bridge check (not counted above)
| id | Bridge | Level 1 or 2 text | Ruling |
|---|---|---|---|
| BR-1 | L2.1 rb-06: "Government bonds are one of the layers of dollars and ringgit, after cash and bank deposits" | rb-06 is a US table of three layers: base money (cash and reserves), bank deposits, Treasury securities. No ringgit | Rewritten without ringgit |
| BR-2 | L2.1 rb-em: "two rulers, the ringgit and the US dollar" | rb-em's rulers are "the home price tag and the passport price tag" | Rewritten to match |
| BR-3 | L2.4 rb-leader: "if every country weakens its currency at once, all lose" | rb-leader does say this, but the claim is contested (EH-1) | Bridge now quotes rb-leader on the dollar and on reserves. Level 1 fix goes to the owner (P-1) |
| BR-4 | Japan's central bank share | L2.3: 43% at end 2025. L2.2: "about half". Draft: 41% (June 2026), no source | L2.4 aligned to L2.3. L2.2 to the owner (P-3) |
| BR-5 | rb-01, rb-10, rb-13, rb-worldbs, rb-moneymake, rb-em (1998), rb-09 | Each matches the chapter text | No change (rb-13 item dropped from the L2.1 bridge only because the myth box now carries it) |

---
## 4. Bonds (rb-bonds): the restructure

### 4.1 Target length (ruling on CR-1 and LS-1)
- **Cap: 3,500 words on the main path**, measured by round7/r7_wordcount.py: every text field outside the go-deeper boxes, including tables, checks, the gauge and captions, excluding the kicker and the rules list. **Running prose (paragraphs, steps, lists, callouts, cards, myths, curiosity, tldr, bridge, headings) no more than 1,800.**
- Measured after the edit list: **3,499 words, 1,720 of them prose** (848 in tables, 405 in checks, 355 in the gauge, 171 in captions and the radiant map). The draft measured 5,039 on the same script (red team: 5,780 on its own script). The go-deeper boxes grow from about 4,300 to about 5,900 words and keep every verified number.
- Why not 2,000 to 2,500 in total: the owner asked for the resale market, a personal gauge, households to test it on, a sizeable normal-person lens and a headline filter. Those items alone take about 1,600 words of tables, checks and tool. A 2,500 cap would have forced one of them off the main path. The red team's figure is adopted for the prose, which is what a reader reads straight through.
- At 150 words a minute (a second-language reader), the main path takes about 23 minutes in three parts of about 7 minutes, against about 40 minutes before.
- If a later edit pushes the count over 3,500, cut in this order: the radiant subtitles, the stop-box intro lines, the US home-loan row (to the box), the third stop-box check of each part.

### 4.2 Part-by-part plan
Block numbers are DRAFT_R7 numbers. "r" means rewritten (exact text in section 6). Word counts are by block (they include diagram keys, so they read a few words above the script total).

| Part | One idea | Budget (measured) | Stays on the main path | Moves into a go-deeper box | Deleted |
|---|---|---|---|---|---|
| Opening | What the chapter gives you and how to learn it | 400 (380) | 0r tldr, 1r bridge, 2r radiant, 3r how to learn, 4r | none | none |
| Part 1. The ticket, the seesaw and the resale stall | A bond is a ticket you can resell, and its price moves opposite to its yield. Longer tickets swing more | 1,050 (1,029) | 5r, 6r, 7r, 8r (four households), 9r, 10, 11r, 12r, 13r (analogy limits), 14r (five words, yield defined), 15r (GII), 16, 17r, 18r (worked then faded), 19r, 20r, 21r (point and duration defined), 22r (new myth: "you cannot lose money"), 24, 25r (Malaysian booth), 26r, 27r (the dealer's gap, clean price), 29r, 32r, 33r, 34, 35r | 28 (daily trading) and 30 (two curiosity questions) into box 31. Box 31 kept, 31.0 header names its measure | 23 (duplicate of 18 and 95) |
| Part 2. Where bonds touch your life | You already hold bonds through EPF, and the same rise in yields helps some people and hurts others | 900 (877) | 36, 37, 38r, 39r (three Malaysian routes), new scam line, 41r (EPF dividend), 42r, 43r, 44r, 45r (six touch points), 46r, 52r, 53r (three risks), 54r, 55r (why 2008 differs from 2022), 57r, 58r (Malaysian real return, tax rule), 63r, 64r, 65r, 66r | 40 becomes a box (US routes, rare Malaysian routes, US bonds from Malaysia). New box "Six more places bonds touch you" (job, prices, deposits, car loans and PTPTN, takaful, Tabung Haji) takes 47. 49 and 50 into box 51 (seven forces). 56 becomes the box "Five more risks" (currency, default, liquidity, reinvestment, concentration). 59 and 60 into a new box "The US real-return walk, with tax". Boxes 61 (61.5 fixed) and 62 kept | 48 (heading of the section that became a box) |
| Part 3. Your gauge and your headline filter | Check your own exposure once a month, and weigh a headline before you feel it | 1,050 (1,020) | 67, 68r, 69r, 70r (four dials), 71r (new gauge), 72r (points table), 73r, 74r, 75r, 76r, 77r, 78r (Malaysian headline and the UK alarm), 79 | New box "Three more dials" (foreign share, auction demand, interest cost against the 15% limit). New box "Two more headlines, from the US" (30-year, China) | none |
| Go deeper | Optional: the government's side and the machinery | 40 (34) | 80r heading, 81r one-line pointer | New box "The government's side, in one page" (old 81 and 82 rewritten, 83 moved in). Boxes 84 (84.4 fixed), 85 to 88 kept, 89 (89.4 deleted), 90 (90.0 to 90.2 fixed), 91, 92 (92.0 fixed). New boxes: "Who pays whom when a bond is bought: four cases" (ledger), "Dates that would change this chapter" (tripwires), "More practice, a Day 3 card and Malay words" (4 checks, the card, and 100) | 82 (its text now in the new box), 89.4 (now the main-path myth) |
| Close. Say it back | Mixed retrieval across all parts | 200 (168) | 93r, 95r, 97r, 98r, 99r (Malaysian real return) | 100 (glossary) into the practice box | 94, 96 |

Chapter fields: rules replaced (conditions added, imperatives removed), connects line for rb-06 fixed (Case 2). Kicker unchanged.

### 4.3 Vocabulary rule (one word per idea)
| Idea | The one word | Defined where | Banned on the main path |
|---|---|---|---|
| What a bond earns per year at today's price, held to the end, and what new bonds are sold at | yield | [14] card, then used in [17] "the going yield" | "rate" for a bond, "what new tickets pay" as a stand-in for yield (allowed only as the concrete RM5 in the worked example) |
| One percentage point | point | [21], once | basis points |
| How hard a bond or fund swings when yields move | duration | [21], with "fund factsheets print it" | convexity (box only) |
| The difference between a dealer's buy and sell price | the dealer's gap | [27] | spread, bid and ask, "buy and sell prices jumping apart" |
| Bank Negara's policy rate | the OPR | [45] first main-path use: "the OPR (Overnight Policy Rate), set by Bank Negara" | "base rate" except for pre-2022 loans |
| Malaysia's compulsory retirement fund | EPF | [8] | KWSP outside the routes table and glossary |
| The standard government yield in the news | the 10-year | [43] | "the 10-year Treasury" for Malaysian readers |
"Rate" remains only for loans, FDs and the OPR. Headlines quoted as written keep their own words.

### 4.4 The gauge fix
**What was wrong.** The old gauge scored Linda (most of her savings in a long bond fund she draws on) at 3, "Low", and Aisyah about the same. It asked about loans, horizon, fund type, currency and cash, but never about how big the bond money is or whether it is being drawn now, which is what decides exposure to a bond-price fall.

**New dials (exact JSON in edit 71).** Scores in brackets.
1. Do you have a floating-rate loan? No, or only fixed-rate loans (0). Yes, and two small rate rises would be easy to pay (1). Yes, and two small rate rises would hurt (3).
2. Do you hold bond funds, or bonds you may sell before they end? EPF does not count. No (0). Yes, not needed for 10 years or more (1). Yes, needed in 3 to 10 years (2). Yes, needed within 2 years, or I draw on it now (3).
3. How big is that bond money, compared with all your savings, EPF included? None, or under a tenth (0). A tenth to a third (2). More than a third (4).
4. What is its duration? The fund factsheet prints it. None, or under 3 (0). 3 or more, or I do not know (2).
5. Will you spend money in another currency within 3 years? No (0). Yes: study, travel or family abroad (1).
6. Could you be forced to sell at a bad moment? No: I keep 3 to 6 months of spending in cash or fixed deposits (0). I have some cash, but not much (1). I have no emergency cash (2).

Why EPF does not count in dial 2: a member cannot sell EPF units, and the dividend is declared once a year from a year of income, so a price fall does not reach the member the way a fund sale does. EPF is still counted in the savings total in dial 3. **Bands:** Low 0 to 3. Some 4 to 7. High 8 or more (maximum 15). Band texts in edit 71. The low band no longer says "background noise".

**Each household's score (checked by script on the edited JSON):**
| Household (made up) | Answers by dial | Points | Band | Chapter's verdict |
|---|---|---|---|---|
| Aisyah, 23 | 0, 0, 0, 0, 1 (study abroad), 1 (only cash is a RM5,000 FD) | 2 | Low | Mostly not about her. Her dials are inflation against her FD, and the ringgit |
| The Rahmans | 1 (two OPR steps easy), 2 (fund for school fees in five years), 0 (RM20,000 of RM270,000, about 7%), 2 (bond fund), 0, 0 (three months of cash) | 5 | Some | Partly: the OPR, the ringgit, a small fund. If two OPR steps would hurt: 7, still Some |
| Encik Hamid, 60, Malaysian EPF retiree, living on fixed deposits | 0, 0, 0, 0, 0, 0 (FDs are his cash) | 0 | Low | Not about him for prices. His dial is the OPR, because his FD income falls if it is cut |
| Hamid, if he had put his RM150,000 lump sum into a bond fund he draws on, keeping a little cash | 0, 3, 4 (half his savings), 2, 0, 1 | 10 | High | The lump-sum choice is what changes a retiree's exposure (shown in [73]) |
| Linda, 68 | 0, 3 (draws on it now), 4 (40% of savings), 2 (duration about 6), 0, 0 ($60,000 in bills) | 9 | High | Yes. Her fund moves with the 10-year every day |

The gauge now passes the framer's test (different answers, in the direction the chapter claims) with one point of margin for Linda, one point inside Low for Aisyah's edge case (no cash at all would make her 3, still Low), and the Rahmans in the middle of Some either way. Thresholds remain a teaching model and are labelled so.

### 4.5 Malaysian corrections
| Item | Draft | Ruling and new wording | Source and tier |
|---|---|---|---|
| GII structure | "A sukuk gives you a share in an asset or its rent, not a loan" | "Most GII is built on a deferred sale of a commodity to the government, so holders earn profit, not interest" ([15], [92.0]) | Bank Muamalat GII Murabahah notes via the red team, T2. The 2024 wakalah ruling is not stated (search summary only) |
| EPF dividend rule | Missing. Red team proposed "paid only from realised income" | Dividend added (6.15% for 2025, bonds returned 4.3% and gave about a third of income). The realised-income rule is rejected as unsourced. The page says the dividend is declared once a year, and that reported income includes paper gains and losses | Bernama, 28 February 2026 (court fetch), T0 via national news agency |
| Interest tax treatment | US 24% bracket on the main path, and the final check | Malaysia first: "Malaysian individuals generally pay no income tax on interest and profit from government bonds and approved sukuk". The US walk moves to a box. Check [99] rewritten | Securities Commission incentives page (court fetch): profit to individuals on SC-approved sukuk is exempt, T1. Government securities: PwC Malaysian Tax Booklet via the red team, T2, page blocked to the court, hence "generally" |
| Scope of the 2022 home-loan rule | "Since August 2022 floating loans follow a base rate that moves only with the OPR" | "Floating loans taken since August 2022 move only with the OPR. Older ones follow each bank's base rate" ([45], [64]). Islamic ceiling rates: needs data | BNM revised Reference Rate Framework (verifier R7V-06), T1 |
| 98.8% wording | "98.8% domestic" read as "owed at home" | "98.8% of Malaysia's federal debt is borrowed in ringgit at home" (L2.1 box), and in L2.4 "domestic debt: borrowed in ringgit in Malaysia's own market ... That does not mean held by Malaysians: foreigners hold about a fifth of the government bonds" | MOF Fiscal Outlook 2027 via The Vibes (verifier R7V-01), T0 via press |
| The 2.45% FD rate | Stated as current in [72], with RM33 of real gain | Removed from the page. It is a Maybank board rate from a page dated 19 March 2025, before the July 2025 OPR cut. Re-check the current board rate before any FD number returns | Lane R7A-30 and verifier row 55, T3, stale |

---

## 5. Clubs (rb-clubs): the edit plan

### 5.1 Payoff boxes (main path, after the five questions [53])
Each box reads from "your" side as the row player. Cells use best, good, middle, bad and worst. After each box a one-paragraph line says where it settles and what the game misses (exact text in section 6).

Box 1, stag hunt, London 2009:
```json
{"type": "table", "cols": ["Box 1. Stag hunt: London 2009", "Others stimulate", "Others hold back"], "rows": [["You stimulate", "Best: your spending leaks abroad, but theirs comes back as exports", "Worst: your spending leaks abroad and you carry the debt"], ["You hold back", "Middle: safe, but you add little to the recovery", "Middle: safe, but the slump deepens"]]}
```
Box 2, free rider, debt relief:
```json
{"type": "table", "cols": ["Box 2. Free rider: debt relief", "Other lenders give relief", "Other lenders hold out"], "rows": [["You give relief", "Good: the borrower recovers and pays more later", "Worst: your relief pays the others in full"], ["You hold out", "Best: you are paid in full from cash others freed", "Bad: the borrower stalls or defaults"]]}
```
Box 3, prisoner's dilemma, tariffs:
```json
{"type": "table", "cols": ["Box 3. Prisoner's dilemma: tariffs", "Other keeps tariffs low", "Other raises tariffs"], "rows": [["You keep tariffs low", "Good: trade grows for both", "Worst: you lose sales and gain nothing"], ["You raise tariffs", "Best: you gain at the other's cost", "Bad: trade shrinks for both"]]}
```
Box 4, focal point, the dollar:
```json
{"type": "table", "cols": ["Box 4. Focal point: the dollar", "Others keep the dollar", "Others switch"], "rows": [["You keep the dollar", "Good: deep markets, cheap to trade", "Bad: you are left in the old money"], ["You switch", "Bad: thin markets, costly hedging", "Good, after a costly move"]]}
```
Box 5, run on a currency, 1997 to 1998 (replaces "self-insurance"):
```json
{"type": "table", "cols": ["Box 5. Run on a currency: 1997 to 1998", "Other funds attack", "Other funds stay"], "rows": [["You attack", "Small reserves: best, the currency breaks. Big reserves: bad, the defence holds and the bet costs you", "Worst: you bet alone and lose"], ["You stay", "Middle: you miss the gain, or the loss", "Middle: nothing happens"]]}
```
Box 6, run on a government's debt:
```json
{"type": "table", "cols": ["Box 6. Run on a government's debt", "Other holders stay", "Other holders sell"], "rows": [["You stay", "Good: paid in full", "Worst: left holding as the price or the currency falls"], ["You sell", "Bad: you give up the yield", "Bad, but better than staying: you got out first"]]}
```
The box structures follow the lane's primer (R7B E0: stag hunt 3,3 / 0,2 / 2,2 and prisoner's dilemma 5,0 / 3,3 / 1,1) translated into ordinal words. They are models, not measurements.

### 5.2 Specification errors corrected
| Error | Correction |
|---|---|
| 2009 called a game where acting together is "each member's best move" (harmony) | Stag hunt: acting together pays most only if each expects the others to act. The shared shock made everyone expect it. Some members still did less ([16], [20], box 1, primer row) |
| 1930s devaluation as a prisoner's dilemma where "all lose together" | Tariffs are the clean prisoner's dilemma (the early 1930s tariff war). Devaluation helped the countries that did it, and coordinated devaluation would have sped recovery (Eichengreen and Sachs, 1985). Q2 answer, box 3, tripwire box. The L2.4 bridge no longer quotes the Level 1 line |
| "Self-insurance" as a game with one player | Run on a currency: speculators against each other, with reserves changing the payoff of attacking, and the IMF as the outside option a country with reserves need not take (box 5, Q4, primer row "Run") |
| Primer lacked the payoff-box idea | [48] introduces the box, [49] adds "where it settles" for each game |

### 5.3 Lock 2 evidence under the ladder
A new table opens the matrix box [30], followed by a caveat line, and the matrix replaces its "central bank holds" column (20 of 28 cells "not checked") with the BIS series. All numbers come from the lane or the verifier.
```json
{"type": "table", "cols": ["Lock 2 evidence", "Foreign-currency government bonds sold abroad, % of output (BIS, mid 2026)", "Share of government bonds held by foreigners"], "rows": [["United States", "0.0%", "32.5% of Treasuries (end 2025, Fed)"], ["Japan", "0.1%", "about 13% (end 2025)"], ["Malaysia", "0.8%", "21.5% of government securities (end 2025, Bank Negara)"], ["Indonesia", "6.3%", "12.8% (June 2026, ADB)"], ["Thailand", "none reported", "9.3% (March 2026, ADB)"], ["Turkey", "7.4%", "not checked"], ["Argentina", "9.8%", "not checked"], ["Sri Lanka", "7.0%", "not checked"], ["Saudi Arabia", "11.7%", "not checked"], ["Ecuador", "16.1%", "not checked"], ["Panama", "41.7%", "not checked"]]}
```
Caveat line: the BIS count misses IMF and bank loans and dollar bonds sold at home (so it understates Argentina and Sri Lanka). About 42% of Turkey's central government debt was in foreign currency in 2024 (World Bank series via an aggregator, T4, to confirm). Canada's 9.6% is borrowing abroad by choice, mostly hedged. The lock 3 step [24] now says Turkey and Argentina failed lock 3 and partly lock 2. Share of debt in own currency for countries other than Malaysia: needs data.

### 5.4 Malaysia's own legal brakes (new table after [41])
```json
{"type": "table", "cols": ["Malaysia's own brakes", "The rule", "Where Malaysia is"], "rows": [["Debt target (2023 fiscal law, Act 850)", "Bring federal debt down to 60% of output over the medium term", "63.1% (end June 2026)"], ["Debt-service limit (Act 850)", "Debt service no more than 15% of revenue", "15.8% (2026 projection)"], ["Statutory ceiling", "MGS, GII and Islamic Treasury bills no more than 65% of output", "Expected to stay under 65% in 2026 (Ministry of Finance, as reported)"], ["Central bank law", "The Central Bank of Malaysia Act 2009 governs any lending by Bank Negara to the government", "Bank Negara holds 3.8% of federal debt"]]}
```
Followed by: "So Malaysia has two kinds of brake. The laws are the legal brakes, and today it is above two of its own lines. The ringgit is the market brake." Note: the 65% ceiling covers MGS, GII and Islamic Treasury bills, not all federal debt, so it is not compared with the 63.1% figure. The exact lending limit in the 2009 Act was not read (needs data), so no number is given for it.

### 5.5 Scorecard rule and promises
- Selection rule now on the page ([13]): the headline pledges from leaders' statements that set a target someone can check, every crisis programme, and the latest summits.
- Added: the 2021 SDR allocation (Delivered), from lane A3. Size not stated (no sourced figure).
- Relabelled: "$5 trillion of national spending plans", "Most of the $5 trillion was plans already announced". The 2009 grade now rests on the IMF money and the August 2009 SDR allocation, not on 2010 growth.
- New score: 3 delivered, 4 partly, 2 not delivered, 1 stalled. Verdict unchanged ("half right"), now stated as a base rate with named exceptions (the 2020 debt pause and 2021 SDRs also came in a crisis).
- To grade next round, each needing a T0 or T1 source first: the 2014 automatic exchange of tax account information, central clearing of standard derivatives, the 2010 IMF quota reform (delivered late), and an IEA figure for fossil fuel subsidies.

### 5.6 BRICS partner date
"A BRICS partner seat, announced in October 2024 and in effect from 1 January 2025" ([39]). MIDA (24 October 2024, lane R7B-28) and Malay Mail (24 December 2024, red team) agree once both dates are given. Indonesia's full membership is not added (no source).

### 5.7 "Read any headline as a game" (new section 8 of L2.4, after the boxes)
Routine (steps block): players, moves, payoffs, order and information, then what the game leaves out.
Worked example (table): the Business Today headline of 10 August 2026, "Why Foreign Investors Disposed RM5.6 Billion In Malaysian Govt Bonds In July". Players: foreign funds, local holders, Bank Negara. Moves: sell or stay, buy or wait, sell dollars. Payoffs: selling early dodges a ringgit fall but gives up the yield, locals mostly cannot leave the ringgit. Order: funds watch US yields, flow data come a month later. Game: a run on the debt (box 6) that did not start, because the sale was 0.43% of the market, about RM11 billion came back into government bonds in August, and the ringgit moved from 4.09 to 4.08 in July. Left out: the research house blamed outside events (US and Iran tension, oil, US yields). All numbers from lane R7A section F1 and verifier R7V-04.
Faded example (check): the US and China truce due around 10 November 2026. The reader fills in the steps. Answer: chicken.

### 5.8 Other Clubs edits
Four parts instead of three (the Malaysia part gets its own stop box with a brakes check). Bank Negara introduced in [41]. Holder table measure named, with a line on Bank Negara's own 1% count. Thailand filled in the peer table, which moves into a box with the 1997 to 2005 dates and a sourced line on the December 2016 measures. Openness wording softened. US debt-limit caveat in [25] and the "what people say" box. "What people say" and "the schools" tables move into a box. Tripwires move into a box, with the 1930s row corrected. Japan aligned to L2.3. One L2.1 question and a Day 3 card added to Say it back. Main path 4,096 words (cap 4,100), split 363 opening, 828 Part 1, 615 Part 2, 653 Part 3, 1,420 Part 4, 221 close (by block count).

---
## 6. Edit list (apply in one pass)

How to apply: run `python3 -I round7/r7_apply_court_edits.py site/rulebook.json <new file> round7/r7_court_edits.json`, review the new file, then swap it in. The script reads the same 168 edits listed below. Rules it follows:
- Block numbers are DRAFT_R7 numbers (the current site order). Nested numbers are parent.child inside a go-deeper box.
- replace: the block becomes the JSON shown. "KEEP_CHILDREN" keeps the box's existing children and changes only its label.
- delete: the block is removed.
- insert_after N: the new block goes after draft block N. Several inserts after the same N keep the order listed. A box_id names a new box so later moves can target it (the script strips box_id before writing).
- move_into T: the block (after any replace listed for it) is removed from its place and put at the start or end of box T, in the order listed.
- set_field: replaces a chapter field (rules or connects).
- Tested: applying the list to a copy of site/rulebook.json gives rb-bonds 96 blocks (3,499 words on the main path) and rb-clubs 83 blocks (4,096 words), and the gauge scores in section 4.4.

### 6.1 Summary
| # | Chapter | Block | Action | Target | Reason |
|---|---|---|---|---|---|
| 1 | rb-bonds | 5 | replace |  | Part title matches content |
| 2 | rb-bonds | 7 | replace |  | Fourth household added |
| 3 | rb-bonds | 18 | replace |  | Vocabulary rule, numbers unchanged (verified) |
| 4 | rb-bonds | 19 | replace |  | Vocabulary rule |
| 5 | rb-bonds | 23 | delete |  | Duplicates the worked example [18] and the final check [95] |
| 6 | rb-bonds | 28 | move_into | 31 (start) | Daily trading volumes are detail, not the one idea |
| 7 | rb-bonds | 31.0 | replace |  | Verifier row 128: name the measure so L2.4's Ministry of Finance shares do not look like a contradiction |
| 8 | rb-bonds | 33 | replace |  | Vocabulary rule |
| 9 | rb-bonds | 35 | replace |  | One name for the gap, word audit 'always' |
| 10 | rb-bonds | 38 | replace |  | Word audit: 'Most people' had no number |
| 11 | rb-bonds | 39 | replace |  | Rows for a one-off 2020 sukuk and RM10 million lots move to a go-deeper box |
| 12 | rb-bonds | 42 | replace |  | Main table now has eight places, four more in a box |
| 13 | rb-bonds | 47 | replace |  | Verifier row 28: peak-to-trough labelled. Home-loan question deleted as a duplicate of [45] and [64] |
| 14 | rb-bonds | 49 | move_into | 51 (start) | Section 7 becomes a go-deeper box: the seven forces are mechanism detail |
| 15 | rb-bonds | 50 | move_into | 51 (start) | as above (placed before [49]) |
| 16 | rb-bonds | 48 | delete |  | Heading of a section that moved into a box |
| 17 | rb-bonds | 51 | replace |  | Label only |
| 18 | rb-bonds | 52 | replace |  | Renumbered |
| 19 | rb-bonds | 57 | replace |  | Malaysia first |
| 20 | rb-bonds | 59 | move_into | 58.box (end) | US tax walk is go-deeper material |
| 21 | rb-bonds | 60 | move_into | 58.box (end) | Real-return widget is go-deeper material |
| 22 | rb-bonds | 58 | insert_after |  | Holds [59] and [60] |
| 23 | rb-bonds | 61.5 | replace |  | RT accountant: leftover reference to the old title |
| 24 | rb-bonds | 70 | insert_after |  | Framer 3.7 and RT debt manager: interest-cost dial |
| 25 | rb-bonds | 75 | replace |  | Consumer voice: soften blanket cynicism |
| 26 | rb-bonds | 81 | replace |  | Pointer only |
| 27 | rb-bonds | 81 | insert_after |  | RT debt manager (refinancing, 15% limit), RT MMT critic (self-imposed rule) |
| 28 | rb-bonds | 82 | delete |  | Its revised text now sits inside the new box after [81] |
| 29 | rb-bonds | 83 | move_into | 81.box (end) | Curiosity on interest cost moves into the box |
| 30 | rb-bonds | 83 | replace |  | Verifier row 68: projected |
| 31 | rb-bonds | 84.4 | replace |  | RT accountant, blocking point 7: Case 2 regression |
| 32 | rb-bonds | 89.4 | delete |  | Moved to the main path as the new myth [22] |
| 33 | rb-bonds | 90.0 | replace |  | One foreign-share figure and date across both chapters. Reserves and EPF share aligned with the main path |
| 34 | rb-bonds | 90.1 | replace |  | RT overcorrection 8 |
| 35 | rb-bonds | 90.2 | replace |  | Word audit |
| 36 | rb-bonds | 92.0 | replace |  | GII structure, literal-reader condition |
| 37 | rb-bonds | 92 | insert_after |  | Spec 3.3.10 ledger table, from lane R7A section G |
| 38 | rb-bonds | 92 | insert_after |  | Spec 3.11 Part 10: tripwires (lane R7A list) |
| 39 | rb-bonds | 92 | insert_after |  | Learning scientist: spacing card and a 10-item quiz (6 main path plus 4 here) |
| 40 | rb-bonds | 95 | replace |  | Vocabulary rule |
| 41 | rb-bonds | 97 | replace |  | One name for the gap |
| 42 | rb-bonds | chapter | set_field | rules | RT literal reader (Rules line repeated without conditions), consumer voice (imperatives) |
| 43 | rb-bonds | chapter | set_field | connects | Case 2 regression in the connects line |
| 44 | rb-bonds | 68 | replace |  | Renumbered |
| 45 | rb-bonds | 74 | replace |  | Renumbered |
| 46 | rb-bonds | 80 | replace |  | Renumbered |
| 47 | rb-bonds | 93 | replace |  | Renumbered |
| 48 | rb-bonds | 0 | replace |  | RT literal reader (conditions), vocabulary rule, word budget |
| 49 | rb-bonds | 3 | replace |  | Learning scientist: exact study condition, pretest caveat, weak methods named (only those graded in the lane). The 'everyone learns better from words plus a picture' line is deleted as too strong |
| 50 | rb-bonds | 8 | replace |  | EPF retiree added (framer 3.7, RT EPF member). The facts the gauge needs (cash, timing, loan date) are stated up front |
| 51 | rb-bonds | 13 | replace |  | Learning scientist: analogy limits on the main path |
| 52 | rb-bonds | 14 | replace |  | Vocabulary rule: one word, yield, defined once |
| 53 | rb-bonds | 17 | replace |  | Vocabulary rule |
| 54 | rb-bonds | 21 | replace |  | Learning scientist: define point and duration on the main path before the gauge uses them |
| 55 | rb-bonds | 22 | replace |  | Learning scientist: the most common misconception moves to the main path (was 89.4). Verifier row 31 wording. Literal reader on funds |
| 56 | rb-bonds | 25 | replace |  | RT primary dealer: the Malaysian booth |
| 57 | rb-bonds | 27 | replace |  | One name for the gap (cold readers missed check [97]). RT bond dealer: retail gaps are wider. Spec 3.4.2 clean price. Word audit 'always' |
| 58 | rb-bonds | 30 | replace |  | Moves into the box [31] with the volumes |
| 59 | rb-bonds | 30 | move_into | 31 (end) | Word budget: holder and volume detail goes into the box |
| 60 | rb-bonds | 40 | replace |  | US routes and rare Malaysian routes move off the main path. Spec 3.4.6 (Malaysians buying US bonds) added from lane R7A-28, labelled plausible |
| 61 | rb-bonds | 39 | insert_after |  | Consumer-protection voice: scam check |
| 62 | rb-bonds | 41 | replace |  | RT EPF member, blocking point 5: dividend added. The realised-income rule is not in the cited sources (court fetch), so it is not stated |
| 63 | rb-bonds | 45 | replace |  | SBR scope (verifier row 22, RT finance writer). OPR defined at first use. Six rows here, six more in a box |
| 64 | rb-bonds | 46 | replace |  | RT literal reader, blocking point 3 |
| 65 | rb-bonds | 47 | insert_after |  | RT finance writer: PTPTN and Tabung Haji added from lane D1. Job and prices moved here for the word budget |
| 66 | rb-bonds | 47 | move_into | 47.box (end) | The ringgit question moves into the box |
| 67 | rb-bonds | 53 | replace |  | Consumer voice: risk reducers, not imperatives ('Never borrow', 'Save in the currency'). Three rows here, five more in a box |
| 68 | rb-bonds | 56 | replace |  | Spec 3.6 risks added from lane D2 (reinvestment, concentration). Replaces the duplicate curiosity [56]. 98.8% wording fixed |
| 69 | rb-bonds | 55 | replace |  | Both cold readers missed the why of 2008 against 2022 (check [66]) |
| 70 | rb-bonds | 58 | replace |  | RT finance writer, blocking point 6. The US walk moves to a box |
| 71 | rb-bonds | 63 | replace |  | Word budget |
| 72 | rb-bonds | 64 | replace |  | SBR scope |
| 73 | rb-bonds | 65 | replace |  | RT literal reader |
| 74 | rb-bonds | 66 | replace |  | Same wording as [55] |
| 75 | rb-bonds | 70 | replace |  | Four household dials on the main path. Date added to 4.96% (verifier note). Three dials move to a box |
| 76 | rb-bonds | 71 | replace |  | Consumer-protection voice, blocking point 2: Linda scored Low. New questions on bond-fund share, timing and duration |
| 77 | rb-bonds | 72 | replace |  | Points shown so readers can check the gauge (consumer voice) |
| 78 | rb-bonds | 77 | replace |  | One name for the gap |
| 79 | rb-bonds | 78 | replace |  | Verifier rows 62 and 67. Two headlines move to a box |
| 80 | rb-bonds | 78 | insert_after |  | Word audit: 'never shown' bounded |
| 81 | rb-bonds | 96 | delete |  | Duplicates the two rules in [21] and the stop-box material |
| 82 | rb-bonds | 98 | replace |  | Gauge now agrees with the chapter |
| 83 | rb-bonds | 99 | replace |  | RT finance writer: the Malaysian tax rule. The US version stays in the box |
| 84 | rb-bonds | 1 | replace |  | Bridge check against Level 1 text (rb-06 is a three-layer US table, rb-em's rulers are home and passport price tags). rb-13 item dropped: the myth box now carries it |
| 85 | rb-bonds | 76 | replace |  | Cold reader A could not parse the L example |
| 86 | rb-bonds | 100 | move_into | 92.practice (end) | The glossary moves into a box (it stays one tap away) |
| 87 | rb-bonds | 2 | replace |  | Rays follow the new main path |
| 88 | rb-bonds | 12 | replace |  | Word budget |
| 89 | rb-bonds | 20 | replace |  | Vocabulary rule, word budget |
| 90 | rb-bonds | 26 | replace |  | One name for the gap |
| 91 | rb-bonds | 44 | replace |  | Learning scientist: colours explained in words for colour-blind readers |
| 92 | rb-bonds | 94 | delete |  | Word budget: the heading already says what follows |
| 93 | rb-bonds | 11 | replace |  | Word budget |
| 94 | rb-bonds | 32 | replace |  | Word budget |
| 95 | rb-bonds | 43 | replace |  | Define the 10-year |
| 96 | rb-bonds | 54 | replace |  | Word audit: 'usually' removed by stating the two cases |
| 97 | rb-bonds | 4 | replace |  | Reading-time claim removed |
| 98 | rb-bonds | 15 | replace |  | RT bond dealer, blocking point 4: GII is murabahah since 2013, not an asset share |
| 99 | rb-bonds | 69 | replace |  | New gauge |
| 100 | rb-bonds | 73 | replace |  | RT accountant: [72] and [73] now agree. Lump-sum case for a Malaysian retiree |
| 101 | rb-bonds | 9 | replace |  | Word budget |
| 102 | rb-bonds | 6 | replace |  | Fourth household |
| 103 | rb-bonds | 29 | replace |  | Cold reader A could not parse 'the price of being able to leave'. One name for the gap |
| 104 | rb-bonds | 28 | replace |  | Verifier row 6 label. Moves into the box [31] |
| 105 | rb-clubs | 2 | replace |  | Rays follow the new parts |
| 106 | rb-clubs | 11.1 | replace |  | Word audit and RT international economist |
| 107 | rb-clubs | 30 | replace |  | RT international economist, blocking point 11: lock 2 data under the ladder (lane R7B matrix BIS column, verifier rows 117 to 119). 'Not checked' column replaced |
| 108 | rb-clubs | 30 | insert_after |  | Moved off the main path to make room for payoff boxes. Debt-limit caveat added |
| 109 | rb-clubs | 31 | delete |  | Content now inside the new box after [30] |
| 110 | rb-clubs | 32 | delete |  | Content now inside the new box after [30] |
| 111 | rb-clubs | 40 | replace |  | Verifier row 128: name the measure |
| 112 | rb-clubs | 40 | insert_after |  | Verifier row 128 |
| 113 | rb-clubs | 41 | insert_after |  | RT policy analyst, blocking point 12. Limits from The Edge (court fetch) and Malay Mail via the red team. The Act's lending clause is not quoted (needs data) |
| 114 | rb-clubs | 41 | insert_after |  | Same |
| 115 | rb-clubs | 44 | replace |  | Verifier row 118: Thailand filled. ADB same-source column kept so peers compare like with like |
| 116 | rb-clubs | 49 | replace |  | RT game theorist: stag hunt named, run defined with what changes it |
| 117 | rb-clubs | 54 | replace |  | Level 4 material moves into a box. 1930s row corrected |
| 118 | rb-clubs | 59 | replace |  | Both cold readers missed this check |
| 119 | rb-clubs | 60 | insert_after |  | Spacing: L2.4 sends the reader back to L2.1 (framer 3.2) |
| 120 | rb-clubs | 60 | insert_after |  | Spacing card |
| 121 | rb-clubs | chapter | set_field | rules | Rules follow the rulings |
| 122 | rb-clubs | 0 | replace |  | 98.8% definition (RT dealer, verifier row 80), 'at all' (word audit), self-insurance no longer called a game, legal brakes |
| 123 | rb-clubs | 1 | replace |  | Bridge check: rb-leader quoted on the dollar and on reserves, not on the devaluation claim this chapter corrects |
| 124 | rb-clubs | 15 | replace |  | Base rate stated with its exceptions (RT overcorrection 6) |
| 125 | rb-clubs | 16 | replace |  | RT game theorist: coordination is not a dominant strategy |
| 126 | rb-clubs | 24 | replace |  | RT international economist and verifier row 102: Turkey and Argentina also fail lock 2 in part |
| 127 | rb-clubs | 29 | replace |  | Verifier rows 103 and 105 |
| 128 | rb-clubs | 39 | replace |  | RT policy analyst: BRICS partner date |
| 129 | rb-clubs | 45 | insert_after |  | Holds the dates and peer tables. RT policy analyst: the 2016 measures (lane R7B D2) |
| 130 | rb-clubs | 44 | move_into | 45.peers (end) | Peer table (Thailand filled) moves into a box for the word budget. [45] keeps the verdict |
| 131 | rb-clubs | 45 | replace |  | Claim now backed by the filled Thailand cell (verifier R7V-11) |
| 132 | rb-clubs | 46 | replace |  | Legal and market brakes together (RT overcorrection 5) |
| 133 | rb-clubs | 53 | replace |  | RT historian (1930s), RT game theorist (stag hunt, self-insurance recast as a run with the IMF as outside option), word audit ('largely'), Japan figure aligned with L2.3 |
| 134 | rb-clubs | 53 | insert_after |  | RT game theorist, blocking point 9: payoff box 1 |
| 135 | rb-clubs | 53 | insert_after |  | Where it settles and what the game misses, box 1 |
| 136 | rb-clubs | 53 | insert_after |  | RT game theorist, blocking point 9: payoff box 2 |
| 137 | rb-clubs | 53 | insert_after |  | Where it settles and what the game misses, box 2 |
| 138 | rb-clubs | 53 | insert_after |  | RT game theorist, blocking point 9: payoff box 3 |
| 139 | rb-clubs | 53 | insert_after |  | Where it settles and what the game misses, box 3 |
| 140 | rb-clubs | 53 | insert_after |  | RT game theorist, blocking point 9: payoff box 4 |
| 141 | rb-clubs | 53 | insert_after |  | Where it settles and what the game misses, box 4 |
| 142 | rb-clubs | 53 | insert_after |  | RT game theorist, blocking point 9: payoff box 5 |
| 143 | rb-clubs | 53 | insert_after |  | Where it settles and what the game misses, box 5 |
| 144 | rb-clubs | 53 | insert_after |  | RT game theorist, blocking point 9: payoff box 6 |
| 145 | rb-clubs | 53 | insert_after |  | Where it settles and what the game misses, box 6 |
| 146 | rb-clubs | 53 | insert_after |  | Owner's 'mental framework for everyone' and RT game theorist |
| 147 | rb-clubs | 53 | insert_after |  | The routine |
| 148 | rb-clubs | 53 | insert_after |  | Worked example from lane R7A section F1 and verifier R7V-04 |
| 149 | rb-clubs | 53 | insert_after |  | Faded example (learning scientist) |
| 150 | rb-clubs | 9 | replace |  | Word budget |
| 151 | rb-clubs | 14 | replace |  | RT sherpa: the $5 trillion was mostly national plans, delivery not proven by 2010 growth, a delivered item added (2021 SDRs, lane A3) |
| 152 | rb-clubs | 28 | replace |  | RT international economist: China's controls block foreign selling |
| 153 | rb-clubs | 48 | replace |  | Primer introduces the payoff box |
| 154 | rb-clubs | 42 | move_into | 45.peers (start) | 1997 to 2005 dates move into the box. [43] keeps the story |
| 155 | rb-clubs | 10 | replace |  | Cold reader A: define treaty |
| 156 | rb-clubs | 13 | replace |  | RT G20 sherpa, blocking point 13: state the selection rule |
| 157 | rb-clubs | 20 | replace |  | Stag hunt, not a dominant strategy |
| 158 | rb-clubs | 25 | replace |  | Word audit 'can always pay', RT literal reader (debt limit) |
| 159 | rb-clubs | 41 | replace |  | RT dealer, verifier row 80, blocking point 8. Cold reader B: introduce Bank Negara |
| 160 | rb-clubs | 4 | replace |  | Four parts for segmenting (learning scientist) |
| 161 | rb-clubs | 17 | replace |  | Four parts |
| 162 | rb-clubs | 21 | replace |  | Four parts |
| 163 | rb-clubs | 33 | replace |  | Four parts |
| 164 | rb-clubs | 37 | replace |  | Four parts |
| 165 | rb-clubs | 46 | insert_after |  | New stop box |
| 166 | rb-clubs | 46 | insert_after |  | Retrieval on the new brakes table |
| 167 | rb-clubs | 46 | insert_after |  | Four parts |
| 168 | rb-clubs | 3 | replace |  | Four parts |

### 6.2 Exact new content
**Edit 1. rb-bonds block 5, replace**
```json
{"type": "h", "text": "Part 1 of 3. The ticket, the seesaw and the resale stall"}
```
**Edit 2. rb-bonds block 7, replace**
```json
{"type": "p", "text": "Imagine tomorrow's headline: \"Bond market crash\". Meet four people. They are made up, but their situations are common."}
```
**Edit 3. rb-bonds block 18, replace**
```json
{"type": "steps", "items": ["Worked example. Your ticket pays RM4 and has 10 years left. New tickets yield 5%. A buyer pays about RM92.28. They get RM4 a year plus a RM7.72 gain at the end, a yield of about 5%.", "Your turn, half done. New tickets yield 3% instead. Is your RM4 ticket worth more or less than RM100? (More, about RM108.53, because it pays more than new tickets.)", "Your turn. A ticket with only 2 years left, when new tickets yield 5%. Does it fall more or less than the 10-year ticket? (Much less, about 1.9%, because only two years of too-small payments are left.)"]}
```
**Edit 4. rb-bonds block 19, replace**
```json
{"type": "diagram", "key": "seesaw", "caption": "Yields and prices sit on a seesaw. When yields rise, old tickets are worth less, and the other way round."}
```
**Edit 7. rb-bonds block 31.0, replace**
```json
{"type": "table", "cols": ["Who", "US Treasuries (end 2025, Fed)", "Malaysian government securities, share of the whole market (end 2025, Bank Negara)"], "rows": [["Dealers", "25 primary dealers who must bid at auctions", "20 principal dealers, 7 of them Islamic"], ["Banks", "6.9%", "about 34%"], ["Pension funds", "pensions and insurers about 6%", "about 33% (EPF is the largest)"], ["Insurers and takaful", "inside the 6% above", "about 6%"], ["Funds", "money funds 12.4%, mutual funds and ETFs 8.4%", "asset managers about 3%"], ["Foreigners", "32.5%", "21.5%"], ["The central bank", "the Fed 12.7% (market-value basis)", "Bank Negara about 1%"]]}
```
**Edit 8. rb-bonds block 33, replace**
```json
{"type": "check", "q": "Your RM4 ticket has 10 years left and new tickets yield 3%. Is it worth more or less than RM100?", "a": "More, about RM108.53, because it pays more than the new tickets."}
```
**Edit 9. rb-bonds block 35, replace**
```json
{"type": "check", "q": "Why do dealers quote two prices?", "a": "They buy a little lower than they sell. The dealer's gap is their fee for standing ready to trade."}
```
**Edit 10. rb-bonds block 38, replace**
```json
{"type": "p", "text": "If you have EPF savings, you already own bonds. In Malaysia, EPF is the biggest route."}
```
**Edit 11. rb-bonds block 39, replace**
```json
{"type": "table", "cols": ["Route in Malaysia", "How much to start", "Can you resell?"], "rows": [["EPF (KWSP)", "Automatic from your salary. 44.7% of EPF's RM1.41 trillion was in bonds and similar at the end of 2025, mostly government paper", "No. You own a share of the fund"], ["Bond and sukuk unit trusts", "Depends on the fund", "Yes, sell units back to the fund at the daily price"], ["Bonds and sukuk on Bursa Malaysia, or seasoned bonds through banks", "From about RM1,000", "Yes, but trading is often thin, so a quick sale may cost you"]]}
```
**Edit 12. rb-bonds block 42, replace**
```json
{"type": "h", "text": "6. Where bonds touch you"}
```
**Edit 13. rb-bonds block 47, replace**
```json
{"type": "curiosity", "items": [{"q": "When US yields jump, does the ringgit always fall?", "a": "No. In 2022 the US 10-year rose from 1.52% to 3.88%, and the ringgit fell about 12% at its weakest, in November, and about 5% over the year. In 2026 the 10-year rose 1.12 points and the ringgit stayed between 3.89 and 4.15 (Fed data).", "from": "rb-04"}]}
```
**Edit 17. rb-bonds block 51, replace**
```json
{"type": "deeper", "label": "What makes yields move: seven forces, and 2026 as an example", "blocks": "KEEP_CHILDREN"}
```
**Edit 18. rb-bonds block 52, replace**
```json
{"type": "h", "text": "7. Hidden risks, and what protects you"}
```
**Edit 19. rb-bonds block 57, replace**
```json
{"type": "h", "text": "What is left after inflation"}
```
**Edit 22. rb-bonds block 58, insert_after**
```json
{"type": "deeper", "box_id": "58.box", "label": "The US real-return walk, with tax", "blocks": [{"type": "p", "text": "On 21 October 2026 the US 10-year yielded 5.13% and the 10-year inflation-linked Treasury 2.76%, so about 2.4 points of the 5.13% was pay for expected inflation."}]}
```
**Edit 23. rb-bonds block 61.5, replace**
```json
{"type": "p", "text": "Accounting rules let the loss stay hidden while the bank promised to hold the bonds to the end. A run forced a sale, and the paper loss became real in a day. The bonds were never in default. SVB's held-to-maturity losses were about $15.1B, close to all of its owners' money. Two days after SVB closed, the Fed opened the Bank Term Funding Program, which lent to banks against Treasuries at their face value, not their market value. A bond's price can fall, but in that panic its value as collateral was held at par by policy."}
```
**Edit 24. rb-bonds block 70, insert_after**
```json
{"type": "deeper", "label": "Three more dials for keen readers", "blocks": [{"type": "table", "cols": ["Dial", "Where to look, free", "October 2026", "Look closer if (a teaching rule of thumb)"], "rows": [["5. Foreign share of Malaysian government bonds", "Bank Negara monthly statistics", "21.5% (end 2025)", "It fell more than 1 point in a quarter while the ringgit fell"], ["6. Auction demand", "US auction results. Bank Negara auction results via BIX", "US 10-year on 7 October 2026: bids 2.77 times the amount sold", "Demand is at its weakest in a year"], ["7. Malaysia's interest bill", "Ministry of Finance Fiscal Outlook", "Debt service 15.8% of revenue (2026 projection). The 2023 fiscal law sets a 15% limit", "It rises further above the limit"]]}]}
```
**Edit 25. rb-bonds block 75, replace**
```json
{"type": "p", "text": "Many bond headlines are written to grab attention. Before you feel one, weigh it. One short list is enough, and it spells SCALES."}
```
**Edit 26. rb-bonds block 81, replace**
```json
{"type": "p", "text": "The boxes below are optional. They cover why governments borrow, how auctions and repo work, duration in detail, the yield curve and Malaysia's bond market."}
```
**Edit 27. rb-bonds block 81, insert_after**
```json
{"type": "deeper", "box_id": "81.box", "label": "The government's side, in one page", "blocks": [{"type": "p", "text": "Why do governments sell tickets? Much of each year's new borrowing repays old tickets that are ending. The rest covers the gap when spending is more than taxes. For a government that issues its own money, borrowing is also a rule it sets for itself: in the US the Fed may not buy new Treasuries straight from the government (Level 1, \"How money is born today\"), and safe bonds help a central bank steer interest rates. Banks, pension funds and central banks also need a safe ticket to hold. Each new ticket is sold at an auction where dealers must bid. The resale price then works like a vote that never stops: if buyers doubt a government's plans, yields rise and its interest bill grows."}, {"type": "p", "text": "That bill is already large. Malaysia's debt service is projected at RM57.3 billion in 2026, 15.8% of revenue, above the 15% limit Malaysia set itself in its 2023 fiscal law (Act 850). In the US, net interest passed $1 trillion in fiscal 2026, more than defense."}]}
```
**Edit 30. rb-bonds block 83, replace**
```json
{"type": "curiosity", "items": [{"q": "How much of Malaysia's tax money goes on interest?", "a": "Debt service is projected at about RM57.3 billion in 2026, about 15.8% of revenue, and near 16% in 2027 (Ministry of Finance). In the US, net interest of about $1.05 trillion in fiscal 2026 was more than defense.", "from": "rb-07"}]}
```
**Edit 31. rb-bonds block 84.4, replace**
```json
{"type": "p", "text": "The title passes, with one correction. Bonds are the backbone of the system's plumbing: collateral, reserves, liquidity and stablecoin backing. They are not what most bank deposits lean on. At US banks, loans are $14.1T of $25.9T of assets, Treasuries and agency bonds $4.8T. In normal years most new deposits are born from loans. In 2020 to 2021 most came from the Fed buying bonds and the government spending (Level 2, \"Who really creates money\"). Either way, the system settles, pledges and saves in Treasuries."}
```
**Edit 33. rb-bonds block 90.0, replace**
```json
{"type": "table", "cols": ["Malaysia's government bonds", "Value", "Date"], "rows": [["All government bonds (conventional MGS plus Islamic GII)", "RM1.31T", "March 2026"], ["Share of government securities held by foreigners", "21.5%", "end 2025 (Bank Negara)"], ["10-year MGS yield", "3.985%, against about 4.8% for the US 10-year", "end August 2026"], ["Bank Negara's reserves", "US$132.6B", "end June 2026"], ["Main domestic holder", "EPF, with 44.7% of its investment assets in fixed income, mostly government paper", "end 2025"]]}
```
**Edit 34. rb-bonds block 90.1, replace**
```json
{"type": "p", "text": "Here is a Level 2 surprise. At the end of August 2026 Malaysia could borrow for ten years at 3.985%, about 0.8 points cheaper than the United States. Lower inflation, a lower policy rate and a large captive saver in the EPF all help. It does not mean Malaysia is safer for a foreign investor, who also carries the risk that the ringgit falls. Nearly half of Malaysia's government debt (47.9%) is Islamic paper, mostly GII, a structure the US does not have."}
```
**Edit 35. rb-bonds block 90.2, replace**
```json
{"type": "p", "text": "The weak spot is the foreign fifth. When US yields jump, foreign money can leave ringgit bonds, the ringgit can weaken and Bank Negara may sell dollars to steady it. It is not automatic: in 2026 the ringgit held near 4.08 while US yields rose."}
```
**Edit 36. rb-bonds block 92.0, replace**
```json
{"type": "list", "items": ["A concert ticket is worthless after the show. A bond ticket ends with a RM100 buy-back.", "Resale ticket prices swing on hype. Bond prices swing mostly on yields and on trust in the borrower.", "A ticket buyer is a customer. A bond buyer is a lender: the borrower owes them.", "Most Malaysian government sukuk (GII) rest on a deferred sale of a commodity, so holders earn profit, not interest.", "Bond prices are less visible than app prices. Most trading is between dealers.", "A central bank can buy tickets with newly created money. No concert has a buyer like that.", "For a single bond held to the end, the resale price matters only if you sell. A fund never ends, so its price always matters when you sell units."]}
```
**Edit 37. rb-bonds block 92, insert_after**
```json
{"type": "deeper", "label": "Who pays whom when a bond is bought: four cases", "blocks": [{"type": "table", "cols": ["Case", "What changes", "Public money (deposits and cash)"], "rows": [["A person buys a new bond at auction", "Their deposit falls. Their bank's reserves move up into the government's account at the central bank", "Falls until the government spends it, then comes back"], ["A person buys from another person on the resale market", "One deposit falls, another rises. The dealer earns the gap. The government is not involved", "Only moves. Nothing created or destroyed"], ["A fund such as EPF buys a bond from a bank", "The fund's deposit falls and the bank's bond holding falls", "Falls. A bank selling a security to a nonbank destroys a deposit, the mirror of a bank buying one"], ["A foreign fund sells Malaysian bonds and takes its money home", "A local buyer pays ringgit. The fund swaps the ringgit for dollars at a bank, or Bank Negara sells dollars from reserves", "Resident deposits fall if a nonbank bought. The ringgit weakens, reserves fall, or yields rise until a local buyer steps in"]]}]}
```
**Edit 38. rb-bonds block 92, insert_after**
```json
{"type": "deeper", "label": "Dates that would change this chapter", "blocks": [{"type": "table", "cols": ["When", "What to watch", "What it would change"], "rows": [["November 2026", "Bank Negara moves the OPR from 2.75%", "The Rahman numbers and FD rates"], ["31 December 2026", "Foreign share of Malaysian government bonds below 20% or above 23%", "The 'about a fifth' line and the ringgit touch point"], ["February to March 2027", "EPF's 2026 dividend and asset mix", "The EPF lines. Fixed income below 40% of assets would change them"], ["31 March 2027", "US 10-year closes above 5.5% or below 4.5%", "Dial 1 and the headline examples"], ["30 June 2027", "Ringgit above 4.40 or below 3.80 per dollar while the US 10-year stays above 5%", "Whether 2026's calm ringgit was a one-off"], ["31 December 2027", "A new retail government sukuk or savings bond in Malaysia", "The routes table"]]}]}
```
**Edit 39. rb-bonds block 92, insert_after**
```json
{"type": "deeper", "box_id": "92.practice", "label": "More practice, a Day 3 card and Malay words", "blocks": [{"type": "check", "q": "A fund's factsheet says duration 4. Yields rise 1 point. Roughly what happens to its price?", "a": "It falls about 4%."}, {"type": "check", "q": "Hamid keeps his savings in fixed deposits. Which dial matters most to him?", "a": "The OPR, because FD rates follow it, and inflation against what his FDs pay."}, {"type": "check", "q": "A headline says foreigners sold RM5 billion of Malaysian bonds. Which two SCALES questions come first?", "a": "Size (compared with about RM1.3 trillion of government bonds) and Exposure (did the ringgit or my loan actually move?)."}, {"type": "check", "q": "Why is 'a price dip only costs you if you sell' not true for a bond fund?", "a": "A fund never ends, so there is no date when you are sure to get your money back. Its price on the day you sell is what you get."}, {"type": "callout", "label": "Day 3 card", "text": "Come back in three days and answer without looking: what is a yield, which way does a bond's price move when yields rise, and which of the four people is a crash headline about?"}]}
```
**Edit 40. rb-bonds block 95, replace**
```json
{"type": "check", "q": "New tickets yield 5%. Your RM4 ticket has 10 years left. Roughly what is it worth, and why?", "a": "About RM92.28, because a buyer can get RM5 a year on a new ticket, so yours must be cheaper to compete."}
```
**Edit 41. rb-bonds block 97, replace**
```json
{"type": "check", "q": "What does the dealer's gap tell you in a crisis?", "a": "It widens when everyone wants out. A widening gap is one of the tracks a real alarm leaves."}
```
**Edit 42. rb-bonds block chapter, set_field rules**
```json
["A bond is a ticket: RM100 in, a fixed payment each year, RM100 back at the end.", "Yields up, prices down. The longer the ticket, the bigger the swing. Duration tells you how much.", "For a single bond held to the end, a price dip costs you only if you sell. A bond fund never ends, so its dips are real when you sell units. Emergency cash lowers the risk of a forced sale.", "Bonds touch you through EPF, loans, the ringgit, prices and taxes, even if you never buy one.", "Run the four dials and six questions once a month, and weigh every scary headline on the SCALES.", "Free of default is not free of risk. Take off inflation, and tax where it applies, before you call a yield a gain."]
```
**Edit 43. rb-bonds block chapter, set_field connects**
```json
[{"id": "rb-06", "how": "In normal years banks create most deposits by lending. In 2020 to 2021 deficits and central bank buying created most of them. Bonds are the safe assets banks, the Fed and money funds hold to settle, pledge and survive a run."}, {"id": "rb-04", "how": "Foreign surpluses come back to the US as Treasury purchases."}, {"id": "rb-12", "how": "Stablecoins and tokens are new glasses on the same bottom row of bonds."}]
```
**Edit 44. rb-bonds block 68, replace**
```json
{"type": "h", "text": "8. Your monthly bond weather check"}
```
**Edit 45. rb-bonds block 74, replace**
```json
{"type": "h", "text": "9. Weigh the headline on the SCALES"}
```
**Edit 46. rb-bonds block 80, replace**
```json
{"type": "h", "text": "10. Go deeper: the government's side and the machinery"}
```
**Edit 47. rb-bonds block 93, replace**
```json
{"type": "h", "text": "11. Say it back"}
```
**Edit 48. rb-bonds block 0, replace**
```json
{"type": "tldr", "items": ["A bond is a ticket: you pay RM100, get RM4 a year, and get your RM100 back at the end.", "You can keep it or resell it through a dealer. That resale market is the secondary market.", "Yields up, prices down. A single bond held to the end still pays back its RM100. A bond fund never ends, so its dips are real when you sell.", "Bonds touch you through EPF, loans, the ringgit, prices and taxes, even if you never buy one.", "Rising yields hurt people holding long bonds today and help people who will save for years, if yields stay above inflation.", "Once a month, check four dials and six questions, and weigh scary headlines on the SCALES."]}
```
**Edit 49. rb-bonds block 3, replace**
```json
{"type": "callout", "label": "How to learn this chapter", "text": "Read each part once, then close the page and answer the stop-box questions from memory. In a classic study, students who tested themselves three times remembered 61% a week later, against 40% for students who reread four times (Roediger and Karpicke, 2006). Guess before you open each curiosity question, then check the answer. Come back in three days for the Day 3 card. 'Learning styles' have no good evidence behind them, and highlighting and rereading help little (Pashler and others, 2008. Dunlosky and others, 2013)."}
```
**Edit 50. rb-bonds block 8, replace**
```json
{"type": "list", "items": ["Aisyah, 23, Kuala Lumpur. First job. RM15,000 in EPF (Malaysia's compulsory retirement fund) and RM5,000 in a fixed deposit, her only cash. A fixed-rate car loan. Plans to study abroad in three years.", "The Rahmans, Penang. A RM400,000 floating home loan over 35 years, taken in 2023. RM250,000 in EPF, three months of spending in cash, and RM20,000 in a bond and sukuk fund for school fees in five years.", "Encik Hamid, 60, Ipoh. Retired. RM150,000 in EPF and RM150,000 in fixed deposits that he lives on. No loans.", "Linda, 68, United States. Retired. $240,000 in a broad bond fund she draws on, $300,000 in shares and $60,000 in short US government bills."]}
```
**Edit 51. rb-bonds block 13, replace**
```json
{"type": "p", "text": "That ticket is a bond. You lent the government RM100, so it owes you, and RM4 a year is your reward for waiting. Two limits of the picture: a concert ticket is worthless after the show, but a bond ends with your RM100 back. And a bond fund holds many tickets and never ends."}
```
**Edit 52. rb-bonds block 14, replace**
```json
{"type": "cards", "label": "Five words to start with", "items": [{"t": "Bond", "d": "A ticket that pays a fixed amount each year and your money back on a set date."}, {"t": "Face value", "d": "The amount paid back at the end. RM100 in our ticket."}, {"t": "Coupon", "d": "The fixed yearly payment. RM4 in our ticket, or 4%."}, {"t": "Maturity", "d": "The end date, when the ticket is bought back."}, {"t": "Yield", "d": "What a ticket earns per year if you buy at today's price and hold to the end. New tickets are sold at the going yield."}]}
```
**Edit 53. rb-bonds block 17, replace**
```json
{"type": "p", "text": "A month later, new tickets pay RM5 a year: the going yield has risen from 4% to 5%. Nobody will pay RM100 for your RM4 ticket now. Its price drops until a buyer also gets a yield of about 5%."}
```
**Edit 54. rb-bonds block 21, replace**
```json
{"type": "p", "text": "Two rules fall out of the seesaw. Yields up, prices down. And the longer the ticket, the bigger the swing. A point means one percentage point, say from 4% to 5%. For a one-point rise, a 2-year ticket falls about 2% and a 30-year ticket about 15% (a model). A bond's duration tells you its swing: a fund with a duration of 6 falls about 6% per one-point rise. Fund factsheets print it."}
```
**Edit 55. rb-bonds block 22, replace**
```json
{"type": "myth", "myth": "Government bonds are safe, so you cannot lose money on them.", "reality": "They are safe from default, not from price. In 2022 the main US bond index lost 13.01%, its worst year since the index began in 1976. Hold a single bond to the end and you get every ringgit back. Sell a fund's units after a dip and the loss is real."}
```
**Edit 56. rb-bonds block 25, replace**
```json
{"type": "p", "text": "There are two markets. The first sale is the government's auction, a ticket booth. In Malaysia, Bank Negara runs it and 20 principal dealers must bid. Every later sale is at a resale stall, the secondary market: one investor sells to another through a dealer. The government gets nothing from resales, but the price shows what its next auction will cost."}
```
**Edit 57. rb-bonds block 27, replace**
```json
{"type": "steps", "items": ["To sell, you contact a dealer: a bank's trading desk or a broker.", "The dealer shows a buy price and a sell price, say RM99.50 and RM99.60. The difference is the dealer's gap, its fee for standing ready. Ordinary buyers usually pay a wider gap than big investors, so ask for both prices.", "The price shown is the clean price. The buyer also pays you the interest earned since the last payment."]}
```
**Edit 58. rb-bonds block 30, replace**
```json
{"type": "curiosity", "items": [{"q": "Who owns most of Malaysia's government bonds, foreigners or Malaysians?", "a": "Malaysians. Residents held 78.5% at the end of 2025 and foreigners 21.5%. Pension funds such as EPF and the banks each hold about a third of the whole market (Bank Negara Bond Market Report 2025, worked out from its resident shares).", "from": "rb-em"}, {"q": "How much bigger is the US bond resale market than Malaysia's?", "a": "US Treasuries trade about $1.21 trillion a day. Malaysian government bonds trade about RM6.2 billion, roughly US$1.5 billion. That makes the US market several hundred times busier.", "from": "rb-leader"}]}
```
**Edit 60. rb-bonds block 40, replace**
```json
{"type": "deeper", "label": "Other routes: one-off sukuk, big lots, the US, and US bonds from Malaysia", "blocks": [{"type": "table", "cols": ["Route in Malaysia", "How much to start", "Can you resell?"], "rows": [["Retail government sukuk", "Sukuk Prihatin in 2020 started at RM500", "No. It was a one-off and matured in 2022"], ["Government bonds bought directly", "Standard lots were RM10 million (2021 report)", "Out of reach for most people"], ["US Treasuries through a broker that offers foreign bonds", "Broker fees, plus the cost of changing ringgit to dollars", "Yes. You also carry the risk that the ringgit moves"]]}, {"type": "table", "cols": ["Route in the US", "How much to start", "Can you resell?"], "rows": [["TreasuryDirect, buying from the government", "$100, no fees", "Not inside TreasuryDirect. Move it to a broker first"], ["A broker", "Varies by broker", "Yes, any day at the dealer's buy price"], ["Bond ETFs and funds", "One share. Big index ETFs charge about 0.03% a year", "Yes, any trading day. A fund never matures"]]}, {"type": "p", "text": "Bank Negara's foreign exchange rules, as summarised by banks: a resident with no ringgit borrowing at home may invest any amount abroad, and one with such borrowing may convert up to RM1 million a year for foreign assets. Check the current Bank Negara notice before relying on this."}]}
```
**Edit 61. rb-bonds block 39, insert_after**
```json
{"type": "p", "text": "Before buying anything sold as a bond or sukuk with a 'guaranteed' return, check the seller is licensed and not on the Securities Commission's Investor Alert List or Bank Negara's Financial Consumer Alert List."}
```
**Edit 62. rb-bonds block 41, replace**
```json
{"type": "curiosity", "items": [{"q": "How do bond prices reach your EPF dividend?", "a": "Slowly. EPF declares its dividend once a year: 6.15% for 2025. Its bonds returned 4.3% and gave about a third of its income, and its reported income includes paper gains and losses (EPF, as reported by Bernama, February 2026). Higher yields lift future income as old bonds mature and new money is invested.", "from": "rb-nation"}]}
```
**Edit 63. rb-bonds block 45, replace**
```json
{"type": "table", "cols": ["Where", "How it works", "If yields rise"], "rows": [["Your EPF", "Holds a giant drawer of government bonds for you", "Prices dip on paper. New money earns more. Savers with decades ahead gain, if yields stay above inflation"], ["Fixed deposits", "Rates follow the OPR (Overnight Policy Rate), set by Bank Negara, now 2.75%", "Help only if the OPR rises too"], ["Home loan in Malaysia", "Floating loans taken since August 2022 move only with the OPR. Older ones follow each bank's base rate", "Mostly through the OPR: about RM60 a month per 0.25 point step on RM400,000"], ["Home loan in the US", "30-year fixed rates follow the 10-year yield", "Hurt new buyers. Existing fixed loans are protected"], ["The ringgit", "Foreigners hold about a fifth of Malaysian government bonds", "Can weaken, raising import prices. Not automatic: in 2026 it held near 4.08"], ["Taxes and services", "Interest on government debt competes with schools and hospitals", "Hurt slowly. Malaysia's debt service is about 16% of revenue"]]}
```
**Edit 64. rb-bonds block 46, replace**
```json
{"type": "insider", "label": "The one idea to keep", "text": "The same rise in yields hurts people holding long bonds or borrowing now, and helps people who will save for years, as long as yields stay above inflation."}
```
**Edit 65. rb-bonds block 47, insert_after**
```json
{"type": "deeper", "box_id": "47.box", "label": "Six more places bonds touch you", "blocks": [{"type": "table", "cols": ["Where", "How it works", "If yields rise"], "rows": [["Your job", "Companies borrow at the government yield plus a margin", "Hurt slowly if high yields last: fewer projects, fewer jobs"], ["Prices", "A fixed RM4 buys less when prices rise", "Rising inflation hurts holders of fixed payments"], ["Bank deposits", "Banks hold bonds as safe, sellable assets", "Little change for you. PIDM insures RM250,000 per depositor per bank"], ["Car loans and PTPTN", "Hire purchase is mostly fixed when you sign. PTPTN charges a fixed fee", "Little change for loans already signed"], ["Insurance and takaful", "Insurers hold bonds to pay future claims", "Mixed: new policies price better, old bonds dip"], ["Tabung Haji and Islamic funds", "They hold sukuk such as GII", "The same seesaw as conventional bonds"]]}]}
```
**Edit 67. rb-bonds block 53, replace**
```json
{"type": "table", "cols": ["Risk", "How it reaches you", "A real number", "What reduces it"], "rows": [["Price risk", "Your bond fund falls when yields rise", "The main US bond index lost 13.01% in 2022", "Holding a single bond to the end. Shorter bonds"], ["Inflation risk", "Your fixed RM4 buys less", "US bonds bought at 0.52% in 2020 paid far less than 2022's 9.1% inflation", "Inflation-linked bonds. Short bonds that reset quickly"], ["Forced-seller risk", "You must sell at the worst moment", "UK pension funds, September 2022: the Bank of England bought £19.3 billion of bonds to stop a spiral", "Not borrowing to hold bonds. Emergency cash"]]}
```
**Edit 68. rb-bonds block 56, replace**
```json
{"type": "deeper", "label": "Five more risks", "blocks": [{"type": "table", "cols": ["Risk", "How it reaches you", "A real number", "What reduces it"], "rows": [["Currency risk", "A foreign bond pays in another currency", "The ringgit moved between 3.89 and 4.15 per dollar in 2026", "Matching the currency you save in to the currency you will spend in"], ["Default risk", "The borrower cannot pay", "Low for a government borrowing in its own currency. 98.8% of Malaysia's federal debt is borrowed in ringgit at home", "Government over small companies. Spreading out"], ["Liquidity risk", "You cannot sell fast at a fair price", "Bonds on Bursa often trade thinly", "Funds that redeem daily. An emergency cash buffer"], ["Reinvestment risk", "When yields fall, money from a maturing bond earns less", "The US 10-year was 4.98% in October 2023 and 4.01% in October 2025", "Longer bonds lock a yield in. This is the mirror of price risk"], ["Concentration", "One fund holds much of a nation's savings, and much of the nation's debt", "EPF and the banks hold about two thirds of Malaysian government securities (end 2025)", "A government that borrows in its own money, a central bank and deposit insurance. A system risk more than a personal one"]]}]}
```
**Edit 69. rb-bonds block 55, replace**
```json
{"type": "p", "text": "Why the difference? 2008 was a recession: people fled to safety, yields fell and bond prices rose. 2022 was an inflation shock: yields rose fast and bonds fell with shares. Higher yields today also mean more income tomorrow: in October 2026 a US inflation-linked bond paid about 2.6 points above inflation, against about minus 1 point at the end of 2021."}
```
**Edit 70. rb-bonds block 58, replace**
```json
{"type": "p", "text": "Every yield you see is before inflation, Level 1's rubber ruler. Malaysian individuals generally pay no income tax on interest and profit from government bonds and approved sukuk, so the real return is roughly the yield minus inflation: about 3.95% minus 1.8%, or about 2.1 points (October 2026). In the US, take tax off first."}
```
**Edit 71. rb-bonds block 63, replace**
```json
{"type": "callout", "label": "Stop here", "text": "Part 2 of 3 done. Try these three before Part 3."}
```
**Edit 72. rb-bonds block 64, replace**
```json
{"type": "check", "q": "Does a jump in the US 10-year directly change a Malaysian floating home loan taken since August 2022?", "a": "No. It moves only with the OPR. The 10-year matters only if it pushes Bank Negara to move the OPR."}
```
**Edit 73. rb-bonds block 65, replace**
```json
{"type": "check", "q": "Name one way rising yields help a young saver, and the condition.", "a": "New money into EPF earns more for decades, if yields stay above inflation."}
```
**Edit 74. rb-bonds block 66, replace**
```json
{"type": "check", "q": "Why did bonds protect people in 2008 but not in 2022?", "a": "2008 was a recession shock, so yields fell and bond prices rose. 2022 was an inflation shock, so yields rose and bonds fell with shares."}
```
**Edit 75. rb-bonds block 70, replace**
```json
{"type": "table", "cols": ["Dial", "Where, free", "October 2026", "Look closer if (rule of thumb)"], "rows": [["1. 10-year government bond yield", "BIX Malaysia, US Treasury", "Malaysia about 3.95%. US 4.96% (22 October), up 0.95 point in a year", "It moved over 1 point in 12 months"], ["2. Inflation and the real yield", "DOSM, US Treasury", "Malaysia: 1.8% inflation, so about 2.1 points above it. US real yield about 2.6%", "The real yield is below zero"], ["3. OPR and the Fed's rate", "Bank Negara, the Fed", "OPR 2.75% since July 2025. The Fed raised its rate in September 2026", "The OPR changed"], ["4. Ringgit per US dollar", "Bank Negara", "About 4.08. 2026 range 3.89 to 4.15", "It moved over 5% in 3 months"]]}
```
**Edit 76. rb-bonds block 71, replace**
```json
{"type": "gauge", "label": "Your personal gauge", "intro": "Answer for yourself. Nothing is stored or sent anywhere.", "dials": [{"q": "Do you have a floating-rate loan?", "options": [{"t": "No, or only fixed-rate loans", "score": 0}, {"t": "Yes, and two small rate rises would be easy to pay", "score": 1, "note": "Two 0.25 point OPR steps add about RM120 a month on RM400,000 over 35 years."}, {"t": "Yes, and two small rate rises would hurt", "score": 3, "note": "Watch dial 3, the OPR."}]}, {"q": "Do you hold bond funds, or bonds you may sell before they end? EPF does not count.", "options": [{"t": "No", "score": 0}, {"t": "Yes, not needed for 10 years or more", "score": 1, "note": "Dips have time to recover."}, {"t": "Yes, needed in 3 to 10 years", "score": 2}, {"t": "Yes, needed within 2 years, or I draw on it now", "score": 3, "note": "Money you need soon should not ride on a long bond's price."}]}, {"q": "How big is that bond money, compared with all your savings, EPF included?", "options": [{"t": "None, or under a tenth", "score": 0}, {"t": "A tenth to a third", "score": 2}, {"t": "More than a third", "score": 4}]}, {"q": "What is its duration? The fund factsheet prints it.", "options": [{"t": "None, or under 3", "score": 0}, {"t": "3 or more, or I do not know", "score": 2, "note": "Duration 6 means about 6% down per one-point rise."}]}, {"q": "Will you spend money in another currency within 3 years?", "options": [{"t": "No", "score": 0}, {"t": "Yes: study, travel or family abroad", "score": 1, "note": "Watch dial 4, the ringgit."}]}, {"q": "Could you be forced to sell at a bad moment?", "options": [{"t": "No: I keep 3 to 6 months of spending in cash or fixed deposits", "score": 0}, {"t": "I have some cash, but not much", "score": 1}, {"t": "I have no emergency cash", "score": 2, "note": "This is what turns a dip into a real loss."}]}], "bands": [{"max": 3, "label": "Low exposure right now", "text": "A bond-market move is less likely to change your payments or savings this month. Watch inflation against what your savings earn, and the ringgit if you will spend abroad."}, {"max": 7, "label": "Some exposure", "text": "Watch the dials that match your answers: the OPR for a floating loan, the 10-year for bond funds, the ringgit for spending abroad."}, {"max": 99, "label": "High exposure", "text": "Bond headlines are about you. Read your loan and fund documents slowly, and get a second opinion before big decisions."}], "footnote": "A teaching model, not advice. The points and bands are a rule of thumb, tested on the four people in this chapter."}
```
**Edit 77. rb-bonds block 72, replace**
```json
{"type": "table", "cols": ["Question", "Aisyah", "The Rahmans", "Hamid", "Linda"], "rows": [["1. Floating loan", "0", "1 (easy)", "0", "0"], ["2. Bond funds, and when", "0", "2 (in 5 years)", "0", "3 (draws now)"], ["3. Share of savings", "0", "0 (about 7%)", "0", "4 (40%)"], ["4. Duration", "0", "2", "0", "2 (about 6)"], ["5. Another currency", "1", "0", "0", "0"], ["6. Cash buffer", "1", "0", "0", "0"], ["Points and band", "2, Low", "5, Some", "0, Low", "9, High"], ["Is a crash headline about them?", "Mostly no", "Partly", "No, but his FD income follows the OPR", "Yes"]]}
```
**Edit 78. rb-bonds block 77, replace**
```json
{"type": "callout", "label": "Real alarms leave tracks", "text": "The filter is not there to make you cynical. Take a headline seriously when you also see forced sellers, a central bank emergency operation, the dealer's gap widening, weak auctions, or the currency and the bonds falling together. The UK in 2022 and Silicon Valley Bank in 2023 showed several at once."}
```
**Edit 79. rb-bonds block 78, replace**
```json
{"type": "table", "cols": ["Real headline", "On the SCALES", "Verdict"], "rows": [["Foreign investors disposed RM5.6 billion of Malaysian government bonds in July (Business Today, August 2026)", "Size: 0.43% of the market. Long view: about RM11 billion came back into government bonds in August. Exposure: the ringgit was 4.09 at the start of July and 4.08 at the end", "Accurate, missing scale. No alarm tracks"], ["Bank of England intervenes to end bond market panic (September 2022)", "Tracks: forced sellers, an emergency operation, and the 30-year yield up 0.67 point within a few hours on 27 September", "A real alarm. The filter flags it rather than dismissing it"]]}
```
**Edit 80. rb-bonds block 78, insert_after**
```json
{"type": "deeper", "label": "Two more headlines, from the US", "blocks": [{"type": "table", "cols": ["Real headline", "On the SCALES", "Verdict"], "rows": [["30-year Treasury yield rises to highest since 2007 (August 2026)", "Long view: the 30-year was above that level in most years from 1977 to 2007. Exposure: real for US borrowers, as mortgage rates rose", "Accurate, and it got worse: 5.67% on 7 October. But 'since 2007' made a return to old levels sound unheard of"], ["China is dumping Treasuries (April 2025)", "Change: the US 10-year rose 0.47 point in a week and a tariff pause followed within days. Source: Treasury's monthly data did not show large Chinese selling at the time", "Half right. The alarm was real, the named cause was not proven"]]}]}
```
**Edit 82. rb-bonds block 98, replace**
```json
{"type": "check", "q": "Which of the four people is a bond crash headline really about, and why?", "a": "Linda. A big share of her savings is in a long bond fund she draws on now, so she scores High. The Rahmans feel it partly. Aisyah and Hamid are barely touched."}
```
**Edit 83. rb-bonds block 99, replace**
```json
{"type": "check", "q": "A Malaysian government bond yields 4% and inflation is 2.5%. You are a Malaysian individual. Roughly what is your real return?", "a": "About 1.5 points a year. Malaysian individuals generally pay no income tax on government bond interest, so take off only inflation. In the US you would take tax off first."}
```
**Edit 84. rb-bonds block 1, replace**
```json
{"type": "bridge", "label": "Built on Level 1: recall these before you start", "items": [{"id": "rb-01", "text": "Money is a promise that a whole society keeps track of. A bond is a promise with a date and a price."}, {"id": "rb-06", "text": "Money comes in layers: cash and bank reserves, then bank deposits, then government bonds."}, {"id": "rb-10", "text": "The ruler is rubber. Every yield you see is before inflation."}, {"id": "rb-em", "text": "A Malaysian saver measures with two rulers: what money buys at home and what it buys abroad."}]}
```
**Edit 85. rb-bonds block 76, replace**
```json
{"type": "table", "cols": ["Letter", "Ask", "Example"], "rows": [["S", "Size: compared with what?", "RM5.6 billion of foreign selling is 0.43% of RM1.309 trillion"], ["C", "Change or level: how much, over how long?", "'Yields soar' can mean 0.05 point in a day or 1 point in a year"], ["A", "Adjusted: before or after inflation?", "Debt hits a record almost every year just from inflation"], ["L", "Long view: since when?", "'Highest since 2007' can still be lower than most years from 1977 to 2007"], ["E", "Exposure: what does it do to me?", "A US yield jump moves a US mortgage directly, a Malaysian floating loan mostly through the OPR"], ["S", "Source and stake: who says it, and what do they gain?", "Clicks, a product, a political side, or an honest warning"]]}
```
**Edit 87. rb-bonds block 2, replace**
```json
{"type": "radiant", "center": "A bond is a ticket you can resell", "caption": "The chapter in one picture. Outlined boxes link to the Level 1 chapter each part builds on.", "rays": [{"t": "The ticket", "s": "RM100 in, RM4 a year", "link": "rb-01"}, {"t": "The seesaw", "s": "Yields up, prices down", "link": "rb-10"}, {"t": "The resale stall", "s": "The dealer's gap", "link": "rb-leader"}, {"t": "How you own bonds", "s": "EPF first", "link": "rb-em"}, {"t": "Where bonds touch you", "s": "Loans, ringgit, taxes", "link": "rb-nation"}, {"t": "Risks and cushions", "s": "2008 against 2022", "link": "rb-buckets"}, {"t": "Your monthly gauge", "s": "Four dials, six questions", "link": "rb-08"}, {"t": "The SCALES filter", "s": "Weigh a headline", "link": "rb-13"}]}
```
**Edit 88. rb-bonds block 12, replace**
```json
{"type": "diagram", "key": "rm-ticket", "caption": "One ticket carries the whole chapter: RM100 in, RM4 a year, RM100 back."}
```
**Edit 89. rb-bonds block 20, replace**
```json
{"type": "widget", "key": "bond-lab", "caption": "Try it. Drag the yield on new bonds and watch three $1,000 bonds reprice."}
```
**Edit 90. rb-bonds block 26, replace**
```json
{"type": "diagram", "key": "resale-stall", "caption": "The booth sells new tickets. Old tickets change hands at the resale stall, and the dealer earns the gap."}
```
**Edit 91. rb-bonds block 44, replace**
```json
{"type": "diagram", "key": "touch-map", "caption": "Places bonds reach you. The colour says whether a rise in yields tends to help, hurt, do both or change little. The table below says the same in words."}
```
**Edit 93. rb-bonds block 11, replace**
```json
{"type": "p", "text": "Forget finance for a moment. The government sells you a ticket for RM100. It pays you RM4 every year. In ten years the government buys it back for RM100."}
```
**Edit 94. rb-bonds block 32, replace**
```json
{"type": "callout", "label": "Stop here", "text": "Part 1 of 3 done. Close the page and try these three before Part 2."}
```
**Edit 95. rb-bonds block 43, replace**
```json
{"type": "p", "text": "Rising yields in the news usually means the 10-year government bond yield. Here is what a rise does to a normal person."}
```
**Edit 96. rb-bonds block 54, replace**
```json
{"type": "pairbars", "title": "Bonds against shares in two bad years (total return, %)", "suffix": "%", "decimals": 1, "series": ["US bonds (main index)", "US shares (S&P 500)"], "rows": [{"label": "2008, a recession shock", "values": [5.24, -37.0]}, {"label": "2022, an inflation shock", "values": [-13.01, -18.1]}], "caption": "In a recession, bonds cushioned the fall. In an inflation shock, both fell.", "source": "Bloomberg US Aggregate Bond Index and S&P 500 total returns, as reported in fund filings and index reports."}
```
**Edit 97. rb-bonds block 4, replace**
```json
{"type": "p", "text": "Three short parts, each ending in a stop box. Stop at any box and come back another day."}
```
**Edit 98. rb-bonds block 15, replace**
```json
{"type": "insider", "label": "Malaysia note", "text": "About half of Malaysia's government debt is Islamic paper, mostly GII. Most GII is built on a deferred sale of a commodity to the government, so holders earn profit, not interest. The ticket picture still works."}
```
**Edit 99. rb-bonds block 69, replace**
```json
{"type": "p", "text": "Ten minutes, once a month. It asks questions and never says buy or sell. Four public dials, then six questions about you."}
```
**Edit 100. rb-bonds block 73, replace**
```json
{"type": "p", "text": "Back to your guess. The headline is about Linda. The Rahmans feel it partly. Aisyah and Hamid are barely touched by bond prices. But if Hamid had put his RM150,000 into a bond fund he draws on, keeping a little cash, he would score 10, High. Run the gauge again next month."}
```
**Edit 101. rb-bonds block 9, replace**
```json
{"type": "p", "text": "Guess now: which of them should care? By the end you can answer for each of them, and for yourself."}
```
**Edit 102. rb-bonds block 6, replace**
```json
{"type": "h", "text": "1. Should these four people worry?"}
```
**Edit 103. rb-bonds block 29, replace**
```json
{"type": "p", "text": "The dealer's gap is what you pay to be able to sell quickly. It widens when everyone wants out. In March 2020 even US government bonds were hard to sell, and the Fed bought $1.27 trillion in five weeks."}
```
**Edit 104. rb-bonds block 28, replace**
```json
{"type": "table", "cols": ["Market", "Trading on an average day", "When"], "rows": [["US Treasuries", "about $1.21 trillion (primary dealer trading)", "January to July 2026 (SIFMA)"], ["Malaysian government bonds", "about RM6.2 billion, up from RM3.8 billion in 2024", "2025 (Bank Negara)"]]}
```
**Edit 105. rb-clubs block 2, replace**
```json
{"type": "radiant", "center": "Who can make money, and who writes the rules", "caption": "The chapter in one picture. Each box is one short part. Outlined boxes link to the chapter it builds on.", "rays": [{"t": "The clubs", "s": "G7 inside G10 and G20", "link": "rb-worldbs"}, {"t": "What clubs cannot do", "s": "No treaty, no money, no force", "link": "rb-leader"}, {"t": "The scorecard", "s": "Fast in crises, slow in calm", "link": "rb-08"}, {"t": "Three locks", "s": "Law, debt, market permission", "link": "rb-moneymake"}, {"t": "The ladder", "s": "From reserve issuer to no printer", "link": "rb-09"}, {"t": "Malaysia", "s": "Rung 3, two kinds of brake", "link": "rb-em"}, {"t": "The games", "s": "Six boxes, five real questions", "link": "rb-leader"}, {"t": "Your routine", "s": "Read any headline as a game", "link": "rb-13"}]}
```
**Edit 106. rb-clubs block 11.1, replace**
```json
{"type": "p", "text": "Singapore and Switzerland are not G20 members, yet both run open, trusted money centres. China is a G20 member with capital controls, so its yuan is only 2.11% of world reserves despite about 17% of world output. Openness matters more than membership, along with size, trust in the law and deep markets."}
```
**Edit 107. rb-clubs block 30, replace**
```json
{"type": "deeper", "label": "Lock 2 evidence and the full printing matrix: 28 countries", "blocks": [{"type": "table", "cols": ["Lock 2 evidence", "Foreign-currency government bonds sold abroad, % of output (BIS, mid 2026)", "Share of government bonds held by foreigners"], "rows": [["United States", "0.0%", "32.5% of Treasuries (end 2025, Fed)"], ["Japan", "0.1%", "about 13% (end 2025)"], ["Malaysia", "0.8%", "21.5% of government securities (end 2025, Bank Negara)"], ["Indonesia", "6.3%", "12.8% (June 2026, ADB)"], ["Thailand", "none reported", "9.3% (March 2026, ADB)"], ["Turkey", "7.4%", "not checked"], ["Argentina", "9.8%", "not checked"], ["Sri Lanka", "7.0%", "not checked"], ["Saudi Arabia", "11.7%", "not checked"], ["Ecuador", "16.1%", "not checked"], ["Panama", "41.7%", "not checked"]]}, {"type": "p", "text": "Read the BIS column with care. It counts only bonds sold abroad in foreign money, so it misses IMF and bank loans and dollar bonds sold at home, which is why it understates Argentina and Sri Lanka. By a World Bank series, about 42% of Turkey's central government debt was in foreign currency in 2024 (as reported by an aggregator, to confirm). Canada's 9.6% is borrowing abroad by choice, mostly hedged."}, {"type": "table", "cols": ["Country", "Own currency", "Exchange rate (IMF, 2023)", "Foreign-currency bonds abroad, % of output (BIS, mid 2026)", "Openness (0 to 1)", "Rung"], "rows": [["United States", "Yes", "Free floating", "0.0%", "1.0", "1"], ["Euro area as a whole", "Yes", "Free floating", "n.a.", "n.a.", "1"], ["Japan", "Yes", "Free floating", "0.1%", "1.0", "1"], ["United Kingdom", "Yes", "Free floating", "0.0%", "1.0", "1"], ["Canada", "Yes", "Free floating", "9.6%", "1.0", "2"], ["Australia", "Yes", "Free floating", "0.1%", "1.0", "2"], ["Switzerland", "Yes", "not checked", "n.a.", "1.0", "2"], ["Korea", "Yes", "Floating", "0.7%", "1.0", "2"], ["China", "Yes", "Other managed", "0.2%", "0.16", "3"], ["India", "Yes", "Floating", "n.a.", "0.16", "3"], ["Brazil", "Yes", "Floating", "3.0%", "0.16", "3"], ["Mexico", "Yes", "Free floating", "8.4%", "0.7", "3"], ["Indonesia", "Yes", "Floating", "6.3%", "0.42", "3"], ["South Africa", "Yes", "Floating", "6.2%", "0.16", "3"], ["Russia", "Yes", "Free floating", "2.2%", "0.16", "3"], ["Malaysia", "Yes", "Floating", "0.8%", "0.42", "3"], ["Turkey", "Yes", "Crawl-like", "7.4%", "0.16", "4"], ["Argentina", "Yes", "Crawling peg (changed since)", "9.8%", "0.16", "4"], ["Sri Lanka", "Yes", "Crawl-like", "7.0%", "0.0", "4"], ["Zimbabwe", "Yes, since 2024", "Other managed", "n.a.", "0.42", "4"], ["Saudi Arabia", "Yes, pegged", "Conventional peg", "11.7%", "0.7", "5a"], ["Hong Kong", "Yes, currency board", "Currency board", "6.0%", "1.0", "5a"], ["Germany", "No (euro)", "Euro", "0.3%", "1.0", "5b"], ["France", "No (euro)", "Euro", "1.2%", "1.0", "5b"], ["Italy", "No (euro)", "Euro", "0.5%", "1.0", "5b"], ["Greece", "No (euro)", "Euro", "0.0%", "1.0", "5b"], ["Ecuador", "No (US dollar since 2000)", "No own legal tender", "16.1%", "0.7", "5b"], ["Panama", "No (US dollar since 1904)", "No own legal tender", "41.7%", "1.0", "5b"]]}, {"type": "p", "text": "Sources: IMF de facto exchange rate classification for 2023 (some regimes have changed since), BIS debt securities statistics (general government, international market, foreign currency, mid 2026, over 2024 output), Chinn-Ito capital openness index (2023), Fed and Bank Negara holder data, the ADB for Indonesia and Thailand. Central bank holdings of government debt: Fed 14% (October 2026), Bank of Japan about 43% (end 2025), Bank Indonesia 29.4% (June 2026), Bank Negara 3.8% (June 2026). In 2023 about two thirds of IMF members did not let their currency float in the IMF's sense."}]}
```
**Edit 108. rb-clubs block 30, insert_after**
```json
{"type": "deeper", "label": "What people say, and what the schools say", "blocks": [{"type": "table", "cols": ["What people say", "Verdict"], "rows": [["Printing more money just raises prices (a short with about 75 million views)", "Half true. Printing beyond what people want to hold raises prices. How much depends on the rung"], ["Any country can print its way out", "False for rungs 4 and 5. Even the economists who stress printing power limit it to countries that pass locks 1 and 2"], ["The US can print forever", "Partly true. It can pay in dollars unless Congress blocks payment through the debt limit. It cannot choose what those dollars buy or what yield markets demand. Its interest bill passed $1 trillion in 2026"], ["The G20 is a useless talking shop", "Half true: true in calm years, false for 2008 to 2009"]]}, {"type": "table", "cols": ["School", "Who can print, in its strongest form", "Its blind spot"], "rows": [["MMT", "A state with a floating currency that borrows only in it cannot be forced to default. The limit is inflation. Best example: Japan", "Lock 3 for small open economies, whose currency falls when they print"], ["Hard money", "Every paper printer debases in the end. The only real limit is lost trust. Best example: the long fall of paper money against gold", "Timing. The dollar has held rung 1 for 55 years since 1971"], ["Mainstream", "Room to print depends on the currency of the debt, who holds it, and interest rates against growth. Foreign holders of local bonds can still trigger a currency run", "It underweights politics and security"]]}]}
```
**Edit 111. rb-clubs block 40, replace**
```json
{"type": "table", "cols": ["Who holds Malaysia's federal government debt, Ministry of Finance measure (end June 2026)", "Share"], "rows": [["EPF", "30.5%"], ["Banks", "28.5%"], ["Insurers", "5.2%"], ["Bank Negara", "3.8%"], ["KWAP (civil service pensions)", "2.2%"], ["Development finance institutions", "2.1%"], ["Other domestic investors", "6.2%"], ["Mostly foreigners (the rest, implied)", "about 21.5%"]]}
```
**Edit 112. rb-clubs block 40, insert_after**
```json
{"type": "p", "text": "Bank Negara's own market count puts its share near 1% of government securities. The Ministry counts all federal debt, so its shares differ."}
```
**Edit 113. rb-clubs block 41, insert_after**
```json
{"type": "table", "cols": ["Malaysia's own brakes", "The rule", "Where Malaysia is"], "rows": [["Debt target (2023 fiscal law, Act 850)", "Bring federal debt down to 60% of output over the medium term", "63.1% (end June 2026)"], ["Debt-service limit (Act 850)", "Debt service no more than 15% of revenue", "15.8% (2026 projection)"], ["Statutory ceiling", "MGS, GII and Islamic Treasury bills no more than 65% of output", "Expected to stay under 65% in 2026 (Ministry of Finance, as reported)"], ["Central bank law", "The Central Bank of Malaysia Act 2009 governs any lending by Bank Negara to the government", "Bank Negara holds 3.8% of federal debt"]]}
```
**Edit 114. rb-clubs block 41, insert_after**
```json
{"type": "p", "text": "So Malaysia has two kinds of brake. The laws are the legal brakes, and today it is above two of its own lines. The ringgit is the market brake."}
```
**Edit 115. rb-clubs block 44, replace**
```json
{"type": "table", "cols": ["", "Malaysia", "Indonesia", "Thailand", "Singapore"], "rows": [["Club seat", "none", "G20", "none", "none"], ["Openness (0 to 1)", "0.42", "0.42", "0.42", "1.00"], ["Foreigners hold of government bonds (ADB, same source)", "21.4% (Mar 2026)", "12.8% (Jun 2026)", "9.3% (Mar 2026)", "not checked"], ["Central bank holds of government bonds", "3.8%", "29.4%", "8.0%", "not checked"], ["Reserves, 2024", "$116 billion", "$156 billion", "$237 billion", "$384 billion"]]}
```
**Edit 116. rb-clubs block 49, replace**
```json
{"type": "table", "cols": ["Game", "The shape", "Where it settles"], "rows": [["Stag hunt (coordination)", "Everyone gains most if all act. Acting alone is costly", "All act or none. Each acts only if it expects the others to"], ["Prisoner's dilemma", "Each gains by cheating whatever the other does", "Both cheat and both end up worse off"], ["Free rider", "A shared good is paid for by some and enjoyed by all", "Each player's best move is to let others pay"], ["Focal point", "Many choices would work, so players pick the one everyone expects", "The habit wins, even if others are as good"], ["Chicken", "Two players drive at each other", "Each tries to look more committed so the other swerves"], ["Run", "Lenders who expect others to stay, stay. Those who expect others to flee, flee first", "The same borrower can be safe or bust depending on belief. Big reserves or a backstop make staying the best move"]]}
```
**Edit 117. rb-clubs block 54, replace**
```json
{"type": "deeper", "label": "Tripwires: dates that would change the picture", "blocks": [{"type": "table", "cols": ["Game", "Players", "Real case", "Tripwire to watch"], "rows": [["Stag hunt", "G20 governments and central banks", "London, 2 April 2009: $1.1 trillion package", "Does the Miami summit (14 to 15 December 2026) end with a declaration all present sign?"], ["Free rider", "Official lenders, private bondholders, the borrower", "2020 debt pause: one private lender joined", "Does Ethiopia's bond exchange settle by 31 March 2027?"], ["Prisoner's dilemma and chicken", "Big trading economies", "Early 1930s tariff war, the 2010 currency war, 2025 tariffs", "Do the US and China extend their truce, due around 10 November 2026?"], ["Focal point", "Central banks, exporters, borrowers", "Dollar 56.7% of reserves, yuan 2.1%", "IMF reserve data for Q3 2026, due about end December 2026"], ["Run on a currency", "Speculators, Asian central banks, the IMF", "Malaysia's reserves: $21.5 billion (1997) to $132.6 billion (2026)", "Malaysia's reserves below 0.8 times short-term foreign debt in any 2027 release"], ["Run on debt", "Holders of a state's debt", "Japan borrows cheaply, Sri Lanka defaulted, Greece needed bailouts", "Malaysia's foreign share above 25% or below 18% in a 2027 release"]]}]}
```
**Edit 118. rb-clubs block 59, replace**
```json
{"type": "check", "q": "Malaysia borrows 98.8% of its federal debt in ringgit at home, yet a sell-off by foreigners can still weaken the ringgit. Why, and which rung is it on?", "a": "Domestic debt means borrowed in ringgit in the local market, not held by Malaysians. Foreigners hold about a fifth of its government bonds and can leave the currency, so it only partly opens lock 3. Rung 3, near the top."}
```
**Edit 119. rb-clubs block 60, insert_after**
```json
{"type": "check", "q": "From the Bonds chapter: a foreign fund sells Malaysian government bonds. Which part of your life can it reach, and is it automatic?", "a": "The ringgit, and through it import prices. Not automatic: in 2026 the ringgit held near 4.08 while US yields rose."}
```
**Edit 120. rb-clubs block 60, insert_after**
```json
{"type": "callout", "label": "Day 3 card", "text": "Come back in three days and answer without looking: name the three locks, the game behind the 2020 debt pause, and Malaysia's two kinds of brake."}
```
**Edit 121. rb-clubs block chapter, set_field rules**
```json
["A club is not a government. A promise binds only when each member passes its own law.", "Clubs delivered in crises and drifted in calm years. Read every summit against the regime it meets in, and ask which promises are being counted.", "Before you say a country can print its way out, check the three locks: its own currency, debt in that currency, and markets that let it print.", "Malaysia's brakes are the ringgit and its own fiscal laws. Watch who holds its bonds, not only how much it owes.", "Read any headline as a game: players, moves, payoffs, who moves first, and what the game leaves out."]
```
**Edit 122. rb-clubs block 0, replace**
```json
{"type": "tldr", "items": ["The G7, G10 and G20 are clubs, not governments: no treaty, no money of their own, no power to force anyone.", "The G20 moved fast in the 2008 to 2009 crisis and slowly in calm years. That is a base rate, with exceptions.", "Printing power is a ladder with three locks: its own currency, debt owed in that currency, and markets that let it print without a crash.", "Euro members, Ecuador and Panama cannot print on their own. Turkey, Argentina and Sri Lanka owed much of their debt in dollars and paid with inflation or default.", "Malaysia is in no club but lives by club rules. Rung 3, near the top: 98.8% of its federal debt is borrowed in ringgit at home, yet foreigners hold about a fifth of its government bonds. Its brakes are the ringgit and its own fiscal laws.", "Five questions open the game board, and a four-step routine turns any headline into a game."]}
```
**Edit 123. rb-clubs block 1, replace**
```json
{"type": "bridge", "label": "Built on Levels 1 and 2: recall these before you start", "items": [{"id": "rb-worldbs", "text": "The G10 is really eleven countries. Greece borrowed in a currency it could not print, much of it from foreigners."}, {"id": "rb-moneymake", "text": "Banks are the everyday printer, the government plus the central bank the emergency printer. Buying dollars creates ringgit."}, {"id": "rb-em", "text": "In September 1998 Malaysia imposed capital controls and pegged the ringgit at 3.80 to the dollar, until July 2005."}, {"id": "rb-leader", "text": "Everyone uses the dollar because everyone else does. After 1997, countries short of dollars built reserves."}, {"id": "rb-09", "text": "The US owes dollars it can create. Spain owed silver it could not."}]}
```
**Edit 124. rb-clubs block 15, replace**
```json
{"type": "p", "text": "Score: 3 delivered, 4 partly, 2 not delivered, 1 stalled. So the suspicion is half right, and it depends on which promises you count, which is why our rule is stated above. The fast wins (2009, the 2020 debt pause, the 2021 SDRs) all came in crises. In calm years the G20 has moved slowly, and in 2025 and 2026 it split in the open. The impression fits October 2026. It would not have fitted April 2009."}
```
**Edit 125. rb-clubs block 16, replace**
```json
{"type": "insider", "label": "The game behind the scorecard", "text": "In a crisis the G20 plays a stag hunt: acting together pays most, but each member acts only if it expects the others to, and a shared shock makes everyone expect it. Even in 2009 some did less than others. In calm years it plays free-rider games. A club with no treaty can coordinate the willing, not force the unwilling."}
```
**Edit 126. rb-clubs block 24, replace**
```json
{"type": "steps", "items": ["Lock 1, the law. Does it issue its own currency? Italy, Ecuador and Panama do not. They use the euro or the US dollar, made by someone else.", "Lock 2, the debt. Does the state owe its debt in money it can create? Sri Lanka could print rupees, but owed dollars, and stopped paying on 12 April 2022.", "Lock 3, the market. Can it print a lot in a crisis without a currency crash or runaway prices? That depends on whether the world wants its money, how open its markets are, and its inflation record. Turkey and Argentina had their own money but owed a large part of their debt in dollars, and saw inflation reach 72% (2022) and 220% (2024). They failed lock 3 and partly lock 2."]}
```
**Edit 127. rb-clubs block 29, replace**
```json
{"type": "p", "text": "The rungs are our grading, not an official list. Two edges: Indonesia's central bank holds about 29% of its government's debt (June 2026), after buying from 2020 to 2022 and again in 2026, yet inflation was 1.9% in 2025. A rung 3 printer can print for a while if markets trust its brakes. Germany sits on rung 5b with the cheapest borrowing in the euro area, because markets trust its budget. And the euro area as a whole can print through the ECB, on conditions."}
```
**Edit 128. rb-clubs block 39, replace**
```json
{"type": "p", "text": "Malaysia sits in no money club. Indonesia is the only Southeast Asian G20 member. Malaysia's seats are ASEAN (a founder in 1967), APEC, the IMF, the Chiang Mai reserve pool with China, Japan and Korea, and a BRICS partner seat, announced in October 2024 and in effect from 1 January 2025. Yet it applies rules written elsewhere, such as the 15% global minimum tax from 1 January 2025, a deal the US helped write and later won a carve-out from."}
```
**Edit 129. rb-clubs block 45, insert_after**
```json
{"type": "deeper", "box_id": "45.peers", "label": "Malaysia in dates, and against its neighbours", "blocks": [{"type": "p", "text": "Since December 2016 Bank Negara's foreign exchange measures have pushed ringgit hedging onshore. The IMF classes them as capital flow management measures, and the authorities disagreed with its advice to phase them out (2022 Article IV, as reported by The Edge)."}]}
```
**Edit 131. rb-clubs block 45, replace**
```json
{"type": "p", "text": "Against Indonesia, Thailand and Singapore, Malaysia is typical in most ways: its own currency, a float with smoothing, debt at home, low inflation, a partly managed capital account. It is an outlier in five: the 1998 controls and peg, the highest foreign share of the three ASEAN peers checked (21.4% against 12.8% and 9.3%), a compulsory pension fund as its biggest lender, nearly half its debt in Islamic form, and a central bank that holds very little government debt."}
```
**Edit 132. rb-clubs block 46, replace**
```json
{"type": "insider", "label": "Where Malaysia sits", "text": "Rung 3, near the top. It opens lock 1 (its own currency) and lock 2 strongly (98.8% of federal debt borrowed in ringgit at home). It only partly opens lock 3: about a fifth of its government bonds sit with foreigners, the ringgit is not a reserve currency, and reserves are about 0.9 times its short-term foreign debt, below a common rule of thumb of 1. If Bank Negara printed for the budget, it would break Malaysia's own fiscal lines, foreigners and savers could leave, and a falling ringgit would raise import prices."}
```
**Edit 133. rb-clubs block 53, replace**
```json
{"type": "curiosity", "label": "Five starting questions", "items": [{"q": "Why did the G20 move within months in 2008 to 2009, but take years on poor countries' debts?", "a": "Two games. 2009 was a stag hunt (box 1): the shared fear of collapse made each member expect the others to act, and out came a $1.1 trillion package. Debt relief is a free-rider game (box 2): relief from one lender frees cash to pay the others. The 2020 pause covered $12.9 billion, but only one private lender joined, and Ethiopia's deal took more than five years to reach agreement in principle.", "from": "rb-leader"}, {"q": "If every country wants a tariff edge or a cheaper currency, what happens when they all try at once?", "a": "Tariffs are the clean prisoner's dilemma (box 3): all lose when all raise them, as in the tariff war of the early 1930s. Currencies are murkier: in the 1930s devaluing helped the countries that did it, and historians find that devaluing together would have sped recovery (Eichengreen and Sachs, 1985). Exits have been deals like the 1985 Plaza Accord, or truces like the October 2025 US and China pause, which can lapse. Two giants trading threats are playing chicken.", "from": "rb-leader"}, {"q": "Why does the world keep saving in US dollars even while complaining about the US?", "a": "A focal point (box 4). Money is useful because others use it. The dollar was 56.7% of world reserves in mid 2026, nearly three times the euro. The yuan was 2.1%, largely because China keeps capital controls.", "from": "rb-04"}, {"q": "Why did Malaysia and its neighbours pile up dollars after 1998 instead of spending them?", "a": "To change the payoffs of a run on their currency (box 5). In 1997 to 1998 the ringgit fell from about 2.50 to about 4.88, and Thailand, Indonesia and Korea had to accept IMF conditions. Malaysia's reserves rose from $21.5 billion in 1997 to $132.6 billion in June 2026. Big reserves make attacking a losing bet, and mean the country need not accept the IMF's terms.", "from": "rb-em"}, {"q": "Why can Japan owe about twice its economy and borrow cheaply, while Sri Lanka defaulted?", "a": "A run on the debt (box 6): who holds it, and in which money, largely decides it. Japan owes yen mostly to itself: its central bank holds about 43% and foreigners about 13% (end 2025). Sri Lanka owed dollars to foreigners and stopped paying on 12 April 2022. Malaysia borrows in ringgit, but foreigners hold about a fifth of its bonds, so its risk is a weaker ringgit, not default.", "from": "rb-worldbs"}]}
```
**Edit 134. rb-clubs block 53, insert_after**
```json
{"type": "table", "cols": ["Box 1. Stag hunt: London 2009", "Others stimulate", "Others hold back"], "rows": [["You stimulate", "Best: your spending leaks abroad, but theirs comes back as exports", "Worst: your spending leaks abroad and you carry the debt"], ["You hold back", "Middle: safe, but you add little to the recovery", "Middle: safe, but the slump deepens"]]}
```
**Edit 135. rb-clubs block 53, insert_after**
```json
{"type": "p", "text": "Settles: all act or none. In April 2009 shared fear made each expect the others to act. Misses: leaders were also rescuing their own banks, and some did less than others."}
```
**Edit 136. rb-clubs block 53, insert_after**
```json
{"type": "table", "cols": ["Box 2. Free rider: debt relief", "Other lenders give relief", "Other lenders hold out"], "rows": [["You give relief", "Good: the borrower recovers and pays more later", "Worst: your relief pays the others in full"], ["You hold out", "Best: you are paid in full from cash others freed", "Bad: the borrower stalls or defaults"]]}
```
**Edit 137. rb-clubs block 53, insert_after**
```json
{"type": "p", "text": "Settles: holding out pays each lender whatever the others do, so relief needs a rule binding all. The 2020 pause had none for private lenders. Misses: China's lenders had their own rules on losses."}
```
**Edit 138. rb-clubs block 53, insert_after**
```json
{"type": "table", "cols": ["Box 3. Prisoner's dilemma: tariffs", "Other keeps tariffs low", "Other raises tariffs"], "rows": [["You keep tariffs low", "Good: trade grows for both", "Worst: you lose sales and gain nothing"], ["You raise tariffs", "Best: you gain at the other's cost", "Bad: trade shrinks for both"]]}
```
**Edit 139. rb-clubs block 53, insert_after**
```json
{"type": "p", "text": "Settles: both raise and both lose, unless a deal or fear of next year's reply holds them back. Misses: tariffs also serve home aims such as revenue, jobs and security."}
```
**Edit 140. rb-clubs block 53, insert_after**
```json
{"type": "table", "cols": ["Box 4. Focal point: the dollar", "Others keep the dollar", "Others switch"], "rows": [["You keep the dollar", "Good: deep markets, cheap to trade", "Bad: you are left in the old money"], ["You switch", "Bad: thin markets, costly hedging", "Good, after a costly move"]]}
```
**Edit 141. rb-clubs block 53, insert_after**
```json
{"type": "p", "text": "Settles: all keep or all switch, and the habit is the dollar. Misses: sanctions risk. Freezing Russia's reserves in 2022 raised the cost of holding dollars for some."}
```
**Edit 142. rb-clubs block 53, insert_after**
```json
{"type": "table", "cols": ["Box 5. Run on a currency: 1997 to 1998", "Other funds attack", "Other funds stay"], "rows": [["You attack", "Small reserves: best, the currency breaks. Big reserves: bad, the defence holds and the bet costs you", "Worst: you bet alone and lose"], ["You stay", "Middle: you miss the gain, or the loss", "Middle: nothing happens"]]}
```
**Edit 143. rb-clubs block 53, insert_after**
```json
{"type": "p", "text": "Settles: with small reserves, all attack or none. Big reserves make staying each fund's best move, and the IMF becomes an outside option, not a must. Misses: in 1998 Malaysia used controls, not only reserves."}
```
**Edit 144. rb-clubs block 53, insert_after**
```json
{"type": "table", "cols": ["Box 6. Run on a government's debt", "Other holders stay", "Other holders sell"], "rows": [["You stay", "Good: paid in full", "Worst: left holding as the price or the currency falls"], ["You sell", "Bad: you give up the yield", "Bad, but better than staying: you got out first"]]}
```
**Edit 145. rb-clubs block 53, insert_after**
```json
{"type": "p", "text": "Settles: all stay or all sell. A pension fund at home mostly cannot leave the currency, a foreign fund can, so a state that owes its own money at home risks a weaker currency, not default. Misses: who pays the loss."}
```
**Edit 146. rb-clubs block 53, insert_after**
```json
{"type": "h", "text": "8. Read any headline as a game"}
```
**Edit 147. rb-clubs block 53, insert_after**
```json
{"type": "steps", "items": ["Players: who can act? Include the quiet ones.", "Moves: what can each do? Two moves each if you can.", "Payoffs: what does each get from each pair of moves? Best, good, bad or worst.", "Order and information: who moves first, and who sees what?", "Then ask what the game leaves out: elections, ideology, accidents and plain error."]}
```
**Edit 148. rb-clubs block 53, insert_after**
```json
{"type": "table", "cols": ["Step", "Worked example: \"Why Foreign Investors Disposed RM5.6 Billion In Malaysian Govt Bonds In July\" (Business Today, 10 August 2026)"], "rows": [["Players", "Foreign funds, local holders such as EPF and the banks, Bank Negara"], ["Moves", "Funds sell or stay. Locals buy or wait. Bank Negara can sell dollars"], ["Payoffs", "Selling early dodges a ringgit fall but gives up the yield. Locals mostly cannot leave the ringgit"], ["Order", "Funds watch US yields. Flow data come out a month later"], ["Game", "A run on the debt (box 6) that did not start: 0.43% of the market, about RM11 billion back into government bonds in August, the ringgit 4.09 to 4.08 in July"], ["Left out", "The research house blamed outside events: US and Iran tension, oil and US yields"]]}
```
**Edit 149. rb-clubs block 53, insert_after**
```json
{"type": "check", "q": "Your turn. The US and China truce is due around 10 November 2026. Fill in the four steps and name the game.", "a": "Players: the US and China. Moves: extend or escalate. Payoffs: both gain from calm trade, each gains more if the other backs down, both lose most from a clash. Order: each watches the other before the date. Game: chicken."}
```
**Edit 150. rb-clubs block 9, replace**
```json
{"type": "p", "text": "Malaysia's share of world exports is about two and a half times its share of world output. It lives by trade, so it lives by rules made in rooms it is not in. For each club's share of world wealth and debt, see the previous chapter."}
```
**Edit 151. rb-clubs block 14, replace**
```json
{"type": "table", "cols": ["Promise", "What happened", "Grade"], "rows": [["2009 crisis package ($1.1 trillion, plus $5 trillion of national spending plans)", "Made, including a new SDR allocation in August 2009. Most of the $5 trillion was plans already announced", "Delivered"], ["A Financial Stability Board", "Created in April 2009, still running", "Delivered"], ["2021 SDR allocation for all IMF members", "Made in 2021, with G20 backing", "Delivered"], ["Basel III bank rules", "Phased in from 2013. The US re-proposed the final part in March 2026, no final rule yet", "Partly"], ["2020 debt pause for poor countries", "$12.9 billion paused for 48 of 73 eligible countries. One private lender joined", "Partly"], ["The Common Framework for debt deals", "Each case took about 2 to more than 5 years (Chad, Zambia, Ghana, Ethiopia)", "Partly, slow"], ["A 15% global minimum tax", "In force in the EU, UK, Japan, Korea and Malaysia. The US never passed it and won a carve-out in January 2026", "Partly, then diluted"], ["No new protectionism (2009)", "Members kept adding barriers. The 2025 US tariffs broke the spirit outright", "Not delivered"], ["Phase out fossil fuel subsidies (2009)", "Global subsidies were still very large in 2022", "Not delivered"], ["The 2025 and 2026 summits", "The US boycotted Johannesburg in 2025, then as host shut South Africa out of Miami", "Stalled"]]}
```
**Edit 152. rb-clubs block 28, replace**
```json
{"type": "table", "cols": ["Rung", "What it means", "Examples"], "rows": [["1. Reserve issuer", "All three locks open with room. In a crisis the world buys its money", "US by far, then the euro area as a whole, Japan, the UK"], ["2. Sovereign printer", "All three open, but the world holds little of its money", "Canada, Australia, Switzerland, Korea"], ["3. Constrained printer", "Locks 1 and 2 open, lock 3 partly. Printing shows fast in the currency, in foreign selling or behind capital controls", "China (controls), India, Brazil, Mexico, Indonesia, South Africa, Russia, Malaysia"], ["4. Fragile printer", "Own money, but recently paid for printing with a crash, high inflation or default", "Turkey, Argentina, Sri Lanka, Zimbabwe"], ["5a. Tied by choice", "Could print, but tied its money to the dollar", "Saudi Arabia (peg), Hong Kong (currency board)"], ["5b. No printer of its own", "Must earn, tax or borrow the money it owes", "Euro members one by one, Ecuador, Panama"]]}
```
**Edit 153. rb-clubs block 48, replace**
```json
{"type": "p", "text": "Game theory asks: what is each player's best move, given what the others might do? Each game below is a box with two players, two moves each, and what you get in each cell, from best to worst."}
```
**Edit 155. rb-clubs block 10, replace**
```json
{"type": "p", "text": "None of these clubs has a treaty (a binding agreement between states), a binding vote, its own money or a large staff. They cannot pass a law, print a dollar or force a private lender. They work through bodies their members control: the IMF, the Financial Stability Board, the Basel committee that writes bank rules, and the OECD tax talks. Each member must still pass its own laws."}
```
**Edit 156. rb-clubs block 13, replace**
```json
{"type": "p", "text": "The owner suspects the G20 is playing around. Here is its record on ten big promises: the headline pledges with a checkable target, every crisis programme, and the latest summits. The grades are our judgment of the evidence."}
```
**Edit 157. rb-clubs block 20, replace**
```json
{"type": "check", "q": "Why did the G20 move fast in 2009 but slowly on poor countries' debts?", "a": "In 2009 shared fear made each member expect the others to act. Debt relief by one lender frees cash to pay the others, so each prefers to let others give it."}
```
**Edit 158. rb-clubs block 25, replace**
```json
{"type": "p", "text": "Each lock is needed and none is enough alone. Passing locks 1 and 2 lets a country pay in its own money, if its law allows and its parliament does not block payment, as the US debt-limit fights of 2011 and 2023 threatened. It cannot choose what that money will buy."}
```
**Edit 159. rb-clubs block 41, replace**
```json
{"type": "p", "text": "Federal debt was RM1.38 trillion at the end of June 2026, 63.1% of output. 98.8% of it is domestic debt: borrowed in ringgit in Malaysia's own market (Ministry of Finance). That does not mean held by Malaysians: foreigners hold about a fifth of the government bonds. Nearly half the debt (47.9%) is Islamic paper. Bank Negara, the central bank, holds only 3.8%, against about 29% at Indonesia's. Malaysia has not used its printer to fund the budget."}
```
**Edit 160. rb-clubs block 4, replace**
```json
{"type": "h", "text": "Part 1 of 4. The clubs, and whether they deliver"}
```
**Edit 161. rb-clubs block 17, replace**
```json
{"type": "callout", "label": "Stop here", "text": "Part 1 of 4 done. Try these three before Part 2."}
```
**Edit 162. rb-clubs block 21, replace**
```json
{"type": "h", "text": "Part 2 of 4. Who can really print money"}
```
**Edit 163. rb-clubs block 33, replace**
```json
{"type": "callout", "label": "Stop here", "text": "Part 2 of 4 done. Try these three before Part 3."}
```
**Edit 164. rb-clubs block 37, replace**
```json
{"type": "h", "text": "Part 3 of 4. Malaysia, outside every club"}
```
**Edit 165. rb-clubs block 46, insert_after**
```json
{"type": "callout", "label": "Stop here", "text": "Part 3 of 4 done. Try this one before Part 4."}
```
**Edit 166. rb-clubs block 46, insert_after**
```json
{"type": "check", "q": "Name Malaysia's two kinds of brake on printing for the budget.", "a": "The legal brakes in its fiscal laws (a 60% debt target and a 15% debt-service limit, both above the line today) and the market brake, the ringgit."}
```
**Edit 167. rb-clubs block 46, insert_after**
```json
{"type": "h", "text": "Part 4 of 4. The game the world plays"}
```
**Edit 168. rb-clubs block 3, replace**
```json
{"type": "p", "text": "Four parts, each ending in a stop box. Stop at any box and come back another day."}
```

---

## 7. Proposed changes for the owner (outside these two chapters, not applied without approval)
| id | Where | Change | Why |
|---|---|---|---|
| P-1 | L1 rb-leader | "A prisoner's dilemma: each country gains by weakening its currency or adding tariffs, but if all do it, trade shrinks and all lose. The 1930s round of competitive devaluations and tariffs is the classic case." becomes "A prisoner's dilemma: each country gains by adding tariffs, but if all do it, trade shrinks and all lose, as in the early 1930s. Currency wars are murkier: in the 1930s devaluing helped the countries that did it, and historians find that devaluing together would have sped recovery." Same fix to "A currency war as a prisoner's dilemma" | EH-1 (Eichengreen and Sachs, 1985) |
| P-2 | L1 rb-em | EPF "about 28%" of government bonds (December 2023 fund statement): add "and 30.5% of federal debt at the end of June 2026 (Ministry of Finance)" | Lane R7B I6. Newer, different measure |
| P-3 | L2.2 rb-moneymake | "The Bank of Japan owns about half of its government's bonds" against L2.3's "43% (end 2025)". Name the measure in each, or align to L2.3 | BR-4 |
| P-4 | L2.3 rb-worldbs | Tripwire wording "where no member can print its way out": add "the ECB can act for the whole area, on conditions" | Lane R7B I6 |
| P-5 | L1 rb-09 | After "The US owes dollars it can create", link to the L2.4 ladder and its third lock | Lane R7B I6 |
| P-6 | Both glossaries | Native-speaker check of the six Malay terms, then candidate additions (yield, coupon, maturity, secondary market, kadar keuntungan for profit rate) | Framer 3.1, PF-5. The court did not add unchecked terms |
| P-7 | Propagator | Run xref for "98.8%", "owed at home", "self-insurance", "coordination game", "deposits are born from loans", "share in an asset" across all pages | Changed rulings |
| P-8 | PLAN (section 8.1 or 4.5) | Make word caps a standing rule for Level 2 chapters: main path measured by round7/r7_wordcount.py, prose cap 1,800, a cold-reader re-run whenever a chapter changes by more than 20% | CR-1. The owner's "impossible to digest" complaint should not recur |
| P-9 | Next research round | Needs-data list in section 9 | Items the court could not source |

---

## 8. Claims table (court rulings)
| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R7X-01 | The edited Bonds main path is 3,499 words (court count), 1,720 of them running prose, against 5,039 for the draft on the same count | Model (count) | Confirmed | round7/r7_wordcount.py on the result of round7/r7_apply_court_edits.py | 2026-10-25 | 2026-10-25 | A re-count on the published page above 3,500 |
| R7X-02 | On the rebuilt gauge Linda scores 9 (High), Aisyah 2 (Low), the Rahmans 5 or 7 (Some), Hamid 0 (Low), and Hamid with his lump sum in a bond fund 10 (High) | Model | Confirmed (scripted on the edited JSON) | round7/r7_court_edits.json, edit for rb-bonds block 71 | 2026-10-25 | 2026-10-25 | A cold reader answering for a household as described lands in another band |
| R7X-03 | 98.8% of Malaysia's federal debt is domestic debt, borrowed in ringgit at home. It is not all held at home: foreigners hold about a fifth (21.5%) of government securities | T0 via press (MOF), T0 (BNM) | Confirmed | https://www.thevibes.com/articles/news/128170/debt-servicing-bill-hits-rm57.3b-as-malaysias-federal-debt-climbs-to-rm1.38-trillion-mof and https://www.bnm.gov.my/documents/20124/54166/Malaysia_Bond_Market_Report_2025.pdf | 2026-10-10 and 2026 | 2026-06-30 and 2025-12-31 | MOF defines domestic debt by holder |
| R7X-04 | GII issued since 2013 is built on murabahah, a deferred sale of a commodity, so holders earn profit, not interest | T2 | Plausible | https://www.muamalat.com.my/downloads/business-banking/GII-Murabahah2013.pdf | 2013 | 2026-10-25 | A Bank Negara document describing current GII as an asset-share (ijarah) structure |
| R7X-05 | EPF paid a 6.15% dividend for 2025. Fixed income returned 4.3% and gave 33% of income. Reported income includes unrealised mark-to-market gains and losses on securities | T0 via national news agency | Confirmed (court fetch) | https://www.bernama.com/en/news.php?id=2528719 | 2026-02-28 | 2025-12-31 | EPF annual report differs |
| R7X-06 | "EPF pays dividends only from realised income" is not supported by either source the red team cited | T2 (two press articles read) | Confirmed (absence in the cited sources) | https://www.bernama.com/en/news.php?id=2528719 and https://www.freemalaysiatoday.com/category/nation/2024/03/03/fixed-income-the-anchor-of-our-investment-says-epf | 2026-02-28 and 2024-03-03 | 2026-10-25 | An EPF primary document stating a realised-income dividend rule |
| R7X-07 | Profit paid to individuals on SC-approved sukuk is exempt from Malaysian income tax. Interest to individuals on government securities is generally exempt (second part via PwC, not read by the court) | T1 (SC), T2 (PwC via red team) | Confirmed (sukuk), Plausible (government securities) | https://www.sc.com.my/development/icm/incentives and https://www.pwc.com/my/en/publications/mtb/income-exempt-from-tax.html | undated pages | 2026-10-25 | Budget or Finance Act removes the exemption |
| R7X-08 | The Standardised Base Rate, tied only to the OPR, applies to new retail floating loans and refinancing from 1 August 2022. Existing loans stay on each bank's Base Rate | T1 | Confirmed (verifier R7V-06) | https://www.bnm.gov.my/-/pd-revised-reference-rate | 2021-08 | 2026-10-25 | BNM revises the framework |
| R7X-09 | The Public Finance and Fiscal Responsibility Act sets a 15% limit on debt service to revenue, a medium-term debt goal of 60% of GDP and a 3% deficit target. The ceiling on MGS, GII and Islamic Treasury bills is 65% of GDP | T2 (press, economist quoted) | Plausible (Act text not read) | https://theedgemalaysia.com/node/774267 | Dateline 15 October, year not shown | 2026-10-25 | The Act or the debt ceiling order states other limits |
| R7X-10 | Malaysia is above two of its own fiscal lines: debt service 15.8% of revenue (2026 projection) against 15%, federal debt 63.1% of GDP (June 2026) against the 60% goal | T0 via press plus R7X-09 | Plausible | https://www.thevibes.com/articles/news/128170/debt-servicing-bill-hits-rm57.3b-as-malaysias-federal-debt-climbs-to-rm1.38-trillion-mof | 2026-10-10 | 2026-06-30 | Revised MOF figures below the lines |
| R7X-11 | The 2.45% 12-month FD board rate comes from a page dated 19 March 2025, before the July 2025 OPR cut, and cannot be stated as current | T3 | Stale (removed from the page) | https://www.maybank2u.com.my/maybank2u/malaysia/en/personal/rates/fixed_deposit_account_rates.page | 2025-03-19 | 2026-10-25 | The current page shows 2.45% |
| R7X-12 | Malaysia was named a BRICS partner on 24 October 2024 and became one from 1 January 2025 | T2 | Confirmed | https://www.mida.gov.my/mida-news/malaysia-officially-a-brics-partner-country/ and https://www.malaymail.com/news/malaysia/2024/12/24/kremlin-malaysia-among-nine-countries-to-officially-become-brics-partners-from-january-1-2025/160914 | 2024-10-24 and 2024-12-24 | 2026-10-25 | A BRICS statement giving another date |
| R7X-13 | The 2009 London response fits a stag hunt (acting together pays only if each expects the others to act), not a game where acting together is each member's dominant move | Model on T1 (communique) | Plausible | http://www.g20.utoronto.ca/2009/2009communique0402.html | 2009-04-02 | 2009 | Evidence that a major member stimulated regardless of what others did and would have done so alone |
| R7X-14 | In the 1930s devaluation helped the countries that devalued, and wider coordinated devaluation would have sped recovery. Tariffs are the cleaner prisoner's dilemma | T2 (peer-reviewed) | Confirmed (literature) | https://www.nber.org/papers/w1498 | 1985 | 1930s | A later study overturning Eichengreen and Sachs |
| R7X-15 | Asian reserve building after 1998 is best taught as a run game against speculators, with the IMF as the outside option. Malaysia's reserves rose from $21.5 billion (1997) to $132.6 billion (June 2026) | Model on T0 | Plausible (framing), Confirmed (numbers) | https://api.worldbank.org/v2/country/MYS/indicator/FI.RES.TOTL.CD and https://www.bnm.gov.my/-/international-reserves-of-bank-negara-malaysia-as-at-30-june-2026 | 2026-10-08 and 2026-07 | 2026-06-30 | Reserves shown to track export policy only, with no link to attack risk |
| R7X-16 | Foreign-currency international bonds of general government, % of 2024 GDP, at 2026Q2: US 0.0, Japan 0.1, Malaysia 0.8, Indonesia 6.3, Turkey 7.4, Argentina 9.8, Sri Lanka 7.0, Saudi Arabia 11.7, Ecuador 16.1, Panama 41.7. The series misses loans and domestic dollar bonds | T0 | Confirmed (lane R7B-29) | https://stats.bis.org/api/v1/data/WS_DEBT_SEC2_PUB/ | 2026 release | 2026Q2 | BIS revision |
| R7X-17 | About 42% of Turkey's central government debt was in foreign currency in 2024 | T4 (aggregator of a World Bank series) | Plausible | https://www.theglobaleconomy.com/Turkey/government_debt_in_foreign_currency_percent/ | n.d. | 2024 | Turkish Treasury data give another share |
| R7X-18 | With the 2021 SDR allocation added and the selection rule stated, the G20 scorecard reads 3 delivered, 4 partly, 2 not delivered, 1 stalled | Model | Plausible | round7/lanes/R7B-clubs-print.md sections A3 and B | 2026-10-24 | 2026-10-25 | A T0 or T1 regrade of any item, or the three candidate items graded |
| R7X-19 | Thai foreign holders had 9.3% of Thai government bonds at end March 2026, so Malaysia (21.4%) has the highest foreign share of the three ASEAN peers checked | T0 relayed by ADB | Plausible (verifier R7V-11) | https://asianbondsonline.adb.org/thailand/market_summary/th_market_summary_202606.pdf | 2026-06 | 2026-03-31 | Bank of Thailand data differ |
| R7X-20 | Bank of Japan about 43%, foreigners about 13% of Japan's government debt at end 2025 (the courted L2.3 figure), replacing the unsourced 41% for June 2026 | Round 6 courted page | Confirmed (consistency) | site/rulebook.json chapter rb-worldbs | 2026-10-24 | 2025-12-31 | Bank of Japan flow of funds differ |
| R7X-21 | A rise in yields helps a saver adding new money only if yields stay above inflation. If yields rise because inflation rises, the saver does not gain | Mechanism | Confirmed (arithmetic of real yield) | round7/lanes/R7A-bonds-people.md section D3 | 2026-10-24 | 2026-10-25 | none (identity) |
| R7X-22 | In normal years most new US deposits come from bank loans. In 2020 to 2021 most came from Fed bond purchases and deficits (M2 up $6.15T, bank loans up $0.68T) | T0 via Round 6 | Confirmed | PLAN.md section 2B.4 | 2026-10-24 | 2021-12-31 | H.8 revision |
| R7X-23 | On 27 September 2022 the UK 30-year gilt yield rose 67 basis points within a few hours, and on 28 September its intraday range was 127 basis points | T2 | Confirmed (verifier R7V-05) | https://www.bankofengland.co.uk/-/media/boe/files/letter/2022/october/letter-from-jon-cunliffe-ldi-5-october-2022 | 2022-10-05 | 2022-09-28 | none (historical) |
| R7X-24 | About RM11 billion of foreign money came back into Malaysian government bonds in August 2026 (RM15.9 billion into all bonds) | T4 | Plausible (verifier R7V-04) | https://www.thestar.com.my/business/business-news/2026/09/09/peak-in-capital-market-net-inflows | 2026-09-09 | 2026-08-31 | BNM monthly flow data differ |
| R7X-25 | In 2022 the ringgit fell about 12% at its weakest (4 November) and about 5% over the full year | T3 | Confirmed (verifier R7V-02) | https://api.db.nomics.world/v22/series/FED/H10/RXI_N.B.MA | 2026-10-25 | 2022-12-30 | H.10 revision |

---

## 9. Needs data, and what is unsettled

### 9.1 Needs data (left off the page)
- Malaysian 10-year yield history 1998 to 2026 and real yields in a second regime (spec 3.11 part 9, 3.3.4)
- A Malaysian corporate bond default case and a credit spread series (3.3.7)
- A base rate for yield-curve inversions before recessions (3.3.6)
- Islamic home financing ceiling rates, and whether ASB behaves like a bond (PF-2, PF-4)
- The exact clause of the Central Bank of Malaysia Act 2009 on lending to the government, and the Malaysian rule behind government borrowing (BN-1, MMT-1)
- What a 1971 dollar buys today, from the BLS consumer price index (HM-1)
- Switzerland's purchases to hold the franc down, and Chile and Poland as peers (IE-7, PA-6)
- The 2021 SDR allocation size, an IEA fossil subsidy figure, and T0 or T1 evidence for the 2014 tax information exchange, central clearing and the 2010 IMF quota reform (SH-2, SH-5)
- Indonesia's full BRICS membership (PA-3)
- Share of government debt in own currency for countries other than Malaysia, and foreign-holder shares for the countries marked "not checked"
- Evidence grades for speed reading, brain-training games and sleep (LS-11)
- The current Maybank 12-month FD board rate (R7X-11)
- EPF's own statement of how the dividend treats unrealised gains and losses (R7X-06)

### 9.2 Unsettled
- **U-1. Cold-reader re-run.** The edited text has not been read by a fresh cold reader. Publication of both chapters should wait for a re-run scoring 8 or more of 10 on each, using the red team's 10 checks plus one gauge question and one headline-as-a-game question.
- **U-2. Readability grade.** The court measured words, not a grade level. A per-part grade count is still owed (framer 3.1).
- **U-3. Diagrams.** The touch-map diagram still draws twelve boxes while the main table shows six (the caption now points to the table and the box). The bond-lab widget's own labels were not checked for the word "rate". The orchestrator should look at both when applying the edits.
- **U-4. Tax wording.** "Generally" stands until the government-securities exemption is read in the Income Tax Act schedule or a current tax booklet the court can open.
- **U-5. Act 850.** The 15% and 60% lines rest on a press report quoting an economist. The Act's text should be read before the brakes table is treated as T1.
