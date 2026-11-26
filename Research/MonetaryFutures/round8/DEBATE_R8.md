# DEBATE_R8: Court-lite (completeness auditor plus judge), Round 8

Date: 2026-11-05. Tier: Standard. Role: Court card (engine/ROLES.md version 4.0), run as one agent covering the completeness auditor and the Judge. Chapter: Rulebook Level 4, L4.1 "Digital credit, dissected" (id rb-strc).
Read: ROLES.md (shared rules and Court card), PLAN.md sections 2B and 4.5, round8/FRAME_R8.md, CONTEXT_R8.md, both lane files and their tables, DRAFT_R8.md, VERIFY_R8.md, REDTEAM_R8.md, the paraphrased claim list in the scratchpad (not copied here), round7/r7_apply_court_edits.py and r7_court_edits.json for format, and the Level 1 and Level 2 text in site/rulebook.json for every bridge (rb-06, rb-12, rb-crypto, rb-moneymake, rb-bonds, rb-clubs, rb-em).
Fetches used: 5 of 5. (1) Tether third-quarter 2026 attestation summary (stablecoininsider.org). (2) congress.gov GENIUS Act text, refused with HTTP 403 (counted). (3) and (4) the enacted GENIUS Act on govinfo.gov (Public Law 119-27), two reads of one page for sections 3(b), 18 and 20. (5) World Gold Council above-ground stocks.
Files written: this file, round8/r8_court_edits.json (76 edits), round8/r8_apply_court_edits.py (applies them to a copy, never in place, then checks style, links and the word count). Builder scripts and the arithmetic are in the scratchpad (r8court/build_edits.py, trim.py, calc.py). site/rulebook.json was not edited. Nothing was committed or pushed.
General research, not personal financial advice.

## Pass checklist
- [x] Read the Court card, PLAN 2B and 4.5, the frame, context, both lanes and tables, draft, verifier and red team
- [x] Completeness auditor: every framer spec item for Q1 to Q5 marked present, partial or missing, before and after the court's edits (section 2.1)
- [x] Blind-spot list checked (section 2.2)
- [x] Channel table check: both directions, sizes in two regimes plus the 2022 stress year (section 2.3)
- [x] Word audit (only, solely, always, never, all, none, most, mostly, main, cannot, impossible, myth, wrong) on the edited main path, by script (section 2.4)
- [x] Overcorrection guard on every debunk (section 2.5)
- [x] Every red-team point and every verifier mismatch or label ruled on: accept, accept in part or reject, with a reason (section 3)
- [x] Core dispute settled with exact new text for every main-path block in Part 4 (section 4)
- [x] Stress section made consistent: one backing ladder, gross and net labelled, the note-put gap in Bitcoin, the 27 months as the model's best case, why the two mNAV readings differ (section 5)
- [x] Fairness and reader pass: South Sea, 1940 Act, 48 years, neutral start dates, S13 and S22 rows, voting and board duty, glossary, file path removed, Malaysian lines, labelled ringgit example, vote clause (section 6)
- [x] Main path within the draft plus about 20%: 4,056 words before, 4,880 after (plus 20.3%), counted by the round7/r7_wordcount.py rule (section 7)
- [x] No invented numbers. Every new number traces to a lane, the verifier, the red team or a court fetch, and court arithmetic is in r8court/calc.py. Gaps are listed as needs data and kept off the page (section 10)
- [x] Edit list as data, tested: applied cleanly to a scratch copy of site/rulebook.json, only rb-strc changed, no em-dash, en-dash or semicolon in any string of the chapter, all 28 bridge, curiosity, radiant and connects links name real chapter ids (section 7)
- [x] Proposed changes for the owner outside this chapter (section 8)
- [x] Claims table R8X-01 onward (section 9)
- [x] Style: no em-dashes, no en-dashes, no semicolons, "to" for ranges, they/them for the owner. No personal identifier in any request or file

---

## 1. Decisions in brief

1. **The core dispute (B1).** The red team is right. "No dollar ever leaves the dollar basket" is a true headline for buying and selling and a wrong answer for the basket question, the same shape as the Case 2 miss (PLAN 2B.5): it hides the one channel that creates money. A bank loan against Bitcoin creates a new deposit, and the talk itself names it as a tailwind (S6). The court also found a second creation channel inside the draft's own step 1: if the final buyer of the money fund's bill is a bank, the bank creates a deposit to pay for it (the rule in rb-moneymake). Part 4 is rebuilt on **three meters**: dollars (moved by trades, created by bank loans and bank purchases from non-banks, destroyed by repayment), ownership and risk (these cross), and market value (changes with no dollar crossing). The owner's concept is extended, not answered with "no": money does move between baskets, as ownership, risk and value, and at the edges as new dollars made against Bitcoin collateral. The ledger test is applied to stablecoins as well, stablecoins are placed once (a new-basket wrapper around old-basket assets), Tether's Bitcoin and gold are added at tier T4, a both-directions channel table with 2025, 2026 and 2022 sizes goes on the main path, five competing readings of "Set 1 absorbs Set 2" get dated tests, and a wrapper map turns the owner's phrase into a reusable tool.
2. **Stress section.** One backing ladder (6.1, 4.2, 4.5 and 3.4 times, each with its break-even price), gross labelled on the table, the note-put gap shown in Bitcoin (about 99,000 coins, 60% of a year's supply, if Bitcoin halves), the 27 months stated as the model's best case beside the third-quarter 2026 Bitcoin sales, and the two mNAV readings explained.
3. **Claims audit.** Recounted to 28 claims: 11 hold, 11 spin, 3 wrong, 3 cannot be checked. S16 (48 years) moves to "holds, with both yardsticks". S31 (1940 Act) moves to "spin (overstated)". S13 (the gold 10% to 5% argument) and S22 (the four-months-to-four-years ladder) are added, both spin.
4. **Length.** Main path 4,880 words against 4,056 (plus 20.3%, the court's cap is the draft plus about 20%). Part 4 grows from 1,396 to 2,028 words. To pay for it, the payoff boxes, the regime grid, two curiosity boxes and five claim rows move into go-deeper boxes, where nothing is lost.
5. **Counts.** 183 points ruled: 132 red-team points (blocking points, cold-reader items, expert voices, spec gaps, word audit, overcorrection and the three edits) and 51 verifier rows, flags and labels. Accepted 150, accepted in part 30, rejected 3 (SP-06 a wider comparison table, SP-13 Asian pools, V-50 the verifier's data limits). The two spec rejections are carried as needs data (section 10). Section 3 has the list.
6. **Before publication.** The cold-reader test must be re-run on the edited text (open item U-1), and the basket-pipe and flywheel-loop pictures in site/index.html need the label changes in section 8, because their words sit outside rulebook.json.

---

## 2. Completeness auditor

### 2.1 Framer spec items
"Draft" is DRAFT_R8. "After" is the chapter once round8/r8_court_edits.json is applied. MP means main path, GD a go-deeper box.

| Spec item | Draft | After | Where and note |
|---|---|---|---|
| Q1.1 contract terms | Partial | Present | Rate setting with the one-month SOFR floor, cumulative, declaration, call at $101, holder put, ranking behind debt and STRF, no vote (MP table [11]). The liquidation preference reset and STRE size stay in the lane (GD not needed for a reader) |
| Q1.2 legal status | Partial | Present | Equity, board duty to the common (MP [12]), Delaware surplus test with its break-even (GD 15) |
| Q1.3 balance sheets, two floors | Missing | Present | Five-step walk (MP), both floors with the $0.2 billion reverse repo reading (GD ledger box) |
| Q1.4 GAAP versus economics | Missing | Present | Fair value, $19.53 billion of third-quarter income from unrealized gains, temporary equity (GD 15) |
| Q1.5 tax | Partial | Present | Return of capital lowers the cost price (MP [22]), earnings and profits trigger (GD tripwires), Malaysian side to 2036 and withholding refund (MP callout) |
| Q1.6 comparison table | Partial | Partial | Eight instruments kept with four columns (GD 15). Columns for regulator, yield and liquidity and rows for SATA and a tokenized money fund not added (ruling SP-06) |
| Q1.7 overcorrection guard | Present | Present | [15.1], [24], [64.2] kept |
| Q2.1 to Q2.3 claims table | Partial | Present | 28 claims: 8 on MP, all 28 in GD 25 with sources named. Internal file path removed |
| Q2.4 historical claims | Partial | Present | Bank of England with the 1914 to 1925 break, gold-standard logic tested (S13) |
| Q2.5 overcorrection on every wrong | Partial | Present | S19a "well covered for now", S41 offshore case, S33 present value point, S31 now spin with its real core |
| Q2.6 say/do gaps | Partial | Partial | Third-quarter 2026 gap on MP [39]. The triple flywheel near mNAV 1 is implied by [33] and [39], not named as a gap |
| Q3.1 the loop | Present | Present | [31], [32] |
| Q3.2 brakes | Partial | Present | Policy below mNAV 1 (MP [33], [34]), index rules (GD tripwires). A rating event is not modelled (needs data) |
| Q3.3 stress model | Partial | Present | Gross labelled, months held fixed, note-put column, best-case wording, ladder. The mNAV 0.8 rows stay in R8B (the coverage numbers do not change with mNAV) |
| Q3.4 precedents | Partial | Present | Columns for how fast and who was paid first, closed-end fund discounts, BlockFi. Voyager and Three Arrows not added (no lane detail) |
| Q3.5 what is different | Present | Present | Corrected for South Sea |
| Q3.6 dated tests | Present | Present | Tripwires box, plus two confirming tripwires |
| Q4.1 channel table, both directions, two regimes | Missing | Present | MP table with 2025, 2026 and 2022, and a GD table for the smaller channels (section 2.3) |
| Q4.2 pool sizes | Partial | Partial | US pools and Bitcoin's value present. Asian and Malaysian pools named in the talk not sized (needs data) |
| Q4.3 ledger walk | Partial | Partial | Transactions (a), (c), (d) plus a bank loan, with the money meter per step. Transaction (b), a stablecoin holder swapping into tokenized STRC, not walked (ruling SP-17) |
| Q4.4 players | Partial | Present | 15 players in GD, banks, Treasury, Fed, index providers, short sellers, Malaysian regulators added |
| Q4.5 regime grid | Partial | Present | GD, with who gains, who loses and an index row. The MP channel table carries the regimes |
| Q4.6 competing hypotheses with dated tests | Missing | Present | Five readings A to E on MP, each with evidence and a dated test |
| Q4.7 scale check | Partial | Present | Pool shares on MP, the $10 trillion to $100 trillion model in GD 25 (R8B H3) |
| Q5.1 reader questions | Partial | Present | Ten questions (MP [63]) |
| Q5.2 yield traps | Present | Present | GD players box |
| Q5.3 worked ringgit example, labelled a model | Missing | Present | MP table, five cases |
| Q5.4 not advice | Present | Present | [3], [63], tldr |

Tally after the edits: 25 present, 4 partial, 0 missing (draft: 6 present, 19 partial, 4 missing).

### 2.2 Blind-spot list (framer section 5)
| # | Blind spot | After |
|---|---|---|
| 1 | Gross versus net | One ladder, both labelled (MP) |
| 2 | Bitcoin versus dollar coverage | S16 row and check [27] |
| 3 | Price date | Dated in [11], [33], [34], ladder |
| 4 | mNAV definition | Glossary and [33] |
| 5 | Legal form versus marketing word | Part 1 and the pattern insider |
| 6 | Contract versus discretion | [11], [12] |
| 7 | Flow versus price | Three meters, [56] counterexample |
| 8 | Stocks versus flows | Pool table and new-coin row |
| 9 | Regime | Channel table and GD regime grid |
| 10 | Holder type | Tax row (US), Malaysian callout. DeFi holder not covered (needs data) |
| 11 | Tax on paper versus practice | Withholding nuance, earnings and profits tripwire |
| 12 | Upstairs versus downstairs | GD ledger box |
| 13 | US versus elsewhere | Offshore stablecoins, Malaysia. Other-currency STRC copies not covered |
| 14 | Survivorship, start dates | Seven start dates |
| 15 | Founder control | GD 15 (about a third of votes, to confirm) |
| 16 | Who sells the Bitcoin | Step 2 and [56] |

### 2.3 Channel table check (Court card duty)
Both directions present on the main path: toward Bitcoin (preferred sales, share sales, Bitcoin purchases), creation (bank loans against Bitcoin, unsized), back to dollars (reserve, STRC buybacks, Bitcoin sales), both ways (ETFs), and the counter-pipe (stablecoins). Sizes for 2025 (boom), 2026 to date (the turn) and 2022 (the crypto bear, the stress year), all from R8B D1 and confirmed by the verifier where checked. The go-deeper box adds convertible notes, note buybacks, SATA, other treasury companies, cash dividends and money fund assets. A reader can see which channel dominates when ([53] on the main path). Unsized: bank loans against Bitcoin, ETF flows in 2025, money fund growth in 2026 (needs data, section 10). Pass, with the bank-loan gap stated on the page.

### 2.4 Word audit on the edited main path
Run by script on every main-path string after the edits. 47 hits (only 22, all 9, wrong 4, none 4, cannot 3, never 3, main 1, most 1), every one ruled.
| Word | Where | Ruling |
|---|---|---|
| only | tldr, bridge, steps, [33], [40], [44], checks | Each sits beside a number or a stated exception ("trades only move them, bank loans against Bitcoin create new ones"). Kept |
| never | [11], [18] (contract floor), [22] S13 row | Contract term, or a historical fact with its date. Kept |
| all | [8] (Saylor's layer), "almost all convertible notes", "all debt and preferred", "all 20 million mined coins", "not digital credit at all" | Definitions or numbers. Kept |
| none | channel table cells | Zero values. Kept |
| most | check [29] ("depend on most") | Question wording. Kept. "Malaysia does not tax most foreign income" rewritten to "with conditions and exceptions" |
| main | [12] "main legal duty" | Legal concept (directors' duty runs to the common when interests conflict). Kept |
| cannot | tldr tally, [8] (Saylor's words), [56] "It cannot promise to" | Tally category, quote, or a logical point backed by the 2025 to 2026 counterexample. Kept |
| wrong | tally, verdict column | Verdict labels, each with an overcorrection guard. Kept |
| mostly, solely, always, impossible, myth | none on the main path except the myth block's fixed label | The myth block keeps its renderer label. Its reality text has the guard ("well backed today") |
Removed by the edits: "mostly" in [0], [21], [49], [61], [62] and [15.0], "never leave" in [48], "all four steps" and "Money does not move between baskets" in [50], "every" in [23], [32], [37], [53], "Only while" in [62], "most" in [44], [62] and the rules.

### 2.5 Overcorrection guard (every debunk)
| Debunk | What it gets right, now on the page |
|---|---|
| "No dollar leaves the dollar basket" (the draft's own debunk of "flows into Bitcoin") | Kept for trades, and the owner's picture is shown to be literally true for bank loans and true as ownership, risk and value |
| S19a strongest credit | "Well covered for now" |
| S41 8% Bitcoin-backed token | Offshore tokens can hold Bitcoin. Tokenized funds can pay yield |
| S33 "made $10 billion" | Present value of the spread can be large if Bitcoin beats 12% for long enough (lane, GD row keeps "can be negative") |
| S31 1940 Act | Now spin: the real core (a fund could not build this stack on stocks) is on the page |
| S13 gold argument | "A lender may accept less against a rising asset" was cut for length from the main row, kept in the ruling. The row keeps the fact that the 12% is owed whatever Bitcoin does |
| S22 ladder | "It pays more than a money fund because it can fall like a share" |
| Ponzi critics | [24] kept: real asset, disclosed funding, but dependence on new money is real |
| South Sea (the draft overcorrected in Strategy's favour) | Real asset, premium collapsed, late buyers lost about 85% |
| 27 months (under-correction) | Best case, not a promise |
| [52] "the whole trick" (under-correction) | Replaced with the 2025 to 2026 counterexample |

---

## 3. Rulings

Every red-team point (REDTEAM_R8 sections 1 to 6) and every verifier row that is a mismatch, a "cannot check", a flag or a suggested label (VERIFY_R8). Block numbers are DRAFT_R8 numbers.

### 3.1 Red-team points

| # | Point | Source | Ruling | Reason |
|---|---|---|---|---|
| B1 | "Dollars never leave the dollar basket" is false for bank loans against Bitcoin | RT summary, 3.13, 3.5 | Accept | Core ruling, section 4. A loan creates a deposit (rb-06). The court adds a second creation case in step 1 (a bank buying the bill) |
| B2 | No both-directions channel table with two regimes | RT summary, 4(a) | Accept | Main-path table with 2025, 2026 and 2022, plus a go-deeper table (section 2.3) |
| B3 | "Every new stablecoin dollar must sit in bills or cash" is false for USDT, and stablecoins change basket inside the chapter | RT 3.6 | Accept | Limited to licensed US issuers, from 18 January 2027 at the latest (GENIUS Act section 20, court fetch). Stablecoins placed once in the bridge and the wrapper map |
| B4 | Stress section contradicts itself (1.0 times against "covered in every case") and 27 months sits beside real Bitcoin sales | RT 3.10 | Accept | Section 5 |
| B5 | South Sea "had almost no real asset" is wrong, in Strategy's favour | RT 3.8 | Accept | Row rewritten: real asset (government debt), premium collapsed, late buyers lost about 85% (1 minus 135 over 1,000) |
| B6 | Cold readers 7.0 and 7.5, below the pass mark of 8 | RT 1, 2 | Accept | Glossary, ladder, plain words below. The test must be re-run (U-1) |
| CR-01 | Reader A could not say why 6.1, 4.2 and 3.4 all appear | RT 1 q4 | Accept | One ladder with labels, glossary entry for gross and net |
| CR-02 | "Short-term dollar rate" meant nothing | RT 1 q2, 2 | Accept | One-month SOFR named and glossed, about 4% (V R8V-16) |
| CR-03 | Two mNAV readings unexplained | RT 1 q6, 2 q6 | Accept | Glossary and [33] |
| CR-04 | Convertible note, conversion price and "put back for cash" unknown | RT 1 q8, 2 q8 | Accept | Glossary entry |
| CR-05 | Malaysian risks half recalled, ringgit direction missing | RT 1 q10, 2 q10 | Accept | New Malaysian callout and worked example |
| CR-06 | Long jargon list (preferred stock, par, perpetual, junk, hurdle, 1940 Act, flywheel and others) | RT 1 terms | Accept in part | Six terms glossed. Junk and B- were already glossed. Hurdle and the 1940 Act moved to the go-deeper audit. "Money market fund" not glossed: it is taught in rb-bonds and rb-moneymake (14 mentions each) |
| CR-07 | [8] "why would that follow?" | RT 1 sentences | Accept | S13 tested in [22] and [8] says so |
| CR-08 | [35] "refinancing test ... as long as markets stay open" | RT 1 sentences | Accept | "as long as lenders and share buyers are still willing" |
| CR-09 | [53] "four to one" contradicts the ledger rule | RT 1, 2 | Accept | Rewritten as ownership of bills, like for like (14 times preferred sales) |
| CR-10 | [61] "Round 1" and "70 out of 100" | RT 1, 2 | Accept | "An earlier finding of this project", hypotheses A to E in words |
| CR-11 | [63] ringgit "moved 18%", which way? | RT 1 | Accept | "rose about 22% ... a dollar asset lost about 18% in ringgit" |
| CR-12 | $8 billion against $14.7 billion unexplained | RT 1 numbers | Accept | Pool table header names both parts |
| CR-13 | "39 months" on every stress row | RT 1, 2 | Accept | Column says "held fixed" |
| CR-14 | 1.0 times at minus 70% against "below 1 only near $18,000" | RT 1 numbers | Accept | B4, section 5 |
| CR-15 | "110%" unclear | RT 1 numbers | Accept in part | Kept, row label "New Bitcoin mined in a year", and [56] reads it ("Against new coins it is large") |
| CR-16 | "1.3 million Bitcoin, 6.5%" unclear | RT 1 numbers | Accept | "6.5% of coins mined so far" (V R8V-10) |
| CR-17 | "$60,000 of US assets" | RT 1 numbers | Accept | "US estate tax can apply above $60,000 of US shares" |
| CR-18 | Stablecoins in Set 2 in the bridge, in the dollar basket in Part 4 | RT 2 q9 | Accept | B3 |
| CR-19 | "Settles" and "Misses", and best or worst for whom | RT 1, 2 | Accept | "Where it ends up" and "What it leaves out". Box 1 header says "outcome for your company" |
| CR-20 | Box 3 "affiliates" | RT 1, 2 | Accept | "sister companies" |
| CR-21 | [52] "the whole trick" (whose trick?) | RT 2 | Accept | Removed (3.7) |
| CR-22 | Did not know "spin" | RT 1 q5 | Accept | Defined in [21] |
| CR-23 | PIDM and RM need a gloss | RT 2 | Accept in part | PIDM explained by its own sentence. RM left, the readers are Malaysian |
| CR-24 | "dressed as credit", "rounding error", "trickle", "gapped", "mark prices daily", "tax notice", "market-structure bill" | RT 1 terms | Accept in part | First five removed or explained. The last two stay inside go-deeper boxes |
| CR-25 | "The tax comes back when you sell" logic | RT 2 | Accept | "each payment lowers your cost price, so the tax returns when you sell" |
| CR-26 | Shared fix: six-line box at the top of Part 1 | RT 2 | Accept | Cards block "Six words you need" before Part 1 |
| CR-27 | Reader A thought a moving ringgit might help | RT 1 q10 | Accept | It can: the worked example shows a 27.7% gain if the ringgit weakens and a 4.7% gain if it strengthens |
| 3.1a | No vote, even if dividends stop | RT 3.1 | Accept | Row in [11] |
| 3.1b | Nothing stops new debt ahead of STRC | RT 3.1 | Accept | Row in [11] |
| 3.1c | "Four to six times" is a snapshot the company can lower | RT 3.1 | Accept | tldr and S18 row |
| 3.1d | The issuer sets its own coupon, which no bondholder would accept | RT 3.1 | Accept in part | Already in [11]. Not repeated for length |
| 3.2a | The board owes its duty to the common (Trados, 2013) | RT 3.2 | Accept | Sentence in [12], tier T4 (law-firm summary), R8X-12 |
| 3.2b | Delaware surplus test (section 170) and its break-even | RT 3.2 | Accept | GD 15, from R8A A2 |
| 3.3a | Malaysian resident individuals exempt on foreign income to 2036, with conditions | RT 3.3 | Accept | Callout. T4, R8A E7 and RT sources. "check the latest LHDN guideline" |
| 3.3b | Brokers may withhold 30% on the whole payment, refund needs a US return | RT 3.3 | Accept | Callout and worked example |
| 3.3c | Ringgit 4.80 to 3.97, about 21% rise, about 17% loss, about 1.4 years of dividend | RT 3.3 | Accept in part | Direction accepted. Numbers taken from the verifier's Fed H.10 monthly averages (4.7655 to 3.911, February 2024 to February 2026: ringgit up 21.8%, dollar asset down 17.9%), because the red team's February 2024 level was from memory (T5) |
| 3.3d | January 2026 was a seven-year ringgit high, so the window flatters the warning | RT 3.3 | Accept | The worked example shows both directions, using past levels only |
| 3.4a | Why the two mNAV readings differ | RT 3.4 | Accept | [33], glossary, check [43] |
| 3.4b | Stated policy below mNAV 1 | RT 3.4 | Accept | [33], [34], labelled as reported (T4, R8B-23) |
| 3.4c | Closed-end fund discount row | RT 3.4 | Accept | GD 41 |
| 3.4d | A discount can last for years | RT 3.4 | Accept | Same row |
| 3.5a | S22 ladder never audited | RT 3.5 | Accept | Row in [22], spin |
| 3.5b | Money fund rule 2a-7 daily liquidity contrast | RT 3.5 | Accept in part | The contrast is made with STRC's June fall and its volatility against a bond fund (R8A). Rule 2a-7 detail left in R8A C |
| 3.6a | "Every ... must" holds only for US-licensed issuers, reserve rules start in 2027 | RT 3.6 | Accept | B3. Court fetch: effective the earlier of 18 months after enactment or 120 days after final rules (section 20) |
| 3.6b | Ledger test used on one pipe only | RT 3.6 | Accept | [57] and the meters table |
| 3.6c | Compared stablecoin growth with all of Strategy's raising, not digital credit | RT 3.6 | Accept | 14 times preferred sales ($100.5 billion over $7.04 billion) |
| 3.6d | State once which basket stablecoins belong to | RT 3.6 | Accept | Bridge (rb-crypto) and wrapper map |
| 3.6e | USDT holds about 100,000 Bitcoin and about $19 billion of gold among about $191 billion | RT 3.6 | Accept | Court fetch of the attestation summary: $8.37 billion of Bitcoin, $19.08 billion of gold, $191.45 billion of assets on 30 September 2026. Still T4 (summary of a T2 accountant's report) |
| 3.7a | New coins are not the supply that sets the price. Strategy bought 137% in 2025 and Bitcoin fell | RT 3.7 | Accept in part | Accepted with verified dates: weekly high $126,198 in the week of 2 October 2025 (R8B-04) and the 2026 low of about $57,700 on 1 July (R8V-07). The red team's "about $60,000 by February 2026" is T4 and not used |
| 3.7b | Strategy buys over the counter from long-term holders, miners spend on power and wages | RT 3.7 | Accept in part | Step 2 says "a miner or an early holder". The over-the-counter detail has no source in the lanes and is left off |
| 3.8a | South Sea | RT 3.8 | Accept | B5 |
| 3.8b | Gold standard suspended 1914 to 1925 | RT 3.8 | Accept | Row in the GD audit table |
| 3.8c | Goldman Sachs Trading Corporation peaked near $222, $104 was the issue price | RT 3.8 | Accept | "Issued at $104, above $220 in early 1929, under $2 by 1932" (V row) |
| 3.9a | S16 is not spin: he gave the dollar figure himself (S24) | RT 3.9 | Accept | "Holds, with both yardsticks" and check [27] |
| 3.9b | Neutral start dates (each January 2016 to 2022, or the median) | RT 3.9 | Accept in part | Those series are not in the lanes (needs data). The row now reports the lane's seven start dates, which include both a peak and a low: MSTR led from five, gold from the 2021 peak, MSTR last from January 2025 |
| 3.9c | Every tripwire is a warning | RT 3.9 | Accept | Two confirming tripwires added (rate cut with price at or above $100, three years of dividends by August 2028) |
| 3.10a | Label the stress table gross | RT 3.10 | Accept | Section 5 |
| 3.10b | 27 months is beside real Bitcoin sales with the reserve full | RT 3.10 | Accept | "the model's best case, not a promise" |
| 3.10c | Add the note-put gap in Bitcoin | RT 3.10 | Accept | New column (R8B B) |
| 3.10d | Add a June-analogue column: coverage is not price | RT 3.10 | Accept in part | As a sentence, not a column. The lanes have no June stack, so the court uses a lower-bound model (R8X-10) |
| 3.11a | Balance is good, errors run both ways | RT 3.11 | Accept | Noted. Each error fixed |
| 3.11b | S31 to "Overstated" | RT 3.11 | Accept | "Spin (overstated)", keeping four verdict kinds |
| 3.11c | S16 to "holds" | RT 3.11 | Accept | 3.9a |
| 3.11d | Counter-cherry-picked start dates | RT 3.11 | Accept in part | 3.9b |
| 3.11e | Super-voting aside in [14] | RT 3.11 | Accept | Removed from [14]. Founder control moved to GD 15 with the share counts. The red team's "class A alone about 98.6%" is kept as a court model in R8X-13 only, because it assumes ten votes per class B share |
| 3.11f | Box 2 "Best for you" reads like a trading tip | RT 3.11 | Accept | "Outcome for you" |
| 3.11g | Repeat "general education, not advice" inside [63] | RT 3.11 | Accept | Done |
| 3.11h | The S22 advice line is the bigger risk | RT 3.11 | Accept | 3.5a |
| 3.12a | 1940 Act: one class of senior stock, 200% coverage, section 3(a)(1)(C) registration | RT 3.12 | Accept | Honest version in the GD audit. T1 per RT source (section 18(c) as quoted in an SEC filing) |
| 3.12b | "Every day" is loose | RT 3.12 | Accept | Removed |
| 3.13a | The concept is answered with a "no" (Case 2 pattern) | RT 3.13 | Accept | Section 4 |
| 3.13b | Three meters | RT 3.13 | Accept | Main-path table and insider |
| 3.13c | Bank-loan step as a fifth step | RT 3.13 | Accept | Step 5 |
| 3.13d | Wrapper map, with Saylor's 8% token as three layers | RT 3.13 | Accept | Table and paragraph |
| 3.13e | USDT as a first partial case of Bitcoin-backed digital money | RT 3.13 | Accept | Wrapper map and curiosity |
| 3.13f | Curiosity: bank loan, USDT, Strategy against the US gold share | RT 3.13 | Accept | The gold question moved to the tripwire box for length. Gold stock 224,200 tonnes from the court's World Gold Council fetch, not the red team's 216,000 |
| 3.13g | [14] is thin | RT 3.13 | Accept in part | The vote question rewritten, the $100 question kept, the box moved into GD 15 for length |
| SP-01 | Q1.1 voting, liquidation reset, call, STRE | RT 4(a) | Accept in part | Voting and call on the page. Liquidation reset and STRE stay in R8A |
| SP-02 | Q1.2 Delaware surplus and board duty | RT 4(a) | Accept | 3.2 |
| SP-03 | Q1.3 two floors missing | RT 4(a) | Accept | GD ledger box |
| SP-04 | Q1.4 GAAP missing | RT 4(a) | Accept | GD 15 |
| SP-05 | Q1.5 tax partial | RT 4(a) | Accept | Basis step-down wording, tripwire, Malaysian side |
| SP-06 | Q1.6 columns and rows (SATA, tokenized money fund) | RT 4(a) | Reject | The box is already four columns wide on a phone and R8A C holds the extra columns. A tokenized money fund row needs a worst-loss figure the lanes do not have (needs data). SATA sits in R8A A4 |
| SP-07 | Q2 only 12 of 26 claims, S13, S22, S24, S32, S42, S45 missing, internal file path | RT 4(a) | Accept | All 28 claims on the page (8 MP, 20 GD), path removed |
| SP-08 | Q2.6 triple flywheel near mNAV 1 not named as a say/do gap | RT 4(a) | Accept in part | [39] names the third-quarter gap. A separate "say/do" label was not added for length |
| SP-09 | Q3.2 index exclusion, rating event, policy below 1 | RT 4(a) | Accept in part | Policy and index added. A rating event has no lane data (needs data) |
| SP-10 | Q3.3 mNAV 0.8 case and convert gap | RT 4(a) | Accept in part | Convert gap added. mNAV 0.8 rows left in R8B: coverage, reserve months and Bitcoin sales do not change with mNAV in the model, only the share price does |
| SP-11 | Q3.4 closed-end fund discounts, BlockFi, Voyager, Three Arrows, two columns | RT 4(a) | Accept in part | Discounts, BlockFi and both columns added. Voyager and Three Arrows have no lane detail |
| SP-12 | Q4.1 channel table missing | RT 4(a) | Accept | B2 |
| SP-13 | Q4.2 Asian pools | RT 4(a) | Reject | No Asian or Malaysian pool data in the lanes (needs data). The red team itself said acceptable if left |
| SP-14 | Q4.3 transaction (b), tokenized STRC, and "rise, fall or only move" per step | RT 4(a) | Accept in part | Money meter stated per step. Transaction (b) not walked (needs a lane walk, U-4) |
| SP-15 | Q4.4 missing players | RT 4(a) | Accept | Six players added |
| SP-16 | Q4.5 who gains, who loses, size, index and accounting rows | RT 4(a) | Accept in part | Gains, losses and index row added. Sizes are in the channel table. An accounting-change row has no lane data |
| SP-17 | Q4.6 competing hypotheses | RT 4(a) | Accept | Five readings with dated tests |
| SP-18 | Q4.7 scale check against $10 trillion to $100 trillion | RT 4(a) | Accept | GD audit row (R8B H3 model) |
| SP-19 | Q5.1 ten questions | RT 4(a) | Accept | [63] |
| SP-20 | Q5.3 worked ringgit example | RT 4(a) | Accept in part | Added with the court's own inputs (4.05 today, past levels 3.91 and 4.77) instead of the red team's suggested 4.40 and 4.00, which have no source |
| SP-21 | Blind spot 15 and curiosity 5 and 10 | RT 4(a) | Accept in part | Founder control and the gold share added. GBTC stays in the precedents box |
| WA-01 | "mostly right" [0], [21] | RT 5 | Accept | Rewritten without the word |
| WA-02 | "never", "all" [48], [50], [61] | RT 5 | Accept | Section 4 |
| WA-03 | "No dollar actually enters Bitcoin" [0] | RT 5 | Accept | Kept in step 2 with the bank-loan door beside it |
| WA-04 | "every ... must" [53] | RT 5 | Accept | B3 |
| WA-05 | "Every claim that fails is a label" [23] | RT 5 | Accept | Three kinds of failure. The red team's "5 of 13" was not used (the recount changed the total) |
| WA-06 | "every link runs backwards" [32] | RT 5 | Accept | "each link can run backwards". The SVG label needs the same change (section 8) |
| WA-07 | "stays covered in every case" [37] | RT 5 | Accept | Section 5 |
| WA-08 | "Only while" [62] | RT 5 | Accept | The question was cut for length. Its point stays in Box 1 |
| WA-09 | "raised mostly by selling new shares" [49] | RT 5 | Accept | "raised by selling new shares" |
| WA-10 | "Most went to", "most new money" [44], [62] | RT 5 | Accept | 89% and "$0.59 billion of the $5.41 billion" |
| WA-11 | "mostly one issuer" [62] | RT 5 | Accept | "about 91% of it from one issuer ($13.4 billion)" |
| WA-12 | "mostly supports" [61] | RT 5 | Accept | Readings A to E |
| WA-13 | "mostly repaid in full" [15.0] | RT 5 | Accept | "repaid at par in most cases, after months to years" (go-deeper, R8A C) |
| WA-14 | "Most deals only move money" [1], rules | RT 5 | Accept | The Case 2 sentence. Bridge and rule now carry the creation exception, matching rb-moneymake |
| WA-15 | "cannot" [25.0] | RT 5 | Accept | No change needed |
| WA-16 | "Myth" [13] | RT 5 | Accept in part | The myth block's label is fixed by the renderer. The guard stays |
| WA-17 | four "Wrong" verdicts, S41 should read "for a US payment stablecoin" | RT 5 | Accept | S31 to spin, S41 scoped |
| WA-18 | "never" [11], [18] | RT 5 | Accept | Contract term, kept |
| WA-19 | always, solely, none, main, impossible | RT 5 | Accept | None needed |
| OC-1 | [50] "Money does not move between baskets" replaces one simple story with another | RT 6 | Accept | Section 4 |
| OC-2 | S31 and S16 | RT 6 | Accept | 3.9a, 3.11b |
| OC-3 | Counter-cherry-picked start dates | RT 6 | Accept in part | 3.9b |
| OC-4 | Super-voting aside | RT 6 | Accept | 3.11e |
| OC-5 | South Sea, 27 months, "the whole trick" | RT 6 | Accept | B5, B4, 3.7a |
| TE-1 | Rebuild Part 4 on three meters with the full channel table | RT 7(d) | Accept | Section 4 |
| TE-2 | Make the stress section consistent | RT 7(d) | Accept | Section 5 |
| TE-3 | Fairness and reader pass | RT 7(d) | Accept | Section 6 |
| N-1 | Bitcoin's 2026 low: $60,000 on 6 February or $57,740 in late June | RT note to verifier | Accept | Verifier: $57,740 intraday on 1 July 2026 (Kraken). The page says "about $57,700 on 1 July" |

### 3.2 Verifier mismatches, cannot-checks, flags and labels

| # | Point | Source | Ruling | Reason |
|---|---|---|---|---|
| V-01 | STRC outstanding $8.2B against $8.39B, both right at different dates | VERIFY resolution 1 | Accept | "about $8.2 billion on 1 November 2026" in [11] |
| V-02 | June low: $74.57 close against $71.25 intraday | VERIFY resolution 2 | Accept | Close as the headline. Box 2 gives both, labelled |
| V-03 | STRC 1-time price about $13,250 on today's stack | VERIFY resolution 3 | Accept | Ladder and GD audit, "depends on STRF's size" |
| V-04 | [11] floor rate is one-month SOFR, not overnight 3.97% | VERIFY main table | Accept | "one-month SOFR ... about 4%" |
| V-05 | [11] debt is $6.714B of converts plus about $0.04B secured | VERIFY, R8V-06 | Accept | "about $6.75 billion of debt, almost all convertible notes" |
| V-06 | [11] size: prefer a dated figure | VERIFY | Accept | Dated |
| V-07 | [14] super-voting clause cannot be checked in the 8-K | VERIFY | Accept | Removed (3.11e) |
| V-08 | [22] MSTR 51% reproduces near 46% | VERIFY, R8V-05 | Accept | Row says so |
| V-09 | [22] gold and S&P from the 2021 peak not re-fetched | VERIFY | Accept in part | Kept: the Bitcoin and MSTR leg reproduces and the gold and S&P figures are lane figures (T3, Yahoo). Marked in R8X-08 as lane-only |
| V-10 | [22] JPMorgan, Citigroup and Boeing volumes not re-fetched | VERIFY | Accept in part | Kept with "checked" added. The STRC side is confirmed |
| V-11 | [22] 1940 Act 200% coverage | VERIFY | Accept | Confirmed, used in the S31 row |
| V-12 | [22] GENIUS Act ban and reserve list | VERIFY | Accept | Confirmed, plus the court's section 3(b), 18 and 20 read |
| V-13 | [22] "$10 billion buys nine months" | VERIFY | Accept | Row moved to the GD audit unchanged |
| V-14 | [22] tax-equivalent yields | VERIFY | Accept | Kept in GD 25.1 |
| V-15 | [22] Bank of England record | VERIFY | Accept | Kept, with the 1914 to 1925 break (3.8b) |
| V-16 | [22] repair cost $2.10B notional, $2.04B paid | VERIFY | Accept | "about $2.1 billion of buybacks" kept |
| V-17 | [22] and [25.1] STRF size is a model: add the label at [22] | VERIFY flags | Accept in part | STRF's size no longer appears on the main path. GD 25.1 keeps "(model)" |
| V-18 | [24] operating cash $14.3M | VERIFY | Accept | Confirmed, kept |
| V-19 | [25.1] volatility | VERIFY | Accept | Kept, US bond fund added from R8A D1 |
| V-20 | [33] mNAV in November 2024 "about 3 to 4" cannot be checked, press 2.5 to 3.6 | VERIFY, R8V-12 | Accept | "about 2.5 to 3.5 at the late-2024 peak (press estimates)" |
| V-21 | [33], [34] mNAV today 1.10 and 0.88 at the 4 November close | VERIFY, R8V-13 | Accept | "about 1.1" and "about 0.9", dated 4 November |
| V-22 | [34] 2026 low $57,740 is 1 July intraday | VERIFY, R8V-07 | Accept | "about $57,700 on 1 July" |
| V-23 | [34] 12-month reserve rule not found in filings | VERIFY | Accept | "Company policy, as reported" |
| V-24 | [34] buybacks start below $100, not $99 | VERIFY, R8V-08 | Accept | Fixed in [12] and [34], with the $99.50 average |
| V-25 | [34], [40], [45] 2030A notes only about 5% out of the money | VERIFY note | Accept in part | Kept in the claims table (R8X-09). The page's "every conversion price is above today's share price" stays true |
| V-26 | [35] gap $8.90B and $3.97B | VERIFY | Accept | "about $8.9 billion", "about $4 billion" |
| V-27 | [36] stress prices round | VERIFY | Accept | Rounding only, kept |
| V-28 | [36] coverage column is gross | VERIFY | Accept | Labelled |
| V-29 | [36] months held fixed by design | VERIFY | Accept | Labelled |
| V-30 | [37] below 1 time near $23,500 gross, $17,700 net | VERIFY, R8V-09 | Accept | Ladder and [37] |
| V-31 | [39] "at carrying value" | VERIFY | Accept | "(at the value on its books)" |
| V-32 | [40] bought about 18%, net about 4% | VERIFY, R8V-04 | Accept | Curiosity rewritten |
| V-33 | [51] pool figures | VERIFY | Accept | Confirmed, kept |
| V-34 | [51], [62] date digital credit "late October 2026" | VERIFY | Accept in part | Table header says late 2026. The $14.5 billion 1 November figure is not used, to keep one number |
| V-35 | [53] stablecoin and Strategy figures, ratio 3.97 | VERIFY | Accept | Confirmed. The court compares with preferred sales instead (3.6c) and the 4 times figure is cut for length |
| V-36 | [55], [62] rivals near 0.9 are press only | VERIFY | Accept | "(press reports)" in Box 1 |
| V-37 | [56] June range | VERIFY | Accept | Box 2 |
| V-38 | [60] 10-year 4.90%, 3-month 4.21% | VERIFY | Accept | Kept |
| V-39 | [61] 6.5% is of the coins mined so far | VERIFY, R8V-10 | Accept | Fixed in reading A |
| V-40 | [62] 15 months of record | VERIFY | Accept | Kept |
| V-41 | [63] no treaty, 30%, $60,000 estate threshold | VERIFY | Accept | Kept |
| V-42 | [63] ringgit 18% with dates February 2024 to early 2026 | VERIFY, R8V-11 | Accept | "February 2024 to February 2026" |
| V-43 | [15.0] consol fall is a model | VERIFY | Accept | "(model from yields)" |
| V-44 | [41.0] Goldman issue and peak | VERIFY | Accept | 3.8c |
| V-45 | [41.0] South Sea "about £135 by the end of 1720" is safer | VERIFY | Accept | Used |
| V-46 | STRF senior to STRC is now T1 | VERIFY flags, R8V-14 | Accept | Ranking kept as fact |
| V-47 | SATA $1.294B is now T0 | VERIFY flags, R8V-15 | Accept | Used in the pool header and GD channel table |
| V-48 | May 2026 reserve drawdown (T4) not in the draft | VERIFY flags | Accept | Still not used |
| V-49 | Mismatch rate 10.3% combined, above 10%, so every headline claim re-checked | VERIFY | Accept | The verifier's pass covered every main-path number. The court's new numbers each trace to a confirmed row or a court fetch (section 9) |
| V-50 | Data limits: Yahoo 429, XBRL not re-fetched | VERIFY | Reject | No action possible this round. The affected numbers (gold and S&P returns, other preferred volumes) are lane-only and say so. Not a reason to drop them |
| V-51 | R8V-16 monthly SOFR definition not re-read | VERIFY | Accept in part | The court did not spend a fetch on the Annex. The page says "about 4%", which matches the overnight 3.97% the verifier read. If the Annex rate differs materially, [11] and [18] need a fix (U-6) |

---

## 4. Part 4: the core dispute and the plan

### 4.1 Ruling on "no dollar ever leaves the dollar basket"
**Accepted (B1).** The draft's ledger walk is right for the four trades it walks, and wrong as a headline, for three reasons.
1. **It hides a creation channel, the Case 2 pattern.** A bank loan against Bitcoin creates a new deposit, and repaying it destroys one (rb-06). The talk names it as a tailwind (S6: banks creating credit on Bitcoin). The draft's lane listed it (R8B D1 channel 8) and left it "not sized", then the chapter dropped it and stated an absolute four times ([0], [48], [50], [61]). PLAN 2B.5: a true headline is still a wrong answer if it hides the channel that matters.
2. **The court found a second one inside the draft's own step 1.** When a money fund sells a bill to pay the saver, the final buyer decides. A household or another fund only moves deposits. A bank pays by creating a deposit (rb-moneymake: banks "also create it when they buy a bond or anything else from someone who is not a bank"). R8B D3 said the public's deposits are unchanged when a bank is the final buyer. That line is corrected (R8X-18). The reverse also holds: when Strategy's dollar reserve buys bills from a bank, deposits shrink. Nobody publishes the final buyers, so the net is needs data. Upstairs, money funds and other non-banks used only about $0.2 billion of the Fed's reverse repo on 28 October 2026 (R8B-32), so the pipe barely touches the Fed's floor.
3. **One meter is not enough for a basket question.** The owner asked what moves between baskets. Dollars are one meter. Ownership and risk are a second, and they do cross. Market value is a third: each trade reprices every coin with no dollar crossing.

**The framing for Part 4: three meters.**
| Meter | Moves on | Digital credit result | Stablecoin result |
|---|---|---|---|
| Dollars | Trades move them. Bank loans and bank purchases from non-banks create them. Repayment destroys them | Trades only move. A bank loan against Bitcoin creates | Bill purchases only move |
| Ownership and risk | Who holds which asset | Bitcoin into a listed company, its risk onto savers | Bills behind crypto tokens |
| Market value | The last price | Can rise or fall by more than the dollars spent (2025 to 2026 shows a fall during record buying) | Near $1 while the backing holds |

Verdict wording for the page: "money does move between baskets, as ownership, risk and value, and at the edges as new money." This extends the owner's concept. It keeps the ledger result (no dollar enters Bitcoin) and adds the channel the draft missed.

**Same test on stablecoins.** Buying a bill moves dollars to the bill's seller, exactly like buying Bitcoin. What stablecoin growth changes is who owns the bills: $100.5 billion more in 2025, about 14 times Strategy's preferred sales ($7.04 billion), and minus $9.1 billion in 2026. Licensed US issuers must hold cash-like reserves from 18 January 2027 at the latest (GENIUS Act section 20, court fetch). Offshore issuers are not bound the same way: USDT reported $8.37 billion of Bitcoin and $19.08 billion of gold among $191.45 billion of assets on 30 September 2026 (T4 summary of the accountant's report, court fetch). From 18 July 2028 US platforms may offer only coins from permitted issuers or approved foreign ones (sections 3(b) and 18, court fetch). Stablecoins are placed once: a new-basket wrapper around old-basket assets ("Set 1 wearing Set 2 clothes", rb-crypto).

**Competing readings of "Set 1 absorbs Set 2"** (R8B G plus a fifth reading for the creation channel). A absorption, B leakage, C two-way valve, D risk transfer, E collateral bridge. Each has its evidence and a dated test on the page. The court's reading, stated in words and not as a score: A and D fit best, C is live, B fails the money meter, E is real but too small to measure. R8B's "about 70" is kept in the claims table as the desk's judgement, not on the page.

**Wrapper map.** Old-basket or new-basket wrapper, around an old-basket or new-basket asset. Saylor's 8% digital money is three layers: a token holding digital credit holding Bitcoin. USDT is a partial case.

### 4.2 Block plan (DRAFT_R8 numbers)
| Draft block | What happens |
|---|---|
| [46] heading | Replaced: "Money moving between baskets: three meters" |
| [47] p | Replaced: the owner's phrase, then "read three meters" |
| new | Three-meters table |
| [48] diagram | Caption replaced. SVG labels need the change in section 8 |
| [49] steps | Five steps: the bank-buyer case in step 1, a bank loan as step 5 |
| [50] insider | Replaced: what crosses, on each meter |
| new | Channel table (2025, 2026, 2022), regime paragraph, go-deeper ledger box (two floors, smaller channels) |
| [51] table | Replaced: header explains $14.7 billion, Bitcoin's total value added |
| [52] p | Replaced: price is set by all holders, the 2025 to 2026 counterexample |
| [53] p | Replaced: ledger test on stablecoins, like-for-like comparison, GENIUS scope, USDT |
| new | Wrapper map table and paragraph |
| [54], [55], [58], [59] | Boxes 1 and 3 with "Where it ends up / What it leaves out", moved into the players box |
| [56], [57] | Box 2 relabelled as outcomes, moved into the players box |
| [60] | Regime grid with who gains and who loses, moved into the players box |
| new | Readings A to E with dated tests |
| [61] insider | Replaced: verdict in plain words |
| [62] curiosity | Three questions on the main path (dollars a week later, bank loan, USDT). Gold share and category questions moved to the tripwire box. The 8% token question dropped (answered by check [28] and Box 3) |
| [63] callout | Ten questions and the advice line |
| new | Malaysian callout, worked example paragraph and table |
| [64] go-deeper | Relabelled. Player map with six new players, Goldman fixed |
| [65] go-deeper | Two confirming tripwires, a reading E tripwire and the index tripwire |
| [67], [68] checks | Rewritten for three meters |
| [66], [69] | Kept |

### 4.3 Exact new text of Part 4 (as the applier produces it)
Rendered from the scratch copy after applying round8/r8_court_edits.json. "[new n]" is the block index in the edited chapter. Lines starting with ">" sit inside a go-deeper box. This is the text in the edit file, word for word.

[new 46]
**Part 4 of 4. Money moving between baskets: three meters**

[new 47]
Here is the big idea to test, in the owner's words: future money moving between baskets. The pitch says digital credit pulls money out of the old basket (money funds, government bills, bank deposits) and into the new one (Bitcoin). To see what really moves, read three meters, not one.

[new 48]
| Meter | What moves it | Digital credit | Stablecoins |
|---|---|---|---|
| 1. Dollars | Trades move dollars between people. A bank loan, or a bank buying from a non-bank, creates new ones. Repaying destroys them | Buying STRC and Bitcoin moves dollars to the Bitcoin seller. A bank loan against Bitcoin creates new ones | Buying a bill moves dollars to the bill's seller |
| 2. Ownership and risk | Who holds which asset and carries its swings | Bitcoin into a listed company, its risk onto savers | Bills behind crypto tokens, the issuer's risk onto holders |
| 3. Market value | The last price revalues every unit, with no dollar crossing | Buying can lift all 20 million mined coins by more than was spent, or fail to | Near $1 while the backing holds |

[new 49]
(diagram basket-pipe) Follow one $10,000. The saver's dollars pass through the wrapper to whoever sold the Bitcoin and stay in the dollar basket. What crosses the line is Bitcoin, into a listed company, and Bitcoin's risk, onto the saver. A bank loan against Bitcoin, not drawn here, would add new dollars.

[new 50]
1. A saver moves $10,000 from a money market fund into STRC. The fund sells $10,000 of bills. If a household or another fund buys them, dollars only move. If a bank buys them, it creates a new deposit to pay. The saver's dollars go to Strategy.
2. Strategy buys $10,000 of Bitcoin from a miner or an early holder. The dollars go to the seller, who parks them in a bank, a bill or a money fund. No dollar enters Bitcoin. Bitcoin enters a listed company.
3. Strategy pays the saver a daily dividend from its dollar reserve, which was raised by selling new shares. In effect new shareholders pay the preferred holders.
4. In a bear market Strategy sells Bitcoin to pay the dividend. A Bitcoin buyer's dollars go to the saver, and Bitcoin leaves the wrapper. This happened in the third quarter of 2026.
5. A different door: a bank lends $10,000 to someone who pledges Bitcoin. The bank creates a new $10,000 deposit, so the new basket helps create old-basket dollars. Repaying destroys it. Saylor calls this a tailwind. Its size today is unknown: no public total was found.

[new 51]
(insider: What really crosses the line) In steps 1 to 4 dollars change hands inside the dollar basket, adding a little only if a bank buys the bills in step 1. What moves is ownership and risk: a listed company holds the Bitcoin in boom years, outside buyers in bust years, and the saver's claim on bills becomes a share resting on Bitcoin. In step 5 the owner's picture is literally true: pledged Bitcoin brings new dollars into being. And market value moves with no dollar crossing. So money does move between baskets, as ownership, risk and value, and at the edges as new money.

[new 52]
| Channel | Direction | 2025 (Bitcoin boom) | 2026 to date (the turn) | 2022 (crypto bear) |
|---|---|---|---|---|
| Strategy preferred sales, including STRC | Toward Bitcoin | $7.04 billion | $7.53 billion in nine months, none in the third quarter | none |
| Strategy ordinary share sales | Toward Bitcoin, or into the dollar reserve | $16.27 billion | $13.66 billion in nine months | $0.05 billion |
| Strategy Bitcoin purchases (the pipe's exit) | Dollars to Bitcoin sellers | $22.47 billion | $14.26 billion in nine months, $0.59 billion in the third quarter | $0.29 billion |
| Bank loans against Bitcoin | Creates new dollars | no public figure | no public figure | no public figure |
| Strategy's dollar reserve | Back into bills and money funds | set up with $1.44 billion in December (reported) | up $3.35 billion to 1 November | did not exist |
| STRC buybacks below $100 | Back: dollars to sellers of STRC | none | about $2.04 billion | did not exist |
| Strategy Bitcoin sales | Back: Bitcoin out of the wrapper | none | $431.8 million in nine months | $11.8 million (for tax) |
| US spot Bitcoin ETFs | Both ways, no leverage | not checked | about minus $5.8 billion by mid July, about plus $0.3 billion to $1.2 billion by early October (press reports) | did not exist |
| Stablecoin supply | Bills and cash put behind crypto tokens | up $100.5 billion | down $9.1 billion to 5 November | down $24.5 billion |

[new 53]
Read it by regime. In the 2025 boom the channels toward Bitcoin ran hard. In the third quarter of 2026 the channels back to dollars took over. In the 2022 bear the pipe barely existed. The biggest flow, stablecoins, is not digital credit at all.

[new 54]
(go-deeper box, collapsed: The ledger in detail: both floors, and the smaller channels)
> Two floors. Upstairs are bank reserves and the Fed's reverse repo. Downstairs are the deposits the public holds. A money fund that pays out by drawing on the Fed's reverse repo pushes new reserves and deposits into being, but money funds and other non-banks used only about $0.2 billion of it on 28 October 2026, so today the pipe barely touches the upstairs floor. Downstairs, the final buyer decides: a bill sold to a household or another fund only moves deposits, a bill sold to a bank creates them, and when Strategy's reserve buys bills from a bank, deposits shrink again. Nobody publishes who the final buyers were, so the net effect is not known.
> | Smaller channel | Direction | 2025 | 2026 to date | 2022 |
> |---|---|---|---|---|
> | Strategy convertible notes | Toward Bitcoin | $2.0 billion | none | none |
> | Convertible notes bought back | Back | not checked | $1.38 billion | none |
> | Strive's SATA preferred | Toward Bitcoin | not checked | $1.29 billion outstanding on 30 September | did not exist |
> | Other listed Bitcoin companies | Toward Bitcoin | No yearly flow found. Listed companies hold about 1.30 million Bitcoin in all, 849,327 of it Strategy's |  |  |
> | Preferred dividends paid in cash | Inside the dollar basket | $0.38 billion | $1.05 billion in nine months | none |
> | US money fund assets | Into the old basket | up $0.95 trillion | not checked | up $0.02 trillion |

[new 55]
| Pool (late 2026) | Size | Digital credit (about $14.7 billion: Strategy's preferreds plus Strive's SATA) as a share |
|---|---|---|
| US money market funds | $7.9 trillion | 0.19% |
| US government bills | $7.1 trillion | 0.21% |
| US bank deposits | $19.6 trillion | 0.08% |
| Dollar stablecoins (dollar claims on new rails) | $295 billion | 5.0% |
| All Bitcoin | $1.62 trillion | 0.9% |
| New Bitcoin mined in a year | about $13 billion | about 110% |

[new 56]
Against the dollar pools digital credit is under a quarter of one percent. Against new coins it is large. But Bitcoin's price is set by everyone holding the 20 million coins already mined. Strategy bought more than every new coin in 2025 and in the first nine months of 2026, yet Bitcoin fell from about $126,000 in October 2025 to about $57,700 on 1 July 2026. Big buying can lift the price. It cannot promise to.

[new 57]
Now run the same test on stablecoins. When an issuer buys a bill, its dollars go to the bill's seller. What changes is who owns the bills: in 2025 stablecoin growth put about $100.5 billion more of bills and cash behind crypto tokens, about 14 times Strategy's preferred sales ($7.04 billion). In 2026 it shrank by $9.1 billion. From 18 January 2027 at the latest, a licensed US issuer must hold only cash-like reserves. Offshore issuers are not bound the same way: Tether's USDT reported about $8.4 billion of Bitcoin and $19.1 billion of gold among about $191 billion of assets on 30 September 2026 (as summarized from its accountant's report).

[new 58]
| Wrapper, then what sits inside | Old-basket asset inside (bills, deposits, gold) | New-basket asset inside (Bitcoin) |
|---|---|---|
| Old-basket wrapper (US law, listed, regulated) | Money market fund, bank deposit | STRC and other digital credit, spot Bitcoin ETFs, Strategy's shares, a bank loan secured on Bitcoin |
| New-basket wrapper (a token on a blockchain) | Compliant stablecoins such as USDC, tokenized bill funds | Bitcoin itself. USDT, with some Bitcoin and gold behind it, is a partial case |

[new 59]
Saylor's 8% digital money would stack three layers: a token (new wrapper) holding digital credit (old wrapper) holding Bitcoin (new asset). Ask of any product which wrapper it wears, what sits inside, and which meter it moves.

[new 60]
| Reading of "Set 1 absorbs Set 2" | Evidence to November 2026 | Test that would settle it, and when |
|---|---|---|
| A. Absorption: old-basket wrappers swallow Bitcoin | Listed companies hold about 1.3 million Bitcoin, 6.5% of coins mined so far. US spot ETFs hold about $106 billion to $111 billion (press) | Wrappers' share of Bitcoin keeps rising through a bust. Each quarter end, next 31 December 2026 |
| B. Leakage: old-basket cash drains into Bitcoin | $7.53 billion of preferreds sold in nine months of 2026, but the dollars stay, and digital credit is 0.19% of money funds | Money fund assets or bills fall in a quarter of heavy digital credit sales. First quarter 2027 |
| C. Two-way valve: toward Bitcoin in booms, back in busts | 2026 shows both: $431.8 million of Bitcoin sold and $3.35 billion parked in dollars | Bitcoin sold for dividends two quarters in a row. Reports for late 2026 and early 2027 |
| D. Risk transfer: savers carry Bitcoin's risk under a credit label | STRC closed 25% below par in June 2026 | STRC below $90 for 20 trading days while Bitcoin is above Strategy's cost. Any month |
| E. Collateral bridge: Bitcoin starts backing new dollars | Bank loans against Bitcoin have no public total. USDT holds about $8.4 billion of Bitcoin | Bitcoin's share of the biggest stablecoin's reserves rises. Tether's next report, early 2027 |

[new 61]
(insider: Verdict on the project's earlier view) An earlier finding of this project was that Set 1 is absorbing Set 2. On the evidence to November 2026, A and D fit best, C is live, B fails the money meter, and E is real but too small to measure. Extended: old wrappers absorb Bitcoin, some savers take on its risk under a credit label, in a bust the wrapper sells Bitcoin back into dollars, and at the edges Bitcoin starts to back new dollars. That is money moving between baskets, read on three meters.

[new 62]
(curiosity: Questions worth asking)
- Q: You pay $100 for STRC. Where are your dollars a week later? A: With whoever sold Strategy its Bitcoin, or in Strategy's dollar reserve. In the third quarter of 2026 only about $0.59 billion of the $5.41 billion raised reached Bitcoin sellers. (builds on rb-moneymake)
- Q: A bank lends you $10,000 against your Bitcoin. Did money move between baskets, or was new money made? A: New money was made. The loan creates a new $10,000 deposit, backed by new-basket collateral. It is the clearest case where the new basket helps create old-basket dollars. When you repay, that money disappears again. (builds on rb-06)
- Q: The biggest stablecoin holds about 100,000 Bitcoin. Is that already Saylor's digital money? A: Partly. USDT is a dollar token with some Bitcoin and gold behind it, issued offshore. But it pays holders nothing, and its Bitcoin is about 4% of its assets. Saylor's version would pay 6% to 8%, which a US payment stablecoin may not do. (builds on rb-12)

[new 63]
(callout: Before you believe any account paying 12%) Ask ten questions. Is it a deposit, or a share? Who promises the $100, if anyone? Who sets the rate, and can they cut it? Where does the money come from: profits, new investors, or selling the asset? What happens if the asset behind it halves? What do I rank behind? Can I vote? Who is selling it to me, and what do they earn? What tax applies to me? What currency risk do I take? This is general education, not advice.

[new 64]
(callout: For a Malaysian saver) PIDM covers bank deposits up to RM250,000, not shares. Malaysia does not tax foreign income that resident individuals bring home until the end of 2036, with conditions and exceptions (check the latest LHDN guideline). There is no US tax treaty with Malaysia: Strategy expects its payments to be return of capital, but a broker may still hold back 30%, and getting it back means filing a US tax return. US estate tax can apply above $60,000 of US shares. And the currency cuts both ways: when the ringgit rose about 22% against the dollar from February 2024 to February 2026, a dollar asset lost about 18% in ringgit.

[new 65]
Worked example (a model, not a forecast): RM10,000 at 4.05 ringgit to the dollar on 5 November 2026 buys $2,469 of STRC at $100. A year at 12% pays $296. The end rates are past levels, used only to show the range.

[new 66]
| After one year | Dividend kept | Ringgit per dollar | Worth | Result |
|---|---|---|---|---|
| No US tax held back, ringgit unchanged | $296 | 4.05 | RM11,200 | gain of 12.0% |
| 30% held back, ringgit unchanged | $207 | 4.05 | RM10,840 | gain of 8.4% |
| 30% held back, ringgit as strong as February 2026 | $207 | 3.91 | RM10,465 | gain of 4.7% |
| 30% held back, ringgit as weak as February 2024 | $207 | 4.77 | RM12,767 | gain of 27.7% |
| 30% held back, sold at the June 2026 low close of $74.57 | $207 | 4.05 | RM8,297 | loss of 17.0% |

[new 67]
(go-deeper box, collapsed: The players, their payoff boxes, and the classic yield traps)
> | Box 1. The treasury-company race (outcome for your company) | Others buy Bitcoin with new paper | Others hold back |
> |---|---|---|
> | You buy Bitcoin with new paper | Middle: everyone's premium shrinks toward 1 as Bitcoin exposure becomes common | Best: you keep the premium and become the default wrapper |
> | You hold back | Worst: your premium vanishes as rivals grow | Middle: nothing changes |
> Where it ends up: everyone issues while any premium exists, so the premium is competed away. By June 2026 two rivals, Metaplanet and Nakamoto, traded near 0.9 times their Bitcoin (press reports). What it leaves out: Strategy's size gave it an edge, and Bitcoin ETFs cap plain exposure at 1 time.
> | Box 2. A run on the preferred | Other holders sell | Other holders hold |
> |---|---|---|
> | You sell | Outcome for you: a lower price, as low as $71.25 during 26 June 2026 and $74.57 at the close | Best outcome for you: you got out near $100 before the fall |
> | You hold | Bad outcome: the price gaps, but dividends continue while the reserve lasts | Good outcome: 12% at a steady price |
> Where it ends up: with no right to redeem, a run only moves the price. The issuer can change the outcomes by raising the rate and buying back below $100. That worked in 2026, at the cost of the reserve and new shares. What it leaves out: funds that must value their holdings at market prices every day sell regardless, which is why June gapped.
> | Box 3. The regulator's choice on stablecoin yield | Industry pays yield through exchanges and sister companies | Industry pays no yield |
> |---|---|---|
> | Regulator allows yield | Stablecoins compete with money funds and deposits, and an 8% Bitcoin-backed token becomes possible in form | Same, with less friction |
> | Regulator bans yield, sister companies included | Fights over enforcement. Yield moves into tokenized funds or tokenized STRC | Today's rule: issuers keep the bill income, banks keep deposits |
> Where it ends up: banks want a full ban, exchanges a narrow one. The winner decides whether "digital money paying 8%" can ever be a payment stablecoin or only an investment product. What it leaves out: tokenized money funds already pay holders the bill yield legally.
> | If this happens | What the pipe does | Who gains | Who loses | Tell to watch |
> |---|---|---|---|---|
> | Bitcoin boom, premium above 1.2 | Toward Bitcoin: shares and credit sold, Bitcoin bought, perhaps more than is mined | Common holders, Bitcoin sellers | Short sellers | The premium above 1.2 for a month, in Strategy's weekly filings |
> | Bitcoin bust, premium at or below 1 | Backwards: buybacks, a bigger dollar reserve, Bitcoin sold to pay dividends | Bitcoin buyers at low prices | Common holders first, then STRC's price | Bitcoin sales in a weekly filing, or the reserve below 12 months |
> | Interest rates fall | Easier: 12% looks better against 4% bills | Strategy | Money funds | Federal Reserve decisions |
> | Interest rates rise | Harder: savers compare 12% with 4% to 5% risk-free | Money funds, stablecoin issuers | Bitcoin treasury companies | The 10-year yield above 5% (4.90% on 4 November) |
> | Stablecoin yield allowed | A competing yield, but also a door to Bitcoin-backed digital money | Stablecoin issuers, exchanges | Banks, through lost deposits | The final stablecoin rules and the market-structure bill in Congress |
> | Tax treatment changes | STRC's tax edge shrinks if its payments become taxable dividends | No one in particular | STRC holders | Strategy's 2026 annual report and tax notice, early 2027 |
> | MSTR dropped from an index | Passive selling, the premium falls | Arbitrageurs | Common holders | MSCI's November 2026 review (press reports) |
> | Player | Wants | Best move in a boom | Best move in a bust |
> |---|---|---|---|
> | Strategy's management | More Bitcoin per share, an unbroken dividend record | Sell shares and credit, buy Bitcoin | Build the dollar reserve, buy back STRC, sell Bitcoin if needed |
> | Common shareholders | Bitcoin per share up faster than Bitcoin | Hold | They pay for the reserve through dilution |
> | STRC buyers | 12% near $100, liquidity, a tax delay | Buy near par | Hold through price gaps, or sell at a discount |
> | Convertible note holders | Their money back | Convert into shares | Demand cash from 2027 |
> | Bitcoin sellers (miners, early holders) | Dollars at a good price | Sell into Strategy's demand | Buy back cheaply from forced sellers |
> | Copycat companies | A premium of their own | Issue and buy Bitcoin | Trade below their Bitcoin |
> | Bitcoin ETFs | Fees | Offer plain Bitcoin at no premium | Absorb redemptions |
> | Banks | Keep deposits, lend against Bitcoin once they can hold it | Offer Bitcoin-backed loans, which create new dollars | Take losses on those loans |
> | Stablecoin issuers | Keep the bill income | Grow supply | Shrink, as in 2026 |
> | US Treasury | Cheap funding for its bills | Welcome stablecoin demand for bills | Note that digital credit competes with bills for savers |
> | The Fed | Stable prices | Higher rates make 12% look smaller | Cuts help the spread story |
> | Index providers (MSCI, S&P) | Credible indexes | Include MSTR, bringing passive buying | Exclude it, forcing passive selling |
> | Short sellers and arbitrageurs | Spread income | Sell the premium | Cover |
> | US regulators (SEC, OCC) | Disclosure and stability | Few moves | Scrutiny of words like credit and bank account |
> | Malaysian regulators (Securities Commission, Bank Negara) | Protect local savers | Keep a list of licensed brokers | Warn about unlicensed platforms on an alert list |
> | Yield trap | Promised | What happened |
> |---|---|---|
> | Goldman Sachs Trading Corporation, 1928 to 1932 | Leveraged returns on stacked trusts | Issued at $104, above $220 in early 1929, under $2 by 1932 |
> | UK split-capital zeros, 2000 to 2002 | Low-risk fixed growth | Many lost most of their value. Buyers were not told about cross-holdings |
> | Terra's Anchor, 2021 to 2022 | About 19.5% on a dollar stablecoin | Fell to near zero in May 2022 |
> | Celsius, 2020 to 2022 | Double-digit yields on crypto deposits | Froze withdrawals in June 2022 |
> What STRC is not, in fairness: a hidden-leverage scheme. Its terms, holdings, reserve and dividend funding are disclosed in SEC filings every week. Its yield is high because its risk is real, and the prospectus says so.

[new 68]
(go-deeper box, collapsed: Tripwires: dates that would change the picture)
> | Tripwire | When | What it would mean |
> |---|---|---|
> | Strategy sells Bitcoin to pay dividends in two quarters in a row | Quarterly reports, next early 2027 | The reverse valve is the normal state, not a one-off |
> | The dollar reserve falls below 12 months (about $1.5 billion) | Any weekly filing | The company's own floor is breached |
> | STRC below $90 for 20 trading days while Bitcoin is above Strategy's cost | Any month | Buyers price STRC as equity, not credit |
> | Convertible note holders demand cash | From 15 September 2027 | The first real refinancing test |
> | Strategy's payments become taxable dividends | 2026 annual report and tax notice, early 2027 | STRC's tax edge shrinks for US holders |
> | A US rule allows stablecoin yield, or bans it through sister companies too | Stablecoin rules and the market-structure bill, 2026 to 2027 | Decides whether digital money paying 8% can exist |
> | STRC's rate cut below 12% with the price at or above $100 for three months | Monthly rate notices | The bull case working: buyers accept less for the same paper |
> | Three years of unbroken STRC dividends | August 2028 (Saylor's own test) | Digital credit passes the test its promoter set |
> | Bitcoin's share of the biggest stablecoin's reserves rises | Tether's quarterly reports, next early 2027 | The collateral bridge (reading E) is growing |
> | MSCI's new screen drops MSTR from its indexes | November 2026 review (press reports) | Index funds must sell, and the premium brake bites |
> (curiosity: Two more questions)
> - Q: Strategy holds about 4% of all the Bitcoin that will ever exist. The US government holds 8,133 tonnes of gold. What share of all gold is that? A: About 3.6% of the roughly 224,200 tonnes above ground at the end of September 2026. One company now holds a bigger share of Bitcoin than the largest official holder does of gold. (builds on rb-02)
> - Q: Is digital credit a new asset class or one company's funding tool? A: Today it is about $14.7 billion, about 91% of it from one issuer ($13.4 billion), plus a few copies. Saylor says credit investors want three years of unbroken dividends. STRC has about 15 months. Ask again in 2028, after the convertible notes come due. (builds on rb-crypto)

[new 69]
**Say it back**

[new 70]
(check) Q: When a saver buys STRC and Strategy buys Bitcoin, where do the saver's dollars end up? A: With whoever sold the Bitcoin, who usually puts them back into deposits, bills or money funds. The trade moves dollars. It does not create or destroy them.

[new 71]
(check) Q: Name the three meters, and one thing each shows. A: Dollars: trades move them, bank loans against Bitcoin create them. Ownership and risk: Bitcoin moves into a listed company and its risk onto the saver. Market value: every trade reprices all the coins, with no dollar crossing.

[new 72]
(check) Q: Name three questions to ask before believing an account that pays 12%. A: For example: is it a deposit or a share, who promises the $100, where does the 12% come from, can they cut it, and what happens if the asset halves.

---

## 5. The stress section, made consistent (Part 3)

| Problem in the draft | Fix on the page |
|---|---|
| Three coverage numbers (6.1, 4.2, 3.4) and a fourth in prose ($18,000) with no labels | One backing ladder table after [37]: STRC on the company's method 6.1 times (1 time near $13,250), STRC gross 4.2 (near $19,000), all debt and preferred less dollars 4.5 (near $17,700), all debt and preferred gross 3.4 (near $23,500). Model on the 1 November stack, court script r8court/calc.py on verifier inputs |
| [36] showed 1.0 times at minus 70% while [37] said "covered in every case" | [36] column says "gross, cash not counted". [37] points to the ladder |
| "39" on every row looked like an error | Column says "held fixed" |
| Note puts left out of the stress table | New column: Bitcoin to sell for the 2027 to 2028 puts if not refinanced, about 50,000, 71,000, 99,000 and 165,000 coins (30%, 43%, 60% and a full year of new supply), R8B B |
| "No scenario forces a Bitcoin sale for 27 months" beside real third-quarter sales | "That is the best case, not a promise: in the third quarter of 2026 Strategy sold Bitcoin for dividends with about $5 billion in the reserve" |
| Coverage read as safety | "Cover is not price: STRC fell 25% in June 2026 while its Bitcoin was still worth more than twice every claim up to STRC" (lower-bound model, R8X-10) |
| Two mNAV readings unexplained | [33]: the company's measure adds debt and preferred, less cash, to the shares' value. Glossary repeats it. Check [43] asks it |
| Policy below mNAV 1 missing | [33] and [34]: the company has said it may sell Bitcoin instead (reported December 2025, T4) |
| mNAV "about 3 to 4" in November 2024 | "about 2.5 to 3.5 at the late-2024 peak (press estimates)" |
| Buybacks "below about $99" | "Below $100", with the $99.50 average paid in the week to 1 November |
| "Bought about 4%" in the third quarter | "bought about 18% of the new coins but sold most of that back, adding only about 4%" (moved into the precedents box with its curiosity) |
| [35] gap only in dollars | "Closing the gap by selling Bitcoin would take about 99,000 coins if Bitcoin halved, 60% of a year's new supply" |

Exact text of the changed Part 1 to 3 main-path blocks, rendered from the applied scratch copy:

[new 0]
{"type": "tldr", "items": ["In October 2026 Michael Saylor of Strategy (once MicroStrategy) pitched a ladder of new money: Bitcoin as digital capital, STRC as digital credit paying 12%, the company's shares as digital equity, and one day a dollar token paying 8%.", "STRC is a preferred share, not a loan or a deposit. It has no end date, no right to your $100 back and no vote, and the company sets its 12% each month. Bitcoin covers it about 4 to 6 times today, and new borrowing would lower that.", "Of 28 claims checked, 11 hold, 11 are spin, 3 are wrong and 3 cannot be checked. The numbers about today hold. The labels are where it slips: \"strongest credit in the world\" for a junk-rated issuer, and a dollar token paying 8% that US law does not allow.", "The flywheel runs both ways. In 2025 Strategy bought more Bitcoin than was mined. In the third quarter of 2026 it raised $5.41 billion, spent only $0.59 billion on Bitcoin and sold Bitcoin to help pay dividends.", "Money moving between baskets? Read three meters. Dollars: trades only move them, bank loans against Bitcoin create new ones. Ownership and risk: these cross, Bitcoin into listed companies, its risk onto savers. Market value: it changes with no dollar crossing.", "Before you believe any account paying 12%, ask who promises the $100, where the 12% comes from, and what happens if the asset halves. Nothing here is advice."]}

[new 1]
{"type": "bridge", "label": "Built on Levels 1 and 2: recall these before you start", "items": [{"id": "rb-crypto", "text": "Money sits in two baskets: Set 1, the old anchors (gold, government bonds, bank credit), and Set 2, the new rails (stablecoins, tokens, crypto). Stablecoins are Set 1 wearing Set 2 clothes."}, {"id": "rb-12", "text": "Under the US GENIUS Act a compliant stablecoin holds cash, deposits or short bills, and may not pay holders interest."}, {"id": "rb-bonds", "text": "A bond is a ticket you can resell. Free of default is not free of price."}, {"id": "rb-06", "text": "A bank loan creates a new deposit. Repaying it destroys one."}, {"id": "rb-moneymake", "text": "Trades between people only move money. Banks also create it when they buy from someone who is not a bank."}, {"id": "rb-clubs", "text": "Game theory asks each player's best move, given what the others might do."}]}

[new 3]
This chapter comes in four parts of about ten minutes each. Each part ends with a stop box. The six words you need are in the box below. Nothing here is advice. The aim is to make you a sharper judge of a big pitch.

[new 4]
{"type": "cards", "label": "Six words you need", "items": [{"t": "Preferred stock", "d": "A share paid before the ordinary shares but after every lender. Not a loan, so nothing has to be repaid."}, {"t": "Par", "d": "The $100 STRC aims to trade at. A target the company works to hold, not a promise."}, {"t": "Perpetual", "d": "No end date. You get money back only by selling to someone else."}, {"t": "Convertible note and put", "d": "A loan that can turn into shares. The put lets the lender ask for cash back on set dates, which it does when the share price is below the conversion price."}, {"t": "mNAV", "d": "The company's value over the Bitcoin it holds: about 1.1 counting its debt and preferred, about 0.9 counting the ordinary shares alone (4 November 2026)."}, {"t": "Gross and net coverage", "d": "Times the Bitcoin covers the claims. Net first subtracts the company's cash from the claims, so it reads higher."}]}

[new 9]
His argument in one line: if gold rising 10% a year let you sell credit paying 5%, then Bitcoin rising 20% a year lets you sell credit paying 10%. Strategy sells that credit to the public, buys Bitcoin with the money, and keeps the difference for its shareholders. Part 2 tests this argument against history.

[new 12]
| Question | The answer in STRC's own documents |
|---|---|
| Does it end? | No. It is perpetual. There is no date when you get your money back |
| Can I demand $100 back? | No. Only if someone takes over the company. Otherwise you sell at the market price |
| Who sets the 12%? | The company, each month, at its "sole and absolute discretion". It can cut by up to 0.25 point a month, plus any fall in one-month SOFR (a short-term dollar rate, about 4%), but never below that rate |
| Must it pay? | Only "when, as and if declared" by the board. Missed dividends pile up and must be paid before any on junior shares |
| Where does it rank? | Behind about $6.75 billion of debt, almost all convertible notes, and behind another preferred, STRF |
| Can I vote? | No, not even to elect directors if dividends stop. Only on changes that hurt STRC and some mergers |
| Can claims be put ahead of mine? | Yes. Any new debt ranks ahead of STRC without asking you |
| What backs it? | 849,327 Bitcoin (about $68 billion at $80,500) and a $4.79 billion dollar reserve. Nothing is pledged to STRC alone |
| How big is it? | About $8.2 billion on 1 November 2026, down from about $10.5 billion in July, after buybacks |
| How is the issuer rated? | B-, which is junk, by S&P (October 2025) |

[new 13]
So why does it trade so close to $100? The company sells new STRC only above $100, buys it back below, and raises the rate when buyers lose interest. That $100 is a target, not a promise. And the board that sets your rate owes its main legal duty to the ordinary shareholders. Your rights are only what the contract says.

[new 21]
We checked 28 of the talk's claims against Strategy's own SEC filings, market data, history and the law. "Spin" means the facts are true but the frame misleads. The claims about today's numbers hold. The words wrapped around them are where it slips.

[new 22]
| What he said | Verdict | The honest version |
|---|---|---|
| STRC is "six times over-collateralized" | Holds, on his method | 6.1 times if you subtract the company's cash first, 4.2 without. Nothing is pledged to STRC, and new debt would lower both |
| About 48 years of dividends are covered | Holds, with both yardsticks | About 46 years in Bitcoin, 3.2 to 3.4 years in dollars, and he gave the dollar figure himself. Paying from Bitcoin means selling it |
| It is "the strongest credit in the world" | Wrong | The issuer is rated junk (B-) and STRC is a share behind about $8 billion of claims. Fair version: well covered for now |
| For a New Yorker it is like a bank account paying 24% | Spin | Only for a top-bracket New York City taxpayer, and only as a delay: each payment lowers your cost price, so the tax returns when you sell |
| Gold rising 10% a year let you sell credit at 5%, so Bitcoin rising 20% lets you sell it at 10% | Spin | Gold-backed credit never paid out of gold's rise: the gold price was fixed by law ($20.67 an ounce in the US until 1933) and consols paid 3% from taxes. STRC's 12% is owed in dollars whatever Bitcoin does |
| Money needed in four months to four years belongs in digital credit | Spin | STRC fell 25% below par within weeks in June 2026, and swung about five times as much as a US bond fund over the year. It pays more than a money fund because it can fall like a share |
| A Bitcoin-backed dollar token could pay 6% to 8% | Wrong for a US payment stablecoin | The GENIUS Act bans issuer yield and Bitcoin reserves. Offshore a token can hold some Bitcoin (USDT does), but it still pays holders nothing |
| Since August 2020, Bitcoin returned 37% a year and MSTR 51% | Spin | Bitcoin's 37% reproduces, MSTR's comes out near 46%. Of seven start dates tested, MSTR led from five, gold led from the November 2021 peak, and MSTR was last from January 2025 |

[new 23]
(insider: The pattern behind the verdicts) The claims that hold are about today's numbers on the company's own method. The claims that fail come in three kinds: labels that borrow trust from safer products (credit, bank account, stablecoin, strongest), stories with the dates bent (the Bank of England, the return table), and sums that skip a step ($10 billion "made"). So ask first what a thing is in law, then what it pays.

[new 33]
The key link is the premium, mNAV: the company's value compared with its Bitcoin. Above 1, selling new shares buys more Bitcoin per share. Below 1, it does the opposite, and the company has said it may then sell Bitcoin instead (reported December 2025). The premium was about 2.5 to 3.5 at the late-2024 peak (press estimates). On 4 November 2026 it was about 1.1 on the company's measure, which adds debt and preferred less cash, and about 0.9 on the shares alone.

[new 34]
| Brake | Where it bites | Reading in early November 2026 |
|---|---|---|
| Bitcoin against what Strategy paid | Below $75,451 the whole pile is worth less than it cost | $80,500, only 6.7% above cost. The 2026 low was about $57,700 on 1 July |
| The premium (mNAV) | Below 1, selling shares to pay dividends shrinks Bitcoin per share, and the company says it may sell Bitcoin instead | About 1.1 on the company's measure, 0.9 on the shares alone (4 November) |
| Dollars on hand | Company policy, as reported: keep at least 12 months of dividends | $4.92 billion, about 39 months |
| STRC's price | Below $100 the company stops selling and starts buying back | $99.98 (4 November). It paid about $99.50 a share in buybacks in the week to 1 November |
| Convertible notes | Holders can demand cash when the share price is below the conversion price | $5.91 billion can be put back for cash from September 2027 to September 2028. Every conversion price is above today's share price |

[new 35]
(insider: The real stress point) Not the 12% dividends. The convertible notes. Two years of dividends plus the notes holders can cash in come to about $8.9 billion, against $4.92 billion of dollars on hand, a gap of about $4 billion. Strategy can refinance, sell shares or sell Bitcoin. Closing the gap by selling Bitcoin would take about 99,000 coins if Bitcoin halved, 60% of a year's new supply. A put is a refinancing test, not a default, as long as lenders and share buyers are still willing.

[new 36]
| If Bitcoin falls | Price | Bitcoin over all debt and preferred (gross, cash not counted) | Months of dollar dividends (held fixed) | Bitcoin to sell a year for dividends once the reserve runs low, if no shares are sold | Bitcoin to sell for the 2027 to 2028 note puts, if not refinanced |
|---|---|---|---|---|---|
| Today | $80,500 | 3.4 times | 39 | about 19,000 (11% of a year's new coins) | about 50,000 (30%) |
| Down 30% | $56,400 | 2.4 times | 39 | about 27,000 (16%) | about 71,000 (43%) |
| Down 50% | $40,300 | 1.7 times | 39 | about 37,000 (23%) | about 99,000 (60%) |
| Down 70% | $24,200 | 1.0 times | 39 | about 62,000 (38%) | about 165,000 (a full year) |

[new 37]
This is a model, not a forecast, with debts and reserve held fixed. First, the reserve could pay about 27 months of dividends before it reaches the 12-month floor. That is the best case, not a promise: in the third quarter of 2026 Strategy sold Bitcoin for dividends with about $5 billion in the reserve. Second, see the ladder below for where each kind of cover runs out. Third, the note puts, not the dividends, are the big bill: at minus 70% they would take a full year of new Bitcoin. Fourth, cover is not price: STRC fell 25% in June 2026 while its Bitcoin was still worth more than twice every claim up to STRC.

[new 38]
| One backing ladder (1 November 2026, model) | Times covered today | Bitcoin price where it falls to 1 time |
|---|---|---|
| STRC, company method: claims up to STRC, less dollars | 6.1 | about $13,250 |
| STRC, gross | 4.2 | about $19,000 |
| All debt and preferred, less dollars | 4.5 | about $17,700 |
| All debt and preferred, gross | 3.4 | about $23,500 |

---

## 6. Fairness and reader pass

| Item | Done |
|---|---|
| South Sea correction | Real asset (interest-paying government debt), premium collapsed from about £1,000 to about £135 by the end of 1720, the company survived, late buyers lost about 85%. "Same: a premium over a real asset can vanish while the asset stays" |
| 1940 Act (S31) | Spin (overstated). One class of preferred on a stock portfolio with 200% cover is legal. Strategy's five preferreds plus convertible notes would not be allowed on a stock basket, and are allowed on Bitcoin because Bitcoin is not a security (go-deeper audit) |
| 48 years (S16) | Holds, with both yardsticks. Saylor gave the dollar figure himself. Check [27] rewritten |
| Neutral start dates | Seven lane start dates reported as counts (MSTR led from five, gold from the 2021 peak, MSTR last from January 2025). January 2016 to 2022 series: needs data |
| S13 row | Spin: gold-backed credit never paid out of gold's rise. Fixed gold price ($20.67 an ounce in the US until 1933, R8A C), consols at 3% from taxes. The 12% is owed whatever Bitcoin does |
| S22 row | Spin: STRC fell 25% below par within weeks in June 2026 and swung about five times as much as a US bond fund (22 against 4.1, R8A D1) |
| Voting and board duty | Two rows in [11] (no vote, new debt ranks ahead). [12]: the board's main legal duty runs to the ordinary shareholders, your rights are what the contract says |
| Glossary | Cards block "Six words you need" before Part 1: preferred stock, par, perpetual, convertible note and put, mNAV (both readings), gross and net coverage |
| Internal file path | Removed from [25.0]. Sources named by document |
| Malaysian lines | PIDM, the 2036 foreign-income exemption with conditions, no treaty, 30% withholding with the refund route, the $60,000 estate threshold, the ringgit with its direction |
| Worked example | RM10,000 at 4.05 buys $2,469 of STRC. Five cases: gain of 12.0%, 8.4%, 4.7%, 27.7% and a loss of 17.0%. Labelled a model, past exchange rates only |
| Vote clause | "with the founder's super-voting shares counted" removed. Founder control (about a third of votes, to confirm) in the Part 1 go-deeper box |
| Other fairness | Box 2 cells are outcomes, not tips. "General education, not advice" in [63]. Two confirming tripwires. The Ponzi paragraph [24] kept, it is fair both ways |

---

## 7. Edit list and test

### 7.1 How to apply
`python3 -I round8/r8_apply_court_edits.py site/rulebook.json <out.json> round8/r8_court_edits.json`
Same edit format and logic as round 7 (replace, insert_after, move_into, set_field, nested parent.child). One addition, already supported by the round 7 logic: a move_into with a "new" field places that content in the target box and removes the source block when the source is a number, so a block can be rewritten and moved in one edit. "start" moves keep the order they are listed in. The applier refuses to overwrite its source. After applying it checks the chapter and exits with an error if any string has an em-dash, en-dash or semicolon, or any bridge, curiosity, radiant or connects link names a chapter id that does not exist.

### 7.2 Test result (scratch copy, 2026-11-05)
- Source: a byte-identical copy of site/rulebook.json (md5 f3e6b61aca9a9796109438631abfd628) in the scratchpad (r8court/rulebook_scratch.json). Output r8court/rulebook_r8court.json.
- "applied 76 edits to rb-strc". Only rb-strc changed. Every other chapter and every top-level key is identical.
- Strings with an em-dash, en-dash or semicolon: 0. Links checked: 28, invalid: none (rb-crypto, rb-12, rb-bonds, rb-06, rb-moneymake, rb-clubs, rb-13, rb-buckets, rb-em, rb-02).
- Main-path words by the round7/r7_wordcount.py rule (pictures excluded): **4,056 before, 4,880 after (plus 20.3%)**. Prose 2,643, tables 1,765, checks 472. With picture captions: 4,196 and 5,054. By part: top 389 to 555, Part 1 773 to 719, Part 2 744 to 673, Part 3 754 to 905, Part 4 1,396 to 2,028.
- site/rulebook.json was not edited.

### 7.3 The 76 edits
| # | Block (DRAFT_R8 number) | Action | Target | Why |
|---|---|---|---|---|
| 1 | 0 | replace |  | RT 3.13 and B1: no absolute about dollars, three meters in the headline. Tally recounted (rulings S16, S31, S13, S22). RT 3.1 coverage is a snapshot. Word audit: 'mostly' removed |
| 2 | 1 | replace |  | Court bridge check: the old rb-moneymake line ('most deals only move money') is not in that chapter and drops its creation rule (Case 2). RT 3.6: one basket for stablecoins. rb-06 added for the bank-loan door |
| 3 | 2 | replace |  | Rays follow the new Part 4 and the recount |
| 4 | 3 | replace |  | Points to the glossary |
| 5 | 3 | insert_after |  | RT cold readers A and B: shared fix, six-term glossary on the main path |
| 6 | 8 | replace |  | RT 4(a) Q2: S13 shown but never tested. Now tested in [22] |
| 7 | 11 | replace |  | RT 3.1 voting and new-debt rows. V [11] floor rate is one-month SOFR, about 4%. V [11] debt is not all convertible. V R8V-01 size dated |
| 8 | 12 | replace |  | RT 3.2 board duty (Trados). V [34] buybacks start below $100 |
| 9 | 13 | replace |  | V: name the close |
| 10 | 15.0 | replace |  | RT word audit [15.0] 'mostly'. V consol row labelled as a model |
| 11 | n15a | move_into | 15 end | RT 4(a) Q1.2 and Q1.4 (Delaware surplus, GAAP), blind spot 15 (founder control), V [14] |
| 12 | 18 | replace |  | V floor rate |
| 13 | 21 | replace |  | RT word audit 'mostly'. Internal 'research lanes' wording removed. 28 claims with S13 and S22 |
| 14 | 22 | replace |  | RT 3.9 S16 both yardsticks, RT 3.12 S31 overstated, RT 4(a) S13 added, RT 3.5 S22 added, RT 3.6 S41 scope, RT 3.9 and 3.11 neutral start dates, V R8V-05 MSTR 46%, RT 3.8 gold-standard break, word audit 'mostly'. $10B-a-year row moved to [25] |
| 15 | 23 | replace |  | RT word audit: 'Every claim that fails is a label' was false (1940 Act, arithmetic) |
| 16 | 25 | replace |  | Count 28 |
| 17 | 25.0 | replace |  | RT 4(a) Q2: internal file path removed, sources named |
| 18 | 25.1 | replace |  | V resolution 3: about $13,250. Gross STRC row added for the ladder. AGG volatility from R8A for the S22 row |
| 19 | n25a | move_into | 25 end | The other 20 claims, so the box holds the whole audit once the file path is removed. 1940 Act verdict Overstated (RT 3.12), gold-standard break (RT 3.8) |
| 20 | 27 | replace |  | RT 3.9 S16 ruling |
| 21 | 28 | replace |  | RT 3.6 scope: US payment stablecoins |
| 22 | 29 | replace |  | Neutral start dates |
| 23 | 32 | replace |  | RT word audit [32] 'every' |
| 24 | 33 | replace |  | RT 3.4 why two readings differ and stated policy below 1. V [33] late-2024 range and 4 November values |
| 25 | 34 | replace |  | V [34] 2026 low date, buyback trigger, reserve rule labelled as reported. RT 3.4 policy below 1. RT 4(a) Q3.2 index brake |
| 26 | 35 | replace |  | RT 3.10 convert gap in Bitcoin. Cold reader A: 'as long as markets stay open' replaced |
| 27 | 36 | replace |  | RT 3.10 and B4: gross labelled, months held fixed by design (cold reader A), convert gap column from R8B B |
| 28 | 37 | replace |  | RT B4 and 3.10: contradiction fixed (gross versus net), 27 months as best case, convert gap, coverage is not price. V R8V-09 break-evens |
| 29 | 37 | insert_after |  | RT 3.10 and 7(d) item 2: one ladder used everywhere, net and gross labelled |
| 30 | 39 | replace |  | V [39] carrying value |
| 31 | 41.0 | replace |  | RT B5 South Sea correction, RT 3.8 Goldman peak, RT 3.4 closed-end fund row, RT 4(a) Q3.4 columns (how long, who was paid first) |
| 32 | 41.1 | replace |  | Links the S22 ruling |
| 33 | 43 | replace |  | RT 3.4 two readings |
| 34 | 44 | replace |  | RT word audit 'most' |
| 35 | 45 | replace |  | RT 3.10 |
| 36 | 46 | replace |  | Court ruling on the core dispute |
| 37 | 47 | replace |  | Extends the concept instead of answering it with no (RT 3.13) |
| 38 | 47 | insert_after |  | RT 3.13 three meters, ledger test applied to both pipes (RT 3.6) |
| 39 | 48 | replace |  | RT B1: no absolute. SVG labels need a matching change (section 7 of DEBATE_R8) |
| 40 | 49 | replace |  | RT 3.13 fifth step (bank loan creates deposits), court ledger fix on step 1 (bank buyer of the bill creates deposits, rb-moneymake). Word audit 'mostly' |
| 41 | 50 | replace |  | Court ruling: extend, not deny. Replaces 'Money does not move between baskets' (RT 6(c) overcorrection) |
| 42 | 50 | insert_after |  | RT B2 and spec Q4.1: channel table, both directions, sizes in the boom, the turn and the 2022 stress year (R8B D1, V confirmed). Unsized channels marked needs data |
| 43 | 50 | insert_after |  | Which channel dominates when (Move 5 pass test) |
| 44 | 50 | insert_after |  | R8B D1 rows 3, 5, 6, 11, 13, 15 and D3 floors (spec Q1.3 and Q4.3). Court ledger fix: bank buyers create deposits |
| 45 | 51 | replace |  | Cold reader A: $8 billion versus $14.7 billion explained. Bitcoin market value added (R8B D2) |
| 46 | 52 | replace |  | RT 3.7 'the whole trick' replaced with the 2025 to 2026 counterexample (R8B-04, V R8V-07, R8A S35) |
| 47 | 53 | replace |  | RT B3 and 3.6: 'every stablecoin dollar must' limited to licensed US issuers, ledger test applied, like-for-like comparison, Tether reserves (court fetch, T4), GENIUS Act sections 3(b) and 20 (court fetch) |
| 48 | 53 | insert_after |  | RT 3.13 wrapper map |
| 49 | 53 | insert_after |  | RT 3.13 the owner's phrase as a reusable tool |
| 50 | 54 | move_into | 64 start | Word budget: Box 1 to the players box, relabelled for whom (cold reader A) |
| 51 | 55 | move_into | 64 start | Settles and Misses renamed (cold readers) |
| 52 | 56 | move_into | 64 start | RT 3.11 outcomes, not advice. V resolution 2 intraday and close. Moved to the players box for the word cap |
| 53 | 57 | move_into | 64 start | Settles and Misses renamed. 'mark prices daily' explained. Moved with Box 2 |
| 54 | 58 | move_into | 64 start | Word budget: Box 3 to the players box |
| 55 | 59 | move_into | 64 start | Settles and Misses renamed |
| 56 | 60 | move_into | 64 start | Regime grid to the players box with who gains and who loses (spec Q4.5). The channel table carries the regimes on the main path |
| 57 | 60 | insert_after |  | Spec Q4.6 and RT 4(a): competing hypotheses with dated tests (R8B G), plus E for the creation channel the red team found |
| 58 | 61 | replace |  | Cold readers: 'Round 1' and '70 out of 100' replaced with plain words. RT word audit 'mostly'. V R8V-10 'of the coins mined so far' |
| 59 | 62 | replace |  | RT 3.13 curiosity questions (bank loan, USDT, gold share from the framer), word audit 'mostly' and 'only while' |
| 60 | 63 | replace |  | Spec Q5.1 ten questions, RT 3.11 advice line repeated |
| 61 | 63 | insert_after |  | RT 3.3 Malaysian exemption to 2036, withholding nuance, ringgit direction. V R8V-11 Fed H.10 dates |
| 62 | 63 | insert_after |  | Spec Q5.3 labelled ringgit example |
| 63 | 63 | insert_after |  | Spec Q5.3. Inputs: USD/MYR 4.05 (R8A, 2026-11-05), H.10 3.911 and 4.7655 (V R8V-11), close $74.57 (V R8V-02). Court script r8court/calc.py |
| 64 | 64 | replace |  | Box now holds Boxes 1 and 3 and the regime grid |
| 65 | 64.0 | replace |  | RT 4(a) Q4.4 players: banks, Treasury, Fed, index providers, short sellers, Malaysian regulators (R8B E1, R8A E13) |
| 66 | 64.1 | replace |  | RT 3.8 and V: Goldman issue and peak |
| 67 | 65.0 | replace |  | RT 3.9 confirming tripwires, reading E test. Index brake moved here from [34] for the word cap (RT 4(a) Q3.2) |
| 68 | 67 | replace |  | RT B1: no absolute |
| 69 | 68 | replace |  | Three meters |
| 70 | chapter (rules) | set_field |  | RT word audit rules 'most deals' (the Case 2 sentence). Three meters rule |
| 71 | chapter (connects) | set_field |  | rb-06 for the creation channel. rb-moneymake line corrected |
| 72 | n62a | move_into | 65 end | Gold share (framer Q10) and category question kept in the tripwires box for the word cap. The 8% token question is answered in check [28] and Box 3 |
| 73 | 14 | move_into | 15 start | RT 3.11 and V [14]: the super-voting aside is unverified and did not change the result. Removed. Moved into the Part 1 box for the word cap |
| 74 | 40 | move_into | 41 start | V [40]: bought about 18%, net about 4%. Moved into the Part 3 box for the word cap |
| 75 | 15 | replace |  | Label matches the box after the Part 1 curiosity moved in |
| 76 | 41 | replace |  | Label matches the box after the Part 3 curiosity moved in |

---

## 8. Proposed changes for the owner (outside this chapter, not applied)

| # | Where | Change | Why |
|---|---|---|---|
| P-1 | site/index.html, "basket-pipe" SVG | aria-label to: "Savers' dollars go through Strategy to whoever sold the Bitcoin. Trades keep the dollars in the dollar basket. Bitcoin moves into a listed company and its risk onto the saver. A bank loan against Bitcoin would create new dollars". Bottom label "The sellers' dollars land back in deposits, bills and money funds. No dollar leaves Set 1" to "Sellers' dollars land back in deposits, bills and money funds. Bank loans against Bitcoin create new ones". "stablecoins $0.3T" to "stablecoins $0.3T (new rails)" | B1 and B3. The picture still carries the absolute the court removed from the text |
| P-2 | site/index.html, "flywheel-loop" SVG | "Bear: every link runs backwards" to "Bear: each link can run backwards" | WA-06 |
| P-3 | site/index.html, embedded RULEBOOK | Rebuild from rulebook.json after the edits are approved and applied | The page renders the embedded copy |
| P-4 | Propagator, rb-crypto | "every new stablecoin dollar is a new buyer of US Treasury bills" to "every new compliant stablecoin dollar is a new buyer of US Treasury bills. Offshore coins are not bound the same way: USDT also held about $8.4 billion of Bitcoin and $19.1 billion of gold on 30 September 2026" | B3. Same absolute as the draft's [53] |
| P-5 | Propagator, rb-12 | "That means every new stablecoin dollar is new demand for Set 1 assets" to "every new compliant stablecoin dollar". Add the July 2028 platform rule (section 3(b)) | B3, court fetch |
| P-6 | Propagator, any page | Run `python3 -I tools/xref.py . "never leave|no dollar leaves|only move money|Most deals only move money|dollars stay in"` and give each hit the bank-loan exception | Case 2 sentence (WA-14) |
| P-7 | Round 1 belief Q-Set1-vs-Set2 | Restate as readings A to E with their dated tests (R8X-17). Wording: "Set 1 wrappers are absorbing Bitcoin, some Set 1 savers carry Bitcoin's risk under a credit label, the wrapper sells back in a bust, and at the edges Bitcoin starts to back new dollars" | Section 4 |
| P-8 | round8/lanes/R8B, section D3 T1 | Note that a bank buying the bill creates deposits (rb-moneymake rule). The lane said the public's deposits are unchanged | R8X-18 |
| P-9 | PLAN 4.6 correction ledger | Entry: "Round 8 draft repeated the Case 2 shape (a true trade-level headline hiding the creation channel). Caught by the red team before publication" | Feedback loop |
| P-10 | engine/test_bank_keys.md | Candidate question: "Does buying a Bitcoin-backed preferred move money out of the dollar system?" Key: three meters, the bank-loan and bank-buyer creation cases, and the stablecoin parallel | Test bank grows from real misses |
| P-11 | Rulebook approval | The chapter edits wait for the owner's approval while PLAN 5.7 is pending, as in round 7 | Process |

---

## 9. Claims table (court rulings and court arithmetic)

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R8X-01 | Money moves between baskets on three meters: trades move dollars, bank loans and bank purchases from non-banks create them and repayment destroys them, ownership and risk cross, and market value changes with no dollar crossing | T2 (accounting) | Court ruling | site/rulebook.json chapters rb-06 and rb-moneymake (Level 1 and 2 text). Bank of England, Money creation in the modern economy: https://www.bankofengland.co.uk/quarterly-bulletin/2014/q1/money-creation-in-the-modern-economy | 2014-03 | 2026-11-05 | A channel in the digital credit pipe that creates or destroys deposits on net with no bank on either side |
| R8X-02 | Bank loans against Bitcoin create new deposits. No public total of such loans was found for 2025 or 2026 | T2 mechanism, size needs data | Gap | R8B D1 channel 8 (Gap), claim list S6 | 2026-11-05 | 2026-11-05 | A regulator or bank filing gives a total |
| R8X-03 | Tether's attestation for 30 September 2026 showed total assets $191.45B, liabilities $183.50B, bills $122.84B, Bitcoin $8.37B (at $83,621.23, about 100,000 BTC implied) and gold $19.08B | T4 (summary of a T2 accountant's report) | Reported | https://stablecoininsider.org/tether-q3-2026-attestation/ | 2026-10-31 | 2026-09-30 | Tether's own published report differs by more than 2% on any line |
| R8X-04 | The GENIUS Act takes effect on the earlier of 18 months after enactment (18 January 2027) or 120 days after final regulations (section 20) | T1 | Confirmed | https://www.govinfo.gov/content/pkg/PLAW-119publ27/html/PLAW-119publ27.htm | 2025-07-18 | 2026-11-05 | An amendment to section 20 |
| R8X-05 | From 18 July 2028 a digital asset service provider may not offer or sell a payment stablecoin to a person in the US unless a permitted issuer issued it (section 3(b)). A foreign issuer is exempt only with a comparable home regime, registration with the Comptroller, reserves in a US institution for US customers' liquidity, and no comprehensive sanctions (section 18(a)) | T1 | Confirmed | same as R8X-04 | 2025-07-18 | 2026-11-05 | Amendment, or a Treasury comparability ruling that covers the issuer |
| R8X-06 | Above-ground gold stock was 224,200 tonnes at the end of September 2026. The US government's 8,133 tonnes are about 3.6% of it, against Strategy's 4.0% of the 21 million Bitcoin cap | T2 (World Gold Council) and T1 (US gold, standard record, not fetched this round) | Confirmed (gold stock), standard record (US holding) | https://www.gold.org/goldhub/data/how-much-gold | 2026-10 | 2026-09-30 | A US Treasury gold report differing from 8,133 tonnes |
| R8X-07 | Of 28 talk claims, 11 hold, 11 spin, 3 wrong, 3 cannot be checked (court recount: S16 to holds, S31 to spin, S13 and S22 added as spin) | Court ruling on T0 to T3 inputs | Ruled | round8/lanes/R8A-instrument-claims.md D2 and this file section 3 | 2026-11-05 | 2026-11-05 | A primary source overturns a verdict |
| R8X-08 | Across the lane's seven start dates (August 2020 to January 2025), MSTR had the top annual return from five, gold from the November 2021 peak, and MSTR was last from January 2025 | T3 plus model (gold and S&P legs lane-only) | Plausible | R8A D1 return table, VERIFY_R8 (Bitcoin and MSTR legs reproduced) | 2026-11-05 | 2026-11-04 | A re-fetch of GLD or SPY changing the order at any start |
| R8X-09 | The lowest conversion price, $149.77 (2030A notes), is about 5% above MSTR's $142.54 close of 4 November 2026 | T0 and T3 | Confirmed | VERIFY_R8 main table, 10-Q https://www.sec.gov/Archives/edgar/data/1050446/000105044626000060/mstr-20260930.htm | 2026-11-02 | 2026-11-04 | MSTR above $149.77 at a put date |
| R8X-10 | In June 2026 Strategy's Bitcoin was worth more than twice every claim up to and including STRC, even on a lower bound (672,500 BTC, the start-of-year holding, at the $57,740 low, $38.8B, against at most about $18.6B of debt, STRF and STRC) | Model on T0 and T3 | Plausible | r8court/calc.py inputs: R8B-16, R8V-07, R8V-01, R8V-06 | 2026-11-05 | 2026-06-30 | A June 2026 stack above $19.4B up to STRC |
| R8X-11 | Backing ladder on the 1 November 2026 stack at $80,500: STRC company method 6.1 times (1 time near $13,250), STRC gross 4.2 (near $19,000), all debt and preferred net of dollars 4.5 (near $17,700), gross 3.4 (near $23,500) | Model on T0 | Plausible | r8court/calc.py, VERIFY_R8 resolution 3 and R8V-09 | 2026-11-05 | 2026-11-01 | Stack or reserve changes by more than $1B, or STRF's size outside $1.0B to $1.5B |
| R8X-12 | Under Delaware law, where common and preferred interests conflict, directors owe their fiduciary duty to the common, and preferred rights are mostly contractual (In re Trados, Chancery, 2013) | T4 (law-firm summary of a T1 case) | Reported | https://foleyhoag.com/news-and-insights/publications/alerts-and-updates/2013/september/delaware-court-issues-important-trados-decision/ | 2013-09 | 2026-11-05 | A later Delaware ruling narrowing Trados |
| R8X-13 | If every class B vote (19,640,250 shares at ten votes) was cast for the daily-dividend change, class A holders still voted at least about 98.6% in favour | Model on T0 (votes) and T1 (ten votes, to confirm in the proxy) | Plausible | Vote 8-K https://www.sec.gov/Archives/edgar/data/1050446/000119312526437776/mstr-20261028.htm, 10-Q share counts | 2026-10-29 | 2026-10-28 | Class B carries other than ten votes a share |
| R8X-14 | Worked example: RM10,000 at 4.05 buys $2,469 of STRC at $100. After a year at 12%: 12.0% gain with no withholding, 8.4% with 30% withheld, 4.7% if the ringgit returns to 3.91, 27.7% if it weakens to 4.77, a 17.0% loss if sold at $74.57 | Model | Model | r8court/calc.py. USD/MYR 4.05 (R8A, 2026-11-05), Fed H.10 3.911 and 4.7655 (R8V-11), close $74.57 (R8V-02) | 2026-11-05 | 2026-11-05 | Arithmetic error |
| R8X-15 | Stablecoin supply growth in 2025 ($100.5B) was about 14 times Strategy's preferred sales ($7.04B) and about 4 times all Strategy raised ($25.3B) | Derived from T3 and T0 | Confirmed inputs | R8B-29, R8B-14, VERIFY_R8 | 2026-11-05 | 2025-12-31 | Revised stablecoin or XBRL totals |
| R8X-16 | Strategy bought more Bitcoin than was mined in 2025 (137%) and in January to September 2026 (175,166 BTC against about 123,000), while Bitcoin fell from a weekly high of $126,198 (week of 2 October 2025) to $57,740 (1 July 2026) | T0 and T3 | Confirmed | R8B-16, R8A D2 row S35, R8B-04, R8V-07 | 2026-11-05 | 2026-09-30 | XBRL holdings restated |
| R8X-17 | "Set 1 absorbs Set 2", five readings: A absorption and D risk transfer fit best, C two-way valve live, B leakage fails the money meter, E collateral bridge real but unmeasured. R8B's "about 70" for A plus D over B kept as desk judgement, not a market price | Judgement | Proposed | Section 4, R8B G | 2026-11-05 | 2026-11-05 | The dated tests on the page: wrapper share of Bitcoin at 2026-12-31, money fund or bill falls in a heavy issuance quarter (2027 Q1), Bitcoin sales for dividends in two quarters, STRC below $90 for 20 sessions, Bitcoin's share of Tether's reserves (early 2027) |
| R8X-18 | A bank that buys a bill from a money fund creates a deposit to pay for it. So in the STRC walk, step 1 adds to deposits when the final bill buyer is a bank, and Strategy's reserve buying bills from a bank removes them. The net is not published | T2 (accounting) | Court correction of R8B D3 T1 | rb-moneymake text in site/rulebook.json | 2026-11-05 | 2026-11-05 | none (accounting identity) |
| R8X-19 | From February 2024 to February 2026 (Fed H.10 monthly averages, 4.7655 to 3.911 ringgit per dollar) the ringgit rose about 21.8% against the dollar and a dollar asset lost about 17.9% in ringgit | T3 | Confirmed | https://api.db.nomics.world/v22/series/FED/H10/RXI_N.M.MA?observations=1 | 2026-11 | 2026-02 | none (historical) |
| R8X-20 | Digital credit outstanding was about $14.70B in late October 2026, about 91% of it Strategy's ($13.40B) | T0 derived | Confirmed | R8B D2, R8V-15 | 2026-11-05 | 2026-10-25 | Other issuers' preferreds add more than $2B |
| R8X-21 | Bitcoin carried at fair value: Strategy's third-quarter 2026 net income of $19.53B came from unrealized gains, and preferred stock is carried as temporary equity | T0 | Confirmed (lane) | R8A D1 and B (XBRL) | 2026-11-02 | 2026-09-30 | 10-Q restated |

---

## 10. Needs data, and what is unsettled

### 10.1 Needs data (left off the page or shown as "not checked")
| Item | Why it matters |
|---|---|
| Total bank lending against Bitcoin, US and elsewhere, 2025 and 2026 | Sizes the one creation channel (reading E) |
| Who the final buyers of money fund bills and Strategy's bill purchases were | Decides the net money meter in steps 1 and 3 |
| US spot Bitcoin ETF flows for 2025 from one provider | Rival pipe, 2025 column |
| Money fund asset growth in 2026, convertible note buybacks and SATA sales in 2025 | Blank cells in the go-deeper channel table |
| Asian and Malaysian pools the talk names (UAE, Hong Kong, Europe, China) | Spec Q4.2 |
| A tokenized money fund's worst loss | SP-06 row |
| Returns from each January 2016 to 2022 start | Fully neutral start dates (RT 3.9) |
| STRF's size by series and the June 2026 stack | Exact ladder and the June coverage figure |
| A rating event threshold, an accounting-change regime row | Spec Q3.2 and Q4.5 |
| DeFi and tokenized STRC holdings | Holder type, spec transaction (b) |
| Tether's own report (not the summary) | Lifts R8X-03 from T4 |

### 10.2 Unsettled
| # | Item | Owner of the next step |
|---|---|---|
| U-1 | Re-run both cold readers on the edited main path. Pass mark 8 | Orchestrator, before publication |
| U-2 | SVG labels P-1 and P-2, outside rulebook.json | Orchestrator, with the owner's approval |
| U-3 | Rulebook edits wait for the owner's green light (PLAN 5.7) | Owner |
| U-4 | Spec transaction (b), a stablecoin holder swapping into tokenized STRC, not walked | Next lane |
| U-5 | Trados and the Malaysian 2036 exemption rest on T4 summaries. Gazette and judgment not fetched | Next verifier |
| U-6 | STRC's rate floor: confirm "monthly SOFR" in the Annex is near the 3.97% overnight figure | Next verifier |
| U-7 | Class B ten votes a share and the third-of-votes figure: confirm in the proxy | Next verifier |
| U-8 | The main path sits at the cap (plus 20.3%). Any later addition must move something into a box | Any editor |
