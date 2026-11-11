# Round 9 frame: cold framer (Move 1) with pre-mortem

Stack: Fundamentals (Rulebook, PLAN 1.1). Both jobs teach documented mechanisms. Anything inferred (who caused a price fall, what a bloc "wants") goes to the Intelligence stack or is labelled as a reading at Level 4.

Framer's inputs: round9/OWNER_R9.md, PLAN sections 1.1, 2, 2B, 2C, 4.1 to 4.7 and 8.3, and the cold framer and pre-mortem cards. The framer did not read REPORT.md, earlier rounds, site pages or the ledger. Every claim below marked "from memory" is a hypothesis for the lanes, not a fact.

Anomaly checks run by the framer: 4 fetches (BIS total credit API, World Bank API). Results in section A6 and B6.

---

## Job A. Level 2, money creation chapter: the debt-by-sector table and Vietnam versus Malaysia

### A1. The input restated as questions

| # | Question | Type |
|---|---|---|
| A-Q1 | What does a table of household, corporate and government debt as a share of GDP actually measure, and how much of it is a record of money creation? | Mechanism |
| A-Q2 | Is the table right? Which source, which date, which definitions, and why does the post say Vietnam household debt is 18% when the image says 23%? | Belief audit (data) |
| A-Q3 | Vietnam households owe 18 to 23% of GDP and Malaysian households 70%, with similar appliance ownership. Who is actually wealthier? | Belief audit, with a mechanism inside it |
| A-Q4 | Why do some countries carry three to four times GDP in debt (Hong Kong, Japan, Singapore) without a crisis, while others break at far less? | Mechanism, with regimes |
| A-Q5 | Where does this belong in Level 2 so it demonstrates money creation without teaching a wrong lesson? | Editorial (answer spec drives it) |

### A2. Hidden hypotheses (each one is a claim to falsify)

1. The debt table shows money creation. Only partly. A bank loan creates a deposit, so bank credit to households and firms is a footprint of money created in the past. A bond bought by a pension fund, a loan from abroad, or a loan from a nonbank lender moves existing money and creates none. Government debt bought by the central bank or by banks creates money, bought by nonbanks it moves money (PLAN 2B, nonbank-seller rule). The table mixes all of these.
2. A stock tells you about a flow. The table is a stock (debt outstanding over one year's GDP). Money creation is a flow (the change). A country can have a high ratio and create little money this year, or a low ratio and create a lot.
3. Debt over GDP is a burden measure. GDP is income for the whole economy, not household income. Household disposable income is a different share of GDP in each country. Debt service (interest plus repayment over income) is the burden measure. Interest rates and loan terms differ.
4. Low household debt means wealthier households. Wealth is assets minus debts. A debt figure is half a balance sheet. Low debt can mean thrift or it can mean no access to credit.
5. Vietnam's household debt really is 18 to 23% of GDP. The figure may leave out household business loans (classified as corporate), informal credit (rotating savings groups, pawn shops, family loans) and consumer finance outside banks. From memory, to check: Vietnam's total bank credit is about 125 to 135% of GDP, and the household share of bank credit may be far larger than 23 out of 130 implies.
6. Malaysia's 70% is a sign of weakness. Malaysian households also hold large financial assets (EPF retirement savings, deposits, unit trusts such as ASB) and housing. From memory, to check: Bank Negara reports household financial assets of roughly twice household debt.
7. Similar appliance ownership means similar living standards. Appliances are cheap and saturate early. Housing quality, car ownership, health, education and retirement savings separate the two countries far more. The claim of "about the same" ownership is itself unsourced.
8. "Despite lower GDP per capita." Implies debt explains the gap or offsets it. GDP per capita is income, not wealth. The two can diverge.
9. The image is from the IIF and is current. The image is undated, carries a watermark from a repost account, and the IIF's data sits behind a subscription. The desk cannot assume the numbers are IIF, or which quarter.
10. The three sectors add up to "the debt of a country". They leave out financial sector debt, and they are gross figures. Singapore's 172% government debt is mostly issued to fund its pension system and reserves and is backed by assets. Japan's gross 199% is far larger than its net debt. Gross versus net flips the reading.
11. Debt is borrowed from someone else. In every row, each debt is someone's asset. Most of a country's debt is owed to its own residents. Foreign-owed debt behaves differently in a crisis.
12. Every row is comparable. Hong Kong and Singapore are financial centres. Firms booked there may be foreign-owned or mainland-owned (residence versus nationality). China's local government financing vehicles sit in corporate debt even though the state stands behind them.

### A3. Answer spec (what a complete expert answer must contain)

For A-Q1 (mechanism):
- The two-sided rule: every loan is a debt for one sector and an asset for another, and a bank loan creates a new deposit at the same moment. Show this with a T-account for a Malaysian mortgage and a Vietnamese working-capital loan.
- A channel table per country: which part of each sector's debt is bank credit (creates money), bonds held by nonbanks (moves money), foreign borrowing (enters as foreign currency, may or may not reach deposits), central bank holdings of government debt (creates reserves, and deposits when the seller is a nonbank). With sign, size and source.
- The stock and flow distinction, with one country's change in household credit next to its change in broad money for the same years.
- Destruction channels: repayment, write-offs, and denominator effects (debt over GDP falls when GDP grows or inflation is high, with no repayment at all).
- Broad money over GDP next to private credit over GDP for at least Malaysia and Vietnam, so the reader sees the loan and deposit link in data, and where it breaks.

For A-Q2 (data audit):
- Source and date found, or "not found" stated. Each row checked against BIS total credit (for countries it covers) and the IMF Global Debt Database. Definitions named: households include nonprofits (BIS), government is general government at nominal or market value, corporate is non-financial firms.
- A reason for the 18 versus 23 gap (different source, year, or definition) or "unexplained".

For A-Q3 (who is wealthier):
- Household balance sheet for each country: financial assets (deposits, pension funds, unit trusts, insurance, gold, cash, foreign currency), housing and land, and debts (bank, nonbank, informal). Net worth per adult and median wealth where published.
- Burden measures: debt to household disposable income and debt service ratio.
- Income: GDP per capita, at market rates and at purchasing power.
- Living standards beyond appliances: housing, cars, internet, health spending, pension coverage.
- What each debt bought: houses that still hold value, cars that depreciate, consumer loans.
- A verdict with a confidence level, and the rule it teaches: one side of a balance sheet cannot answer a wealth question. Overcorrection guard: say what the post gets right (Malaysian households are more indebted relative to income and rates matter for them).

For A-Q4 (why high debt is not always a crisis):
- Who holds the debt (residents or foreigners), what currency it is in, at what rate, for how long, and what assets stand behind it. At least one crisis precedent each way (from memory, to check: Thailand 1997 foreign-currency corporate debt, Japan's large domestic government debt without default).

For A-Q5 (placement):
- The section must bridge to the existing Level 2 money creation chapter and to Level 1 without claiming Level 1 taught something it did not. The Librarian runs xref before any bridge is written.

### A4. Blind-spot list (dimensions the answer could flip on)

- Gross versus net (Singapore and Japan government debt, households with large pension assets).
- Stock versus flow (debt outstanding versus money created this year).
- Debt over GDP versus debt over household income versus debt service.
- Bank versus nonbank lenders, and formal versus informal credit.
- Domestic versus foreign holders, local versus foreign currency.
- Household versus household business (sole proprietors) classification.
- Market value versus nominal value for bonds.
- Market exchange rates versus purchasing power for income and wealth.
- Mean versus median wealth (a few rich households lift the average).
- Date: an undated image against data that moves several points a year.
- Residence versus nationality (Hong Kong, Singapore, China).
- Normal years versus a credit crisis (Vietnam's 2022 corporate bond stress, from memory, to check).

### A5. Anomaly checks to run with data

1. Malaysia row against BIS. Done by the framer (see A6).
2. Vietnam is not in the BIS total credit dataset. Find which source gave 23% and which gave 18%. Check the IMF Global Debt Database and the State Bank of Vietnam credit by sector.
3. The size anomaly: World Bank domestic credit to the private sector for Vietnam (124.96% of GDP in 2022) is higher than Malaysia's (113 to 118% in 2022 to 2025). On the bank-credit measure Vietnam is not a low-debt country. Its private debt is concentrated in firms and in banks, while Malaysia's household share is higher and it also has a deep bond market. Test: does Vietnam's household share of bank credit match 23 out of about 130?
4. Broad money over GDP for both countries against private credit over GDP. If loans make deposits, these should move together. Find the years where they split and why.
5. Household financial assets over household debt for Malaysia (Bank Negara Financial Stability Review) and the best available estimate for Vietnam (deposits, gold, foreign currency, informal savings).
6. Arithmetic check on the image: the three parts add to the printed totals within 1 point in every row (framer checked). So the image is internally consistent. Rounding only.
7. Singapore's government row (172%) against its net position: debt issued to the pension fund versus assets held by reserve managers.

### A6. Anomaly result (framer's 4 fetches)

| Series | Source | Value | Image |
|---|---|---|---|
| Malaysia household credit, % of GDP | BIS total credit, Q.MY.H.A.M.770.A | 69.8 (2025 Q4), 69.5 (2026 Q1) | 70 |
| Malaysia non-financial corporate credit, % of GDP | BIS, Q.MY.N.A.M.770.A | 88.6 (2025 Q4), 89.4 (2026 Q1) | 88 |
| Singapore household | BIS | 44.0 (2025 Q4) | 45 |
| Hong Kong household | BIS | 87.8 (2025 Q4) | 86 |
| Thailand household | BIS | 87.5 (2025 Q4) | 88 |
| Vietnam (any sector) | BIS | Not in the dataset (request returned an error) | 23, 107, 32 |
| Domestic credit to private sector, % of GDP | World Bank FS.AST.PRVT.GD.ZS | Vietnam 124.96 (2022, latest), Malaysia 117.94 (2025) | Vietnam 130 private, Malaysia 158 private |

Reading: the image tracks BIS figures for about 2025, so it is recent and the Malaysia row is sound. Vietnam's row must come from somewhere else, which is exactly the row the owner's question rests on. Vietnam's private credit is large and bank-heavy. The puzzle is not "Vietnam has little debt" but "why is so little of it labelled household". Labels must be checked against source pages by the Data lane before use.

### A7. Pre-mortem: three likeliest ways the Job A headline will be wrong

Likely headline: "Vietnam's households owe far less than Malaysia's, but Malaysia's households are richer, because a debt number is only half a balance sheet."

| # | How it goes wrong | Desk habit (PLAN 4.6) | Check that catches it | Stage |
|---|---|---|---|---|
| 1 | Vietnam's 18 to 23% is undercounted. Household business loans sit in corporate credit and informal and nonbank credit is missing, so the comparison of debts is itself wrong, not only the wealth reading | One definition picked from several (Round 6) | Pull State Bank of Vietnam credit by purpose and borrower type, IMF Article IV estimates of household debt, and survey data (household living standards survey) on informal borrowing. Report a range, not one number | Data lane, then Ledger lane |
| 2 | "Debt shows money creation" is true for bank loans but hides that bonds, foreign loans and nonbank credit move money without creating it, and that the ratio is a stock while creation is a flow | True headline at one level hiding a channel at another (Case 2, Round 8) | Channel table per country: bank versus nonbank versus foreign holders, with broad money against private credit over time. Completeness auditor marks every channel present | Ledger lane, Judge and completeness auditor |
| 3 | Numbers from the image, the post or memory go onto the page unchecked: an undated image, a post that disagrees with its own image, Malaysian asset figures and Vietnamese gold holdings recalled from memory | Figure from memory (Round 5) | Re-fetch every number from BIS, IMF, Bank Negara, EPF and national statistics, with date and series label. Mismatch rate reported | Data lane, then Verifier |

Further risk worth one line: a bridge to Level 1 or the existing Level 2 chapter written from memory (Round 6). Check: Librarian runs xref on "loans create deposits", "money creation", "debt" before the Editor writes a bridge.

Unseen mode: off. This is a documented mechanism and data question.

### A8. Data series and sources needed

| Series | Source | Notes |
|---|---|---|
| Credit to households, non-financial firms, government, % of GDP, quarterly | BIS total credit statistics (stats.bis.org API, dataset WS_TC) | Works from this environment. Covers Malaysia, Thailand, Singapore, Hong Kong, Korea and others, not Vietnam. Government series may use nominal valuation (code N), not market (M) |
| Household, corporate, government debt, % of GDP, annual, wide coverage | IMF Global Debt Database (imf.org datamapper, series HH_ALL, NFC_ALL, GG_DEBT and similar) | Check whether Vietnam household is covered and how it is defined |
| Debt service ratios | BIS debt service ratio statistics | Malaysia covered, Vietnam likely not |
| Domestic credit to private sector, broad money over GDP | World Bank WDI API (FS.AST.PRVT.GD.ZS, FM.LBL.BMNY.GD.ZS) | Works. Vietnam series ends 2022 in the framer's pull |
| Vietnam credit by sector and purpose, money supply | State Bank of Vietnam statistics, General Statistics Office | Household business loans, consumer lending, real estate lending |
| Vietnam household survey | Vietnam Household Living Standards Survey (GSO) | Appliances, informal borrowing, assets |
| Vietnam informal and gold holdings | World Gold Council (consumer demand, estimates of household stocks), IMF Article IV for Vietnam | Gold stock estimates are T4 |
| Malaysia household debt, assets, debt to income | Bank Negara Malaysia Financial Stability Review (household sector chapter), monthly statistical bulletin | Financial assets to debt ratio, liquid assets |
| Malaysia retirement savings | EPF annual report (total assets, members, median balance by age) | Locked savings, not liquid |
| Malaysia household income and appliances | DOSM Household Income and Basic Amenities survey | Basic amenities table covers appliances |
| Wealth per adult, median and mean | UBS Global Wealth Report databook | T4 model estimates, check coverage of Vietnam |
| GDP per capita, market rates and PPP | IMF World Economic Outlook database | |
| Original image and post | fxtwitter API for the post and top replies | T5. Find the IIF release or the repost's original |
| IIF Global Debt Monitor | iif.com press release pages (public summaries) | The full data is paid |

### A9. Lanes and search budgets (Job A)

| Lane | Job | Budget |
|---|---|---|
| A-Data (standing) | Rebuild the table from BIS and IMF, date it, explain 18 versus 23, broad money against credit, Malaysia and Vietnam household assets | 15 fetches |
| A-Ledger (standing) | T-accounts, channel table per country (bank, nonbank, foreign, central bank), stock and flow, gross and net | 10 searches |
| A-Lane 1: Vietnam versus Malaysia household balance sheets | Assets, debts including informal, debt service, living standards beyond appliances, verdict with confidence | 25 searches |
| A-Sweep (standing, light) | The post's replies, two or three popular takes on "household debt equals poverty or wealth", the school views (credit cycle view, hard money view) | 8 searches |
| Librarian | Prior beliefs on money creation, bridges to Level 1 and the existing Level 2 chapter | xref only |
| Red team voices | A Bank Negara household sector analyst, a Vietnamese bank credit officer, an accountant (both sides of the balance sheet), an ordinary reader who will read "low debt equals rich" | 10 searches each |

---

## Job B. New Level 4 chapter: how money moves, from an investor's standpoint

Expands three Level 1 chapters as the owner names them: musical chairs and interest, seasons of money, and when markets fall (market cap as a price tag, buckets, collateral, rotation). Reader: an 18-year-old. Level 4 may set out debates with each reading labelled.

### B1. The input restated as questions

| # | Question | Type |
|---|---|---|
| B-Q1 | When a listed share falls, what does "the market lost $X" measure, where did the money go, and why does a vintage watch that falls in price make no such headline? | Mechanism, with a belief audit |
| B-Q2 | Who and what actually moves money into and out of markets: the central bank, the Treasury, banks, asset managers and index funds, company buybacks, market makers, foreign and sovereign funds, government policy, and industry blocs (finance, technology, defence)? How big is each, and in which direction? | Mechanism (actor and channel map) |
| B-Q3 | What are the seasons of money (credit and rate cycles, risk on and risk off), how do investors rotate between buckets, and can the seasons be timed? | Mechanism and forecast |
| B-Q4 | A recent NVIDIA fall that the owner links to a public cheating story. What happened, and was the story the cause? | Event (cause), details unknown to the desk |
| B-Q5 | What should a young investor take from Cover's lecture: growth rate and the geometric mean, rebalancing, universal portfolios, side information, margin, Kelly? | Mechanism, with a belief audit on how far it applies |
| B-Q6 | How does the chapter build on Level 1 without repeating it, and stay at Level 4 depth while an 18-year-old can absorb it? | Editorial |

### B2. Hidden hypotheses

1. A market fall "loses" money. A share price fall changes the value of every share at the last traded price, while only a small fraction of shares changed hands. The seller's cash went to a buyer. No cash vanished. What fell is a valuation (paper wealth). The desk must not overcorrect into "nothing was lost": real effects follow (see B3).
2. Market cap is money in the market. Market cap is a price tag (last price times all shares), not a pile of cash. The cash that changed hands that day is a small part of it.
3. Money "flows out of stocks into bonds" or "into gold". For every buyer there is a seller, so trading moves ownership and price, not net cash out of a market. Net cash enters or leaves a market only through new shares issued, buybacks, dividends, IPOs, takeovers paid in cash, and new credit (margin loans). This is the Round 8 lesson in PLAN 4.6: true at trade level, hides the creation channel.
4. Only listed prices matter. An unlisted asset (a watch, a house, a private company) also gains and loses value. The difference is that a listed price is marked every second, is in indexes, backs loans and is reported. Whether it "matters" depends on who uses the price: lenders, index funds, pension accounts, tax and pay.
5. The NVIDIA fall was caused by the cheating story. The desk does not know the story, the date or the size of the fall. Timing is not cause. Rival causes: rate moves, earnings guidance, export rules, sector-wide selling, positioning and options hedging.
6. Big actors move money on purpose and together. A bloc such as "finance", "technology" or "defence" is a label for firms with overlapping interests, not an actor (PLAN 4.7, actor rule). Most "they are aligned" claims are coordination level 0 or 1. Each actor in B-Q2 has a mandate and a balance sheet. Some move money as a side effect (index funds follow inflows by rule).
7. The central bank and the Treasury pump money into stock markets. They act on reserves, deposits, rates and the supply of bonds (PLAN 2B, two floors). The path to share prices runs through rates, deposits held by nonbanks, and the portfolio rebalancing of investors who sold bonds. Size and sign by regime.
8. Interest is musical chairs. The owner's Level 1 frame. The Level 4 version must say where it holds (debt grows faster than income when the real rate exceeds growth) and where it fails (interest paid is income to savers and gets spent, new loans create new money). Flag for the Librarian: what Level 1 chapter 7 actually says.
9. Seasons repeat on a schedule. Cycles exist but their length varies widely. Timing is a forecast and must be scored, not taught as a rule.
10. Rebalancing always wins. Cover's 6% example needs an asset with no net drift and large swings, and no costs or taxes. In a strongly trending market, buy and hold can beat a fixed mix. The 75 times result is chosen with hindsight. The universal portfolio bound (within about the square root of n of the best fixed mix) is a ratio that can still be large in money terms.
11. The average return is what you get. For a compounding pot the geometric mean governs. A stock that doubles or halves with equal odds has an average gain of 25% a period and a typical outcome of no growth at all. This is mathematics, not opinion, and is the strongest teaching point.
12. Side information is worth a lot. Cover's bound says side information raises the growth rate by at most its mutual information with the outcome, which for most tips is close to zero. It also implies that paying for noise has a cost.
13. Margin is extra growth. Leverage amplifies losses too. With volatile assets, too much leverage lowers the growth rate and can wipe out the pot (the Kelly ceiling).
14. All cash in 2007 to 2008 means cash is the safe choice. It was best in hindsight in one window. Over longer windows inflation erodes cash.

### B3. Answer spec

For B-Q1 (market cap and the watch):
- A worked example with numbers: a firm with 1,000 shares, one trade of 10 shares at a lower price revalues all 1,000. Who gained cash, who lost paper value, whose balance sheet changed.
- Three meters (the PLAN 4.6 Round 8 lesson): dollars (cash that moved), ownership and risk (who holds what), market value (the price tag). A market fall moves the third meter a lot and the first very little.
- The real effects of a price fall, each with a size where possible: collateral (margin calls, loans against shares, founders' pledged stock), wealth effect on spending, cost of raising money for the firm, index fund and pension accounting, employee pay in shares, tax on capital gains, bank capital where banks hold the asset.
- The watch: marked rarely, no index, rarely used as collateral, no forced sellers, no headline. Its price can still fall. From memory, to check: secondary prices of popular luxury watches fell sharply from their 2022 peak (WatchCharts or Subdial index). So the difference is visibility and linkage, not whether value changes. What would make the watch "matter": listing it (fractional watch platforms exist, to check), lending against it, or an index product.
- Overcorrection guard: "paper loss" is still a loss of what the holder could sell for today.

For B-Q2 (who moves money):
- An actor table, each row with: what it can do, which floor it acts on (reserves upstairs, deposits downstairs, or prices only), sign, size in a normal year and in a stress year, and source. Rows: central bank (rates, asset purchases and sales, lending facilities), Treasury (issuance mix of bills and bonds, the Treasury account at the Fed, buybacks of its own debt), banks (loans create deposits, margin lending), asset managers and index funds (follow inflows, hold votes but by mandate, the Test 8 caution on ownership versus control), company buybacks and issuance (net equity supply), market makers (provide prices and hold inventory briefly, options hedging can amplify moves), foreign and sovereign funds (cross-border flows, reserve managers), government policy (tax, subsidies, export rules, procurement), industry blocs (described through named firms and their spending, never as one actor).
- The rule that every trade has two sides, and the list of channels where net money truly enters or leaves the share market.
- Size against the pool (the Scale lateral move): each flow over the total market value.
- One stress regime (2008, 2020 or 2022) showing which actors dominated.

For B-Q3 (seasons and rotation):
- The cycle drivers: rates and credit growth, earnings, inflation, risk appetite. A table of regimes with which buckets did well (shares, bonds, cash, gold, property), using data across at least four regimes including two crises.
- Rotation explained as price changes with a buyer for every seller, not as cash leaving.
- The forecast caveat: seasons are visible in hindsight. Evidence on how well timing works.
- Bridge to Level 1 chapters 8 and 17 checked by the Librarian.

For B-Q4 (NVIDIA):
- The event established from documents: date, price move, volume, the news item and its timestamp, the index and peer moves the same day. If the cheating story cannot be found in a T0 to T3 source, the chapter leaves it out or uses it only as a labelled example of the timing trap.
- Rival readings table (official story, the cheating story, rates or macro, sector-wide selling, options and positioning) with evidence marked consistent or inconsistent.
- The lesson it teaches: a headline gives one cause for a move that had many.

For B-Q5 (Cover):
- The coin example with arithmetic: half cash, half stock, rebalanced. Each period wealth multiplies by 1.5 or 0.75. Geometric mean is the square root of 1.125, about 1.061, so about 6% a period. The stock alone: square root of 2 times 0.5 equals 1, so no growth, while its average gain is 25%.
- When rebalancing helps (volatile assets, not perfectly correlated, little drift difference) and when it hurts (one asset trends up strongly, costs, taxes).
- The hindsight warning on the 75 times example, and what the universal portfolio bound does and does not promise.
- Side information and mutual information in one plain sentence.
- Margin and the Kelly ceiling, with a simple example of overbetting.
- A link to a real long-run backtest of a fixed mix (for example shares and bonds) against buy and hold, across a crisis.
- Source card for Cover: an information theorist, published research, also tied to the history of growth-optimal betting. The lecture is T4.

For B-Q6 (narration):
- One running story (a reader with a small pot) carried through every section. Level 1 frames named and extended, not retold. Lint gate and cold readers as usual.

### B4. Blind-spot list

- Price versus cash (market value meter versus dollars meter).
- Gross trading versus net flows into a market.
- Listed versus unlisted (visibility, collateral, index linkage).
- Paper loss versus realised loss.
- Arithmetic mean versus geometric mean, and average versus typical outcome.
- Hindsight versus real time (Cover's 75 times, "all cash" in 2008).
- Before costs and taxes versus after.
- Nominal versus real returns.
- Normal years versus crisis years (2008, 2020, 2022).
- Upstairs (reserves) versus downstairs (deposits) for central bank and Treasury actions.
- Legal ownership versus control (index funds).
- Bloc as a label versus named firms with verbs (actor rule).
- US versus other markets (the reader may be in Southeast Asia, with a different set of actors such as state pension funds).
- Correlation versus cause (the NVIDIA story).

### B5. Anomaly checks to run with data

1. On the NVIDIA fall day: dollar value traded against the drop in market value. Expect the market value change to be many times the cash traded. This makes the "lost $X" point in one number.
2. Same day: NVIDIA against the semiconductor index and the broad index. If peers fell as much, the company-specific story explains less.
3. US net equity issuance (issuance minus buybacks) by year, against total market value. Test the claim that "money flows into stocks": in many recent years companies retired more shares than they issued (from memory, to check in the Fed Financial Accounts, Z.1 corporate equities table).
4. Luxury watch secondary price index from its 2022 peak against the Nasdaq over the same window. Did the watch market fall more, with no headline?
5. Cover's coin example simulated (a few lines of code), and a historical fixed mix against buy and hold over 2000 to 2025 including 2008 and 2022.
6. Fed balance sheet changes against share prices across 2020 to 2021 and 2022 to 2025, to bound how much the central bank story explains.

### B6. Anomaly result

No fetch spent on Job B (framer budget used on Job A). Check 1 and check 3 are the headline anomalies for the Data lane. Expected (not yet checked): market value change many times larger than cash traded, and net equity issuance negative in many recent US years.

### B7. Pre-mortem: three likeliest ways the Job B headline will be wrong

Likely headline: "When the market 'loses' $X, no cash disappears: a price tag on every share changed, and the money only changed hands."

| # | How it goes wrong | Desk habit (PLAN 4.6) | Check that catches it | Stage |
|---|---|---|---|---|
| 1 | Overcorrection. "Nothing was lost" ignores collateral calls, the wealth effect, cost of capital, pension and index effects and bank capital. And "money only changed hands" hides the channels where money is created or retired (margin credit, buybacks funded by bonds, central bank purchases) | True headline at one level hiding a channel at another (Case 2, Round 8) | Ledger lane builds the three meters and the channel table with net entry and exit channels. Overcorrection guard. Red team voice of a bank risk officer and a market maker | Ledger lane, red team, Judge |
| 2 | The NVIDIA story and its link to the fall go in from memory or from the owner's framing, and timing is taught as cause | Figure from memory (Round 5), anchoring on the asker's frame (Case 1) | Data lane pulls daily price, volume, index and peers, and the news timestamp. Rival readings table. If the story is not found at T0 to T3 it stays out | Data lane, Verifier, Judge |
| 3 | Cover's results taught as a rule ("rebalance and earn 6%", "a mix beat both stocks 75 times") with no hindsight, cost, tax or trend caveat, and one definition of "growth" (geometric) used without showing what it costs in variance and drawdowns | One definition picked from several (Round 6) | Data lane simulates the coin case and a real backtest across regimes. Red team adds a quant and an ordinary reader who will copy the strategy. Completeness auditor checks the caveats | Data lane, red team, completeness auditor |

Further risks: the actor table treats "finance", "technology" or "defence" as an actor with a will (Judge applies the actor rule and coordination levels). A bridge to Level 1 chapters 7, 8 and 17 written from memory (Librarian runs xref first). Seasons taught as a calendar (word audit on "always", "every cycle").

Unseen mode: off for the Rulebook chapter. One hole is possible for the Intelligence stack only: whether the cheating story moved the price (Timing and Silence moves). Leave it out of this round unless the owner asks.

### B8. Data series and sources needed

| Series | Source | Notes |
|---|---|---|
| NVIDIA daily price, volume, shares outstanding | Exchange data or a public price API, company filings (10-Q for share count) | Shares outstanding from the filing, not memory |
| Semiconductor and broad indexes, same days | Index provider pages or price API | |
| News item and timestamp for the cheating story | Primary report and company statement | T2 to T4, find the first report |
| US corporate equity issuance and buybacks | Fed Financial Accounts Z.1 (DBnomics mirror), S&P buyback reports (T4) | Net issuance by year |
| Market value of US shares | Z.1 corporate equities, or exchange totals | |
| Margin debt | FINRA margin statistics | Collateral channel |
| Fund flows, index fund share | ICI fact book and weekly flows | |
| Fed balance sheet, Treasury account, reverse repo | H.4.1 via DBnomics | Two floors |
| Treasury issuance mix and buybacks | Treasury fiscaldata API, quarterly refunding statements | |
| Foreign holdings of US shares and bonds | Treasury TIC data | |
| Sovereign fund holdings | Fund annual reports, 13F filings | |
| Watch prices | WatchCharts or Subdial market indexes (T4) | Check method before use |
| Long-run asset returns by regime | Damodaran annual returns data (T4), Fed and Treasury yields | Shares, bonds, bills, gold |
| Cover's results | Cover 1991 "Universal Portfolios" (Mathematical Finance), Cover and Thomas "Elements of Information Theory" chapter on gambling and portfolios, Kelly 1956 | T4, check the 75 times and 4 and 8 times figures against the paper |

### B9. Lanes and search budgets (Job B)

| Lane | Job | Budget |
|---|---|---|
| B-Data (standing) | NVIDIA day numbers, net equity issuance, watch index, regime returns table, Cover simulation and backtest | 15 fetches plus code |
| B-Ledger (standing) | Three meters for a share trade, channel table of net entry and exit, actor table by floor | 10 searches |
| B-Lane 1: market cap and the watch | Real effects of a price fall with sizes, unlisted assets, collateral | 15 searches |
| B-Lane 2: who moves money | The actor table with mandates, sizes, normal and stress years, cap table caution for index funds, blocs as named firms | 25 searches |
| B-Lane 3: seasons and rotation | Cycle drivers, regime table, evidence on timing | 15 searches |
| B-Lane 4: Cover and growth | Check the lecture's figures against the papers, caveats, plain explanations | 10 searches |
| B-Sweep (standing) | Most-viewed explainers of "the market lost $X", "money flows out of stocks", rebalancing and Kelly videos, the NVIDIA story's spread | 10 searches |
| Librarian | What Level 1 chapters 7, 8 and 17 actually say, Round 8 Level 4 chapter for overlap | xref only |
| Red team voices | A market maker, an index fund manager, a bank risk officer (collateral), a quant (geometric mean and Kelly), a watch dealer, an economic historian (cycles), an 18-year-old who will copy the strategy | 10 searches each |

---

## Shared notes for the orchestrator

- Both jobs feed the Fundamentals stack. Rulebook text teaches documented mechanisms. Any graded inference is labelled or moved to Intelligence.
- Rulebook edits wait for the owner's approval while PLAN 5.7 is pending.
- Every figure in this frame marked "from memory" must be re-fetched before it reaches a page.
- Total suggested budget: Job A about 60 searches and 15 fetches, Job B about 110 searches and 15 fetches, plus red team.
