# Round 6 frame (Move 1, cold framer)

Date: 2026-10-24. Tier: Standard. Topic: Rulebook Level 2, chapters L2.1 (bonds), L2.2 (who creates money) and the new L2.3 (the world's wealth and debt).
Framed cold: REPORT.md, earlier round folders, site JSON, site/index.html and claims.json were not read. Inputs used: the owner's raw text, the Level 1 chapter list, PLAN.md sections 2, 2B, 4, 4.5, 4.6 and 8.3, ROLES.md.

## Pass checklist
- [x] Owner input restated as questions, each with a type
- [x] Hidden hypotheses listed (every number, every question mark, every "really")
- [x] Answer spec written for each question
- [x] Blind-spot list written, including every definition the answer can flip on
- [x] Anomaly check on data done (5 fetches used, limit 5)
- [x] Curiosity questions (8 to 12 per chapter), each tied to a named Level 1 chapter
- [x] Radiant map per chapter (a centre plus 6 to 8 rays)
- [x] Lanes proposed, standing lanes named
- [x] Style check: no em-dashes, no en-dashes, no semicolons, "to" for ranges

---

## 1. The questions and their types

| Id | Question | Type |
|---|---|---|
| Q1 | What must a Level 2 bonds chapter ("Bonds: the backbone of today's money") contain that a Level 1 foundations chapter does not? | Mechanism, with a belief audit inside it (is "backbone" true, and by what measure?) |
| Q2 | What must a Level 2 money creation chapter ("Who really creates money: banks, the Fed and the Treasury") contain beyond Level 1? | Mechanism (this is Case 2 territory, the chapter must pass the Case 2 key and go further) |
| Q3 | If world wealth is "300T+" and world debt "500T+", how did we get here, how do the G7 or G10 differ in structure, and how can a reader hold these numbers in their head? | Belief audit (the two numbers), mechanism (how wealth and debt relate), history (brief timeline), comparison (country structure) |
| Q0 | Meta: what makes a Level 2 chapter different from Level 1 at all? | Design question (feeds all three answer specs) |

Q0 answer the lanes should use: Level 1 tells the story and the headline (depth ladder Level 1 and Level 2 in PLAN 4.5 Move 7). Level 2 must reach depth ladder Level 3: the balance sheets, the numbers across regimes with a chart, and the edge cases. The owner's word "radiant" means each chapter grows out from one centre idea into many connected ideas, and "curiosity questions" means the chapter is driven by questions the reader cannot answer from Level 1 alone, but can answer by combining Level 1 chapters.

## 2. Hidden hypotheses (question-mark rule)

| Id | Hidden hypothesis in the owner's text | Treat as | Anomaly check result |
|---|---|---|---|
| H1 | "World wealth is 300T+" | Claim to test | Too low on every mainstream measure found. See section 5 |
| H2 | "World debt is 500T+" | Claim to test | Too high for debt on the main debt series (IIF about $348T at end 2025, press reports of about $365T by mid 2026). Close to total global financial assets (about $500T in 2024, FSB), which are not the same thing |
| H3 | Debt (500) is bigger than wealth (300) | Implied by the two numbers | The ordering is likely flipped. On the sources found, wealth (household net wealth or national net worth) is larger than gross debt. Even so, "debt bigger than wealth" is not impossible in principle on some definitions, so the chapter must explain why the two cannot simply be subtracted |
| H4 | "Maybe the G7? or G10?" is the right comparison group | Question mark, so test it | Neither group contains China, which holds a large share of world wealth (UBS 2026 press: Greater China 18.5%) and leads emerging market debt growth (IIF). A G7 or G10 only frame would miss the biggest change since 2008 |
| H5 | "Different in structure" | Claim that structure differs more than size | Plausible and testable: who owes (government, households, firms, financial sector), who holds (domestic or foreign, the central bank), which currency, and the net foreign position all differ sharply (Japan versus US is the obvious pair) |
| H6 | "Contribute these numbers" means each country adds a share that sums to the world total | Implicit model of addition | Wealth adds up across countries. Gross debt also adds up, but a large part of world debt is owed by one sector to another inside the same system, so "who contributes" must be shown gross and net |
| H7 | "Bonds: the backbone of today's money" | Belief audit (title claim) | Not checked with data this move. Needs a measure: share of collateral, share of reserve assets, share of central bank assets, share of bank liquid assets |
| H8 | "Who REALLY creates money" | The word "really" signals the owner suspects the usual answer is incomplete | Case 2 says the owner already knows: banks in normal years, the Fed plus the Treasury in crisis years. Assume this is a test of whether Level 2 goes further than Case 2 (other countries, offshore dollars, nonbank money-like claims) |
| H9 | Chapter 7 and 8 in Level 1 are the right ones to move up | Stated as a decision, not a question | Not a research question. Noted only so lanes check that Level 1 still has enough of a bridge (a short paragraph each) once those chapters leave |
| H10 | Readers "absorb" big numbers better with a timeline and a country breakdown | Pedagogy claim | Plausible. The answer spec adds scale tools (per person, per dollar of GDP, a 100 person village) |

## 3. Answer specs

### Q1. L2.1 Bonds: the backbone of today's money
An expert Level 2 bonds chapter must contain:
1. **The bond as a promise with a price.** Cash flows, coupon, yield, the price and yield seesaw, duration in plain words ("a 10 year bond loses about 8% to 9% of its price if yields rise one point" is a size claim, so it must be computed, not quoted).
2. **Who issues and how much.** Governments, companies, mortgage pools, cities. The world bond market size from a named source (ICMA or SIFMA), split by issuer and by country. The US share.
3. **Who holds, by sector.** Central banks, foreign official holders, banks, pension funds and insurers, money market funds, households, hedge funds. Domestic versus foreign. One chart of US Treasury holders over time (Z.1 and TIC).
4. **How a bond is born.** Auctions, primary dealers, bills versus coupons, the Treasury's refunding choices. Link to L2.2 (an auction bought by a nonbank drains deposits).
5. **Why bonds are money-like (the backbone test).** Collateral in repo, haircuts, high quality liquid assets for banks, reserve assets for central banks, backing for money market funds and stablecoins. Put a number on each so "backbone" is a measured claim, not a slogan.
6. **The yield curve as a weather report.** Short rates set by the central bank, long rates by the market, term premium, inversion, real versus nominal yields, inflation-linked bonds.
7. **Regimes and accidents.** At least: 1979 to 1982 (yields near 15%), 1994 (bond massacre), 2008, March 2020 (dash for cash, even Treasuries froze), 2022 (UK pension crisis), 2023 (Silicon Valley Bank, a bond loss that became a bank run), 2026 (MOVE index spike after the Fed hike). Japan's yield curve control as the extreme case of a central bank owning the market.
8. **Balance sheets.** A repo walked through the T-accounts of a hedge fund, a dealer and a money fund. A bank holding long bonds when rates rise.
9. **Smaller currency view.** How Malaysia's government bonds work, who holds them, and why foreign holders matter (link to the Malaysia chapter).
10. **Overcorrection guard.** "Bonds are safe" and "bonds are a bubble" are both incomplete. Say when each is right.

### Q2. L2.2 Who really creates money: banks, the Fed and the Treasury
Minimum: pass the Case 2 key (PLAN 4.6): every create and destroy channel with signs and sizes, both floors, the nonbank seller rule, deficit netting, the 1971 to today split by regime. Beyond that, a Level 2 chapter must add:
1. **The channel table first,** with latest year and a stress year (2020 or 2008), sourced from H.6, H.8, H.4.1 and Z.1.
2. **What limits each printer.** Banks: capital rules, liquidity rules, borrower demand, profit (reserve requirements have been zero in the US since March 2020, so the old multiplier story fails). The Fed: mandate, law on what it may buy, interest on reserves. The Treasury: the debt limit, the bond market, auction demand.
3. **The upstairs plumbing.** The Treasury General Account and the reverse repo facility as the two "sponges" that soak up or release reserves. Why QT plus a falling reverse repo balance left reserves steadier than expected.
4. **Destruction channels in plain words.** Loan repayment, taxes, nonbank purchases at auction, QT, a bank buying back its own shares or bonds.
5. **Money-like claims outside banks.** Money market funds, repo, stablecoins, offshore eurodollars. Which count as money in which definition (M1, M2, broad liquidity).
6. **Other countries.** At least the ECB, the Bank of Japan and Bank Negara Malaysia. Is the two floor picture the same, and where does it differ (for example a central bank that buys foreign currency to hold its exchange rate creates local money that way)?
7. **The critical schools.** MMT or post-Keynesian, Austrian or hard money, monetarist. Where each agrees with the map and where it objects.
8. **Regime label on every sentence that says "most".**

### Q3. L2.3 The world's wealth and debt
An expert answer must contain:
1. **The definitions box before any number.** See section 4. Without it the "300 versus 500" comparison is meaningless.
2. **The current numbers, each with a source, date and scope.** Household net wealth (UBS Global Wealth Report 2026), national net worth (McKinsey Global Balance Sheet 2026), gross debt by sector (IIF Global Debt Monitor), nonfinancial debt (IMF Global Debt Database), total financial assets (FSB). One table, one row per measure.
3. **Why wealth and debt cannot just be subtracted.** Every debt is someone's asset. At world level, financial claims net to roughly zero, so world net worth is close to the value of real things (land, buildings, machines) plus gold and intangibles. Debt matters through who owes it, at what rate, in what currency, and how fast it must be refinanced (link to "The musical chairs question").
4. **A brief timeline,** about 1971, 1980, 2000, 2008, 2020, 2025 and the latest point, showing world debt and world wealth in dollars and as a multiple of world GDP. The point to show: both rose faster than output, and much of the wealth rise is price (asset values and inflation) rather than new capital. McKinsey's 2026 press summary says only about 20% of the recent rise came from new capital. That is a T4 claim to verify.
5. **Country structure comparison.** For each country in the chosen group: wealth per adult (mean and median), debt by sector as % of GDP, government debt held by the central bank, share held by foreigners, currency of debt, net international investment position, and what wealth is made of (housing versus financial). Required pairs: US versus Japan (debtor versus creditor nation), Germany versus Italy and France (same currency, different structures), UK, Canada, plus China and Malaysia as outside comparators.
6. **"Who contributes" shown two ways.** Share of world wealth and share of world debt by country, side by side, so the reader sees that the biggest debtors are also the richest.
7. **Scale tools for the brain.** Per person on Earth, per adult, per dollar of world GDP, years of world output, a 100 person village, and a "stack of $100 bills" or "seconds in a trillion" style anchor, chosen so each is correct and checked by script.
8. **Regimes.** The 2021 to 2025 period where debt to GDP fell while debt in dollars rose (inflation did the work, IIF) as the key eye-opener. 2008 and 2020 as the debt jumps.
9. **What would change the picture.** Tripwires: a fall in house prices, a strong dollar (shrinks non-US numbers in dollar terms), a sovereign debt crisis, inflation.

## 4. Blind-spot list (definitions the answer can flip on)

| Dimension | Why it can flip the answer |
|---|---|
| Household net wealth versus total household assets | Assets before subtracting debt are much larger. UBS reports net wealth |
| Household wealth versus national net worth | National net worth (McKinsey) adds government and corporate net worth and real assets not owned by households. About $600T to $620T in 2025 on press summaries, versus household numbers that are lower |
| Wealth versus financial assets | Total global financial assets (FSB, about $500T in 2024) are claims, many of them on each other. They are not net wealth |
| Gross versus net debt | Gross counts every IOU. Net subtracts what a sector is owed. Governments, banks and countries can have large gross debt and small net debt (Japan) |
| Which sectors count as debt | IIF counts four sectors including the financial sector (about $76T of the $348T at end 2025). IMF Global Debt Database counts nonfinancial sectors only, so it is much smaller. Derivatives notional (hundreds of trillions) is not debt and must not be added |
| Debt instruments counted | Loans and bonds only, or also trade credit, pension promises and unfunded social security? Unfunded promises can be larger than all bonds |
| Market versus nominal value | Bonds at face value versus market price. After 2022 the market value of long bonds fell well below face |
| Exchange rates | All world totals are in dollars. A 10% dollar move changes non-US wealth and debt by about 10% in dollar terms with no real change. Use constant exchange rates as a check |
| Nominal versus real | Debt and wealth in today's dollars versus inflation adjusted, and versus GDP |
| Stock versus flow | Debt is a stock. Interest and deficits are flows. Readers confuse the two |
| Mean versus median wealth | Mean wealth per adult is pulled up by the very rich. Median shows the typical person |
| G7 versus G10 membership | G7: US, Japan, Germany, UK, France, Italy, Canada. G10 is in fact 11 countries: the G7 plus Belgium, Netherlands, Sweden and Switzerland. Neither includes China. G20 includes China, India, Saudi Arabia and others |
| Coverage | UBS covers 56 markets with more than 92% of wealth (press). FSB covers 29 jurisdictions with over 90% of GDP. Gaps are estimated |
| Report vintage | Each report revises earlier years. Always quote the year of the report and the year of the data |
| Domestic versus foreign holders | Decides whether debt is a family matter (Japan) or a claim from outside (many emerging markets) |
| Currency of debt | Debt in your own currency can be inflated away. Debt in dollars cannot (link to the Malaysia chapter) |

## 5. Anomaly check (5 fetches, all web searches)

| Series | Popular or owner story | What the sources say | Source and tier |
|---|---|---|---|
| World debt | "500T+" | IIF: $348T at end 2025 (government $106.7T, nonfinancial firms $100.6T, households $64.6T, financial sector $76.4T, which sums to $348.3T). About $353T at end of Q1 2026. Press reports of "more than $365T" in the September 2026 monitor. Debt to GDP about 308% to 310%, about 25 points below the early 2021 peak | IIF via Reuters, Kitco, WAM, Khaleej Times. T4 (IIF is a bank industry body), press-reported, primary not opened |
| World household wealth | "300T+" | UBS Global Wealth Report 2026 (30 June 2026): global wealth rose 10.8% in 2025 after 4.6% in 2024. Headline total not found in snippets. A back of envelope from press figures (millionaires hold $250.59T, said to be roughly half) implies roughly $500T. This is a derived estimate, not a quoted figure, so the Data lane must fetch the report | UBS press pages, T4, headline total UNVERIFIED |
| National net worth | (not in owner text) | McKinsey 2020: net worth $514T in 2020, up from $156T in 2000, real estate 68% of it. McKinsey 2026 (press summaries): net worth about $600T to $620T in 2025, household wealth about $570T, financial sector about $550T, whole balance sheet about $1.8 quadrillion (one headline wrongly says "1.8 trillion") | McKinsey pages and press, T4, 2026 figures UNVERIFIED |
| Total financial assets | (likely source of "500T") | FSB 2025 report: nonbank financial assets $256.8T in 2024, which is 51% of total global financial assets. That implies about $500T of total financial assets (computed, 256.8 / 0.51 = 503.5) | FSB press release 16 December 2025, T2 for the official body's own count |
| Nonfinancial debt (IMF) | (not in owner text) | Not fetched within budget. IMF Fiscal Monitor April 2025: global public debt above 95% of GDP in 2025 heading toward 100%. The IMF Global Debt Database total (public plus private nonfinancial) must be pulled by the Data lane | T2, partial |

**Anomaly found.** The owner's two numbers look swapped or mislabelled. On every mainstream measure found, world wealth is well above $300T (household net wealth probably about $450T to $550T, national net worth about $600T) and world debt is well below $500T (about $350T to $365T). The figure "500T" matches total global financial assets (FSB, about $500T in 2024) and the figure "300T" matches world debt around 2021 to 2023 (IIF crossed $300T in that window, to be confirmed). A reader who learns "debt is bigger than wealth" would learn the wrong lesson. This is the chapter's best eye-opener: the right picture is "wealth is bigger than debt, but most wealth is the price of houses and shares, and most debt is owed by us to ourselves".

**Second anomaly.** Debt to GDP fell for five years (2021 to 2025) while debt in dollars hit records each year. Inflation, not repayment, shrank the ratio (IIF). This links directly to Level 1 "The musical chairs question" and "The seasons of money".

**Third anomaly to test.** McKinsey's claim that only about 20% of the recent wealth rise came from new capital, the rest from prices. If true, "world wealth" is partly a valuation of the same houses at higher prices, which links to "The titled world: why abundance runs on credit".

Owner may already know all this (question-mark rule). The chapter must present the correction respectfully: "the two famous numbers are real, they just measure different things".

## 6. Curiosity questions

Numbers inside these questions (Japan's central bank share of its bonds, "two thirds of net worth is real estate", "nine times") are framing hooks taken from memory, from Case 2 or from press summaries. The Data lane must confirm each before it is printed.

### L2.1 Bonds (each built on a named Level 1 chapter)
1. If a bond is just an IOU, why do traders call it "risk free" when its price can fall 20% in a year? (What money really is)
2. Under the gold standard a promise was backed by metal. What backs a Treasury bond today, and is that better or worse? (Commodity money and the gold standard)
3. Why do foreign central banks hold US bonds rather than a pile of dollar notes? (How the world gets its dollars)
4. Oil exporters earned dollars after 1971. Where did they park them, and what did that do to US interest rates? (1971, oil and the petrodollar)
5. When the Fed buys a bond, who ends up with new money, and who just swaps one asset for another? (How money is born today)
6. If a government never repays its debt but only rolls it, is a bond really a loan? (The musical chairs question)
7. Why did bonds and shares fall together in 2022 when they usually move opposite? (The seasons of money)
8. A bank failed in 2023 because it bought the safest bonds in the world. How? (When markets fall: buckets, collateral and rotation)
9. Japan's central bank owns about half its government's bonds. Is that still a market? (The country leaderboard: deep markets and the game nations play)
10. Should a Malaysian saver prefer a Malaysian government bond or a US Treasury, and what currency risk comes with each? (The view from a smaller currency: Malaysia, savings)
11. Could a tokenized Treasury on a blockchain become the new dollar bill? (Today's board: old anchors, new rails)

### L2.2 Who creates money
1. If banks create money by lending, why can't a bank lend forever? What actually stops it? (How money is born today)
2. In 2020 to 2021 money rose about nine times faster than bank loans. Who printed the rest? (How money is born today)
3. When you pay your taxes, where does that money go? Does it still exist? (Nation Inc.: taxes, interest and the hubs)
4. When the Fed buys a bond from a bank versus from a pension fund, why does only one of them put new money in public hands? (War, Bretton Woods and the dollar's crown)
5. If repaying a loan destroys money, what happens to the money supply when everyone pays down debt at once? (The deflation debate)
6. Is a stablecoin dollar new money, or an old dollar wearing a new coat? (Crypto: Set 2 money, dissected)
7. Who creates the dollars that circulate outside America, in banks in London, Singapore and Kuala Lumpur? (How the world gets its dollars)
8. When Bank Negara buys dollars to steady the ringgit, does it create ringgit? (The view from a smaller currency: Malaysia, savings)
9. Gold could not be printed. Why did the world give that up, and who got the printing press instead? (Commodity money and the gold standard)
10. If the government spends money it does not have, does that add money to the economy or only move it? It depends on who buys the bond. Why? (The musical chairs question)
11. Every empire in history debased its money in the end. Is today's two-printer system the modern version, or a safeguard against it? (Why empires and their currencies fall)

### L2.3 The world's wealth and debt
1. If every debt is somebody's asset, who is the world in debt to? (The musical chairs question)
2. World wealth rose about 10% in 2025. Did the world build 10% more things, or did the same things get pricier? (The yardstick problem)
3. Why is the richest country also the biggest debtor? (The country leaderboard: deep markets and the game nations play)
4. Japan owes more than twice its GDP, yet its yen bonds are not treated like Greece's. What is the difference? (The view from a smaller currency: Malaysia, savings)
5. Debt to GDP has fallen for five years while debt hit record highs every year. How can both be true? (The seasons of money)
6. Two thirds of world net worth is real estate. What happens to "world wealth" if house prices fall 20%? (The titled world: why abundance runs on credit)
7. If the dollar rises 10%, the world looks 10% poorer in dollars overnight. Did anyone lose anything? (The yardstick problem)
8. Germany and Italy use the same currency. Why can one borrow cheaply and the other pays more? (Why empires and their currencies fall)
9. Is a country with high government debt but rich households poor or rich? (Nation Inc.: taxes, interest and the hubs)
10. Where did the world's debt jump most: 1971, 2008 or 2020, and who borrowed each time? (1971, oil and the petrodollar)
11. If you split world wealth and world debt equally across 8 billion people, what would each person own and owe? Why is that average misleading? (Eye-openers)
12. China is not in the G7 or the G10. Why does leaving it out change the whole picture? (The new board game)

## 7. Radiant maps (a centre with rays)

**L2.1 Bonds.** Centre: "A bond is a promise that the system treats as cash." Rays: (1) price and yield seesaw, (2) who issues (governments, firms, mortgages), (3) who holds (central banks, banks, pensions, foreigners, households), (4) collateral and repo (the plumbing), (5) the yield curve as a weather report, (6) inflation and real yields, (7) crises when the safe asset broke (1994, 2020, 2022, 2023), (8) new rails (tokenized Treasuries, stablecoin reserves).

**L2.2 Who creates money.** Centre: "Two floors, two printers, many drains." Rays: (1) banks lending downstairs, (2) the Fed creating reserves upstairs, (3) the Treasury as spender, taxer and borrower (the netting), (4) the nonbank seller rule (when upstairs reaches downstairs), (5) the destroyers (repayment, taxes, auctions, QT), (6) the limits on each printer, (7) offshore and nonbank money (eurodollars, money funds, stablecoins), (8) other countries (ECB, BoJ, Bank Negara).

**L2.3 The world's wealth and debt.** Centre: "Every debt is someone's asset, so what is the world actually worth?" Rays: (1) the definitions box (net wealth, net worth, financial assets, gross debt), (2) the four borrowers (governments, firms, households, finance), (3) the timeline 1971 to 2026, (4) price versus new capital (houses and shares), (5) the yardstick (dollar moves, inflation, per GDP), (6) country structures (debtor US, creditor Japan, euro pair, China, Malaysia), (7) who holds whose debt (domestic, foreign, central bank), (8) scale tools for the brain.

## 8. Proposed lanes

| Lane | Job | Key sources |
|---|---|---|
| Standing: Data | Pull and save, with dates, every number in section 5 from primary pages: UBS GWR 2026 headline and country table, IIF Global Debt Monitor (end 2025 and latest, by sector and by country), IMF Global Debt Database (public, household, nonfinancial corporate by country from 1950s or 1970s), BIS total credit statistics, FSB 2025 monitoring report, McKinsey 2026 balance sheet. Build the timeline series and the G7, G10, China, Malaysia structure table. Compute scale tools by script. Also SIFMA or ICMA world bond market size and Z.1 or TIC US Treasury holders for Q1, H.6, H.8 and H.4.1 for Q2 | As listed, DBnomics for Fed data |
| Standing: Ledger | T-accounts for: a repo (Q1), a bank caught by rising rates (Q1), Fed purchase from a bank versus a nonbank, a deficit financed by a nonbank auction buyer, a central bank FX purchase (Q2), and the world-level netting showing financial claims cancel (Q3) | Case 2 method |
| Standing: Sweep | Popular claims to test: "world debt is $300T / $500T", "global debt bomb", "debt bigger than world GDP so collapse is near", Visual Capitalist style charts, the most watched YouTube explainers on bonds and on money printing | T5 only, as hypotheses |
| Topic A: Bonds | Answer spec Q1, the "backbone" measure, regimes and accidents, Malaysia bonds | |
| Topic B: Money creation beyond Case 2 | Answer spec Q2 items 2 to 7, especially limits on each printer, other countries and offshore money | |
| Topic C: Wealth, debt and structure | Answer spec Q3, the definitions box, country pairs, the timeline, the anomaly correction | |
| Optional: Pedagogy check | Tests the curiosity questions and radiant maps against the Level 1 chapters, and checks Level 1 keeps a short bridge to L2.1 and L2.2 | |

Red team for Q3 should swap in a national accounts statistician, a sovereign debt analyst, a wealth inequality researcher and a currency strategist alongside the money voices.

## 9. What is still unknown after this move
- The UBS 2026 headline total in dollars (not in the snippets read).
- The McKinsey 2026 figures as printed in the report, not in press summaries.
- The IIF September 2026 figure from the IIF itself.
- The year world debt first passed $300T on the IIF series.
- Whether the owner's "300T" came from an older wealth figure or a debt figure, and "500T" from financial assets or a debt figure including other items.

Sources (anomaly check): UBS news page on GWR 2026 (ubs.com/jp/ja/about/newsdisplay-ndp/en-20260630-gwr-2026.html), Khaleej Times on UBS GWR 2026, IIF via Kitco 2026-02-25 (kitco.com/news/off-the-wire/2026-02-25/government-spending-lifts-global-debt-record-348-trillion-2025-says), WAM on $353T, stockanalysis.com on $365T, McKinsey "The rise and rise of the global balance sheet" and "The global balance sheet 2026: imbalance and divergence", FSB press release 2025-12 (fsb.org/2025/12/fsb-reports-continued-growth-in-nonbank-financial-intermediation-in-2024-to-256-8-trillion/).
