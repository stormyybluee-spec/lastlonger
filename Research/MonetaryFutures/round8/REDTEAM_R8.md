# Round 8 red team: L4.1 Digital credit, dissected (Standard tier, one agent, all voices)

Move 7. Date 2026-11-05. Inputs: ROLES.md (red team card), PLAN.md sections 2B and 4.5, round8/FRAME_R8.md, round8/DRAFT_R8.md, the two lane files, the paraphrased claim list. Not read: VERIFY_R8.md or any court file. Ten web searches. Block numbers in [brackets] refer to DRAFT_R8.md.

## Summary verdict

The chapter is strong on the instrument (Part 1) and on the claims-versus-labels pattern (Part 2). It is weakest exactly where the owner pointed: Part 4, "money moving between baskets". There it states an absolute ("the dollars never leave the dollar basket") that breaks on the one channel Saylor himself names (banks lending against Bitcoin), it drops the both-direction channel table the spec requires, it applies the ledger test to digital credit but not to stablecoins, and it closes the owner's concept with a "no" instead of extending it. Both cold readers fall short of the pass mark (7.0 and 7.5 out of 10). Six points are blocking.

| # | Blocking point | Voice | Block |
|---|---|---|---|
| B1 | "Dollars never leave the dollar basket" is false for bank loans against Bitcoin, which create new dollars (the Case 2 lesson) | Teacher, money market fund manager | [0], [48], [50], [61] |
| B2 | No channel table with both directions and sizes in two regimes in the chapter | Completeness | Part 4 |
| B3 | "Every new stablecoin dollar must sit in government bills or cash" is false for the largest stablecoin, and stablecoins sit in Set 2 in the bridge but in the dollar basket in Part 4 | Stablecoin treasurer, teacher | [1], [47], [51], [53] |
| B4 | The stress section contradicts itself (1.0 times at minus 70% against "stays covered in every case") and its "no forced Bitcoin sale for 27 months" sits beside Q3 2026, when Strategy sold Bitcoin to pay dividends with about $5 billion in the reserve | Credit analyst, bubble critic | [36], [37], [39] |
| B5 | South Sea row says the company "had almost no real asset". Its main asset was government debt paying interest. That is the guard line, and it is wrong in Strategy's favour | Historian | [41.0] |
| B6 | Cold readers score 7.0 and 7.5, below the pass mark of 8 | Cold readers | whole main path |

---

## 1. Cold reader A: 18-year-old Malaysian school leaver, English second language

Read the main path once. Skipped go-deeper boxes and all answers (curiosity answers and check answers). Answers below are from memory.

| # | Question | Reader's answer from memory | Score |
|---|---|---|---|
| 1 | What is STRC in law, and who is paid before it? | "A preferred share, not a loan. Lenders are paid first." | 1 |
| 2 | Who sets the 12%, and how far can it be cut in one month? | "The company decides each month." Did not recall the 0.25 point limit or the floor ("short-term dollar rate" meant nothing) | 0.5 |
| 3 | Why does STRC trade near $100, and is $100 a promise? | "The company buys back when below and sells when above. Not a promise." | 1 |
| 4 | How many times is STRC backed by Bitcoin, and why do the numbers differ? | "Four to six times? Or 3.4?" Could not say why 6.1, 4.2 and 3.4 are all given | 0 |
| 5 | Why is "48 years of dividends" called spin? | "In real dollars it is only about 3 years." Did not know the word "spin" | 1 |
| 6 | What is mNAV, and what happens below 1? | "The share value against the Bitcoin. Below 1 is bad." Could not explain why, or why there are two readings (1.08 and 0.86) | 0.5 |
| 7 | What happened to the new money in Q3 2026? | "They raised a lot but bought little Bitcoin, and sold some Bitcoin for dividends." | 1 |
| 8 | What is the biggest stress point before 2029? | "Some notes in 2027." Did not know what a convertible note is or what "put back for cash" means | 0.5 |
| 9 | When a saver buys STRC, where do the dollars end up, and what crosses between baskets? | "With the person who sold the Bitcoin. Ownership and risk cross." | 1 |
| 10 | Name three risks for a Malaysian holder | "PIDM does not cover it, and the ringgit moved 18%." Thought a moving ringgit might help. Did not recall withholding or estate tax | 0.5 |
| | Total | | **7.0 / 10 (fail, pass mark 8)** |

Every sentence, term or number not understood:
- Terms: preferred stock, par, perpetual, "sole and absolute discretion", "when, as and if declared", "junior shares", STRF, B-, junk, convertible notes, conversion price, "put back for cash", "refinancing test", "as long as markets stay open", over-collateralized, "net of cash" (in the claims table), spin, hurdle, the 1940 Act, flywheel, "triple flywheel", premium, mNAV, "on the shares alone", money market fund (Malaysians know unit trusts, ASB and fixed deposits), government bills, "top-bracket", "tax-free account" (a US idea), "the tax comes back when you sell", "funds that must mark prices daily", "gapped", "affiliates", "market-structure bill", "tax notice", "rounding error", "trickle", "dressed as credit", "Settles" and "Misses" after each payoff box, "Best", "Middle", "Worst" (best for whom?).
- Sentences: [8] "if gold rising 10% a year let you sell credit paying 5%" (why would that follow?). [11] "never below that rate (3.97% in early November 2026)" (which rate?). [33] "about 0.86 on the shares alone". [35] "A put is a refinancing test, not a default, as long as markets stay open." [53] "the net flow ran into the old basket by about four to one" (the chapter just said dollars never move between baskets). [61] "In Round 1 this project concluded" (what is Round 1?) and "Our confidence in that reading is about 70 out of 100" (70 out of 100 of what?). [63] "the ringgit moved 18% against the dollar" (which way, and is that good or bad for me?).
- Numbers: $8 billion (STRC) against $14.7 billion (digital credit), not explained. "39 months" repeated on every row of [36]. "1.0 times" at minus 70% in [36] against "falls below 1 time only near $18,000" in [37]. "110%" in [51]. "1.3 million Bitcoin, 6.5%" in [61]. "$60,000 of US assets" (estate tax on what?).

## 2. Cold reader B: 18-year-old American

| # | Question | Reader's answer from memory | Score |
|---|---|---|---|
| 1 | Legal form and rank | "Preferred stock, behind all debt." | 1 |
| 2 | Rate setter and cut limit | "Strategy sets it monthly, can cut a quarter point." Missed the floor | 0.5 |
| 3 | Why near $100 | "They defend it with buybacks and rate hikes. A target." | 1 |
| 4 | Coverage numbers | "About six times on their method, about four without the cash." Could not place 3.4 | 0.5 |
| 5 | 48 years | "Bitcoin years, not dollar years. Dollars cover about 3." | 1 |
| 6 | mNAV | "Market value over Bitcoin. Below 1, issuing shares dilutes." Could not explain 1.08 against 0.86 | 0.5 |
| 7 | Q3 2026 | "$5.41 billion raised, $0.59 billion of Bitcoin." | 1 |
| 8 | Stress point | "Convertible bonds holders can cash in from 2027." Did not know why the share price matters | 0.5 |
| 9 | Baskets | "Dollars go to the Bitcoin seller, risk goes to the saver." But asked: if stablecoins are Set 2, why are they in the dollar basket? | 1 |
| 10 | Malaysian risks | "No PIDM, 30% US tax." Missed estate tax and currency | 0.5 |
| | Total | | **7.5 / 10 (fail)** |

Not understood: mNAV's two readings, "Set 1" and "Set 2" (the bridge lists stablecoins as Set 2, Part 4 counts them as the dollar basket), why a share price above or below a conversion price matters, "return of capital" logic behind "the tax comes back when you sell", SOFR (unnamed), PIDM and RM (fine to leave, but gloss once), "Settles" and "Misses", Box 3 "affiliates", [52] "That is the whole trick in one line" (whose trick?), "four to one" in [53], "70 out of 100", the stress table's repeated 39 months.

Shared fix for both readers: a six-line "words you need" box at the top of Part 1 (preferred stock, par, perpetual, convertible note and put, mNAV with both readings, gross and net coverage). One coverage ladder used everywhere. Rename "Settles/Misses" to "Where it ends up / What the box leaves out". Replace "Round 1" and "70 out of 100" with plain words.

---

## 3. Expert voices

### 3.1 Preferred-stock and credit analyst
- Miss: the main path never says that STRC holders have no vote and no right to elect directors when dividends are missed, and that nothing stops Strategy adding debt ahead of STRC. "Four to six times covered" [0] is a snapshot that management can change on its own. Spec Q1 item 1 asks for voting rights. The issuer also sets its own coupon, which no bondholder would accept.
- Evidence: R8A section A1 (STRC Annex: no general vote, no director election on nonpayment, protection only against junior stock, change-of-control put excludes Saylor and affiliates).
- Blocking: no.
- Fix: add two rows to table [11]. "Can I vote? No, not even if dividends stop." "Can the company put more claims ahead of mine? Yes, any new debt ranks ahead." Change [0] to "about four to six times over today, a number the company can lower by borrowing more".

### 3.2 Delaware corporate lawyer
- Miss: who the board works for. Under Delaware law a preferred holder's rights are contract only. Where common and preferred interests conflict, directors owe their fiduciary duty to the common (In re Trados, Delaware Chancery, 2013). The people who set STRC's rate each month [11] are legally bound to favour the other side of the trade. The chapter also skips the dividend legal limit (DGCL section 170 surplus test), which R8A A2 shows does not bite until Bitcoin is near $17,700 to $23,500.
- Evidence: Trados (Foley Hoag and Harvard Law forum summaries, searched today). R8A A2.
- Blocking: no.
- Fix: one sentence after table [11]: "The board that sets the rate owes its legal duty to the common shareholders, not to you. Your rights are only what the contract says." Put the surplus point in the go-deeper box.

### 3.3 US and Malaysian tax accountant
- Miss: the Malaysian tax line in [63] is half the picture and the currency line has no direction. (1) Resident individuals in Malaysia are exempt on foreign-sourced income received in Malaysia until 31 December 2036 (P.U.(A) 451/2024, PwC Malaysia tax summary), subject to conditions, so the Malaysian side may be nil. (2) On the US side, a return-of-capital payment is not a dividend, but brokers may still withhold 30% on the whole payment, and getting the excess back means filing a US nonresident return. "30% can apply" should say both. (3) The ringgit rose from about 4.80 per dollar in February 2024 to about 3.97 in late January 2026 (The Star, 26 January 2026). For a ringgit saver holding dollars that is a loss of about 17%, about 1.4 years of a 12% dividend, not "more than a year and a half". January 2026 was also the ringgit's strongest point in seven years, so the window flatters the warning.
- Evidence: searches today (Malaysian gazette order via Bloomberg Tax and PwC, ringgit reports in The Star and Malay Mail, Treasury regulation 1.1441-3 on estimating earnings and profits). The February 2024 level is from memory (T5) and the verifier should check it against Bank Negara.
- Blocking: no, but the ringgit sentence must state a direction.
- Fix: "For a Malaysian: PIDM does not cover shares. Malaysia does not tax most foreign income of resident individuals until 2036, with conditions. The US may hold back 30% of each payment unless your broker treats it as return of capital. US estate tax can apply above $60,000 of US assets. And when the ringgit rose about 21% between February 2024 and January 2026, a dollar asset lost about 17% in ringgit, more than a year of a 12% dividend."

### 3.4 Closed-end fund arbitrageur
- Miss: [33] and [34] give two mNAV readings (1.08 and 0.86) without saying why they differ, and they leave out what the company has said it will do below 1. The gap is the debt and preferred: the company's measure adds them to the share value, the share-only measure does not. Below 1, the accretive move is the reverse valve: sell Bitcoin, or stop issuing. R8B section B says the stated policy at mNAV 0.8 points to selling Bitcoin or derivatives. Closed-end fund history also says a discount can last for years. Nothing forces it to close.
- Evidence: R8B A3 and B. The closed-end fund discount puzzle is in the spec (Q3 item 4) and missing from [41.0].
- Blocking: no.
- Fix: one sentence in [33]: "The two numbers differ because the company's measure counts its debt and preferred as part of its value." One row in [34] for the stated policy below 1. One row in [41.0] for closed-end fund discounts.

### 3.5 Money market fund manager
- Miss: Saylor's suitability ladder (claim S22: under four months, a money fund. Four months to four years, digital credit) is not audited anywhere, in the chapter or in the lanes. It is the most advice-like line in the talk and the one a friends-and-family reader is most likely to act on. A money fund under rule 2a-7 has to hold very short paper and keep daily liquidity. STRC closed 25% below par on 26 June 2026, inside a four-month window. The same voice backs B1: a money fund redemption that ends in STRC moves deposits, but a bank loan against Bitcoin creates them.
- Evidence: claim list S22. Draft [13] and [15.0] give the $74.57 close.
- Blocking: not by itself, but it is the top reader-protection gap.
- Fix: add a row to table [22]. "Money for four months to four years belongs in digital credit. Verdict: spin. STRC fell 25% in June 2026, within four months. Fair version: it pays more than a money fund because it can fall like a share."

### 3.6 Stablecoin treasurer (B3)
- Misstatement: [53] says "Every new stablecoin dollar must sit in government bills or cash." That holds only for US-licensed issuers under the GENIUS Act, whose reserve rules start in 2027. The largest stablecoin, USDT, is offshore. Its Q3 2026 attestation shows about $8.4 billion of Bitcoin (about 100,000 BTC) and about $19 billion of gold among about $191 billion of assets (secondary summaries of the BDO report, T4). So a dollar token partly backed by Bitcoin already exists offshore. It pays holders nothing. That is the most interesting fact the chapter could add to Saylor's "digital money" layer, and it cuts both ways.
- Second problem: the ledger test is used on one pipe only. When a stablecoin issuer buys a bill, its dollars go to whoever sold the bill. By the chapter's own logic that is also "only changing hands". So "the net flow ran into the old basket by about four to one" [53] breaks the rule the chapter set in [50]. It also compares stablecoin growth with all of Strategy's raising ($25.3 billion includes common stock), not with digital credit.
- Evidence: Tether searches today (Stablecoin Insider and Crowdfund Insider summaries of the Q2 and Q3 2026 reports). Site chapter rb-12 says compliant stablecoins hold bills and calls them "Set 1 wearing Set 2 clothes", while the bridge [1] lists stablecoins in Set 2.
- Blocking: yes (a false "every ... must" on the main path, plus a basket definition that flips inside the chapter).
- Fix: "Every new dollar of a US-licensed stablecoin must sit in bills or cash. The biggest offshore coin, USDT, also holds about 100,000 Bitcoin and gold." Rewrite [53] as ownership: "stablecoin growth moved about $100 billion of bill ownership to crypto users in 2025, four times Strategy's raising." Then state once which basket stablecoins belong to: "a Set 2 wrapper around a Set 1 asset".

### 3.7 Bitcoin miner
- Miss: [52] says "a tiny slice of a giant pool, pointed at a small and fixed supply, can move the smaller market a lot", and calls it "the whole trick". New coins are not the supply that sets the price. The holders of about 20 million existing coins are. The draft's own data give the counterexample: Strategy bought 137% of mined supply in 2025 [40], yet Bitcoin peaked near $126,000 on 6 October 2025 and fell to about $60,000 by February 2026 (searched today). The draft never gives the 2025 peak, so the reader cannot see that buying more than the miners made did not hold the price up. Strategy mostly buys over the counter from long-term holders, not from miners. Miners spend most of their dollars on power and wages.
- Evidence: draft [40] and [51]. Bitcoin price history (whale-alert and 247wallst summaries, T4).
- Blocking: not by itself, but [52] must change because it states a cause with no contrary evidence.
- Fix: "Against new coins it is large. But price is set by everyone who holds Bitcoin, not only by miners. In 2025 Strategy bought 137% of new coins and Bitcoin still fell from about $126,000 in October to about $60,000 by February 2026."

### 3.8 Historian of 1720 and 1929 (B5)
- Misstatement: [41.0] says the South Sea Company "had almost no real asset". Its main asset was a large claim on the British government, which paid interest. Its trade with South America barely mattered. The bubble was the share price's premium over that real asset. When the premium collapsed (about £1,000 in June 1720 to about £135 by November), the asset kept paying and the company survived as a holder of government debt for more than a century. That is a closer match to Strategy than the draft admits: a real asset, a premium on top, and late buyers of the premium losing about 85%. The "what is different" cell flatters Strategy. Two smaller points. [129] says Britain's legal gold standard "ran from 1821 to 1931", but it was suspended from 1914 to 1925 (the lane says "with suspensions" and the chapter dropped it). Goldman Sachs Trading Corporation peaked near $222 before falling under $2, so "$104" is the issue price, not the peak.
- Evidence: South Sea Company histories (Wikipedia summary, Economic History Society, encyclopedia.com, searched today). R8A D2 row S12.
- Blocking: yes (a factual error in an overcorrection guard, tilted one way).
- Fix: "Its main asset was real: interest-paying government debt. What collapsed was the premium over it. The company survived, but late shareholders lost about 85%." Then "What is different now": "Strategy's asset is liquid and public. What is the same: a premium over a real asset can vanish while the asset stays." Add "with a break from 1914 to 1925" to the S12 row.

### 3.9 Bitcoin maximalist who likes Strategy
- Miss: the fairness of two verdicts, and one-sided tripwires. (1) S16 "48 years" is marked spin, but in the same talk Saylor gave the dollar figure himself: about three and a half years in cash, and credit buyers value three years of dollars over thirty years of Bitcoin (S24). Giving both yardsticks is not spin. (2) The return-table rebuttal [22] picks the November 2021 peak and January 2025, the two worst start dates for Bitcoin. That swaps his cherry for the critic's cherry. (3) Every tripwire in [65.0] is a warning. None would show the bull case working.
- Evidence: claim list S16 and S24. Draft [22], [27], [65.0].
- Blocking: no.
- Fix: S16 becomes "Holds with both yardsticks: 46 years in Bitcoin, about 3.3 in dollars, and he gave the dollar figure himself." Return row: show four-year returns from each January start 2016 to 2022, or the median, and say the answer depends on the start. Add two confirming tripwires: "STRC rate cut below 12% with the price at or above $100 for three months" and "three years of unbroken dividends by July 2028 (Saylor's own test)".

### 3.10 Critic who thinks it is a bubble (B4)
- Misstatement: [37] says "the preferred stack stays covered in every case, and falls below 1 time only near $18,000", while table [36] shows 1.0 times at $24,200. The table is gross and the text is net of cash, and neither says so. The bigger issue: the model says "no scenario forces a Bitcoin sale to pay dividends for about 27 months, thanks to the reserve", while [39] reports that in Q3 2026, with a reserve of about $4.8 to $5.1 billion, Strategy sold $239.9 million of Bitcoin to pay dividends. The company's real behaviour already departs from the model's assumption. The table also leaves out the larger number from the lane: the 24-month gap from convertible puts in Bitcoin, about 99,000 BTC at minus 50% (60% of a year's new coins) and about 165,000 BTC at minus 70% (a full year), before the 2028 halving. Last, coverage is not price. STRC fell 25% in June 2026 with coverage near three times. A column with the June analogue would tell a saver more than coverage does.
- Evidence: R8B section B (break-evens $17,937 net and $23,733 gross, the convert gap in BTC, model limits). Draft [36], [37], [39].
- Blocking: yes (an internal contradiction in the headline stress numbers on the main path).
- Fix: label column 3 "gross, before counting the dollar reserve". Change [37] to "falls to about 1 time gross near $24,000, or near $18,000 if the dollar reserve is counted". Add a column "Bitcoin needed for the 2027 to 2028 note puts if not refinanced". Add: "In Q3 2026 the company sold Bitcoin to pay dividends even with the reserve full, so the 27 months is the model's best case, not a promise."

### 3.11 Fairness voice
- Most important: the balance is good overall. The Ponzi paragraph [24] is fair in both directions, [15.1] and [64.2] guard against cynicism, and [3] says plainly that nothing here is advice. The errors run both ways, which is a sign of no slant, but each needs fixing. Toward cynicism: the S31 1940 Act verdict "Wrong" [22] (see 3.12), S16 spin (3.9), the counter-cherry-picked start dates, and the curiosity answer [14] that says the vote passed "with the founder's super-voting shares counted". The class A votes alone were about 98.6% in favour (R8A A1: class B at most 196.4 million of 381.4 million votes for), so the aside hints at something that did not change the result. Toward promotion: South Sea (3.8), the stress model's 27 months (3.10), and [52] "the whole trick" (3.7).
- Advice check: no line tells a reader to buy, sell or hold. Box 2's "Best for you: you exit near $100 before the fall" reads like a trading tip out of context. The talk's own advice (S22 ladder) is left unchallenged, which is the bigger risk (3.5).
- Blocking: no.
- Fix: S31 to "Overstated", S16 to "Holds with both yardsticks", neutral start dates, drop the super-voting aside or add "class A holders alone also voted about 99% in favour", relabel Box 2 cells as outcomes, not advice ("Outcome for you"), and repeat "general education, not advice" inside [63].

### 3.12 Fairness, continued: the 1940 Act row
- R8A's own overcorrection guard on S31 said there is a real point inside the claim. The draft dropped it. A registered closed-end fund may have only one class of senior stock and must keep 200% asset coverage (Investment Company Act sections 18(a)(2) and 18(c), searched today). A company whose assets are over 40% investment securities must register (section 3(a)(1)(C)). So Strategy's stack of five preferred series plus convertibles could not be built on an S&P basket. It can be built on Bitcoin because Bitcoin is not a security. "Illegal" overstates it. "Wrong" overcorrects. "Every day" in [22] is also loose.
- Fix: verdict "Overstated". Honest version: "Funds can issue one class of preferred on a stock portfolio, with assets covering it twice. Strategy's five-series stack would not be allowed on a stock basket. It is allowed on Bitcoin because Bitcoin is not a security."

### 3.13 Teacher: is "money moving between baskets" tested and extended? (B1)
- Most important: the chapter tests the owner's concept with a real tool (the ledger walk [49]) and gets the right result for those four steps. Then it ends on a negative: "Money does not move between baskets. Ownership and risk do." [50]. That is a debunk, and it repeats the Case 2 failure pattern (PLAN 2B.5: a true headline is still wrong if it hides the channel that matters). Saylor's own tailwind (S6) is banks creating credit on Bitcoin. A bank loan against Bitcoin creates a new deposit. There, Set 2 collateral does make new Set 1 money. R8B channel 8 lists it and leaves it "not sized". The chapter drops it and then states "the dollars never leave Set 1" as an absolute in [0], [48], [50] and [61].
- Extension the owner's concept deserves: measure baskets with three meters, not one.
  1. Dollars (the money meter). Buying and selling only moves them. Bank loans against Bitcoin create them, and repaying destroys them.
  2. Ownership and risk. These do move, and the chapter shows it well.
  3. Market value. This changes without any dollar crossing. When a buyer pays a higher price, every coin is revalued, so the Set 2 basket can grow or shrink by more than the dollars spent. 2025 shows it can also fall while buying continues (3.7).
  A wrapper map would then complete the picture: Set 1 wrapper around a Set 1 asset (money fund), Set 1 wrapper around a Set 2 asset (STRC, spot ETFs), Set 2 wrapper around a Set 1 asset (stablecoins, tokenized bill funds), Set 2 wrapper around a Set 2 asset (Bitcoin itself). Saylor's 8% "digital money" would be a Set 2 wrapper around a Set 1 wrapper around a Set 2 asset. USDT holding Bitcoin is a first, partial case. That turns the owner's phrase into a tool the reader can reuse on the next pitch.
- Curiosity questions: the four in [62] are good, and "where are your dollars a week later" is the best in the chapter. [14] is thin (two factual recalls). Three that would be more interesting, each with a factual answer:
  - "If a bank lends you $10,000 against your Bitcoin, did money move between baskets, or was new money made?" (New deposits were created. It is the one case where Set 2 makes Set 1 money.)
  - "The biggest stablecoin holds about 100,000 Bitcoin. Is that already Saylor's digital money?" (Partly: a dollar token with some Bitcoin backing, offshore, paying holders nothing.)
  - "Strategy holds about 4.0% of all Bitcoin that will ever exist. The US government holds 8,133 tonnes of gold. What share of all gold ever mined is that?" (About 3.8% of roughly 216,000 tonnes: the framer's question 10, dropped from the draft.)
- Blocking: yes, for B1 (the missing creation channel plus the absolute statements).
- Fix: replace [50]'s last two sentences with the three meters. Add the bank-loan step as a fifth step in [49]. Change "the dollars never leave the dollar basket" to "buying and selling never take dollars out of the dollar basket. Only a bank loan against Bitcoin creates new ones." Add the wrapper map as a small table or radiant ring.

---

## 4. (a) Framer spec items still missing or partial

| Spec item | Status | What is missing |
|---|---|---|
| Q1.1 contract terms | Partial | Voting (none, even on missed dividends), the liquidation preference reset, call at $101 only in a skipped answer, ranking of STRE |
| Q1.2 legal status | Partial | Delaware surplus rule, board duty to the common |
| Q1.3 balance sheets, two floors | Missing | No upstairs or downstairs statement. Reverse repo use is about $0.2 billion, so say "today nothing reaches the Fed's floor" |
| Q1.4 GAAP versus economics | Missing | Fair-value Bitcoin accounting, swings in reported profit, STRC as temporary equity |
| Q1.5 tax | Partial | Basis step-down named only as "a delay". Earnings and profits trigger only in tripwires. Malaysian side (exemption to 2036) missing |
| Q1.6 comparison table | Partial | Columns for redemption right, rank, regulator, yield and liquidity dropped. Rows for SATA and a tokenized money fund missing |
| Q2.1 to Q2.3 claims audit | Partial | Main table has 12 of 26. Not covered anywhere in the chapter: S13 (the gold 10% to 5% argument, the core logic, shown in [8] but never tested), S22 (suitability ladder, not even in the lanes), S24 70/30 alloy, S32 conservation of volatility (numbers only in a box, no verdict), S42 spread, S45 "three basis points". Sources and dates are pointed to an internal file path in [25.0], which a reader cannot open |
| Q2.6 say/do gaps | Partial | The Q3 2026 gap is there. The triple flywheel running while the premium sits near 1 is implied, not named as a say/do gap |
| Q3.2 brakes | Partial | Index exclusion, rating event, stated policy below mNAV 1 missing |
| Q3.3 stress model | Partial | mNAV 0.8 case and convert gap in Bitcoin dropped. Gross and net unlabelled |
| Q3.4 precedents | Partial | Closed-end fund discounts, BlockFi, Voyager and Three Arrows missing. "How long the break took" and "who was paid first" columns missing |
| Q4.1 channel table, both directions, two regimes | **Missing (B2)** | R8B D1 has 15 channels with 2025, 2026 and 2022 sizes. The chapter has none of it |
| Q4.2 pool sizes | Partial | Asian and Malaysian pools named in the talk (UAE, Hong Kong) missing. Acceptable if said |
| Q4.3 ledger walk | Partial | Spec transaction (b), a stablecoin holder swapping into tokenized STRC, missing. "Did public money rise, fall or only move" stated generally, not per step |
| Q4.4 players | Partial | US Treasury, the Fed, banks losing deposits, index providers, short sellers and arbitrageurs, miners as their own player, Securities Commission Malaysia and Bank Negara missing |
| Q4.5 regime grid | Partial | "Who gains", "who loses" and "size" columns missing. Index exclusion and accounting change rows missing |
| Q4.6 competing hypotheses with tests and dates | **Missing** | [61] gives one verdict at 70 out of 100. Spec wants absorption, leakage, symbiosis and reverse-in-stress, each with a separating test and a date (R8B section G has them) |
| Q4.7 scale check against $10 trillion to $100 trillion | Partial | Pool shares given, but the S36 scale claim is not put against the pools |
| Q5.1 reader questions | Partial | Six, not ten. Missing: who is selling it to me and what do they earn, can the rate be cut, what currency risk do I take (present only as a number) |
| Q5.3 worked ringgit example, labelled as a model | **Missing** | No ringgit example. Suggest RM10,000 in at 4.40, 12% for a year, 30% withheld or not, ringgit at 4.00 or 4.80 at the end |
| Blind spot 15 (founder control) | Partial | Only as the vote aside in a skipped answer |
| Curiosity questions 5 (GBTC) and 10 (gold holder share) | Missing | GBTC appears only in a box. Gold comparison dropped |

## 5. (b) Word audit

| Word | Block | Text | Ruling |
|---|---|---|---|
| mostly | [0], [21] | "The numbers about today are mostly right" | Give the count: for example "of the 12 claims about today's numbers, 9 hold" (the court to recount from R8A D2) |
| never, all | [48], [50], [61] | "The dollars never leave the dollar basket", "In all four steps, dollars only change hands" | Regime label: true for buying and selling. False for bank loans against Bitcoin (B1) |
| only | [0] | "No dollar actually enters Bitcoin" | Keep, but add the bank-loan exception in the next sentence |
| every, must | [53] | "Every new stablecoin dollar must sit in government bills or cash" | False for USDT. Limit to US-licensed issuers (B3) |
| every | [23] | "Every claim that fails is a label" | False: the 1940 Act and "made $10 billion" are a legal claim and an arithmetic claim. Say "Most of the claims that fail are labels (5 of 13)" after the court recounts |
| every | [32] | "In a bear market every link runs backwards" | "Each link can run backwards". The reserve link does not |
| every | [37] | "stays covered in every case" | Contradicts [36] at minus 70% gross (B4) |
| only | [62] | "Only while each can sell its shares above the Bitcoin it holds" | Strategy kept buying with preferred money near mNAV 1. Say "Mostly while ..." with the 2026 numbers, or "It gets harder once ..." |
| mostly | [49] | "That reserve was raised mostly by selling new shares" | Give the share: Q3 2026 common stock $5.41 billion raised |
| most | [44], [62] | "Most went to the dollar reserve", "most new money never reached Bitcoin sellers" | Give the number: about 89% ($0.59 billion of $5.41 billion reached Bitcoin) |
| mostly | [62] | "mostly one issuer plus a few copies" | "about 91% one issuer ($13.4 billion of $14.7 billion)" |
| mostly | [61] | "Digital credit mostly supports that" | Replace with the competing-hypotheses table (spec Q4.6) |
| mostly | [15.0] | "holders were mostly repaid in full" | Give a number or "repaid at par in most cases, after months to years" with source |
| most | [1], rules | "Most deals only move money between people" | Add the regime label from rb-moneymake: except bank loans and Fed purchases from nonbanks. This is the Case 2 sentence |
| cannot | [25.0] | "cannot be checked" | Fine |
| myth | [13] | "Myth: STRC is like a bank account that pays 12%" | Fine. Its guard ("well backed today") is present. Saylor's own wording was "like a bank account", so say "the claim" not "myth" if the court wants to avoid the word |
| wrong | [22] | four "Wrong" verdicts | S31 should be "Overstated" (3.12). S19a, S33, S41 hold, but S41 should read "Wrong for a US payment stablecoin", since offshore Bitcoin-backed coins exist |
| never | [11], [18] | "never below that rate" | Contract term. Fine |
| always, solely, none, main, impossible | | none, or contract quotes ("none" in [41.0] is fine) | Fine |

## 6. (c) Overcorrection

1. [50] "Money does not move between baskets." This replaces the owner's simple story with another simple story. Keep the ledger result and add the creation channel and the value meter (3.13).
2. S31 "Wrong" (3.12) and S16 "Spin" (3.9). Both have a real core the lanes already found.
3. The return-table rebuttal uses the two worst start dates. That is counter-cherry-picking.
4. The super-voting aside in [14] hints at something that did not change the result (class A alone was about 98.6% in favour).
5. In the other direction (promotion, under-correction): South Sea (3.8), "27 months" (3.10), and [52] "the whole trick" (3.7). The chapter is not slanted, but each of these needs the same guard the debunks got.

## 7. (d) The three edits that would most improve the chapter

1. **Rebuild Part 4 on three meters, with the full channel table.** Dollars move on trades and are created by bank loans against Bitcoin. Ownership and risk move. Market value changes without any dollar crossing. Put R8B's channel table (both directions, 2025 against 2026 and 2022 sizes) before the prose. Apply the ledger test to stablecoins too. Place stablecoins in one basket ("a Set 2 wrapper around a Set 1 asset"). Fix the "every stablecoin dollar" line with the USDT Bitcoin fact. Replace the single 70-out-of-100 verdict with the four competing hypotheses and their dated tests. This fixes B1, B2 and B3 and turns the owner's concept into a tool instead of a "no".
2. **Make the stress section consistent and honest about behaviour.** Use one coverage ladder everywhere: STRC on the company's method 6.1, STRC gross 4.2, whole stack gross 3.4, with each break-even. Label [36] as gross. Fix [37]. Add the convert-put gap in Bitcoin. Say plainly that Q3 2026 Bitcoin sales happened with the reserve full, so the 27 months is the model's best case. Add the stated policy below mNAV 1 and the reason the two mNAV readings differ. Replace [52]'s "whole trick" with the 2025 counterexample. This fixes B4 and the readers' biggest number confusions.
3. **A fairness and reader pass on Parts 1 and 2.** Correct South Sea (B5) and the gold-standard dates. Change S31 to "Overstated" and S16 to "Holds with both yardsticks". Use neutral start dates. Add rows for S22 (the suitability ladder) and S13 (the gold argument). Add the no-vote and new-debt rows to [11] and the board-duty sentence. Add a six-term glossary box. Remove the internal file path from [25.0]. Rewrite the Malaysian line with the 2036 exemption, the withholding nuance, a ringgit direction and a worked ringgit example labelled as a model. This should lift both cold readers above 8.

## Sources checked today
- South Sea Company: https://en.wikipedia.org/wiki/South_Sea_Company , https://ehs.org.uk/the-south-sea-bubble-300-years-on/
- Investment Company Act section 18(c), as quoted in SEC exemptive filings: https://www.sec.gov/Archives/edgar/data/2028436/000113322824008044/trpofcif-efp9675_40appa.htm
- Tether Q3 2026 reserves (secondary, T4): https://stablecoininsider.org/tether-q3-2026-attestation/ , https://www.crowdfundinsider.com/2026/08/294574-stablecoin-usdt-issuer-tether-reports-1-5b-q2-2026-profit-increases-bitcoin-and-gold-holdings/
- Malaysian foreign income exemption to 2036: https://news.bloombergtax.com/daily-tax-report-international/malaysia-gazettes-order-extending-income-tax-exemption-on-foreign-income , https://taxsummaries.pwc.com/malaysia/individual/income-determination
- Ringgit in January 2026: https://www.thestar.com.my/business/business-news/2026/01/26/malaysian-ringgit-stocks-hit-highest-since-2018-on-ai-growth
- S&P B- issuer rating, no preferred rating found: https://www.strategy.com/press/s-p-global-ratings-assigns-a-b--issuer-credit-rating-to-strategy_10-27-2025
- Bitcoin peak October 2025 and early 2026 low (T4): https://whale-alert.io/stories/de74b438ebb0/Bitcoin-peaked-near-126200-in-Oct-2025-then-plunged-12000-triggering-19B-liquidations-finished-year-near-87000-leaving-most-150k250k-forecasts-unmet
- Withholding on corporate distributions: https://www.law.cornell.edu/cfr/text/26/1.1441-3
- Trados (Delaware Chancery 2013): https://foleyhoag.com/news-and-insights/publications/alerts-and-updates/2013/september/delaware-court-issues-important-trados-decision/

Note for the verifier, not settled here: search results put Bitcoin's 2026 low near $60,000 on 6 February 2026, while the draft gives $57,740 in late June. Both may be true. Check which low the chapter means.
