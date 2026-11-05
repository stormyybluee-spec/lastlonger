# DEBATE_R6: Court-lite (completeness auditor plus judge), Round 6

Date: 2026-10-24. Tier: Standard. Role: Court (ROLES.md v4.0, Moves 5 to 7). Target: round6/DRAFT_L2.md (L2.1 rb-bonds, L2.2 rb-moneymake, L2.3 rb-worldbs).
Read: ROLES.md (shared rules and Court card), PLAN.md sections 2B, 3 and 4.5, FRAME_R6.md, CONTEXT_R6.md, lanes R6A and R6B (and table JSON notes), DRAFT_L2.md, VERIFY_R6.md, REDTEAM_R6.md, and every Level 1 chapter in site/rulebook.json (read with python3 -I).
Web fetches used: 3 of 5 (BIS OTC derivatives page, McKinsey report page which failed with an HTTP/2 error, Fortune report on McKinsey). Model scripts in the scratchpad: bond.py (holder losses), wc.py (word counts), both run with python3 -I.
No site file was edited. Nothing was committed or pushed.

## Pass checklist
- [x] Completeness audit: every framer spec item marked present, partial or missing (section 3)
- [x] Channel table check: L2.2 has both directions and four regimes. L2.3 had none, a sourced one is added (edit W-22)
- [x] Word audit on new material (section 4)
- [x] Every red-team point ruled (section 5, RT rows)
- [x] Every verifier mismatch and label fix ruled (section 5, V rows)
- [x] Core dispute on L2.3's opening settled (section 2)
- [x] Overcorrection guard run on every debunk (section 2 and rows RT-60 to RT-64)
- [x] Readability ruling with a concrete part structure (section 6)
- [x] Four disputed bridges checked against the Level 1 text, corrected lines given (section 7)
- [x] Missing spec items split into "add now" and "wait", with sources or "needs data" (section 8)
- [x] Edit list grouped by chapter, block numbers from DRAFT_L2.md (section 9)
- [x] Proposed changes for the owner outside Level 2 (section 10)
- [x] Claims table R6X-01 onward (section 11)
- [x] Style: no em-dashes, no en-dashes, no semicolons, "to" for ranges, they/them for the owner, no personal identifiers

---

## 1. Verdict in brief

1. **L2.3 framing.** "The numbers are swapped" is rejected as the headline. It is half right and it plants a new simple story. The ruling is "Which debt? Both numbers can be true, depending on what you count." On the usual meaning of debt (loans and bonds) the world owes about $348T to over $365T and is worth $518T to $600T net, so the order in the question flips. On the widest count, everything owed on paper by every sector, the debt side is about $1,200T (computed from McKinsey via press), so "500T+" is true more than twice over. On every count the two cannot be subtracted, because the world owes all of it to itself. Full ruling in section 2.
2. **Counts.** 135 points ruled: 93 red-team points (73 numbered plus 20 word-audit rows) and 42 verifier items. Accepted: 112. Accepted in part: 20. Rejected: 3 (RT-54, V-39, V-40). The "needs data" remainders are listed in section 12, none blocking.
3. **Readability.** Do not trim to Level 1 length. Split each Level 2 chapter into three parts inside the same chapter id, each about one Level 1 chapter long (about 1,500 to 2,350 words), each ending with a stop box and three self-check questions. Delete two duplicated blocks (L2.1 [14], L2.2 [64]) and shorten one (L2.1 [77]). Structure in section 6.
4. **Bridges.** Three of the four disputed bridges claim Level 1 taught something it did not (rb-03 yield cap, rb-11 China, rb-04 "a third"). The fourth (chapter numbers against ids) is right by display number but confusing, with one wording error ("shrinking ruler"). Corrected lines in section 7.
5. **Publication.** The six red-team blocking points (B1 to B6) are all fixed by the edit list. With the edit list applied there is no unresolved headline mismatch. The chapters can publish after the orchestrator applies section 9 and runs one style and number re-check.

---

## 2. The core dispute: how L2.3 should open

### 2.1 What each side said
- **Draft (blocks [5], [7], [8], [63] and the caption of [6]):** "The two numbers are real numbers, but they have swapped places. On every main measure the world owns more than it owes." Origin story: "$500T" is FSB financial assets or UBS wealth, "$300T" is IIF debt in 2021 to 2024.
- **Framer:** found the anomaly and wrote "The two famous numbers are real, they just measure different things", and asked that the correction be respectful.
- **Red team (statistician, ordinary reader, hard-money voice, overcorrection 1):** the verdict compares net wealth with gross debt. Count all financial liabilities and the debt side is far above $500T. The origin story is a guess, and the stronger lead (the owner's own Round 1 belief, gold times ten equals about $500T of world debt) was dropped.
- **Verifier:** every number in the draft's bars checks out (UBS $517.7T, IIF $348.3T, FSB $503.7T, IMF $251T, BIS $262.7T), but McKinsey $600T is press-only and the $620T of real assets could not be found anywhere.

### 2.2 Ruling
1. **"Swapped" is rejected as the frame.** It is right on one rung (loans and bonds) and wrong on another (all financial liabilities). As a headline it replaces "debt is bigger than wealth" with "debt is small next to wealth", which is the overcorrection the engine exists to prevent (PLAN 2B.3, last rows). It also tells the reader a confident origin story the desk cannot prove.
2. **"Both can be true depending on the definition" is accepted, with a verdict attached.** A bare "it depends" would fail the reader. The chapter must say plainly which rung is the usual one and what is true on it:
   - "300T+ world wealth" is true as a floor on every measure: $517.7T (UBS, households, end 2025), $570T (McKinsey, households, 2025), $600T (McKinsey, national net worth, 2025, via press). It understates.
   - "500T+ world debt" is false for the usual meaning of debt: $348.3T at end 2025 and over $365T in mid 2026 on the IIF's four-sector count of loans and bonds, $251T to $272T without the financial sector (IMF, BIS, IIF).
   - "500T+" is true if "debt" means everything owed on paper by every sector, including deposits and other claims: about $1,200T (computed: McKinsey's nearly $1,800T of assets, Fortune 27 Jul 2026, minus $600T of net worth). Not all of that is debt in the everyday sense.
   - On every rung, subtraction is meaningless at world level, because every claim is owed by one part of the world to another.
3. **Where "500T" may come from: candidates, not a story.** The chapter lists them, from closest to furthest from the usual meaning of debt, and says it does not know which one the question meant:
   - (a) The owner's own Round 1 estimate: the world's gold times ten, about $500T (PLAN section 3). Round 1 found this a coincidence, not a mechanism, and Level 1 "How money is born today" already names the times-ten habit. The owner may have been testing whether the engine remembers it.
   - (b) FSB total global financial assets, $503.7T at end 2024: a count of claims held by central banks, banks and other financial firms. It includes much of the world's debt seen from the lender's side, plus shares and claims on each other.
   - (c) Derivatives: $846T of notional value at end June 2025 (BIS, fetched today). Notional is the size of the thing bet on, not money owed. The gross market value, closer to what is at stake, was $21.8T.
   - (d) All financial liabilities: about $1,200T (computed, as above).
   - (e) Wealth itself: UBS's $517.7T of household net wealth. The number may belong on the other side of the ledger.
   - For "300T": a true floor for wealth, and also roughly how world debt was reported from 2021 to 2024 (about $300T to $320T, IIF).
4. **The owner may have been testing the engine.** Level 1 "The musical chairs question" already quotes the owner's notes putting global debt at about $346T, so the owner knew the loans-and-bonds number. That makes "which debt?" the expert reply, and "you swapped them" the reply of a desk that answers before it asks. The chapter should treat the question as a good question, which it is, and never call it a myth. The quote block [4] stays.

### 2.3 What each element must say (exact text is in the edit list)
| Element | Ruling | Edit id |
|---|---|---|
| Kicker | "You may have heard that the world owes $300 trillion, or $500 trillion, or more. Each can be true, depending on what you count, and the world owes all of it to itself..." | W-01 |
| tldr | First bullet becomes the two-rung answer. Add a bullet that the debts cancel for the world, not for each family. Regime-label "most new wealth". Fix the Japan and Italy absolutes | W-02 |
| Opening paragraph [5] | "Which debt?" plus the two rungs plus the no-subtraction rule | W-05 |
| Bar chart [6] | Becomes a ladder with nine bars: gross assets $1,800T, all liabilities about $1,200T, then the draft's seven. Caption: "On the usual debt measures ... wealth is bigger than debt. On the widest count ... the order flips. Neither comparison says how rich the world is" | W-07 |
| Origin paragraph [7] | Replaced by the five candidates, as a short paragraph and a list | W-08, W-09 |
| Myth block [8] | Replaced by a "Popular claim" callout that says what the claim gets right and what it gets wrong. The word "myth" goes | W-10 |
| Definitions [9] | Moved above the chart (ordinary reader). Card for nonfinancial debt corrected. Card for net foreign position added | W-06 |
| Measures table [10] | Sixth row added: everything owed on paper, about $1,200T. Labels for coverage and press sources | W-11 |
| Say it back [63] | "Ask: which debt?" then the two rungs, then no subtraction, then who owes whom | W-51 |
| What people say [60] | "Debt is bigger than wealth": "Depends on the counter", 1.4 to 1.7 times on loans and bonds, the reverse on all liabilities | W-49 |

### 2.4 Overcorrection guard on the L2.3 debunks
| Debunk | What the popular belief gets right | What it gets wrong | Ruling |
|---|---|---|---|
| "The world owes more than it owns" | Paper claims are enormous. On the widest count they are about twice world net worth | On the usual debt measure wealth is 1.4 to 1.7 times debt. And the two cannot be subtracted on any count | Keep both halves (W-10) |
| "We owe it to ourselves" | True for the world in total and for debt held at home | False between families, maturities and currencies, and for net debtor nations | Add the distribution sentence (W-15) |
| "The debt bomb is overstated, the ratio fell" | The world ratio did fall after 2020 | Dollar debt rose about $46T from end 2024 to mid 2026 ($319.5T to over $365T, IIF), and the BIS ratio rose in 2025 | Rewrite [34], [36], [60] (W-29, W-31, W-49) |
| "China grew on borrowing more than on rising asset prices" | McKinsey says China's balance sheet grew through debt (Fortune, 27 Jul 2026) | Mixed-year figures, and China's property boom was also a price story | Soften (W-36) |

---
## 3. Completeness audit (framer answer spec against the draft)

Status is for DRAFT_L2.md as handed in. "After edits" is the status once section 9 is applied. "Wait" means the item is not blocking and goes to the next round with the reason given.

### Q1. L2.1 Bonds
| # | Spec item | Draft | Evidence (blocks) | After edits |
|---|---|---|---|---|
| 1 | Promise with a price, seesaw, duration computed | Present | [5] to [18], duration table checked by script (verifier) | Present |
| 2 | Who issues and how much, by issuer and country | Partial | [33], [34]: world total and US share only | Partial. Wait: the issuer split of the $160.7T is "needs data" (lane B gap) |
| 3 | Who holds, by sector, domestic and foreign, chart over time | Partial | [35] has 4 holders. Lane B has pensions and insurers, funds, residual | Present (B-10) |
| 4 | How a bond is born, link to L2.2 | Partial | [39] good, no money link, "never fails" absolute | Present (B-13, B-14). Refunding and buybacks wait |
| 5 | Backbone measured | Present | [29] to [31] | Present (repo wording fixed, B-06, B-07) |
| 6 | Yield curve, term premium, real yields, inflation-linked | Partial | [22], [51], [72] (2.4% expected inflation, verified as 2.37%) | Present (B-29, B-30 add the 2.76% inflation-linked yield) |
| 7 | Regimes and accidents incl. 1994, 2020, 2022, 2023, 2026, Japan YCC | Partial | [57] good. April 2025 absent. YCC only in L2.2 | Present except April 2025 numbers (B-21, row added without numbers, needs data) |
| 8 | Balance sheets: repo, a bank hit by rates | Partial | [44] good. [60] does not balance | Present (B-23) |
| 9 | Smaller currency view, Malaysia | Present | [64] to [67] | Present (scope labels, B-26) |
| 10 | Overcorrection guard, "safe" and "bubble" | Partial | [69] has "safe" and "dumping", no "bubble" | Present (B-29 adds the bubble row) |

### Q2. L2.2 Who creates money
| # | Spec item | Draft | Evidence | After edits |
|---|---|---|---|---|
| Key | Case 2 key: all channels, both floors, nonbank seller, netting, 1971 to today by regime | Present, one contradiction | [7], [14], [23], [32], [72], [82]. Insider [77] contradicts the netting rule | Present (C-27) |
| 1 | Channel table first, latest year and stress year | Partial | [7] has four regimes and both signs, but the gross deficit sits in a flow column and the Fed has three values for overlapping windows | Present (C-06 to C-09, C-25 deletes the duplicate table [64]) |
| 2 | What limits each printer | Present | [47] to [49] | Present (RWA card added, C-01) |
| 3 | Upstairs plumbing, the two sponges | Present | [35], [38], [39] | Present (Standing Repo Facility added, C-15) |
| 4 | Destruction channels | Present | [41] | Present ("largest drain" sized, C-16) |
| 5 | Money-like claims by definition (M1, M2, broad) | Partial | [51] has M2 only | Partial. Wait: M1 and broad liquidity levels need data |
| 6 | Other countries | Present | [55] to [57] | Present (BoJ share updated, C-20, C-21) |
| 7 | Critical schools | Present, one misquote | [59], [60] | Present (C-23, C-24) |
| 8 | Regime label on every "most" | Partial | [66], [77] | Present (C-26, C-27) |

### Q3. L2.3 The world's wealth and debt
| # | Spec item | Draft | Evidence | After edits |
|---|---|---|---|---|
| 1 | Definitions box before any number | Partial | [9] comes after the chart [6]. Nonfinancial debt card wrong. No gross liabilities measure | Present (W-06 moves it first, fixes the card, adds the rung) |
| 2 | Current numbers, each with source, date, scope, one table | Present | [10], all checked by verifier | Present (labels, W-11) |
| 3 | Why they cannot be subtracted, who owes, rate, currency, refinancing | Partial | [13] to [21]. Distribution missing. Currency and refinancing only as a rule | Present for distribution and currency (W-15, W-38). Maturity and interest columns wait (needs data) |
| 4 | Brief timeline in dollars and as a multiple of output | Partial | [32], [33]. 2022 missing. 1971 and 1980 model unlabelled as to sample | Present (W-25, W-27, W-28, W-30). Wealth-to-output multiple stays in [10] only |
| 5 | Country structure, required pairs incl. France | Partial | [43] to [49]. France has no story. Belgium, Netherlands, Sweden absent | Present (W-40 France, W-37 three rows). Mean and median column, currency column wait |
| 6 | Who contributes, shown two ways | Present | [39] to [41] | Present (G7 51%, W-35, W-36) |
| 7 | Scale tools checked by script | Present, mixed denominators | [52] to [58] | Present (W-45, W-47) |
| 8 | Regimes: 2021 to 2025 ratio fall, 2008 and 2020 jumps | Partial, one error | [34], [36]: "record every year" false for 2022 | Present (W-29, W-31) |
| 9 | Tripwires: what would change the picture | Missing | No section | Present (W-48, new section) |
| Blind spot | Gross versus net, all liabilities | Missing | Verdict compared net with gross | Present (W-05, W-07, W-11) |
| Blind spot | Derivatives notional | Missing | Only "derivatives" in a leaves-out cell | Present (W-09, W-11) |
| Blind spot | Unfunded pension promises | Thin | Leaves-out cell only | Partial (W-13 explains them, size needs data) |
| Blind spot | Exchange rates, constant-rate check | Present | [27] to [30] | Present (2022 and gold ruler added, W-25, W-26) |
| Blind spot | Mean versus median | Present | [45], [54] | Present (UBS "modelled" label, W-39) |
| Blind spot | G7 versus G10 membership, China | Present | [38] | Present |
| Blind spot | Market versus face value | Thin | [25] A2 only | Wait (not sized in lane A) |

### Channel table check (Move 5)
- L2.2 [7]: both directions, four regimes (2019, 2020 to 2021, 2022 to 2023, latest year), sources named. Passes after the deficit moves to a memo line and the windows are labelled.
- L2.3: the draft had no channel table. Lane A section B has one with both directions and a latest and stress year for five of seven channels. A compact version is added (W-22). Repayment and default stay "not sized" (lane gap), which is shown in the table, not hidden.

---

## 4. Word audit on new material (Move 7)

Searched: only, solely, always, never, all, none, most, mostly, main, cannot, impossible, myth, wrong. Hits that are quantified, regime-labelled or true by definition are listed once as clean. Every other hit gets a fix in section 9.

| Chapter, block | Text | Ruling | Edit |
|---|---|---|---|
| L2.1 [39] | "so a sale never fails for lack of buyers" | Absolute. Rewrite | B-13 |
| L2.1 [34], [37] | "Most people picture ... Most people guess" | Unsourced claim about people. "Many" | B-09, B-12 |
| L2.1 [54] | "the only voter that votes every second" | Rhetoric. "a voter" | B-20 |
| L2.1 [36] | "almost exactly the Fed's 12.7%" | Z.1 Fed level is low (verifier). "close to" | B-11 |
| L2.2 [26] | "Nearly all primary dealers belong to big banking groups" | Not counted. "Many" until counted | C-11 |
| L2.2 [41] | "the largest single drain in 2021 and 2022" | Size it ($1.64T against $0.68T of new loans) | C-16 |
| L2.2 [52] | "Mostly banks abroad" | Wrong (55% is bonds) | C-19 |
| L2.2 [59] | "the only source of net financial assets for the private sector" | Scope error | C-23 |
| L2.2 [60] | "None of the three critical schools points to a missing channel" | Strong claim. "We found no school whose strongest objection..." | C-24 |
| L2.2 [66] | "Loans are the main channel most years" | Regime label missing | C-26 |
| L2.2 [77] | "basically right" | Overstates, contradicts [72] | C-27 |
| L2.3 tldr, [5] | "On every main measure the world owns more than it owes" | False on all liabilities | W-02, W-05 |
| L2.3 [6] caption | "Every measure of wealth is bigger than every measure of debt" | False | W-07 |
| L2.3 tldr, [2] ray | "Most new wealth is a higher price" | Year missing. "In 2025 about four fifths of the rise..." | W-02, W-03 |
| L2.3 tldr | "mostly land and buildings" | Quantify: real estate about two thirds (McKinsey 2021 study, Level 1) | W-02 |
| L2.3 tldr | "Japan's state owes its own people" / "Italy's state is in debt, its families are not" | Absolutes. Quantify | W-02 |
| L2.3 [8] | "Myth: The world owes more than it owns" | Labels the owner's question a myth. Replace with "Popular claim" | W-10 |
| L2.3 [9] | "Bank debt is left out, because it is mostly the others' deposits" | Wrong reason | W-06 |
| L2.3 heading 12 | "why the world cannot be in debt" | "cannot owe anyone outside itself" | W-14 |
| L2.3 [21] | "mostly in its own currency" | Unsourced. Rewrite | W-19 |
| L2.3 [34], [36] | "set a new record every year" | False for 2022 | W-29, W-31 |
| L2.3 [43] China | "mostly Chinese banks" | Lane says "not confirmed" | W-37 |
| L2.3 [45] | "a risk premium a country with its own central bank would not" | False absolute | W-39 |
| L2.3 [45] | "one of the lowest home-ownership rates in Europe" | Not fetched (verifier, lane) | W-39 |
| L2.3 [47], [49] | "mostly mortgages" | Unsourced. "much of it", "including" | W-41, W-42 |
| L2.3 [41] | "mostly reflects a small formal financial system" | Unsourced. "partly" | W-36 |
| L2.3 [54] | "most adults own a small fraction of that" | Quantify with the UBS bands | W-45 |
| L2.3 [60] | "Wrong. Wealth is 1.5 to 1.7 times debt" | No scope, range off (517.7 / 365 = 1.42) | W-49 |

Clean: L2.2 tldr and [69] "most" (sized and regime-labelled), "Reserves always" in [7] (true for open market purchases), "only countries can owe outside" (true by definition), rules lines "Never subtract world debt from world wealth" and "Always ask what a number is measured in" (rules, not size claims), L2.3 [20] "mostly the price of real things" (close to definitional for national net worth), "cannot be subtracted" (true on every rung).

---
## 5. Rulings table

Ruling codes: Accept (fix as proposed or with a better fix), Accept in part (part fixed now, part deferred or changed, reason given), Reject (no change, reason given). "Edit" points to section 9.

### 5.1 Red-team points
| Id | Point | Source | Ruling | Reason | Edit |
|---|---|---|---|---|---|
| RT-01 | B1: verdict compares net wealth with gross debt, false on all liabilities | RT statistician | Accept | Section 2. The verdict becomes two rungs, with the widest rung shown | W-05, W-07, W-11 |
| RT-02 | B2: kicker and tldr invite subtraction | RT ordinary reader | Accept | "Owns" was net, "owes" gross. New kicker and tldr lead with "which debt?" and the no-subtraction rule | W-01, W-02 |
| RT-03 | B3: deficit ledger says US "owes $0.5T more" when Japan swaps dollar deposits for bonds | RT accountant | Accept | Ledger test: a deposit owed to Japan becomes a bond owed to Japan. Net position unchanged in this deal. It fell earlier, when the goods were bought | W-16, W-17 |
| RT-04 | B4: "record every year" 2021 to 2025 false, 2022 fell about $4T (also the teacher's curiosity point) | RT teacher, currency strategist | Accept | Verifier R6V-03 confirms the 2022 fall (IIF via Kitco) | W-28, W-29, W-31 |
| RT-05 | B5: "Italy pays a risk premium a country with its own central bank would not" false, France pays more | RT sovereign analyst | Accept | Countries with their own central bank pay premia too. France over Italy in October 2026 is press-sourced (Il Sole 24 Ore, QuiFinanza) | W-39, W-40 |
| RT-06 | B6: "about 35%" loss is a constant-maturity model, a holder lost far less | RT bond trader | Accept in part | Right in substance, wrong numbers. RT used 2.67 years elapsed. The dates (2 Jul 1979 to 30 Sep 1981) give 2.25 years. Court model (bond.py): holder price -32%, about -14% with coupons. 2021 to 2023: -24% and about -21%, not -22.5% and -19% | B-21, B-22, B-25, B-29 |
| RT-07 | L2.2 channel table mixes the gross deficit with signed flows | RT NY Fed desk | Accept | The deficit is netted by who buys the bonds. It moves to a memo line | C-07, C-08 |
| RT-08 | L2.2 Fed channel has three values for overlapping windows, two for 2020 to 2021 | RT NY Fed desk | Accept | Label every window. Delete the duplicate table [64], which also carried two wrong numbers (verifier) | C-07, C-25 |
| RT-09 | Standing Repo Facility missing | RT NY Fed desk | Accept in part | Added to the Step 4 list of pipes. Not added as a channel-table row, because no size is in the lane files (needs data) | C-15 |
| RT-10 | Heading "the Fed's own bills" is wrong (the Fed issues no bills) | RT NY Fed desk | Accept | Rename | C-14 |
| RT-11 | "a sale never fails for lack of buyers" is an absolute | RT Treasury debt manager | Accept | "fully covered by design" | B-13 |
| RT-12 | L2.1 never links the bills or coupons mix to L2.2's money effect | RT Treasury debt manager | Accept | Spec Q1 item 4 asked for it. One paragraph, sourced to L2.2 [39] figures | B-14 |
| RT-13 | Buybacks and the quarterly refunding absent | RT Treasury debt manager | Accept in part | Deferred to the next round. Density ruling (section 6) and no sized data in the lanes | none now |
| RT-14 | April 2025 basis-trade selloff missing | RT bond trader | Accept in part | Row added without numbers. The H.15 closes are not in the lane, verifier or red-team files with a primary source (needs data) | B-21 |
| RT-15 | Repo T-account reads as a naked bet | RT bond trader | Accept | Say it is usually one leg of a hedged basis trade | B-15 |
| RT-16 | SVB table shows only assets, the run lived on uninsured deposits | RT bank treasurer | Accept in part | Insurance-limit point added, sourced to Level 1 "Eye-openers". The "over 90% uninsured" share is not re-fetched (needs data) | B-23 |
| RT-17 | BTFP lent against Treasuries at par, best evidence for "backbone" | RT bank treasurer | Accept | Fed press release of 12 March 2023 (R6X-12) | B-24 |
| RT-18 | Household row in the deficit ledger hides where the money went | RT accountant | Accept | Show $0.5T in deposits and $0.5T in pension claims | W-16 |
| RT-19 | Timeline misses the post-1945 precedent for ratios falling without repayment | RT historian | Accept | Use Level 1 "The seasons of money" wording (Reinhart and Sbrancia, 2011). The RT's "more than half" and "25 years" have no source in the files, so they are left out | W-30 |
| RT-20 | Reinhart and Rogoff misattributed ("debt moves wealth around") | RT historian | Accept | Their known claim is crises clustering after debt build-ups, above all foreign-currency debt (This Time Is Different, 2009) | W-50 |
| RT-21 | 1971 and 1980 debt points need a model label with the sample | RT historian | Accept | Caption names the model and the rich-country sample | W-27 |
| RT-22 | No tripwire on fast private credit (BIS credit-to-GDP gap) | RT post-Keynesian | Accept | Row added in the new tripwire table. Country gap values need data | W-48 |
| RT-23 | MMT claim misstated as "private sector" | RT post-Keynesian | Accept | "non-government sector (domestic private plus foreign)" | C-23 |
| RT-24 | Ruler measured only against currencies, never gold | RT hard-money critic | Accept | Curiosity question added, labelled model, gold +66% in 2025 is press (RT sources) | W-26 |
| RT-25 | Unfunded promises never explained or sized | RT hard-money critic | Accept in part | Explained now. Size left out (needs data) | W-13 |
| RT-26 | Origin story invented, owner's gold-times-ten lead dropped | RT hard-money critic | Accept | Five candidates replace the story | W-08, W-09 |
| RT-27 | Move the owns-versus-owes chart below the definitions | RT ordinary reader | Accept | Definitions before any number is spec Q3 item 1 | W-06 |
| RT-28 | Nonfinancial debt card gives the wrong reason | RT statistician | Accept | Financial-sector borrowing is left out so the same lending is not counted twice | W-06 |
| RT-29 | BIS ratios use BIS coverage, chapter divides by World Bank GDP | RT statistician | Accept in part | Keep BIS's own published ratios and label them "on BIS coverage". Recomputing on World Bank GDP would print a ratio no source publishes | W-27, W-28 |
| RT-30 | "Earning power above book" cancels in national net worth | RT statistician | Accept | Say it survives in household wealth and cancels in national net worth | W-18 |
| RT-31 | Add an all-liabilities rung of about $1,180T | RT statistician | Accept in part | Use about $1,200T, computed from two supported inputs ($1,800T assets, Fortune fetched today, minus $600T net worth). The RT's figure rests on $620T of real assets, which the verifier could not find | W-07, W-11 |
| RT-32 | Structure table lacks currency of debt, average maturity, interest as % of revenue | RT sovereign analyst | Accept in part | Right, but no country values are in the files (needs data). Deferred. The rule line already says "who owes whom, in which currency, and how soon" | none now |
| RT-33 | Japan shown as 193% with no note on 207% gross and 136% net (IMF) | RT sovereign analyst | Accept | One sentence naming the three bases | W-38 |
| RT-34 | France, a required pair, has no story | RT sovereign analyst | Accept | France callout from lane A data plus the RT spread figures | W-40 |
| RT-35 | "We owe it to ourselves" cancels in total, not between people | RT inequality researcher | Accept | Use the desk's own confirmed US figures (R2E-19): top 10% took 67.5% of the gain since 2019, bottom half 3.1% | W-15 |
| RT-36 | Adult denominators mixed (village versus $93,000 per adult) | RT inequality researcher | Accept in part | Keep both, because UBS bands exist only on its sample, but label each count | W-45, W-47 |
| RT-37 | UBS medians need a "modelled" label and a WID cross-check | RT inequality researcher | Accept in part | Label now. WID cross-check deferred (needs data) | W-39 |
| RT-38 | Net foreign position is not debt (it includes shares and firms) | RT currency strategist | Accept | Card, prose and curiosity answer reworded | W-06, W-17, W-19 |
| RT-39 | US net position stale, BEA end 2025 is minus $27.54T | RT currency strategist | Accept in part | Country table keeps the IMF end-2024 column so all countries share one vintage. The prose adds BEA's end-2025 figure | W-17 |
| RT-40 | No link to the $14T of dollar debt owed outside the US | RT currency strategist | Accept | One sentence, BIS figure already verified in L2.2 | W-38 |
| RT-41 | 2022, the cleanest strong-dollar year, missing from the ruler section | RT currency strategist | Accept | Paragraph added | W-25 |
| RT-42 | Chapters are 3.3 to 4.1 times Level 1 length | RT teacher | Accept | Three parts with stop boxes (section 6) | section 6 |
| RT-43 | L2.2 opens with the full channel table before the floors are taught | RT teacher | Accept | Three-row preview first, full table after Step 3 | C-06, C-09 |
| RT-44 | Bridge "rb-03 ... 1942 to 1951 yield cap" not in rb-03 | RT teacher | Accept | Checked: rb-03 has no 1942, 1951 or cap. rb-08 has "1941 to 1951, war and postwar inflation with capped rates" and financial repression | C-03, C-17 |
| RT-45 | Curiosity "China ... builds on rb-11", rb-11 never mentions China | RT teacher | Accept | Checked. China appears in rb-04, rb-09, rb-leader and rb-12. Link to rb-leader | W-43 |
| RT-46 | Bridge "rb-04 ... foreigners hold about a third" not in rb-04 | RT teacher | Accept | Checked. rb-04 has the recycling loop and country holdings, no "third" | B-01 |
| RT-47 | References mix ids and chapter numbers | RT teacher | Accept | Use titles everywhere ("Level 1's "The yardstick problem"") | B-28, B-30, B-31, C-02, W-21, W-42 |
| RT-48 | Italy question lost the framer's surprise (who pays more to borrow) | RT teacher | Accept in part | Replaced by the France question. The recall-style questions stay, they are short and correct | W-43 |
| RT-49 | NIIP used but never taught | RT teacher | Accept | Card added | W-06 |
| RT-50 | "Risk-weighted assets" used without a card | RT teacher | Accept | Card added | C-01 |
| RT-51 | L2.1 issuer split of world bonds missing | RT spec gaps | Accept in part | Needs data (lane B gap). Deferred | none now |
| RT-52 | L2.1 holders missing pensions, insurers, hedge funds | RT spec gaps | Accept | Lane B Z.1 table has them | B-10 |
| RT-53 | L2.1 no real yield or breakeven number | RT spec gaps | Accept | 2.76% inflation-linked yield and 2.37% breakeven (verifier, H.15) | B-30 |
| RT-54 | Japan yield curve control appears only in L2.2 | RT spec gaps | Reject | L2.2 [55] and [56] teach it. Repeating it in L2.1 adds length against the density ruling. L2.1 keeps its pointer to Japan through [24] | none |
| RT-55 | "Bonds are a bubble" never tested | RT spec gaps | Accept | Row added to "Two stories" | B-29 |
| RT-56 | L2.2 M1 and broad liquidity not shown | RT spec gaps | Accept in part | Needs data. Deferred | none now |
| RT-57 | L2.3 tripwire section missing | RT spec gaps | Accept | New section from lane A's dated tripwires | W-48 |
| RT-58 | Derivatives notional never explained | RT spec gaps | Accept | BIS page fetched today: $846T notional, $21.8T gross market value, end June 2025 | W-09, W-11 |
| RT-59 | Timeline lacks a wealth-to-output multiple, 1971 and 1980 wealth are models with no inputs | RT spec gaps | Accept in part | Drop the 1971 and 1980 wealth models (no inputs shown, ROLES rule). No new multiple column, the measures table gives 5.1 times for 2025 | W-28 |
| RT-60 | Structure table lacks mean and median per adult and the housing versus financial split | RT spec gaps | Accept in part | No new columns (phone width). One sentence with the lane's UBS split. Medians stay in callouts | W-37 |
| RT-61 | Belgium, Netherlands and Sweden absent from the structure table | RT spec gaps | Accept | Lane A has every cell | W-37 |
| RT-62 | Market versus face value of bonds thin | RT spec gaps | Accept in part | Not sized in lane A. Deferred | none now |
| RT-63 | Overcorrection 1: "swapped places" | RT overcorrection | Accept | Section 2 | W-05 to W-10 |
| RT-64 | Overcorrection 2: "we owe it to ourselves" | RT overcorrection | Accept | Distribution sentence | W-15 |
| RT-65 | Overcorrection 3: "debt bomb overstated, ratio fell five years" | RT overcorrection | Accept | Add the $46T rise from end 2024 to mid 2026 and the BIS 2025 rise | W-29, W-49 |
| RT-66 | Overcorrection 4: L2.2 [77] "basically right" contradicts the netting table | RT overcorrection | Accept | Regime-labelled rewrite | C-27 |
| RT-67 | Overcorrection 5: China "grew on borrowing more than asset prices" | RT overcorrection | Accept | Soften and cite McKinsey via Fortune | W-36 |
| RT-68 | Spec itself: no gross liabilities measure | RT note for framer | Accept | Added to the chapter. Lesson for the framer card: every "world total" question needs a gross and a net rung | W-11 |
| RT-69 | Spec itself: distribution of claims missing | RT note for framer | Accept | Added (W-15). Framer lesson | W-15 |
| RT-70 | Spec itself: ruler against gold and goods | RT note for framer | Accept | Added (W-26) | W-26 |
| RT-71 | Spec itself: NIIP split into equity and debt | RT note for framer | Accept in part | Wording added. The BEA split needs data | W-17 |
| RT-72 | Spec itself: debt service and maturity as a column | RT note for framer | Accept in part | Needs data, deferred (as RT-32) | none now |
| RT-73 | Spec itself: 1946 to 1974 precedent | RT note for framer | Accept | Added (W-30) | W-30 |

Red-team word audit rows (all ruled in section 4): RT-WA-01 L2.1 [39], RT-WA-02 L2.1 [34], RT-WA-03 L2.1 [54], RT-WA-04 L2.2 [26], RT-WA-05 L2.2 [41], RT-WA-06 L2.2 [59], RT-WA-07 L2.2 [60], RT-WA-08 L2.2 [66], RT-WA-09 L2.2 [77], RT-WA-10 L2.3 tldr Japan and Italy, RT-WA-11 L2.3 tldr and [5], RT-WA-12 L2.3 [6], RT-WA-13 L2.3 "most new wealth", RT-WA-14 L2.3 "real things, mostly land", RT-WA-15 L2.3 [9], RT-WA-16 L2.3 heading 12, RT-WA-17 L2.3 [34] and [36], RT-WA-18 L2.3 [45], RT-WA-19 L2.3 [60], RT-WA-20 L2.3 [8]. Ruling: all 20 accepted with the fixes in section 4. The RT's "clean" list is confirmed.

### 5.2 Verifier mismatches and label fixes
| Id | Point | Source | Ruling | Reason | Edit |
|---|---|---|---|---|---|
| V-01 | UBS $517.7T needs "56 markets, over 92% of world wealth" | VERIFY priority | Accept | Scope label | W-11 |
| V-02 | IIF "over $365T" needs "(IIF, via press)" at first use | VERIFY priority | Accept | Two press reports, no IIF document | W-02, W-11 |
| V-03 | IIF mid-2026 ratio "305% to 310%" cannot be checked | VERIFY priority | Accept | "about 305% (Q1 2026)" | W-28 |
| V-04 | McKinsey $600T needs "via press" in [10] and the tldr | VERIFY priority | Accept | Snippet only | W-02, W-11 |
| V-05 | McKinsey $620T of real assets not found | VERIFY priority | Accept | Dropped. Real assets described as "roughly the $600T of net worth" | W-18 |
| V-06 | IIF 2021 to 2024 "$305T to $320T" wrong | VERIFY priority | Accept | "about $300T to $320T" (R6V-03) | W-09 |
| V-07 | G7 share of nonfinancial debt is 51%, not 52% | VERIFY priority | Accept | 51.46% | W-35, W-36 |
| V-08 | G7 people "10%" against prose "under 10%" | VERIFY priority | Accept | 9.6% | W-35 |
| V-09 | Pairbars caption must say country debt is BIS, world total IIF | VERIFY priority | Accept | Caption | W-34 |
| V-10 | China "16% to 18.5%" mixes mainland and Greater China | VERIFY priority | Accept | "about 16% (18.5% counting Hong Kong and Taiwan)" | W-33, W-43 |
| V-11 | US NIIP needs "end 2024" | VERIFY priority | Accept | Label everywhere | W-17, W-19, W-37, W-38 |
| V-12 | Highest 10-year auction yield since 2000, not "at least 2008" | VERIFY priority | Accept | Stronger and true (R6V-06) | B-13 |
| V-13 | "almost exactly the Fed's 12.7%" (Z.1 Fed level low) | VERIFY priority | Accept | "close to ... on this measure" | B-11 |
| V-14 | Malaysia foreign share 21.6% (MGS plus GII) against 20.1% (MGS) | VERIFY priority | Accept | Name the scope in both chapters | B-26, W-42 |
| V-15 | US holders 29% (L2.3) against "about a third" (L2.1 bridge) | VERIFY | Accept | Bridge loses "a third" (B-01). L2.1 [35] keeps 32.5% on the Z.1 market-value base, L2.3 keeps 29% of debt held by the public. Both bases named | B-01, W-37 |
| V-16 | L2.1 [33] US Treasuries bar is 30 Sep 2026, not end 2025 | VERIFY | Accept | Title and caption | B-08 |
| V-17 | L2.1 [33] caption empty | VERIFY | Accept | Caption written | B-08 |
| V-18 | Repo "$12.6T a day" reads as a daily flow | VERIFY | Accept | "outstanding on an average day" (R6V-10) | B-06, B-07, B-16, B-17, C-18 |
| V-19 | Fed held $0.75T at end 2007, not $0.76T | VERIFY | Accept | R6V-12 | B-17 |
| V-20 | 2026 high is the highest since 2002, not 2007 | VERIFY | Accept | R6V-05 | B-21 |
| V-21 | SVB ledger does not balance | VERIFY | Accept | Add $8 of cash and loans (R6V-13) | B-23 |
| V-22 | "Oil above $100" not checked | VERIFY | Accept | Number removed, oil kept as a force without a number | B-04 |
| V-23 | 7.40% mortgage level not verified | VERIFY | Accept | Made illustrative ("one point higher"). The payment arithmetic is verified | B-19 |
| V-24 | "Almost half ... sukuk" cannot be checked | VERIFY | Accept | "Part of" | B-27 |
| V-25 | Yields dated 21 Oct, 22 Oct values differ | VERIFY | Accept | No change, keep the date stamps as the verifier advises | none |
| V-26 | L2.2 [7] latest M2 is +$1.25T (Aug to Aug), not +$1.17T | VERIFY | Accept | R6V-07 | C-07 |
| V-27 | L2.2 [1] and [14] reserves, TGA, reverse repo are week averages | VERIFY | Accept | Switch to Wednesday levels used in [38] and [42]: $2.97T, $945B, $0.2B (R6V-14) | C-01, C-10, C-15 |
| V-28 | L2.2 [29] week figures are week averages | VERIFY | Accept | Label | C-12 |
| V-29 | L2.2 [64] Fed +$4.6T should be +$4.5T | VERIFY | Accept | Block [64] deleted as a duplicate of [7], which has $4.52T | C-25 |
| V-30 | L2.2 [64] cash withdrawn -$0.45T should be -$0.43T | VERIFY | Accept | Same deletion | C-25 |
| V-31 | L2.2 [64] Fed "+$0.19T" window clashes with [7] | VERIFY | Accept | Same deletion. [7] keeps one labelled window | C-25 |
| V-32 | L2.2 [52] "mostly banks abroad" wrong, 55% is bonds | VERIFY | Accept | R6V-09 | C-19 |
| V-33 | L2.2 BoJ 49% (end 2025) stale, 46.7% of JGBs in June 2026 | VERIFY | Accept | "about 47% of JGBs, excluding bills (June 2026)" (R6V-15) | C-20, C-21 |
| V-34 | L2.3 [29] 17.5% is Europe, Middle East and Africa | VERIFY | Accept | R6V-02 | W-24 |
| V-35 | L2.3 [43] Japan holders need a date | VERIFY | Accept | "end 2025". The June 2026 update (41.2%, 13.1%) is noted in the callout | W-37, W-38 |
| V-36 | L2.3 [45] Germany home ownership not fetched | VERIFY | Accept | Reworded as the usual explanation, marked not checked here | W-39 |
| V-37 | L2.2 [26] primary dealers not counted | VERIFY | Accept | "Many" until counted from the NY Fed list | C-11 |
| V-38 | L2.2 [83] "mostly supplied paper cash" printed without numbers | VERIFY | Accept | Add the verifier's two numbers ($0.72T of Fed bonds 1971 to 2007, $0.83T of currency at end 2007) | C-28 |
| V-39 | L2.3 [33] optional: BIS peak was 233% in 2009 | VERIFY (optional) | Reject | Correct, but the row already says the ratio rose from 202% to 229% by 2010. Adding a third figure adds density for no change in the lesson | none |
| V-40 | L2.1 [39] optional: say auction shares are of the $39.0B offering | VERIFY (optional) | Reject | [40] already says "share of the bonds sold". Not needed | none |
| V-41 | L2.3 [10] McKinsey "5.1 times GDP" is $600T over World Bank GDP | VERIFY | Accept | Keep, now labelled "via press" | W-11 |
| V-42 | Mismatch rate 11.2% of rows, so every headline was re-checked | VERIFY | Accept | The court relies on the verifier's re-check. After section 9 no headline mismatch is left | none |

### 5.3 Tally
- Red-team points: 73 numbered rows plus 20 word-audit rows = 93. Accepted 72 (52 numbered plus 20 word audit). Accepted in part 20. Rejected 1 (RT-54).
- Verifier items: 42. Accepted 40. Rejected 2 (V-39, V-40).
- All points: 135. Accepted 112, accepted in part 20, rejected 3. Nothing is left open as a blocker. The "needs data" parts of the accept-in-part rows are listed in section 12.

---
## 6. Readability ruling: split, do not trim

### 6.1 The numbers
Court count (scratchpad wc.py, words in the draft export including table text): L2.1 about 5,380, L2.2 about 6,240, L2.3 about 4,900 words. Level 1 chapters run from about 600 (the Rulebook summary) to about 4,160 (Crypto), median about 1,650. The red team's own count (5,342 to 6,614) uses a different method but lands in the same place: each Level 2 chapter is three to four Level 1 chapters long.

### 6.2 Decision
- **Split each chapter into three parts inside the same chapter id.** Do not trim to Level 1 length. The owner asked for Level 2 to be expanded "on a radiant scale", and the spec items the red team found missing add length, not remove it. Cutting to 1,600 words would delete the evidence that makes Level 2 a Level 3-depth answer (PLAN 4.5 depth ladder).
- **Do not split into separate chapter ids.** That would break the bridge, connects and "before" links already published in Level 1 (rb-titled, rb-em, rb-crypto and the Level 2 "before" list point at rb-bonds, rb-moneymake and rb-worldbs).
- **Each part is about one Level 1 chapter long** (about 1,500 to 2,350 words, 8 to 12 minutes) and ends with a stop box: a callout labelled "Stop here" and three check blocks the reader can answer from that part alone. The last part of each chapter ends with the existing "Say it back" checks, which act as its stop box.
- **Delete two duplicated blocks and shorten one:** L2.1 [14] (repeats the duration table and the SVB story) and L2.2 [64] (repeats the channel table with two wrong numbers and a clashing window) go. L2.1 [77] is shortened. In L2.3 the old chart caption, origin story and myth block are replaced, not added to.
- **Each chapter opens with one reading line:** "This chapter comes in three parts of about ten minutes each..." so a self-paced reader knows they may stop.
- Uses only block types the site already renders (h, p, callout, check, table, list). If the site can collapse sections, parts 2 and 3 may start collapsed, but that is optional and not needed for publication.

### 6.3 Structure
| Chapter | Part | Blocks (DRAFT_L2 numbering) | Approx. words after edits | Stop box after |
|---|---|---|---|---|
| L2.1 | Part 1. The bond itself: price, yield and the lever | [0] to [24] (minus [14]) | about 1,600 | [24] (B-05) |
| L2.1 | Part 2. Why the system rests on bonds: size, owners, auctions and repo | heading 25 to [46] | about 1,850 | [46] (B-18) |
| L2.1 | Part 3. When bonds bite: your mortgage, the crashes, Malaysia and inflation | heading 47 to [81] | about 2,150 | Step 7 checks [78] to [81] |
| L2.2 | Part 1. Two floors and three printers | [0] to [33], with the full table [7] to [9] moved to after [33] | about 2,350 | after the moved [9] (C-13) |
| L2.2 | Part 2. Sponges, shredders, brakes and other printers | heading 34 to [57] | about 1,850 | [57] (C-22) |
| L2.2 | Part 3. Who printed, year by year, and what the critics say | heading 58 to [85] (minus [64]) | about 2,050 | [85] |
| L2.3 | Part 1. What the world owns and owes | [0] to [21] | about 2,250 | [21] (W-20) |
| L2.3 | Part 2. How it grew, and how to hold it in your head | heading 22 to [36], then heading 51 to [58] moved here | about 1,800 | moved [58] (W-32) |
| L2.3 | Part 3. How countries are built, and what would change the picture | heading 37 to [50], new tripwire section, heading 59 to [65] | about 2,200 | Say it back [63] to [65] |

The L2.3 move puts the "brain-sized" scale tools next to the timeline, where a reader first meets very large numbers, and leaves Part 3 for countries. The L2.2 move follows the teacher: the three-row preview comes first, the full table with sizes after the reader has learned the floors.

---

## 7. Bridge claims checked against the Level 1 text

Checked with python3 -I against every Level 1 chapter in site/rulebook.json (all strings searched, not only paragraphs).

| Bridge in the draft | What Level 1 actually says | Verdict | Corrected line |
|---|---|---|---|
| L2.2 [3]: "rb-03: Wars suspend money rules, as the 1942 to 1951 yield cap did." Also L2.2 [49] "builds on rb-03" | rb-03 (War, Bretton Woods and the dollar's crown) has no 1942, no 1951, no cap. rb-08 (The seasons of money) has a table row "1941 to 1951, War and postwar inflation with capped rates, War debt, Fed held rates down" and a paragraph on financial repression (Reinhart and Sbrancia, 2011) | Wrong chapter | "rb-08: In wartime and after it, the Fed held interest rates down while inflation shrank the war debt (the 1941 to 1951 season of capped rates)." Curiosity [49] builds on rb-08 |
| L2.3 [50]: "China is not in the G7 or the G10... (builds on rb-11)" | rb-11 (The new board game) never mentions China. China appears in rb-04 (yuan restrictions, Chinese imports), rb-09 (capital controls limit the yuan), rb-leader (exporters, refining) and rb-12 (digital yuan) | Wrong chapter | Builds on rb-leader (The country leaderboard: deep markets and the game nations play) |
| L2.1 [1]: "rb-04: Trade surpluses come back to the US as purchases of Treasuries, which is why foreigners hold about a third of them." | rb-04 teaches the recycling loop and gives August 2026 holdings (Japan about $1,068B, UK about $1,010B, China about $591B). It never says "a third" | Overclaims what Level 1 taught | "rb-04: Trade surpluses come back to the US as purchases of Treasuries and other US assets. That is why foreign central banks and investors are among the largest holders of US government debt." (L2.1 [35] then supplies the 32.5% share) |
| Chapter numbers against ids: L2.1 [71] "Level 1 chapter 13 called this the shrinking ruler", L2.1 [75] "Level 1 chapter 8", L2.1 [66] and L2.3 [49] "Level 1 chapter 12", L2.2 [2] "Level 1 chapter 6", L2.3 [24] "Level 1 chapter 19" | By display number these are right (num 13 is rb-10 The yardstick problem, 8 is rb-08, 12 is rb-em, 6 is rb-06, 19 is rb-titled). But the same chapters list bridge ids such as rb-13 (Eye-openers, display number 16), so "chapter 13" and "rb-13" point at different chapters. rb-10 says "rubber ruler", not "shrinking ruler" | Confusing, one wording error | Use titles: Level 1's "The yardstick problem" (rubber ruler), "The seasons of money", "The view from a smaller currency", "How money is born today", "The titled world" |

Other bridges spot-checked and found supported: rb-01 (money is a promise and a ledger), rb-06 (layers of dollars, loans create deposits, no fixed multiplier), rb-10 (nominal against real), rb-13 ("Never confuse free of default with free of risk", SVB), rb-titled ("Wealth on paper is a price, not a pile", every financial asset cancels), rb-leader ("Money flows to the deepest, safest, most open market"), rb-nation (tax as the subscription fee), rb-07 (debt can outgrow income, mass repayment destroys money).

---

## 8. Missing spec items: add now or wait

| Item | Decision | Source for the text | Edit |
|---|---|---|---|
| Tripwires section (L2.3) | Add now | Lane A section I tripwire table (dated), RT post-Keynesian (credit gap), L2.3 [25] (house-price model) | W-48 |
| France story (L2.3) | Add now | Lane A table D (BIS ratios, Eurostat holders, IMF NIIP), RT sovereign analyst (Il Sole 24 Ore 5 Oct 2026, QuiFinanza 6 Oct 2026 spreads) | W-40 |
| Gross liabilities rung (L2.3) | Add now | Fortune 27 Jul 2026 (nearly $1,800T of assets, $570T household net worth, fetched today), McKinsey $600T (verifier snippet), computed $1,200T | W-07, W-11 |
| 2022 in the timeline and ruler (L2.3) | Add now | IIF via Kitco 22 Feb 2023 (about $4T fall, first since 2015, R6V-03), lane A section B (household wealth -2.4% to $454.4T, via Bloomberg, secondary) | W-25, W-28 |
| Derivatives explained (L2.3) | Add now | BIS OTC derivatives statistics at end June 2025, published 8 Dec 2025, fetched today: $846T notional, $21.8T gross market value | W-09, W-11 |
| Pensions explained (L2.3) | Add now, without a size | Private pensions are inside UBS household wealth (lane A definitions). Unfunded state promises are in no debt count (lane A "what is not debt"). Size needs data | W-13 |
| Distribution of claims (L2.3) | Add now | Desk claim R2E-19 (CONTEXT_R6, T0 Confirmed, 2026 Q2) | W-15 |
| Post-1945 precedent (L2.3) | Add now | Level 1 rb-08 text (Reinhart and Sbrancia, 2011) | W-30 |
| Channel table for world debt and wealth (L2.3) | Add now | Lane A section B channel table | W-22 |
| Belgium, Netherlands, Sweden rows (L2.3) | Add now | Lane A table D | W-37 |
| Japan gross, net and BIS bases (L2.3) | Add now | RT sovereign analyst (IMF via Commerzbank, fxstreet 1 Jun 2026, IMF F&D Sep 2026) | W-38 |
| Holders: pensions and insurers series (L2.1) | Add now | Lane B table B1.3 (Z.1 L.210) | B-10 |
| Bills or coupons money link (L2.1) | Add now | L2.2 [39] figures (H.4.1) | B-14 |
| BTFP at par (L2.1) | Add now | Federal Reserve press release, 12 Mar 2023 | B-24 |
| Bubble test and real yield (L2.1) | Add now | Verifier (H.15: 0.52% low Aug 2020, TIPS 2.76% and breakeven 2.37% on 21 Oct 2026) | B-29, B-30 |
| Standing Repo Facility (L2.2) | Add now, no size | Fed facility since July 2021 (general record, no number used) | C-15 |
| April 2025 selloff (L2.1) | Add row now, numbers wait | Needs data: H.15 closes for April 2025 | B-21 |
| Currency of debt, average maturity, interest as % of revenue (L2.3) | Wait | Needs data for every country | none |
| Issuer split of world bonds (L2.1) | Wait | Needs data (SIFMA PDF or BIS debt securities) | none |
| M1 and broad liquidity (L2.2) | Wait | Needs data (H.6 M1, a broad liquidity series) | none |
| Buybacks and refunding (L2.1) | Wait | Needs data and space | none |
| SVB uninsured share (L2.1) | Wait | Needs data (SVB 10-K or FDIC report) | none |
| WID median cross-check (L2.3) | Wait | Needs data | none |
| Market versus face value of world bonds (L2.3) | Wait | Not sized in lane A | none |
| NIIP split into equity and debt (L2.3) | Wait | Needs data (BEA Table 1.2) | none |
| Wealth before 2000 (L2.3) | Wait, and remove the unexplained 1971 and 1980 wealth models | Lane A: "no fetched primary series" | W-28 |

---
## 9. EDIT LIST (for the orchestrator, apply mechanically)

### 9.0 How to apply
1. Block numbers are the bracketed numbers in round6/DRAFT_L2.md. They equal the block index in site/rulebook.json for rb-bonds, rb-moneymake and rb-worldbs as published today. Headings are blocks too (for example rb-worldbs heading 12 is "The great cancellation...").
2. Before editing, tag every block of the three chapters with its original number (a temporary key such as "_n"). Apply every edit by tag, not by position. Remove the tags at the end. This makes inserts, deletes and moves order-proof.
3. Order inside a chapter: (a) replace and cell edits, (b) moves (cut the tagged blocks, insert them at the target), (c) inserts, (d) deletes.
4. Block shapes follow the existing site schema: p {"type":"p","text"}, h {"type":"h","text"}, callout {"type":"callout","label","text"}, check {"type":"check","q","a"}, list {"type":"list","items"}, table {"type":"table","cols","rows"}, curiosity items {"q","a","from"}, bars rows {"label","value","hl","note"}.
5. Tables and rows are given as JSON arrays in code spans. Copy them exactly. Quotation marks inside a text are shown JSON-escaped (\"like this\"), ready to paste into rulebook.json.
6. After applying: run the style check (no em-dashes, no en-dashes, no semicolons) and a JSON validity check. Do not edit Level 1 chapters (section 10 waits for the owner).

### 9.1 L2.1 rb-bonds

**B-01** [1] bridge. Replace the text of the item with id rb-04.
New text: "Trade surpluses come back to the US as purchases of Treasuries and other US assets. That is why foreign central banks and investors are among the largest holders of US government debt."

**B-02** Insert after [3] (cards), two blocks.
- p: "This chapter comes in three parts of about ten minutes each. Each part ends with a stop box and three quick questions. Stop at any box and come back another day."
- h: "Part 1 of 3. The bond itself: price, yield and the lever"

**B-03** [14] insider. Delete block. (Its 7% and 14% example repeats the duration table [17], and its SVB line repeats [59] to [61].)

**B-04** [24] p. Replace text.
New text: "You can see several forces at once in 2026. The Fed hiked in September (force 1). Oil prices kept inflation worries alive, and the bond market expected about 2.4% a year of inflation over ten years (force 2). A $1.99T deficit meant heavy issuance (force 4). Japan's recorded holdings of Treasuries fell $171B from February to August while it spent a similar sum defending the yen (force 5). Meanwhile French stress pushed some European money into Treasuries for safety (force 7 in reverse). The result: a 10-year yield of 5.13% on 21 October 2026, after a peak of 5.31% on 5 October."

**B-05** Insert after [24], five blocks (Part 1 stop box, then the Part 2 heading).
- callout, label "Stop here": "Part 1 of 3 done. You can now read a bond's price, its yield and its lever. Take a break if you like. Before Part 2, try these three questions without scrolling up."
- check. q: "A 10-year bond paying $50 a year was bought for $1,000. New bonds now pay $60. Does its price go up or down, and by roughly how much?" a: "Down, to about $926, about 7% less. The rent is locked, so the price must fall until a buyer earns 6%."
- check. q: "Why does a 30-year bond swing about twice as hard as a 10-year bond when yields move one point?" a: "Its lever, the duration, is near 15 against near 8 for the 10-year. More years of locked rent are repriced."
- check. q: "Name three of the seven forces in the tug of war on the 10-year yield." a: "Any three of: the Fed's rate path, expected inflation, the term premium, supply, demand, growth and trust."
- h: "Part 2 of 3. Why the system rests on bonds: size, owners, auctions and repo"

**B-06** [27] list. Replace item 2.
New text: "They are the financial system's pawnshop ticket. In repo markets, banks and funds hand over Treasuries to borrow cash, often overnight. About $12.6T of US repo was outstanding on an average day in the third quarter of 2025 (Office of Financial Research)."

**B-07** [30] table. In the row whose first cell is "The pawnshop ticket", replace cell 2 with "US repo outstanding on an average day, 69% backed by Treasuries" and cell 3 with "about $12.6T (Q3 2025)".

**B-08** [33] bars. Replace the title with "The world's bonds and shares, end of 2025 (US Treasuries: 30 September 2026)". Replace the empty caption with: "Bonds and shares are market values at the end of 2025 (SIFMA). The Treasury bar is the face value of marketable Treasuries on 30 September 2026. The top two bars are close, so a big sell-off in either market can flip their order."

**B-09** [34] p. Replace "Most people picture the stock market as the giant." with "Many people picture the stock market as the giant."

**B-10** [35] timeline. Add a series after "Money funds": `{"name": "Pensions and insurers", "values": [6.2, 11.7, 21.3, 15.0, 10.5, 6.7, 6.9, 6.0, 5.6, 6.0]}`. Append to the caption: " Pensions and insurers held 21% in 1990 and 6% in 2025. The rest in 2025: mutual funds and ETFs 8.4%, states and cities 5.6%, and households and hedge funds about 9.5% (a residual, so treat it as rough)."

**B-11** [36] insider. Replace "almost exactly the Fed's 12.7%" with "close to the Fed's 12.7% on this measure".

**B-12** [37] curiosity, item 1 answer. Replace "Most people guess stocks by a mile." with "Many people guess stocks by a mile."

**B-13** [39] steps. Replace items 2, 3 and 5.
- Item 2: "Bidding. Bids came in for $109.0B, 2.77 times the amount offered. The 25 primary dealers are required to bid for their share every time, so every auction is fully covered by design."
- Item 3: "One price for all. Every winner pays the same yield, the highest one accepted: 5.300%, a price of $94.86 per $100. It was the highest yield at a 10-year auction since November 2000."
- Item 5: "Settlement on 15 October. Buyers' banks pay, and the money goes up into the Treasury's account at the Fed. If the buyer was a fund or a person, their deposit is gone until the Treasury spends it (Level 2, \"Who really creates money\", Step 3)."

**B-14** Insert after [39], one p.
Text: "What the Treasury sells changes what happens to your money. Bills, about 22% of tradable debt, are bought heavily by money market funds. From June 2022 to October 2026 those funds pulled $1.97T out of the cash they had parked at the Fed, much of it to buy bills, and that cash came back into bank deposits when the Treasury spent it. Notes and bonds bought by investors from their own bank deposits drain those deposits until the Treasury spends. Level 2, \"Who really creates money\", Steps 3 and 4, walks through both cases."

**B-15** [44] table. In the row "Hedge fund", replace the "What changed" cell with: "It holds a $100 bond with only $2 of its own money. In practice this is usually one leg of a hedged trade (the cash-futures basis trade), not a bare bet".

**B-16** [45] p. Replace "averaged about $12.6T of loans outstanding each day in the third quarter of 2025" with "had about $12.6T of loans outstanding on an average day in the third quarter of 2025".

**B-17** [46] curiosity. Item 1 answer, replace with: "Because it is a pawnshop ticket. About $12.6T was outstanding in US repo on an average day in late 2025, mostly against Treasuries. Being able to turn a bond into cash overnight is worth something, so investors accept a slightly lower yield for it." Item 2 answer: replace "$0.76T" with "$0.75T".

**B-18** Insert after [46], five blocks (Part 2 stop box, then the Part 3 heading).
- callout, label "Stop here": "Part 2 of 3 done. You now know how big the bond world is, who owns America's IOUs, how a bond is born and how it is pawned. Before Part 3, try these three."
- check. q: "Which was bigger at the end of 2025, the world's bond market or its stock market?" a: "Bonds, just: $160.7T against $157.8T of listed shares (SIFMA). A big sell-off could flip the order."
- check. q: "Who took most of the October 2026 10-year auction, and how much did the dealers keep?" a: "Indirect bidders, investors bidding through dealers, took 79.6%. The dealers kept 2.5%, the smallest share in the data."
- check. q: "In the repo example, what does the money fund own afterwards, and was any new money created?" a: "A $98 overnight loan backed by a Treasury. No new money: public money only moved."
- h: "Part 3 of 3. When bonds bite: your mortgage, the crashes, Malaysia and inflation"

**B-19** [49] p. Replace "At 7.40%, roughly where US mortgages sat in October 2026, it is about $2,770." with "At 7.40%, one point higher, it is about $2,770."

**B-20** [54] insider. Replace "The bond market is the only voter that votes every second." with "The bond market is a voter that votes every second."

**B-21** [57] table. Replace cols and rows.
- cols: `["Episode", "10-year yield, low to high", "Price change if the whole jump hit a new 10-year bond at once (model)", "What a holder gained or lost, coupons included (model)", "What broke"]`
- rows:
  - `["1979 to 1981, Volcker", "8.76% to 15.84%", "-35%", "about -14% (price -32%)", "Inflation above 13%. The Fed let rates rise until it broke"]`
  - `["1994, the bond massacre", "5.19% to 8.05%", "-19%", "about -13% (price -18%)", "A surprise Fed hiking cycle. Orange County went bankrupt"]`
  - `["2008, the crisis", "4.27% to 2.08%", "+20% (a gain)", "about +21% (a gain)", "Everything else fell and Treasuries rose. The safe asset worked"]`
  - `["March 2020, dash for cash", "0.54% to 1.18% in seven trading days", "-6%", "about -6%", "Even Treasuries could not be sold easily. The Fed bought $1.27T"]`
  - `["2021 to 2023", "1.35% to 4.98%", "-28%", "about -21% (price -24%)", "Stocks and bonds fell together. UK pension funds needed the Bank of England in September 2022"]`
  - `["2023, SVB", "", "", "", "US banks carried $620B of unrealized bond losses (end 2022). One became a run"]`
  - `["April 2025, tariff shock", "rose sharply within days", "", "", "Long yields rose while the dollar fell, a rare case of the safe asset and its currency falling together. Hedge funds unwinding the basis trade were widely blamed, though that is contested"]`
  - `["2026", "3.97% to 5.31%, the highest close since 2002", "-10%", "about -8% (price -10%)", "A Fed hike, oil, heavy issuance. The 30-year hit 5.67% on 7 October"]`
- Holder column inputs (court script bond.py, semiannual coupons, not reinvested): bought at par at the low on the dated low day, priced at the high with the years left. Dates from VERIFY_R6 (2 Jul 1979 to 30 Sep 1981, 15 Oct 1993 to 7 Nov 1994, 13 Jun to 18 Dec 2008, 9 to 18 Mar 2020, 3 Dec 2021 to 19 Oct 2023, 27 Feb to 5 Oct 2026). April 2025 yields: needs data (H.15), so no numbers are printed.

**B-22** [58] p. Replace text.
New text: "Two models, both using the Fed's H.15 daily closes. The first column reprices a 10-year bond as if the whole jump in yields hit it at once. The second follows a real holder who bought a new 10-year at par at the low, still owned it at the high with fewer years left, and collected the coupons along the way (coupons not reinvested, computed for this chapter). Notice the one gain: in 2008 Treasuries did their job as everything else fell. Notice too that 2022 was different. Stocks and bonds fell together, which broke the old idea that one always rescues the other."

**B-23** [60] table. Replace the three rows.
- `["2021: deposits flood in", "$100 of 10-year bonds bought at 1.5%, plus $8 of cash and loans", "$100 of deposits, and $8 of owners' money"]`
- `["2022: yields rise to 4.5%", "The bonds are now worth about $78, plus the $8", "Still $100 of deposits. Marked to market, owners' money is -$14"]`
- `["2023: depositors leave", "Bonds must be sold to pay them", "Many deposits were above the $250,000 insurance limit, so they left fast. The hidden loss becomes real. Owners' money is gone"]`

**B-24** [61] p. Append after the last sentence: " Two days after SVB closed, the Fed opened the Bank Term Funding Program, which lent to banks against Treasuries at their face value, not their market value. A bond's price can fall, but in that panic its value as collateral was held at par by policy. That is strong evidence for this chapter's title."

**B-25** [62] curiosity, item 1 answer. Replace with: "On price alone, about 32% for someone who bought a new 10-year at 8.76% in July 1979 and still held it in September 1981, when yields hit 15.84%. Counting the coupons collected, the loss was about 14%. From 2021 to 2023 a holder lost about 24% on price and about 21% with coupons (models, Fed H.15 data). Risk-free means free of default, not free of price swings."

**B-26** [64] table. Replace cell 1 of row 2 ("Share held by foreigners") with "Share held by foreigners (MGS plus GII)".

**B-27** [65] p. Replace "Almost half of Malaysia's government debt is Islamic sukuk, a structure the US does not have." with "Part of Malaysia's government debt is Islamic sukuk (GII), a structure the US does not have."

**B-28** [66] p. Replace "as Level 1 chapter 12 described for its savers" with "as Level 1's \"The view from a smaller currency\" described for its savers".

**B-29** [69] table. Replace cell 3 of row 1 ("Treasuries are safe") with "Not safe from price: a holder lost about 14% from 1979 to 1981 and about 21% from 2021 to 2023, coupons included (model). Not safe from inflation". Add a third row:
`["Bonds are a bubble", "Right for bonds bought near the August 2020 low of 0.52%, which paid far less than the inflation that followed", "Wrong as a rule: on 21 October 2026 the 10-year inflation-linked Treasury yielded 2.76% above inflation, a real reward for waiting, not a bubble price"]`

**B-30** [71] p. Replace "Level 1 chapter 13 called this the shrinking ruler." with "Level 1's \"The yardstick problem\" called this the rubber ruler." Append at the end: " The market publishes its own split: on 21 October 2026 the 10-year inflation-linked Treasury yielded 2.76%, so about 2.4 points of the 5.13% was pay for expected inflation."

**B-31** [75] insider. Replace "Level 1 chapter 8 called it financial repression." with "Level 1's \"The seasons of money\" called it financial repression."

**B-32** [77] p. Replace text with: "Last stop. Answer these out loud before you leave the chapter."

### 9.2 L2.2 rb-moneymake

**C-01** [1] cards. Replace the "Reserves" card text with "Banks' own accounts at the Fed. Upstairs money. About $2.97 trillion on 21 October 2026. Only banks and a few institutions can hold them." Replace the "Treasury General Account" card text with "The government's checking account at the Fed. About $945 billion on 21 October 2026. Money in it is out of public hands." Add a card at the end: `{"t": "Risk-weighted assets", "d": "A bank's assets, each scaled by how risky the rules say it is. Capital rules ask for owners' money of at least a set share of this total."}`

**C-02** [2] p. Replace "Level 1 chapter 6 showed" with "Level 1's \"How money is born today\" showed".

**C-03** [3] bridge. Replace the item with id rb-03 by an item with id rb-08 and text: "In wartime and after it, the Fed held interest rates down while inflation shrank the war debt (the 1941 to 1951 season of capped rates)."

**C-04** [4] radiant. In the ray "The brakes", change link rb-03 to rb-06.

**C-05** Insert after [4], two blocks.
- p: "This chapter comes in three parts of about ten minutes each. Each part ends with a stop box and three quick questions. Stop at any box and come back another day."
- h: "Part 1 of 3. Two floors and three printers"

**C-06** Heading 5, [6] and a new preview table.
- Heading 5: replace text with "The whole idea in three rows".
- [6] p: replace text with "Here is the whole idea before any numbers. Steps 1 to 3 explain each row, and after Step 3 the full table puts sizes on every channel in four kinds of year."
- Insert after [6] a table: cols `["Who", "Creates money you can spend when", "Destroys it when"]`, rows `["Banks", "they lend, or buy anything from someone who is not a bank", "loans are repaid, or they sell to someone who is not a bank"]`, `["The Fed", "it buys bonds. Reserves rise every time, your deposits only if the seller is not a bank", "it shrinks its bonds (QT)"]`, `["The Treasury", "it spends", "it collects taxes or sells bonds to savers, until it spends the money again"]`

**C-07** [7] table (apply before the move in C-09).
- Delete the row whose first cell starts "Federal deficit".
- Row "Fed buying (QE) or shrinking (QT)": cell 2 becomes "Reserves always. Deposits only when the seller is a nonbank. Treasuries plus mortgage bonds", cell 6 becomes "+$0.16T (Sep 2025 to Sep 2026)".
- Row "Result: M2": cell 6 becomes "+$1.25T (Aug 2025 to Aug 2026)".

**C-08** [8] p (apply before the move in C-09). Replace text.
New text: "Windows run December to December, except the latest year (September 2025 to September 2026 for banks, the Fed and deposits, August to August for M2). Sources: Fed H.8 (banks), H.4.1 (the Fed), H.6 (M2), Treasury Monthly Statement (deficits). Memo, not a deposit flow: the federal deficit was $0.98T (2019), $5.90T (2020 to 2021), $3.07T (2022 to 2023) and $1.99T (fiscal 2026). Whether it added money depends on who bought the bonds (Step 3). The rows do not add exactly to the result, because some channels have no clean series: banks buying back their own shares, fees and interest, and foreign official purchases. In 2019 bank lending and bank bond buying explain the whole rise. In 2020 to 2021 the Fed's channel was 6.6 times bank lending. In 2022 to 2023 deposits fell even though banks lent $1.56T, because QT, bank bond sales and a rising Treasury account drained more."

**C-09** Move. Cut [7], [8] and [9] (as edited). Insert after [33], preceded by a new heading. Result after [33]: h "The whole map with sizes", then [7], [8], [9], then the C-13 blocks.

**C-10** [14] table. Row "Bank reserves": size "$2.97T (21 Oct 2026)". Row "Treasury General Account": size "$945B". Row "Cash parked by money funds...": size "$0.2B (it peaked at about $2.4T in late 2022)".

**C-11** [26] insider. Replace "Nearly all primary dealers belong to big banking groups, and many act for customers." with "Many of the 25 primary dealers belong to big banking groups, and many act for customers."

**C-12** [29] p. Replace "In the week to 21 October 2026 the Treasury's account rose $69 billion, and bank reserves fell $60 billion." with "In the week to 21 October 2026, on weekly averages, the Treasury's account rose $69 billion and bank reserves fell $60 billion."

**C-13** Insert after the moved [9] (so after [33], the new heading, [7], [8] and [9]), five blocks.
- callout, label "Stop here": "Part 1 of 3 done. You can now say which floor a dollar sits on and which of the three printers made it. Before Part 2, try these three."
- check. q: "The Fed buys $100 of bonds from a pension fund. What rises upstairs, and what rises downstairs?" a: "Upstairs, bank reserves rise $100. Downstairs, the fund's deposit rises $100. From a bank seller, only the reserves would rise."
- check. q: "A household repays a $100 bank loan. What happens to the money supply?" a: "It falls $100. The loan and the deposit both disappear."
- check. q: "In 2020 to 2021 bank deposits rose $4.71T. How much came from new bank loans, and what did most of the rest?" a: "Only $0.68T. Most of the rest came from the emergency printer: Treasury spending, with the Fed buying $4.52T of bonds and banks buying $1.86T of securities."
- h: "Part 2 of 3. Sponges, shredders, brakes and other printers"

**C-14** Heading 34. Replace text with "Step 4. Drains, sponges and new pipes".

**C-15** [35] list. Item 1: replace "By October 2026 the domestic part was $0.3 billion, so this drain is empty." with "On 21 October 2026 it held $0.2 billion, so this drain is empty." Insert a new item after item 2: "The standing repo facility (since July 2021): a door that works the other way. Banks and dealers can swap Treasuries for new reserves at a set rate whenever they need them, which limits how far short-term rates can spike in a squeeze."

**C-16** [41] steps. Replace item 6 with: "Money moving into the Fed's reverse repo pool. It leaves the banks while it sits there. In 2020 to 2021 the pool rose $1.64T, more than twice the $0.68T of new bank loans in those two years."

**C-17** [49] curiosity, item 2. Change "from" rb-03 to rb-08.

**C-18** [51] table. Row "Repo, cash lent against bonds": size "about $12.6T outstanding on an average day (Q3 2025)".

**C-19** [52] p. Replace text.
New text: "Who prints the $14 trillion of dollars borrowed outside America? Bond investors hold over half of it (55% at the end of September 2025, BIS). The rest is loans written by banks abroad, in London, Singapore or Kuala Lumpur, which create dollar loans and deposits on their own books exactly as a US bank does. They settle through accounts at US banks, and in a crisis they need dollars from the Fed's swap lines. So the Fed is the last-resort supplier, while private foreign banks and bond markets are the everyday sources of offshore dollars."

**C-20** [55] table. Row "Extra door", Bank of Japan cell: "Yield curve control 2016 to 2024, and about 47% of government bonds, excluding bills (June 2026)".

**C-21** [57] curiosity, item 2 answer. Replace with: "The central bank, on a scale no other big economy matches. It held about 47% of government bonds, excluding bills, in June 2026, after its share first fell below 50% at the end of 2025, for the first time since 2022 (Ministry of Finance)."

**C-22** Insert after [57], five blocks.
- callout, label "Stop here": "Part 2 of 3 done. You now know the sponges that soak money up, the shredders that destroy it, the brakes on each printer and how other countries do it. Before Part 3, try these three."
- check. q: "From June 2022 the Fed's bonds fell $2.01T, yet bank reserves fell only $0.39T. Where did the difference come from?" a: "The reverse repo sponge. Money funds took $1.97T out of it to buy bills, and the cash came back to banks as the Treasury spent it."
- check. q: "US banks have had no reserve requirement since March 2020. Name two things that still stop them lending without limit." a: "Any two of: capital rules, liquidity rules, the 3.90% the Fed pays on reserves, and borrowers who must want and repay loans."
- check. q: "When Bank Negara buys dollars to steady the ringgit, what does it pay with?" a: "New ringgit reserves, which it usually soaks back up afterwards."
- h: "Part 3 of 3. Who printed, year by year, and what the critics say"

**C-23** [59] table. Row "MMT and post-Keynesian", cell 3: "Deficit spending is the only source of net financial assets for the non-government sector as a whole, which means the domestic private sector plus foreigners (Stephanie Kelton, The Deficit Myth, 2020). A country's private sector can also gain them from a trade surplus."

**C-24** [60] p. Replace "None of the three critical schools points to a missing channel in this chapter." with "We found no school whose strongest objection points to a channel missing from this chapter."

**C-25** [64] table. Delete block. (It repeats [7] with a different window and carried two wrong figures, +$4.6T and -$0.45T.) Keep the diagram [63] and the paragraph [65].

**C-26** [66] myth, reality field. Replace with: "Loans are the main channel in normal years (87% to 96% of the two printers from 1971 to 2007), but banks also create money when they buy securities, the Fed creates reserves whenever it buys and deposits when the seller is a nonbank, and Treasury spending adds deposits unless the public funded it from its own accounts. In 2020 to 2021 the Treasury and Fed channel created most new deposits."

**C-27** [77] insider. Replace text.
New text: "The two kinds of money behave differently over time. Bank-loan money is temporary: when the loan is repaid, the money disappears. Deficit money can stay, because the government rarely pays its debt down overall and rolls the bonds over. So the old worry that governments finance themselves by creating money is right when banks or the Fed end up holding the bonds, as in 2020 to 2021 (about 68% to 72% of the new debt). It is wrong when savers buy the bonds with money they already had."

**C-28** [83] list. Replace item 1 with: "1971 to 2007: the banks did almost all of it. In every decade the Fed's share of the two printers was only 4% to 13%. Its bond buying in those years was about the size of the paper cash people came to hold: the Fed's bonds rose about $0.72T from 1971 to 2007, and currency in circulation was about $0.83T at the end of 2007."

### 9.3 L2.3 rb-worldbs

**W-01** Kicker. Replace with: "You may have heard that the world owes $300 trillion, or $500 trillion, or more. Each can be true, depending on what you count, and the world owes all of it to itself. This chapter shows what the world really owns, why its debts cancel but still matter, how the numbers grew, and how each big country is built."

**W-02** [0] tldr. Replace all items with these seven.
1. "Which debt? On the usual meaning, loans and bonds, the world owes about $348T (end 2025) to over $365T (mid 2026, IIF, via press). Its net wealth is about $518T (UBS, households) to $600T (McKinsey, all sectors, via press). Count everything owed on paper, deposits and other claims included, and the debt side is about $1,200T (computed from McKinsey)."
2. "You cannot subtract one from the other. Every debt is somebody's asset, so at world level the debts cancel. What is left is real things, about two thirds of them real estate (McKinsey's 2021 study, Level 1)."
3. "The debts cancel for the world, not for each family. Who owes whom, in which currency, and how soon decides the danger."
4. "In 2025 about four fifths of the rise in household wealth was higher prices and inflation, and about a fifth was new investment (McKinsey, via press)."
5. "Debt grew from about 1 year of world output in 1971 (a model estimate) to about 2.5 years (3 counting the financial sector's own debts). It jumps in crises, 2008 and 2020. After 2020 the debt ratio fell while dollar debt kept rising, except in 2022, when a strong dollar shrank it."
6. "The dollar is the ruler. Japan's debt fell by a third in dollars from 2020 to 2025 while it rose in yen. Nobody repaid anything."
7. "Countries are built differently. The US is the richest country and the largest net debtor to the world. Japan's state owes mostly its own central bank and savers (foreigners about 13%). Italian families owe little (36% of output) while their state owes 137%. China borrowed to grow and saved at home."

**W-03** [2] radiant. Replace ray 1 with `{"t": "Many counters, one ladder", "s": "Net wealth, loans and bonds, every claim", "link": "rb-10"}`. Replace ray 3 with `{"t": "Price, not pile", "s": "In 2025 about four fifths of the gain was price", "link": "rb-titled"}`.

**W-04** Insert after [2], two blocks.
- p: "This chapter comes in three parts of about ten minutes each. Each part ends with a stop box and three quick questions. Stop at any box and come back another day."
- h: "Part 1 of 3. What the world owns and owes"

**W-05** [5] p. Replace text.
New text: "It is a sharp question, and the honest answer starts with a question back: which debt? Both numbers can be true, depending on what you count. Count loans and bonds, the usual meaning of debt, and the world owes about $348 trillion to $365 trillion, while its net wealth is about $518 trillion to $600 trillion. On that count the order in the question flips. Count everything owed on paper by every part of the world, bank deposits and other claims included, and the total is about $1,200 trillion, far above $500 trillion. So \"300T+\" is right as a floor for wealth, and \"500T+\" is too high for loans and bonds and too low for everything owed. One thing holds on every count: none of these debts can be subtracted from wealth, because the world owes all of them to itself. The words below come first, then the numbers."

**W-06** [9] cards. Move the block to directly after [5] (before [6]). Change the label to "Seven words to pin down first". Replace the "Nonfinancial debt" card text with "Debt of governments, firms and households only. The financial sector's own borrowing is left out, so the same lending is not counted twice: a bank borrows in order to lend to the other three." Add a card at the end: `{"t": "Net foreign position", "d": "What a country owns abroad minus what it owes abroad, shares and firms included. It is not the same as foreign debt."}`

**W-07** [6] bars. Replace title, rows and caption. Add "Fortune on McKinsey (27 Jul 2026)" to the source line.
- title: "One world, many counters: what the world owns and owes ($ trillions)"
- rows:
  - `{"label": "Everything on every balance sheet, gross (McKinsey, 2025)", "value": 1800, "note": "Real assets plus every claim. Via press"}`
  - `{"label": "Everything owed on paper, every sector (computed from McKinsey, 2025)", "value": 1200, "hl": true, "note": "$1,800T of assets minus $600T of net worth. Deposits, bonds, loans and other claims. Not all of it is debt"}`
  - `{"label": "National net worth (McKinsey, 2025)", "value": 600, "note": "All sectors. Via press, report not opened"}`
  - `{"label": "Household net wealth (UBS, end 2025)", "value": 517.7, "note": "People only, 56 markets with over 92% of world wealth"}`
  - `{"label": "Financial assets of financial firms (FSB, end 2024)", "value": 503.7, "note": "A gross count of claims held by banks, funds and central banks, not wealth"}`
  - `{"label": "Debt, loans and bonds, four sectors (IIF, mid 2026)", "value": 365, "hl": true, "note": "Press reports of the September 2026 release"}`
  - `{"label": "Debt, loans and bonds, four sectors (IIF, end 2025)", "value": 348.3, "hl": true, "note": "Includes the financial sector's own debts"}`
  - `{"label": "Debt without the financial sector (BIS, end 2025)", "value": 262.7, "hl": true, "note": "About 44 economies"}`
  - `{"label": "Debt without the financial sector (IMF, 2024)", "value": 251, "hl": true, "note": "Global Debt Database"}`
- caption: "Blue bars count what is owned, orange bars what is owed. On the usual debt measures, loans and bonds ($251T to $365T), net wealth is bigger than debt. On the widest count of everything owed on paper (about $1,200T), the order flips. Neither comparison tells you how rich the world is, because every one of these claims is owed by the world to itself."

**W-08** [7] p. Replace text.
New text: "Where could \"500T+\" come from? We do not know which source the question had in mind, so here are five candidates. As for \"300T+\", it is right as a floor for world wealth on every count. It is also roughly how world debt was reported from 2021 to 2024, about $300 trillion to $320 trillion (IIF), the figure many popular videos quoted."

**W-09** Insert after [7], a list with five items.
1. "An estimate this guide's owner once made: the world's gold times ten, about $500 trillion. Level 1's \"How money is born today\" explains why a fixed times-ten multiplier does not hold."
2. "The financial firms of the world, central banks, banks and other funds, held $503.7 trillion of financial assets at the end of 2024 (Financial Stability Board). That is a count of claims. It includes much of the world's debt seen from the lender's side, plus shares and claims on each other."
3. "People's net wealth: $517.7 trillion at the end of 2025 (UBS). The number may simply belong on the other side of the ledger."
4. "Everything owed on paper by every sector: about $1,200 trillion (computed from McKinsey). On that count \"500T+\" is true, more than twice over."
5. "Derivatives: over-the-counter contracts with a notional value of $846 trillion at the end of June 2025 (BIS). Notional is the size of the thing bet on, not money owed. Their gross market value, closer to what is actually at stake, was $21.8 trillion. Never add notional derivatives to debt."

**W-10** [8] myth. Replace the whole block with a callout, label "Popular claim".
Text: "\"The world owes $500 trillion and is only worth $300 trillion.\" What it gets right: the world's paper claims are enormous, and on the widest count of everything owed (about $1,200 trillion) they are far bigger than $500 trillion. What it gets wrong: on the usual meaning of debt, loans and bonds, the world owes about $348 trillion to $365 trillion, while its net wealth is $518 trillion to $600 trillion. And on any count the two cannot be subtracted, because the world owes all of it to itself."

**W-11** [10] table. Keep the cols. Replace the rows.
- `["Household net wealth (UBS)", "$517.7T, end 2025 (McKinsey's household count: $570T)", "People's houses, savings, shares and private pensions, minus their debts. 56 markets with over 92% of world wealth", "Wealth of governments and firms not owned by people, state pension promises"]`
- `["National net worth (McKinsey, via press)", "$600T, 2025 (5.1 times world GDP)", "Real assets of every sector plus net claims", "Human and natural capital"]`
- `["Financial assets of financial firms (FSB)", "$503.7T, end 2024", "Assets of central banks, banks and nonbanks in 29 jurisdictions with over 90% of world GDP", "Real assets. It counts claims, which cancel against debts"]`
- `["Debt, loans and bonds, four sectors (IIF)", "$348.3T at end 2025, over $365T by mid 2026 (via press)", "Households $64.6T, firms $100.6T, governments $106.7T, financial sector $76.4T", "Shares, derivatives (notional $846T at mid 2025, BIS, which is not debt), unfunded pension promises"]`
- `["Nonfinancial debt (IMF, BIS)", "$251T (2024) to $262.7T (end 2025)", "Governments, firms and households", "The financial sector's own debts, left out so lending is not counted twice"]`
- `["Everything owed on paper, every sector (computed from McKinsey, via press)", "about $1,200T, 2025", "Nearly $1,800T of assets minus $600T of net worth: deposits, bonds, loans and other claims owed by one part of the world to another", "Real assets. It is a gross count, so almost all of it cancels at world level"]`

**W-12** [11] insider. Replace text.
New text: "Every one of these numbers comes from a different counter with a different purpose. UBS counts people's wealth for a wealth manager's report. The IIF is a bank industry body and counts the financial sector's own debts, so its figure is the biggest of the usual debt counts. The FSB counts financial firms' assets to watch for risk. McKinsey counts every balance sheet, which is how it reaches nearly $1,800 trillion. When two headlines disagree, first ask which counter they used."

**W-13** Insert after [11], one p.
Text: "Two kinds of pension sit in different places. Private pension funds are inside household wealth: the savings belong to people. Unfunded state promises, such as public pensions and health care paid from future taxes, are in none of these debt counts. They are real claims on future taxpayers, and hard-money writers often add them to debt. This chapter does not, and has no checked figure for them yet."

**W-14** Heading 12. Replace with "The great cancellation: why the world cannot owe anyone outside itself".

**W-15** Insert after [14], one p.
Text: "The debts cancel for the world, not for each family. Creditors and debtors are different families, so interest flows from one group to another. In the United States, the top 10% of households took 67.5% of the rise in household net worth since the end of 2019, and the bottom half took 3.1% (Federal Reserve distributional accounts, mid 2026)."

**W-16** [18] table. Replace rows 2, 3 and 4.
- `["US households", "Receive $1T of new deposits, then move $0.5T into a pension fund that buys bonds", "Rise $1T: $0.5T in deposits and $0.5T in pension claims backed by bonds"]`
- `["Japanese investors", "Buy $0.5T of bonds with dollar deposits they already held from selling goods to the US", "No change, they swapped a dollar deposit for a bond"]`
- `["The US as a nation", "Owes Japan the same amount as before, in a new form: a bond instead of a deposit", "No change in this deal. Its foreign position fell earlier, when the US paid for the goods"]`

**W-17** [19] p. Replace text.
New text: "Inside the US, the government's new debt is the private sector's new asset, so \"we owe it to ourselves\" is right for that half. The foreign half is a claim of Japan on future US income, and it was created when the US bought more from the world than it sold. That is why only countries, not the world, can owe outside. The US's net foreign position was about minus $26.5 trillion at the end of 2024 (IMF) and minus $27.5 trillion at the end of 2025 (BEA), while Japan's was about plus $3.5 trillion (end 2024). A net foreign position is not the same as foreign debt: part of the US figure is foreigners owning US shares and companies, and stock prices move it a lot (BEA)."

**W-18** [20] p. Replace text.
New text: "So what survives the cancellation? Three things. Real assets: land, houses, offices, factories, machines, roads and software, worth roughly the world's $600 trillion of net worth (McKinsey, via press), about two thirds of it real estate (Level 1, \"The titled world\"). Assets that are nobody's IOU, like gold bullion and bitcoin, which are small next to property. And, in household wealth only, the market's view of companies' future earnings above what their books show, because shares are counted at market price. In national net worth that extra cancels, because a share is also a claim on the company. World wealth, measured in dollars, is mostly the price of real things."

**W-19** [21] curiosity. Item 1 answer: "Itself. The $348T of debt the IIF counts is matched by $348T of claims held by people, pension funds, banks and central banks. Only countries can owe outside: the US's net foreign position was about minus $26.5T at the end of 2024, Japan's about plus $3.5T." Item 2 answer: "Because lenders lend against assets and income, and because the world wants dollar assets. The US holds about 35% of world household wealth and owes about 29% of world nonfinancial debt. Its net foreign position, about minus $26.5T at the end of 2024, is part debt and part foreign ownership of US shares and firms, and the US can owe it in its own currency."

**W-20** Insert after [21], five blocks.
- callout, label "Stop here": "Part 1 of 3 done. You can now say what the world owns, what it owes on each counter, and why the two cannot be subtracted. Before Part 2, try these three."
- check. q: "Someone says world debt is $500 trillion. What is your first question, and what are the two main answers?" a: "Which debt? Loans and bonds come to about $348T to $365T. Everything owed on paper, deposits and other claims included, comes to about $1,200T."
- check. q: "A young family buys an existing flat with a $300,000 mortgage. Is the world richer or poorer?" a: "Neither. Debt rose $300,000 and so did someone's claim. Wealth only moved."
- check. q: "If the world's debts cancel, why can they still be dangerous?" a: "They cancel for the world, not for each family. Creditors and debtors are different people, and if one borrower cannot pay another, the chain of IOUs breaks."
- h: "Part 2 of 3. How it grew, and how to hold it in your head"

**W-21** [24] p. Replace "The direction matches Level 1 chapter 19: the same buildings became worth more." with "The direction matches Level 1's \"The titled world\": the same buildings became worth more."

**W-22** Insert after [24], two blocks.
- p: "Here is every way world debt and world wealth can grow or shrink, with a size for 2025 and for a stress year."
- table: cols `["What moves", "Debt", "Wealth", "2025", "Stress year"]`, rows:
  - `["New borrowing", "Up", "No change on the day, up if it builds something", "+$28.8T in dollars, flattered by a weaker dollar (IIF, $319.5T to $348.3T)", "2020: a record +$35T (IIF)"]`
  - `["New real investment", "None or up", "Up", "about $8T, a fifth of the $40T household gain (McKinsey, via press)", "not sized"]`
  - `["Higher prices of existing assets", "None", "Up, or down when prices fall", "about $23T, 58% of the household gain (McKinsey, via press)", "2022: household wealth fell 2.4%, to $454.4T (UBS and Credit Suisse, via press)"]`
  - `["Inflation", "Up in dollars, down as a share of output", "Up in dollars", "The IIF ratio fell for a fifth year, to about 308%", "2020 to 2024: the BIS ratio fell from 285% to 235%"]`
  - `["The dollar ruler", "Up when the dollar falls", "Up when the dollar falls", "The euro rose almost 9% against the dollar (UBS)", "2022: IIF debt fell about $4T as the dollar rose"]`
  - `["Repayment and default", "Down", "Moves from lender to borrower, no change for the world", "not sized", "not sized"]`

**W-23** [25] curiosity, item 2 answer. Replace with: "Measured wealth falls by roughly 13% of net worth (two thirds times 20%, a model using McKinsey's 2021 finding that real estate is about two thirds of net worth). No house is lost and no debt is repaid. Debt stays at face value, so everyone's debt looks bigger next to what they own."

**W-24** [29] p. Replace "which is part of why European wealth grew 17.5% in dollars that year (UBS)." with "which is part of why wealth in Europe, the Middle East and Africa grew about 17.5% in dollars that year (UBS)."

**W-25** Insert after [29], one p.
Text: "In 2022 the ruler worked the other way for the whole world. The dollar rose, and world debt measured in dollars fell about $4 trillion, to just under $300 trillion, the IIF's first annual fall since 2015. World household wealth fell too, about 2.4% to $454.4 trillion on the UBS and Credit Suisse count (via press), as higher interest rates cut asset prices. Nobody repaid anything."

**W-26** [30] curiosity. Add an item: `{"q": "World wealth rose 10.8% in dollars in 2025. Measured in ounces of gold, did it rise or fall?", "a": "It fell, by about a third. Gold rose about 66% in 2025 (press), so 1.108 divided by 1.66 is about 0.67 (a model). Neither ruler is the right one alone. Check big claims with more than one ruler.", "from": "rb-10"}`

**W-27** [32] timeline. Replace the caption.
New caption: "Debt is nonfinancial debt (governments, firms, households) in dollars. The 1971 and 1980 points are a model: world output times the IMF's finding that this debt sat near 100% of world output until about 1980, from an early sample made up mostly of rich countries. BIS data from 2001, on the BIS's own country coverage. Net worth is McKinsey's national net worth (2000, 2020, and 2025 via press). Output grew about 36 times since 1971, debt about 80 times (the 1971 debt point is a model)."

**W-28** [33] table. Replace cols and rows.
- cols: `["Year", "What was happening", "World debt", "Debt as % of output (BIS on its own coverage, or IIF)", "World wealth"]`
- rows:
  - `["1971", "The dollar leaves gold", "about $3T (model)", "about 100% (model)", "no reliable series"]`
  - `["1980", "Interest rates near 20%", "about $11.5T (model)", "about 100% (model)", "no reliable series"]`
  - `["2000", "Rates falling, credit booming", "$60T (2001, BIS)", "191% (BIS)", "$156T (McKinsey)"]`
  - `["2008", "The global financial crisis", "$119T (BIS)", "202%, rising to 229% by 2010 (BIS)", "a fall of about $21T in 2007 to 2008 (press)"]`
  - `["2020", "Covid", "$222T (BIS). A record $35T added in one year (IIF, four sectors)", "285% (BIS)", "$514T (McKinsey)"]`
  - `["2022", "Inflation and a strong dollar", "just under $300T (IIF, four sectors), after a fall of about $4T, the first since 2015", "fell (IIF)", "household wealth fell 2.4%, to $454.4T (UBS and Credit Suisse, via press)"]`
  - `["2025", "Weak dollar, fiscal push, AI borrowing", "$263T (BIS) or $348T with the financial sector (IIF)", "246% (BIS) or about 308% (IIF)", "$518T (UBS, people) to $600T (McKinsey, all, via press)"]`
  - `["Mid 2026", "Health, energy, AI and defense spending", "over $365T (IIF, via press)", "about 305% in Q1 2026 (IIF)", "no estimate yet"]`

**W-29** [34] p. Replace text.
New text: "Three things stand out. Debt grew faster than output in almost every period since 1971, from about one year of world output (a model) to about two and a half. It grew in jumps, in 2008 to 2010 and above all in 2020, when a record $35 trillion was added in one year (IIF). And after 2020 the world ratio fell for years while the dollar amount kept climbing, apart from 2022, when it fell about $4 trillion as a strong dollar shrank everything counted outside the US. Inflation and the ruler did that, not repayment. The fall did not last in dollars: debt rose about $46 trillion from the end of 2024 to mid 2026 ($319.5 trillion to over $365 trillion, IIF), and the BIS ratio rose again in 2025."

**W-30** Insert after [34], one p.
Text: "This was not the first time. After the Second World War the US and the UK shrank their government debt as a share of output without repaying it, by growing and by keeping interest rates below inflation (Level 1's \"The seasons of money\", citing Reinhart and Sbrancia, 2011). The years after 2020 were a short replay."

**W-31** [36] curiosity, item 1. Replace q with "The world debt ratio fell for years after 2020 while dollar debt kept climbing. How can both be true, and what happened in 2022?" Replace a with "Inflation raised nominal output faster than debt. On the BIS measure world nonfinancial debt went from $222T (285% of output) in 2020 to $237T (235%) in 2024. Nobody paid it down. In 2022 dollar debt even fell, by about $4T on the IIF count, because a strong dollar shrank everything measured in dollars outside the US." Keep "from" rb-08.

**W-32** Move and insert.
- Move heading 51 and blocks [52] to [58] (after W-44 to W-47 are applied) to directly after [36].
- Then insert after the moved [58], five blocks:
  - callout, label "Stop here": "Part 2 of 3 done. You can now explain how world debt and wealth grew, why the dollar resizes them, and how to picture them. Before Part 3, try these three."
  - check. q: "Japan's debt fell 32% in dollars from 2020 to 2025. Did Japan repay?" a: "No. In yen it rose 3%. The yen fell against the dollar, so the ruler shrank the number."
  - check. q: "World household wealth rose in 2025. Was most of the rise new houses and machines?" a: "No. About a fifth was new investment. Most of the rest was higher prices and inflation (McKinsey, via press)."
  - check. q: "If the world were 100 adults, how many would own under $10,000, and what share of all wealth would they hold together?" a: "42 adults, holding 0.6% of all wealth."
  - h: "Part 3 of 3. How countries are built, and what would change the picture"

**W-33** [38] p. Replace "which now holds about 16% to 18.5% of the world's household wealth" with "which now holds about 16% of the world's household wealth (18.5% counting Hong Kong and Taiwan)".

**W-34** [39] pairbars. Replace the caption.
New caption: "Debt here is nonfinancial debt. Each country's debt is BIS (Q4 2025) and the world total it is divided by is the IIF's $271.9T, so the shares are approximate. Country wealth is derived from UBS wealth per adult times adults, and China's and India's use end-2022 wealth figures, so treat them as rough."

**W-35** [40] table. Row G7: "Share of world debt" becomes "51%", "Share of world people" becomes "9.6%".

**W-36** [41] p. Replace text.
New text: "Read the chart in pairs. The rich are also the big borrowers: the G7 holds about 56% of world household wealth and owes about 51% of world nonfinancial debt, with under 10% of the world's people. Lenders lend against assets and income, so debt follows wealth. The US has a bigger share of world wealth (35%) than of world debt (29%) or output (26%). China's share of debt (22%) is above its shares of wealth and output on these mixed-year figures. McKinsey says China's balance sheet grew through debt more than through rising asset values (via press), though its property boom was also a price story. India has 18% of the world's people and about 3% of everything else, and its low debt partly reflects a small formal financial system."

**W-37** [43] table and a note.
- Keep the cols. Replace the rows (US, Japan, Belgium, Netherlands, Sweden, China and Malaysia change, the others are as in the draft):
  - `["United States", "116%", "68%", "72%", "Fed 14%, foreigners 29% (of debt held by the public)", "-$26.5T (-91% of GDP), end 2024"]`
  - `["Japan", "193%", "61%", "113%", "Bank of Japan 43%, foreigners 13% (end 2025)", "+$3.5T (+83%)"]`
  - `["Germany", "63%", "48%", "87%", "Bundesbank 20%, outside Germany 51%", "+$3.6T (+77%)"]`
  - `["Italy", "137%", "36%", "58%", "Bank of Italy 19%, outside Italy 34%", "+$0.35T (+15%)"]`
  - `["France", "116%", "59%", "155%", "Bank of France 17%, outside France 54%", "-$0.7T (-22%)"]`
  - `["United Kingdom", "102%", "74%", "58%", "foreigners about a third", "-$0.35T (-10%)"]`
  - `["Canada", "100%", "100%", "119%", "non-residents about 45% of the bond market", "+$1.3T (+59%)"]`
  - `["Belgium", "108%", "57%", "118%", "National Bank of Belgium 15%, outside Belgium 63%", "+$0.38T (+57%)"]`
  - `["Netherlands", "45%", "94%", "169%", "De Nederlandsche Bank 21%, outside the Netherlands 49%", "+$0.72T (+60%)"]`
  - `["Sweden", "35%", "82%", "147%", "Riksbank 4%, foreigners 23%", "+$0.39T (+65%)"]`
  - `["Switzerland", "25%", "123%", "129%", "not confirmed", "+$1.15T (+119%)"]`
  - `["China", "99%", "58%", "143%", "not confirmed", "+$3.3T (+18%)"]`
  - `["Malaysia", "65%", "70%", "89%", "foreigners about 20% of MGS (July 2026)", "about zero"]`
- Insert after [43] one p: "Notes: debt ratios are BIS, Q4 2025. Shares of government debt are 2025 (Eurostat for the euro members and Sweden, where \"outside\" includes other euro area investors and the ECB). Net foreign positions are end 2024 (IMF). What households own differs too: financial assets are 79% of gross household wealth in the US but 44% in Germany, where homes weigh more (UBS)."

**W-38** [44] callout (label "The US and Japan" unchanged). Replace text.
New text: "The US is the richest country and the largest net debtor to the rest of the world, about minus $26.5T at the end of 2024. It can borrow abroad in its own currency because the world wants dollars. The bigger currency risk in world debt sits outside the US: about $14T of dollar credit owed by borrowers abroad at the end of September 2025 (BIS), which gets heavier for them when the dollar rises. Japan's government owes about twice its output, yet Japan as a nation is owed $3.5T by the world. The Bank of Japan held about 43% of the government's bills and bonds at the end of 2025 (41% by June 2026) and foreigners about 13%, so Japan's debt is mostly owed from one Japanese pocket to another, in yen. Its government debt is 193% of output on the BIS basis, about 207% gross on the IMF's, and about 136% net of the government's own financial assets (IMF). Each figure is right on its own basis. The risk shows up as a weak yen, not as foreign creditors walking away."

**W-39** [45] callout (label "Germany and Italy" unchanged). Replace text.
New text: "One currency, opposite structures. Germany's state owes 63% of output, Italy's 137%. Yet the typical Italian adult is richer than the typical German one: median wealth $131,001 against $53,485 (UBS, modelled). Italian families owe little, 36% of output against 48% in Germany. The usual explanation is home ownership, which is more common in Italy, though this chapter has not checked the figures. Italy's state is the debtor, its families much less so. Neither country prints its own currency, so investors can charge either one a risk premium when they worry. Countries with their own central bank pay such premia too, as Britain found in 2022."

**W-40** Insert after [45], one callout, label "France".
Text: "Same euro, a different worry. The French state owes about 116% of output, less than Italy's 137% (BIS), and French companies carry the heaviest debt in this table, 155% of output. Investors outside France, including other euro area investors and the ECB, hold about 54% of French government debt (Eurostat), and France owes the world a net $0.7T (end 2024). Yet in early October 2026 investors charged France more than Italy to borrow for ten years: about 1.4 points over Germany for France, against about 1.2 for Italy (press). They were reacting to France's deficit and politics more than to the size of its debt. A debt ratio is where the analysis starts, not where it ends."

**W-41** [47] callout. Replace "mostly mortgages that owners keep rather than repay" with "much of it mortgages that owners often keep rather than repay".

**W-42** [49] callout (label "Malaysia" unchanged). Replace text.
New text: "A smaller currency with a foreign window. Malaysia's nonfinancial debt is about 224% of output: government 65%, households 70% (high for an emerging market, including mortgages and car loans), companies 89%. It owes the world about as much as it owns abroad. Foreigners hold about a fifth of Malaysian Government Securities (20.1% in July 2026), enough that a jump in US yields can pull money out and push the ringgit down, as Level 1's \"The view from a smaller currency\" described."

**W-43** [50] curiosity.
- Item 1 answer: "Its debt is in yen, the Bank of Japan held about 43% of it at the end of 2025, foreigners only about 13%, and Japan as a whole is owed $3.5T by the world. Greece borrowed in a currency it could not print, much of it from foreigners."
- Item 2, replace the whole item: `{"q": "Germany, Italy and France share the euro. Why did France, with less government debt than Italy, pay more to borrow in October 2026?", "a": "Investors price the risk that worries them now, not only the size of the debt. France's deficit and politics worried them more than Italy's higher debt: about 1.4 points over Germany for France against about 1.2 for Italy (press, early October 2026). None of the three can print euros.", "from": "rb-09"}`
- Item 4: answer "China holds about 16% of world household wealth (18.5% counting Hong Kong and Taiwan) and 22% of world nonfinancial debt, and it added more than $4.8T of the roughly $10T rise in world debt in the first half of 2026 (IIF, via press). Leave it out and you miss nearly half of the rise in world debt in 2026 so far." Change "from" rb-11 to rb-leader.

**W-44** [53] bars. Replace the empty caption with "UBS sample of about 3.85 billion adults in 56 markets, grouped by wealth per adult, end 2025."

**W-45** [54] p. Replace text.
New text: "Of every 100 adults in UBS's sample, 42 own under $10,000 and together hold 0.6% of all wealth. The one or two millionaires hold almost half. Averages hide this: counting every adult on Earth (World Bank), wealth per adult is about $93,000, yet 42 of every 100 adults own less than $10,000."

**W-46** [56] p. Replace "The danger is not that the household owes more than it owns. It does not. The danger is that one member cannot pay another and the chain of IOUs breaks." with "The danger is not the size of the IOU pile. The danger is that one member cannot pay another and the chain of IOUs breaks."

**W-47** [57] table. Replace the row label "Household wealth per adult" with "Household wealth per adult (all 5.6 billion adults)".

**W-48** Insert after [50] (after the W-32 move this is directly before heading 59), three blocks.
- h: "What would change the picture"
- p: "These are the signs to watch. Each one would change a number or a story in this chapter, and each has a date or a source."
- table: cols `["Watch", "What it would change", "When", "Source"]`, rows:
  - `["House prices fall 20%", "Measured world net worth falls by roughly 13% (a model: real estate is about two thirds of it). Debt stays at face value, so it looks bigger", "Any year", "McKinsey, Level 1 \"The titled world\""]`
  - `["The dollar moves 10% either way", "Every world total moves about 6% to 7% in dollars with nothing real changing (a model)", "Check on 30 June 2027", "Fed broad dollar index"]`
  - `["World debt above $375T, or the debt ratio rising for the first time since 2020", "Ends the \"ratio falling\" story", "IIF release with Q3 2026 data, mid November 2026 to February 2027", "IIF"]`
  - `["BIS world debt ratio above 250%", "Confirms the 2025 rise was not a one-year quirk", "BIS release with Q2 2026 data, early December 2026", "BIS"]`
  - `["France's 10-year spread over Germany well above its early October 2026 level of about 1.4 points", "A sovereign scare inside a currency union, where no member can print its way out", "Weekly", "Market data, press"]`
  - `["Private credit growing much faster than output for several years", "The warning sign post-Keynesian economists watch, measured by the BIS credit-to-GDP gap (country values not yet checked)", "Quarterly", "BIS"]`
  - `["Inflation staying high, or falling back", "High inflation keeps shrinking debt ratios at savers' expense. A fall back would stop the ratio falling", "Monthly", "National statistics"]`
  - `["World household wealth below $500T for end 2026", "Prices, not piles, went into reverse", "UBS report, about 30 June 2027", "UBS"]`

**W-49** [60] table. Replace the verdict cells of rows 2, 4, 5 and 6.
- Row 2 ("Global debt is $300 trillion"): "Right for 2021 to 2024 (about $300T to $320T, IIF). Now $348T (end 2025) and over $365T (mid 2026, via press)"
- Row 4 ("The global debt bomb is about to go off"): "Overstated as one bomb, wrong to dismiss. The IIF ratio fell five years running to 2025, but dollar debt rose about $46T from end 2024 to mid 2026 and the BIS ratio rose in 2025. The risks are specific: refinancing in emerging markets, dollar debt owed abroad, a few governments"
- Row 5 ("Debt is bigger than wealth"): "Depends on the counter. On loans and bonds, wealth is 1.4 to 1.7 times debt (517.7 / 365 to 600 / 348.3). On everything owed on paper, about $1,200T, the reverse. Neither comparison should be a subtraction"
- Row 6 ("We owe it to ourselves"): "True for the world in total and for debt held at home. Not true between families, and false for debt in a foreign currency and for net debtor nations"

**W-50** [61] table.
- Row "Austrian and hard money", cell 3: "Treat the fall in the debt ratio after 2020 as quiet default through inflation"
- Replace the row "Mainstream and historians (Reinhart and Rogoff)" with `["Historians (Reinhart and Rogoff, This Time Is Different, 2009)", "Crises cluster after rapid debt build-ups, above all debt owed abroad in a foreign currency", "Watch fast debt growth and foreign-currency debt, not the world total"]`

**W-51** [63] check. Replace q with "A friend says the world is $500 trillion in debt and only worth $300 trillion. What would you ask first, and what two things would you tell them?" Replace a with "Ask: which debt? Then, first: on the usual meaning, loans and bonds, the world owes about $348T to $365T and is worth $518T to $600T net, so the order flips. Only the widest count, everything owed on paper including deposits, passes $500T, at about $1,200T. Second: whichever count they mean, it cannot be subtracted from wealth, because the world owes it to itself. What matters is who owes whom, in which currency, and how soon."

**W-52** Rules. Insert as the first rule: "Before you compare world wealth and world debt, ask which debt: loans and bonds, or every claim on paper."

### 9.4 Changed rulings for the Propagator
- "World debt is bigger than wealth" and "the numbers are swapped" are both retired. The new view: "Which debt? Loans and bonds about $348T to $365T, everything owed on paper about $1,200T, net wealth $518T to $600T, and no subtraction on any count." Search terms for xref: "swapped|owns more than it owes|every measure of wealth|500 trillion|500T".
- "Debt hit a record every year 2021 to 2025" is retired (2022 fell about $4T).
- "Mostly banks abroad print offshore dollars" is retired (55% is bonds).
- "Highest since 2007" for the 2026 10-year is retired (2002).
- Level 1 lines that carry related views are listed in section 10 and wait for the owner.

---
## 10. Proposed changes for the owner (outside Level 2, not applied without the owner's approval)

| # | Where | Current text (short) | Proposed text | Why |
|---|---|---|---|---|
| P-1 | Level 1 rb-07 "The musical chairs question" | "Global debt is about $365 trillion, roughly 310% of world output, according to the Institute of International Finance" | "Global debt was over $365 trillion in mid 2026 on the IIF's count of loans and bonds (via press), a little over three times world output (about 305% in early 2026). Count every claim on paper and the total is far larger (Level 2, \"The world's balance sheet\")." | The verifier found no H1 2026 ratio, Q1 2026 was about 305%. Adds the "which debt?" pointer |
| P-2 | Level 1 rb-07, the owner's-notes paragraph | "about $346 trillion of global debt" | Add the year the figure describes, for example "about $346 trillion of global debt (an older figure, before the 2025 rise)" | Librarian flag 1: two debt figures in one chapter with no dates |
| P-3 | Level 1 rb-08 and rb-13 | "Long-term US government bonds ... lost close to half their market value from 2020 to 2023" | Name the bond and add a dated source, for example "The longest US government bonds, 30-year issues, lost close to half their market value from 2020 to 2023, while a 10-year holder lost about a quarter on price (Level 2, Bonds)" | Plausible for 30-year bonds but unsourced. L2.1 now shows about 24% on price for a 10-year holder |
| P-4 | Level 1 rb-titled | "about $470 trillion at the end of 2024" and "about two thirds of the world's net worth is real estate" | Keep the 2024 figure and add "($518 trillion at the end of 2025, UBS)". Add "(McKinsey's 2021 study)" after "two thirds" | Lane A proposal. Labels the vintage of the two-thirds figure |
| P-5 | Level 1 rb-06 | "Treasury General Account ... about $952 billion" | "about $945 billion on 21 October 2026" | The $952B is a week average (verifier R6V-14). Matches L2.2 after C-01 |
| P-6 | Level 1 rb-04 (optional) | No share of foreign holdings | Optionally add "Foreigners hold about a third of all Treasuries (32.5% at the end of 2025, Fed Z.1)" | Would let the original L2.1 bridge stand. Not needed once B-01 is applied |
| P-7 | PLAN.md section 4.6 correction ledger (orchestrator, not a site change) | none | Add: "2026-10-24 R6: L2.3 'numbers are swapped' framing replaced by 'which debt?' rungs (net wealth, loans and bonds, every claim). Triggered by: engine red team, unprompted. Cause: gross versus net blind spot, overcorrection" | Keeps the skip-me score honest |
| P-8 | FRAME card lesson (orchestrator) | none | Add to the cold framer card: "For any world total, the answer spec must include a gross rung and a net rung, and the most common popular source of the number (for example derivatives notional)" | RT "missing from the spec" list |

---

## 11. Claims table (rulings)

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R6X-01 | On the loans-and-bonds measure world debt was $348.3T at end 2025 and over $365T in H1 2026, below world net wealth ($517.7T UBS to $600T McKinsey). "500T+ world debt" is false on this rung | T4 | Plausible | https://www.qatar-tribune.com/article/255647/business/global-debt-tops-365-trillion-as-china-us-lead-borrowing-surge and https://www.ubs.com/global/en/media/display-page-ndp/en-20260630-gwr-2026.html | 2026-09-24 and 2026-06-30 | End 2025 to H1 2026 | An IIF document shows four-sector debt above $500T |
| R6X-02 | Everything owed on paper by every sector was about $1,200T in 2025 (computed: nearly $1,800T of assets minus $600T of net worth, McKinsey), so "500T+" is true on the widest rung | Model on T4 inputs | Speculative (secondary inputs, report not opened) | https://fortune.com/2026/07/27/global-household-wealth-mckinsey-40-trillion-balance-sheet-quadrillion/ and https://www.mckinsey.com/mgi/our-research/the-global-balance-sheet-2026-imbalance-and-divergence | 2026-07-27 | 2025 | The McKinsey report gives assets or net worth that put liabilities below $1,000T |
| R6X-03 | OTC derivatives had a notional value of $846T and a gross market value of $21.8T at end June 2025 | T0/T2 | Confirmed (fetched 2026-10-24) | https://www.bis.org/publ/otc_hy2512.htm | 2025-12-08 | 2025-06-30 | BIS revision |
| R6X-04 | McKinsey puts 2025 household net worth at $570T and the world's balance sheet of assets at nearly $1.8 quadrillion | T4 | Plausible (press report fetched 2026-10-24) | https://fortune.com/2026/07/27/global-household-wealth-mckinsey-40-trillion-balance-sheet-quadrillion/ | 2026-07-27 | 2025 | The report shows different figures |
| R6X-05 | On loans and bonds, world wealth is 1.4 to 1.7 times world debt (517.7 / 365 = 1.42, 600 / 348.3 = 1.72) | Derived | Confirmed (arithmetic) | round6/lanes/R6A-tables.json and round6/VERIFY_R6.md | 2026-10-24 | End 2025 to mid 2026 | Input revisions |
| R6X-06 | Ruling: L2.3 opens with "which debt?" and two rungs, not "the numbers are swapped". "300T+" is a true floor for wealth, "500T+" is false for loans and bonds and true for every claim on paper | Court ruling (inference on R6X-01 to R6X-04) | Ruled | round6/DEBATE_R6.md section 2 | 2026-10-24 | 2026-10-24 | The owner names a source under which the draft's "swapped" origin story is exactly right |
| R6X-07 | IIF world debt fell about $4T in 2022, to just under $300T, its first annual fall since 2015 | T4 | Plausible | https://www.kitco.com/news/off-the-wire/2023-02-22/global-debt-sees-first-annual-drop-2015-iif | 2023-02-22 | 2022 | The IIF back series shows a rise in 2022 |
| R6X-08 | A foreign investor swapping an existing dollar deposit for a new Treasury leaves the US net international investment position unchanged | T0 (accounting identity) | Confirmed | PLAN.md section 4.5 Move 3, round6/REDTEAM_R6.md (accountant) | 2026-10-24 | n.a. | None as stated. The position does change if the dollars were newly bought with yen |
| R6X-09 | Nonfinancial debt measures leave out the financial sector's own borrowing so that the same lending is not counted twice | T2 | Plausible | https://www.imf.org/en/Blogs/Articles/2025/09/17/global-debt-remains-above-235-of-world-gdp | 2025-09-17 | 2024 | IMF or BIS method notes give a different reason |
| R6X-10 | The US net international investment position was minus $27.54T at end 2025 (assets $42.96T, liabilities $70.49T) and is moved largely by stock prices, so it is not net debt | T0 | Plausible (red-team fetch, not re-fetched by the court) | https://www.bea.gov/index.php/news/2026/us-international-transactions-and-investment-position-4th-quarter-and-year-2025 | 2026-03-25 | 2025-12-31 | BEA revision |
| R6X-11 | In early October 2026 France's 10-year spread over Germany was about 1.4 points and Italy's about 1.2 | T4/T5 (press) | Plausible | en.ilsole24ore.com (Radiocor, 5 Oct 2026) and quifinanza.it (6 Oct 2026), as cited in round6/REDTEAM_R6.md | 2026-10-05 and 2026-10-06 | Early October 2026 | ECB or market data show Italy above France in that week |
| R6X-12 | On 12 March 2023 the Fed opened the Bank Term Funding Program, lending to banks against Treasuries at par | T1 | Confirmed (official record) | https://www.federalreserve.gov/newsevents/pressreleases/monetary20230312a.htm | 2023-03-12 | 2023-03-12 | None |
| R6X-13 | A holder of a par 10-year bought at the 1979 low lost about 32% on price and about 14% with coupons by September 1981. 2021 to 2023: about 24% and 21%. 1994: 18% and 13%. 2008: a gain of about 21%. 2026: 10% and 8% | Model | Confirmed (arithmetic, bond.py) | scratchpad bond.py, dates and yields from round6/VERIFY_R6.md (Fed H.15) | 2026-10-24 | 1979 to 2026 | Recalculation with other dates or with coupons reinvested |
| R6X-14 | Measured in gold, world household wealth fell about a third in 2025 (1.108 / 1.66) | Model on T4 and press | Speculative (gold gain is press) | https://www.wam.ae/en/article/15y61k3-gold-set-for-best-year-nearly-half-century | 2025-12 | 2025 | Gold's 2025 gain was well below 66% |
| R6X-15 | Level 1 rb-03 never mentions the 1942 to 1951 yield cap. rb-08 teaches "1941 to 1951, war and postwar inflation with capped rates" and financial repression | T0 (internal text) | Confirmed | site/rulebook.json (rb-03, rb-08) | 2026-10-24 | 2026-10-24 | Level 1 text changes |
| R6X-16 | Level 1 rb-11 never mentions China. rb-04, rb-09, rb-leader and rb-12 do | T0 (internal text) | Confirmed | site/rulebook.json | 2026-10-24 | 2026-10-24 | Level 1 text changes |
| R6X-17 | Level 1 rb-04 has no line saying foreigners hold about a third of Treasuries | T0 (internal text) | Confirmed | site/rulebook.json (rb-04) | 2026-10-24 | 2026-10-24 | Level 1 text changes |
| R6X-18 | Japan's government debt is 193% of GDP on the BIS basis, about 207% gross and about 136% net on the IMF's | T2/T4 | Plausible (red-team sources, not re-fetched) | IMF Finance and Development, September 2026, "Japan's Debt Beyond the Headlines", and fxstreet (Commerzbank on IMF data, 1 Jun 2026), as cited in round6/REDTEAM_R6.md | 2026-06-01 and 2026-09 | 2025 to 2026 | IMF WEO database shows other gross or net values |
| R6X-19 | In the US the top 10% of households took 67.5% of the rise in household net worth since 2019 Q4 and the bottom half 3.1% | T0 | Confirmed (desk claim R2E-19) | https://www.federalreserve.gov/releases/z1/dataviz/dfa/ | 2026 | 2026 Q2 | Distributional accounts revision |
| R6X-20 | The Level 2 chapters run about 4,900 to 6,250 words against a Level 1 median of about 1,650 | T0 (count) | Confirmed | scratchpad wc.py on round6/DRAFT_L2.md and site/rulebook.json | 2026-10-24 | 2026-10-24 | Recount with another method shifts the ratio below 2.5 times |
| R6X-21 | World household wealth fell 2.4% to $454.4T in 2022 (UBS and Credit Suisse) | T4 | Speculative (secondary, via Bloomberg in lane A) | round6/lanes/R6A-wealth-debt.md section B | 2023 | End 2022 | UBS back series shows another figure |
| R6X-22 | The verifier's "US share 29.4% on the BIS world total" does not reconcile with lane A's US sector sums ($78.9T, about 30.0% of $262.7T) and R6A-27's $77.3T (29.4%). The gap is likely government debt at nominal versus market value | Court check | Open | round6/lanes/R6A-wealth-debt.md (table D, R6A-27), round6/VERIFY_R6.md | 2026-10-24 | Q4 2025 | Data lane shows both figures on one basis |

---

## 12. What the court could not settle, and what waits for data

1. **The McKinsey report itself.** The verifier's and the court's fetches of the McKinsey page failed (HTTP 503, HTTP/2 error). The $600T net worth rests on a search snippet, the $1,800T and $570T on Fortune. The $1,200T rung is therefore labelled "computed" and "via press". If the report shows that McKinsey counts equity differently, the rung label ("deposits, bonds, loans and other claims") still holds, but the number should be re-derived.
2. **April 2025 yields** for the L2.1 table (H.15 closes): needs data.
3. **US share on the BIS basis** (R6X-22): the lane's two US totals differ by $1.6T. The chapter avoids printing the 29.4% until the Data lane reconciles them.
4. **France spreads** are press only (R6X-11). An ECB or market-data check before the next round would lift them to T0.
5. **Deferred spec items (needs data):** currency of debt, average maturity and interest as % of revenue by country, the issuer split of the $160.7T world bond market, M1 and broad liquidity, buybacks and refunding, the SVB uninsured share, a WID cross-check of UBS medians, the market against face value of world bonds, the equity and debt split of the US net foreign position, wealth before 2000, unfunded pension promises by country, and BIS credit-to-GDP gaps.
6. **Whether the owner was testing.** The court cannot know. The ruling is built so that it is right either way: it answers the question as asked, names the owner's own earlier estimate as one candidate without calling it a myth, and says plainly which rung is the usual one.
