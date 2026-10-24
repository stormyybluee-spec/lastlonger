# R6A: The world's wealth and debt (Topic lane plus Data, Ledger and Sweep lanes for Rulebook L2.3)

Date: 2026-10-24. Tier: Standard. Lane: R6A. Question: FRAME_R6 Q3. Tables: round6/lanes/R6A-tables.json. Scripts: scratchpad/scripts/r6a_compute.py, r6a_tables.py, bis_extract.py, eurostat_holders.py (all run with python3 -I).

## Pass checklist
- [x] Move 2: default story named (textbook, official, popular), sources from at least three camps, each scoped (section G)
- [x] Move 3: ledger walked: world netting plus three balance-sheet examples, every actor's balance change named (section B)
- [x] Move 4: timeline 1971 to 2026 with regimes, crises 2008 and 2020 checked, estimates marked (section C)
- [x] Move 5: complete map: measures table, channel table with signs and sizes in 2025 and a stress year (sections A and B)
- [x] Move 6: every size word has a number, source and date. Tripwires dated (section I)
- [x] Data lane: every series has source, unit, date range and a label checked against its source page (BIS, IIF, UBS, FSB, Eurostat, World Bank, TIC, fiscaldata, H.4.1 fetched directly)
- [x] Ledger lane: for each example, which balance changed and whether net worth rose, fell or only moved
- [x] Sweep lane: five popular explainers with reach, four schools, authorities scoped
- [x] Sections A to I written
- [x] Scale tools checked by script with inputs shown (section F)
- [x] Claims table: 36 claims (R6A-01 to R6A-36), tripwires with dates
- [x] Style check: no em-dashes, no en-dashes, no semicolons, "to" for ranges

---

## Answers (headline)

**The owner's two numbers are swapped and out of date.** On every mainstream measure, world wealth is bigger than world debt, not smaller.
- World wealth is not "300T+". It is about **$518T** of household net wealth at end 2025 (UBS Global Wealth Report 2026), about **$570T** of household net worth on McKinsey's national-accounts basis, and about **$600T** of national net worth across all sectors (McKinsey Global Institute, 2025). "300T+" is true only as a floor.
- World debt is not "500T+". It is about **$348T** at end 2025 on the widest common measure, the IIF's four-sector count that includes banks' own debts, and more than **$365T** by mid 2026 (IIF, September 2026, via press). Without the financial sector it is about **$251T** (IMF, 2024) or **$263T** (BIS, 44 economies, end 2025).
- Where the numbers probably come from. **"500T"** matches the total of all financial assets held by the world's financial institutions, **$503.7T** at end 2024 (FSB), and also UBS household wealth (about $518T). Both are the asset side of the ledger, not debt. It also matches the owner's own Round 1 belief, "gold times 10 equals about $500T of world debt" (PLAN section 3), which Round 1 refuted. **"300T"** matches world debt as it was reported in 2021 to 2024 (IIF $319.5T at end 2024, and popular explainers such as Economics Explained in 2023, 1.7M views, which describe "the global debt of over $300 trillion"), and also the owner's Round 1 "Bitcoin times 10 equals about $300T".
- **So the right sentence is:** the world owns about $520T to $600T and owes about $350T to $365T. But you cannot subtract one from the other, because almost every debt is also somebody's asset. At world level the debts cancel, and what is left is the value of real things (houses, land, machines, firms' know-how), which is mostly a price set by interest rates.

**Two eye-openers for the chapter.**
1. Debt to GDP fell for five years (2021 to 2025) while debt in dollars hit a record every year (IIF). Inflation and nominal growth, not repayment, shrank the ratio.
2. Japan's debt fell by a third in dollars between 2020 and 2025 ($22.05T to $14.94T, BIS) while it rose 3% in yen (2,273 to 2,340 trillion yen). Nobody repaid anything. The yen fell. Every world total in dollars carries this yardstick effect.

---

## A. Definitions box and the measures table

### Definitions box (read before any number)
- **Wealth (net wealth, net worth):** what you own minus what you owe. A household with a $500,000 house, $100,000 of savings and a $300,000 mortgage has net wealth of $300,000.
- **Household (personal) net wealth:** the net wealth of people only (UBS, McKinsey household). Includes private pension funds. Leaves out what governments and companies own that cannot be assigned to a person, state pension promises and human capital (UBS GWR 2026 methods note).
- **National net worth:** the net wealth of a whole country or the world, all sectors together (McKinsey). At world level it is roughly the value of real assets, because financial claims cancel.
- **Financial assets:** claims on someone else: deposits, bonds, loans, shares, fund units. One person's financial asset is another's liability (shares count as a liability of the firm in national accounts). A gross count of financial assets double counts nothing but nets to almost nothing at world level.
- **Gross debt:** every IOU counted once from the borrower's side. **Net debt** subtracts what the same borrower is owed.
- **Sectors:** households, nonfinancial companies, governments, and the financial sector (banks and others). The IIF counts all four. The IMF and the BIS count only the first three (nonfinancial debt), because bank debt is mostly the deposits of the other three.
- **What is not debt:** derivatives notional values (hundreds of trillions, but they are bets measured by the size of the thing bet on), equity (shares), and unfunded pension promises (real burdens, but not in these debt counts).
- **Yardstick:** all world totals are in US dollars at end-of-period exchange rates. A 10% fall in the dollar adds about 10% to the dollar value of non-US wealth and debt with no real change.

### The measures table (one row per measure)

| Measure | Value | Year | Source | Includes | Excludes | Tier |
|---|---|---|---|---|---|---|
| Household net wealth (UBS) | $517.7T | End 2025 | UBS Global Wealth Report 2026, 30 Jun 2026, wealth pyramid (250.59 + 200.72 + 63.16 + 3.22) | Financial plus real assets (mainly housing) of people, minus their debts. Private pensions | Government and corporate wealth not owned by people, state pension promises, human capital. 56 markets with over 92% of world wealth | T4 (primary document) |
| Household net worth (McKinsey) | $570T | 2025 | McKinsey Global Institute, The global balance sheet 2026, via Fortune 27 Jul 2026 | Household assets minus liabilities, national accounts basis | Government and corporate net worth | T4 (secondary) |
| National net worth, all sectors (McKinsey) | $600T (5.1 times GDP). Real assets $620T | 2025 | McKinsey GBS 2026 PDF via search snippet. Total balance sheet nearly $1.8 quadrillion | Real assets (land, buildings, machines, inventories, intangibles) plus net claims, every sector | Human and natural capital. Scaled from major economies | T4 (secondary) |
| Total global financial assets (FSB) | $503.7T | End 2024 | FSB Global Monitoring Report on NBFI 2025, 16 Dec 2025, Graph 1-1 | Assets of central banks $34.1T, banks $191.3T, public financial institutions $21.5T, nonbanks $256.8T, 29 jurisdictions over 90% of world GDP | Real assets. Financial assets held directly by households, firms and governments. A gross count, not wealth | T2 |
| Gross debt, four sectors (IIF) | $348.3T (308% of GDP) | Q4 2025 | IIF Global Debt Monitor, 25 Feb 2026, Table 1 | Households $64.6T, nonfinancial firms $100.6T, governments $106.7T, financial sector $76.4T. Securities, loans, currency and deposits | Equity, derivatives, unfunded pensions | T4 (industry body, primary document) |
| Gross debt, four sectors (IIF), latest | Over $365T (about 305% to 310%) | H1 2026 | IIF Global Debt Monitor, 23 Sep 2026, via SCMP and Qatar Tribune | As above | As above | T4 (secondary) |
| Public plus private nonfinancial debt (IMF) | $251T (just above 235% of GDP). Public $99.2T, private $151.8T | 2024 | IMF blog, 17 Sep 2025, Global Debt Database | Government, household and nonfinancial corporate loans and debt securities | Financial sector debt | T2 |
| Total credit to the nonfinancial sector (BIS) | $262.7T (245.7% of GDP) | Q4 2025 | BIS total credit statistics, aggregate of all reporting countries (5A), fetched from stats.bis.org | Government (nominal value) $102.7T, households $63.9T, nonfinancial firms $99.6T | Financial sector debt. About 44 economies only | T2 |

**How the rows relate.** IIF minus its financial sector ($348.3T minus $76.4T) leaves $271.9T of nonfinancial debt, close to the IMF ($251T a year earlier) and the BIS ($262.7T, fewer countries). The FSB $503.7T is the asset side of the financial system: it includes the deposits, bonds and loans that make up much of world debt, plus shares and fund units. UBS and McKinsey household figures differ by about $52T because they use different methods and coverage. McKinsey's real assets ($620T) and net worth ($600T) differ by $20T. The fetched material does not explain this gap. Coverage and statistical gaps are the likely reasons (to confirm).

---

## B. The ledger: why world debt nets to zero, and what is left

### The rule
Every debt has two sides. When a family owes a bank $300,000, the bank owns a $300,000 claim. When the US Treasury owes $1,000 on a bond, a pension fund, a bank, the Fed or a foreign central bank owns that $1,000 claim. Add up every balance sheet in the world and each IOU appears once as a debt and once as an asset. They cancel. The world as a whole cannot be in debt to anyone, because there is nobody outside the world to owe (no Mars bank).

What survives the netting:
1. **Real assets:** land, houses, offices, factories, machines, roads, inventories and, in newer accounts, intangibles such as software and patents. McKinsey puts world real assets at about $620T in 2025. Real estate was about two thirds of world net worth in its 2021 study (Rulebook rb-titled).
2. **Claims that have no debtor:** gold bullion held as a reserve and Bitcoin. These are someone's asset and nobody's IOU. They are small next to real assets (gold stock about $29.6T, desk claim L7-10, older figure).
3. **Net claims on future income:** a share is a claim on a company's future profits. Inside a country the share and the company's "liability" to its owners cancel too, and what remains is the company's real assets and its earning power. Earning power that is not on any balance sheet (a brand, a team) shows up in share prices above book value. McKinsey reports US equities at 2.4 times corporate net assets in 2025 (secondary).

So "world wealth" measured in dollars is mostly **the price of real things**, and that price depends on interest rates. When rates fell from the early 1980s to 2021, the same buildings and firms were worth more. When rates rose in 2022, paper wealth fell (UBS and Credit Suisse recorded the first fall in household wealth since 2008, down 2.4% to $454.4T, via Bloomberg coverage, secondary).

### Why debt and net worth can grow at the same time
- **Debt that builds something.** A loan that pays for a new house adds a debt and a new real asset. Net worth is unchanged on the day, and rises if the house is worth more than it cost.
- **Debt that buys something that already exists.** A loan that buys an existing house adds a debt and a deposit (the seller's). Net worth is unchanged. But more credit chasing the same houses tends to lift their price, and that price rise adds to measured wealth. McKinsey found that only about 20% of the 2025 household wealth gain came from net new real investment and about 58% from above-inflation valuation gains (secondary). The rest was general inflation.
- **Inflation lifts both in money terms.** Both wealth and debt are counted in current dollars. With 3% to 5% inflation, both grow in dollars with no real change.
- **The two grow on different sides.** Debt is a gross count of IOUs. Net worth is what is left after the IOUs cancel. A world with more IOUs is more tightly linked and more fragile, but not poorer in itself. Debt matters through who owes it, at what interest rate, in which currency and how soon it must be refinanced (rb-07).

### Three balance sheets in plain words

**Example 1. A young family buys an existing flat from a retired couple with a $300,000 mortgage.**
| Actor | Assets | Liabilities | Net worth |
|---|---|---|---|
| Young family | + flat ($300,000) | + mortgage ($300,000) | No change |
| Bank | + mortgage loan ($300,000) | + deposit owed to the sellers ($300,000) | No change |
| Retired couple | minus flat, + bank deposit ($300,000) | none | No change, the asset changed form |
| World | Financial assets + $300,000 (loan and deposit) | Debt + $300,000 | **Unchanged.** Debt rose, wealth only moved |

If flat prices then rise 10%, the family's net worth rises $30,000 with no new debt. Measured world wealth rises. Nothing new was built. This is the "price, not pile" point from rb-titled, now on a balance sheet.

**Example 2. The US runs a $1T deficit. Half the bonds are bought by a US pension fund, half by Japanese investors.**
| Actor | Assets | Liabilities | Net worth |
|---|---|---|---|
| US government | none new (the money is spent on wages and transfers) | + $1T bonds | Falls $1T |
| US households (who received the spending) | + $1T of deposits, of which they pay $0.5T into a pension fund (deposits become pension claims) | none | Rise $1T |
| US pension fund | + $0.5T bonds (bought with members' money) | + $0.5T owed to members | No change |
| Japanese investors | + $0.5T US bonds, paid with dollars earned by selling goods to the US | none | No change (they swapped dollars for bonds) |
| USA as a nation | | + $0.5T more owed abroad, the other side of its trade deficit | Net international investment position falls $0.5T |
| World | | | **Unchanged** |

Inside the US the government's new debt is the private sector's new asset ("we owe it to ourselves" is right for the domestic half). The foreign half is a real claim of Japan on future US income. That is why the US net international investment position is about **minus $26.5T** (end 2024, IMF data) while Japan's is about **plus $3.5T**. The US owes it partly to itself and partly to the rest of the world.

**Example 3. The yen falls 34% against the dollar (Japan, 2020 to 2025).**
| Actor | In yen | In dollars | What really changed |
|---|---|---|---|
| Japan's total nonfinancial debt (BIS) | 2,273 to 2,340 trillion yen (+3.0%) | $22.05T to $14.94T (minus 32%) | Almost nothing. The ruler shrank |
| Japan's debt to GDP (BIS) | 410.4% to 351.2% | same ratio | Nominal GDP grew faster than debt (inflation returned) |
| World debt total in dollars | | Japan's share fell, US share rose | A pure yardstick effect |

The same effect ran the other way in 2025, when the dollar weakened. UBS notes the euro rose almost 9% against the dollar in 2025, which is part of why European wealth grew 17.5% in dollars (GWR 2026). Lesson: always ask whether a world total moved because of the dollar.

### Channel table: what makes world debt and world wealth grow or shrink

| Channel | Debt | Wealth | Size, latest year (2025) | Size, stress year | Source |
|---|---|---|---|---|---|
| New net borrowing | + | 0 on the day (+ if it builds a real asset) | +$28.8T (IIF $319.5T to $348.3T). Government +$10.4T, firms +$8.7T, households +$4.6T, financial sector +$5.0T | 2020: +$35T (governments about $14T, firms $8T, households $6T) | IIF GDM Feb 2026 Table 1, IIF Reflections Aug 2026 |
| Repayment and default write-offs | minus | minus for the lender, + for the borrower, 0 for the world | Not sized in this lane | Not sized | Gap |
| New real investment (saving that builds things) | 0 or + | + | About 20% of the $40T household gain in 2025 (about $8T) | Not sized | McKinsey GBS 2026 (secondary) |
| Revaluation of existing assets (rates, profits, scarcity) | 0 | + or minus | About 58% of the $40T household gain in 2025 (about $23T) | 2022: household wealth minus 2.4%, about minus $11.3T (rates up, dollar up) | McKinsey GBS 2026, Bloomberg on UBS GWR 2023 (secondary) |
| Inflation and nominal growth | + in dollars, minus as % of GDP | + in dollars | IIF ratio fell for a fifth year to about 308% | 2021 to 2025: BIS ratio fell from 285.0% (2020) to 234.8% (2024) | IIF, BIS 5A |
| Dollar exchange rate | + when the dollar falls | + when the dollar falls | BIS 5A nonfinancial credit +$25.7T in 2025 in dollars. Euro up almost 9% | Japan 2020 to 2025: minus 32% in dollars, +3% in yen | BIS, UBS GWR 2026 |
| Bond prices (market value) | Face value unchanged, market value falls when rates rise | Holder's wealth falls | Not sized | 2022 | Gap |

**Which channel dominates by regime.** 2008 and 2020: new borrowing dominates debt (crisis jumps). 2021 to 2025: inflation dominates the ratio (down) while borrowing keeps the dollar level rising. 2025: revaluation dominates wealth (only about a fifth was new investment) and the weak dollar flatters all non-US totals.

---

## C. Timeline: world debt, world wealth and world GDP, 1971 to 2026

World GDP is from the World Bank (NY.GDP.MKTP.CD, current dollars, fetched 2026-10-24). "E" marks an estimate or model. Debt series differ in scope (see section A), so the scope is named on every row.

| Year | Regime | World debt, $T | Debt, % of world GDP | Scope of the debt figure | World wealth, $T | Scope of the wealth figure | World GDP, $T |
|---|---|---|---|---|---|---|---|
| 1971 | Dollar leaves gold | about 3.3 (E) | about 100 (E) | MODEL: IMF Global Debt Database shows total nonfinancial debt near 100% of world GDP from 1950 to about 1980, times World Bank GDP. US alone (BIS): $1.57T, 134.9% | about 6 to 10 (E) | MODEL: rich-country private wealth was 2 to 3.5 years of national income in 1970 (Piketty and Zucman 2014), applied to world GDP times 0.85 | 3.33 |
| 1980 | Volcker shock, rates near 20% | about 11.5 (E) | about 100 (E) | MODEL as above. US alone (BIS): $3.89T, 136.0% | about 20 to 34 (E) | MODEL as above (uses 1970 ratios, so a floor) | 11.48 |
| 2000 | Long fall in rates, credit boom | 60.1 (2001) | 190.9 | BIS nonfinancial, all reporting countries, first year of the aggregate | 156 | McKinsey national net worth | 33.97 |
| 2005 | Pre-crisis boom | 130 | 240 | IIF four sectors | not fetched | | 47.94 |
| 2008 | Global financial crisis | 118.6 | 202.3 | BIS nonfinancial | not fetched (Credit Suisse 2014: about $21.5T lost in 2007 to 2008, secondary) | | 64.38 |
| 2020 | Covid shock | 226 (IMF). BIS 222.0 | 256 (IMF). BIS 285.0 | Nonfinancial. IIF: a record $35T rise in one year | 514 | McKinsey national net worth | 86.39 |
| 2024 | Rates high, dollar strong | 319.5 (IIF). IMF 251 | IMF just above 235. BIS 234.8 | IIF four sectors, IMF and BIS nonfinancial | about 600 | McKinsey net worth (2025 edition gives $600T for 2025, so vintage unclear) | 111.67 |
| 2025 | Dollar weak, fiscal push, AI borrowing | 348.3 (IIF). BIS 262.7 | IIF about 308. BIS 245.7 | IIF four sectors, BIS nonfinancial | 517.7 (UBS household). 600 (McKinsey national) | Household and national | 118.35 |
| 2026 H1 | "HEAD" cycle (health, energy, AI, defense) | over 365 (IIF, press) | about 305 to 310 | IIF four sectors | no estimate yet | | n/a |

**What the timeline shows.**
- From 1971 to 2025 world GDP grew about 36 times in dollars (3.33 to 118.35). World nonfinancial debt grew about 80 times on these rough measures (a modelled $3.3T to $262.7T on the BIS count). Debt grew faster than output in every regime except 2021 to 2025.
- The big ratio jumps came in two crisis years: 2008 to 2010 (BIS aggregate 202.3% at end 2008 to 229.0% at end 2010) and 2020 (BIS 242.8% at end 2019 to 285.0% at end 2020, IMF plus 28 points to 256%, the largest one-year rise since the Second World War).
- 2021 to 2025: the ratio fell for five years (IIF), from the 2020 peak, while dollar debt rose every year. Inflation did the work.
- Wealth grew faster than GDP too: McKinsey net worth was about 4.6 times world GDP in 2000 ($156T over $33.97T) and about 5.1 times in 2025 ($600T, McKinsey's own multiple). Much of the gap is price, not new capital (section B).
- **Anomaly to report:** the BIS aggregate ratio rose in 2025 (234.8% to 245.7%) while the IIF ratio fell (to about 308%). Likely cause (hypothesis): the BIS converts debt at end-year exchange rates and GDP at average rates, so a falling dollar during 2025 lifted the dollar value of debt more than the dollar value of GDP. The direction of "world debt to GDP" in a single year can depend on the source. Not confirmed with BIS methodology notes.

---

## D. How countries are built differently: the structure table

**Group check (hidden hypothesis H4).** The G7 is the US, Japan, Germany, the UK, France, Italy and Canada. The G10 is in fact eleven countries: the G7 plus Belgium, the Netherlands, Sweden and Switzerland. Neither contains China, which holds about 16% to 18.5% of world household wealth and about 22% of world nonfinancial debt. A G7 or G10 frame alone would miss the biggest change in the world balance sheet since 2008. China, India and Malaysia are added below.

**Sources and notes for the table.**
- Wealth per adult: UBS GWR 2026 Table 1 (end 2025). China, India and Malaysia are not in that table (Malaysia is not one of UBS's 56 markets). Their values are from the UBS Global Wealth Databook 2023 (end 2022, via the Wikipedia table) and are marked. Do not compare them with the 2025 values as like for like.
- Total wealth is **derived**: UBS mean per adult times World Bank adults aged 20 and over (2025). Check: the derived US total ($181.6T) is within 2% of UBS's stated US share (35.7% of $517.7T is $184.8T). China's derived total ($83.7T) mixes an end-2022 mean with 2025 adults. UBS gives Greater China (mainland, Hong Kong and Taiwan) as 18.5% of world wealth, about $95.9T.
- Debt by sector: BIS total credit statistics, Q4 2025, % of GDP and US dollars. Government at nominal value, households and companies at market value.
- Holders of government debt: see the holders notes below the table. "n.c." means not confirmed in this lane.
- NIIP (net international investment position, what a country owns abroad minus what it owes abroad): IMF balance of payments data via DBnomics, end 2024, % of 2024 GDP (World Bank).
- Financial versus real share of gross household wealth: UBS GWR 2026 ("financial assets as share of gross wealth"). Sweden from the report text (83.6%). Belgium, the Netherlands and Malaysia are not in the printed table.

| Country | Adults (m) | Mean wealth per adult ($) | Median ($) | Total wealth ($T, derived) | Share of world wealth (%) | Gov debt % GDP ($T) | Household debt % GDP ($T) | Corporate debt % GDP ($T) | Central bank holds (% of gov debt) | Foreigners hold (%) | NIIP $bn (% GDP), end 2024 | Financial share of gross household wealth (%) | Real (mainly housing) share (%) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| United States | 260.9 | 696,277 | 68,998 | 181.6 | 35.1 | 116.3 (35.79) | 68.1 (20.93) | 72.2 (22.20) | 14.0 | 28.6 | minus 26,540 (minus 90.6) | 78.9 | 21.1 |
| Japan | 103.8 | 211,846 | 135,745 | 22.0 | 4.2 | 193.3 (8.22) | 60.8 (2.59) | 112.6 (4.79) | 43.1 | 12.8 | 3,494 (83.4) | 68.9 | 31.1 |
| Germany | 68.1 | 346,613 | 53,485 | 23.6 | 4.6 | 62.6 (3.33) | 48.2 (2.57) | 86.7 (4.62) | 19.5 | 51.3 | 3,624 (77.3) | 43.6 | 56.4 |
| United Kingdom | 53.5 | 292,808 | 125,335 | 15.7 | 3.0 | 102.3 (4.18) | 73.5 (3.01) | 57.8 (2.36) | n.c. | 33.0 | minus 351 (minus 9.5) | 55.9 | 44.1 |
| France | 53.3 | 341,359 | 121,898 | 18.2 | 3.5 | 115.5 (4.07) | 59.4 (2.09) | 155.2 (5.46) | 16.5 | 54.3 | minus 697 (minus 22.0) | 46.9 | 53.1 |
| Italy | 49.2 | 279,439 | 131,001 | 13.7 | 2.6 | 137.1 (3.64) | 35.9 (0.95) | 58.4 (1.55) | 18.5 | 34.4 | 348 (14.6) | 50.9 | 49.1 |
| Canada | 33.1 | 399,886 | 147,811 | 13.2 | 2.6 | 100.2 (2.37) | 100.4 (2.38) | 118.5 (2.81) | n.c. | 45.0 | 1,342 (59.1) | 66.2 | 33.8 |
| Belgium | 9.4 | 407,920 | 277,166 | 3.8 | 0.7 | 107.9 (0.81) | 56.8 (0.43) | 117.8 (0.89) | 14.9 | 63.4 | 384 (57.2) | n.a. | n.a. |
| Netherlands | 14.4 | 415,287 | 127,407 | 6.0 | 1.2 | 44.7 (0.62) | 94.4 (1.30) | 169.4 (2.33) | 20.5 | 49.3 | 724 (59.6) | n.a. | n.a. |
| Sweden | 8.2 | 406,406 | 84,039 | 3.3 | 0.6 | 35.1 (0.25) | 82.2 (0.59) | 146.6 (1.06) | 3.7 | 23.1 | 392 (64.9) | 83.6 | 16.4 |
| Switzerland | 7.3 | 910,382 | 145,555 | 6.6 | 1.3 | 24.8 (0.27) | 122.9 (1.35) | 129.0 (1.41) | n.c. | n.c. | 1,151 (118.6) | 65.3 | 34.7 |
| China | 1,105.8 | 75,731 (end 2022) | 27,273 (end 2022) | 83.7 | 16.2 | 99.3 (19.87) | 58.0 (11.61) | 142.8 (28.58) | n.c. | n.c. | 3,296 (17.6) | 51.9 | 48.1 |
| India | 983.0 | 16,500 (end 2022) | 3,755 (end 2022) | 16.2 | 3.1 | 83.8 (3.15) | 47.7 (1.80) | 54.5 (2.05) | 12.5 | 1.9 | minus 368 (minus 9.8) | 25.8 | 74.2 |
| Malaysia | 25.5 | 29,314 (end 2022) | 8,523 (end 2022) | 0.8 | 0.1 | 65.2 (0.33) | 69.8 (0.35) | 88.6 (0.44) | n.c. | 20.1 | minus 2 (minus 0.4) | n.a. | n.a. |

**Holders of government debt, sources.** US: debt held by the public $32.60T (Treasury fiscaldata, 2026-10-22), Fed Treasury holdings $4.57T (H.4.1, 2026-10-21), foreign holdings $9.33T of which foreign official $3.76T (TIC Table 5, August 2026). Japan: JGBs plus T-bills, end December 2025, Ministry of Finance Debt Management Report 2026 (the BoJ holds 49.0% of JGBs alone and foreigners 6.8%). Euro area and Sweden: Eurostat gov_10dd_ggd, 2025, share of Maastricht debt held by the national central bank and by the rest of the world (for euro members "rest of world" includes other euro area investors and the ECB itself). UK: overseas about 33% (Q3 2025, Knight Frank and BlackRock, secondary). Bank of England share not confirmed, and the Bank set out on 17 September 2026 a plan to run its gilt stock to zero with £20bn of sales a year. Canada: non-residents about 45% of the domestic Government of Canada bond market (June 2026, National Bank of Canada, secondary). India: RBI 12.5% and foreign portfolio investors 1.9% of central government dated securities (December 2023, RBI Bulletin, old). Malaysia: foreigners 20.1% of Malaysian Government Securities (July 2026, MARC via press).

**Household debt as a share of gross household wealth (UBS 2026):** Switzerland 20.5%, UK 20.0%, Canada 18.2%, France 13.7%, Japan 11.9%, Germany 11.0%, US 10.9%, China 10.6%, Italy 8.9%, India 8.2%.

### Structure stories (how each is built and why)

**1. The US and Japan: the world's banker in reverse, and the family that owes itself.**
The US is the richest country (35.7% of world household wealth, UBS) and the largest net debtor to the rest of the world (NIIP about minus $26.5T, minus 91% of GDP). Its households hold 79% of their gross wealth in financial assets, mostly shares and pension funds, so US wealth rises and falls with Wall Street. The government owes 116% of GDP (BIS) and about 29% of the public part is held abroad (TIC). The world holds dollars and Treasuries because they are the reserve asset (rb-04, rb-leader), so the US can borrow from abroad in its own currency.
Japan owes the most of any G7 government (193% of GDP on BIS, 199% on IIF) yet is a net creditor to the world (NIIP plus $3.5T, plus 83% of GDP). The Bank of Japan holds about 43% of government bills and bonds, foreigners about 13%, and Japanese banks, insurers and pension funds most of the rest. Japan's government debt is mostly a debt from one Japanese pocket to another, in yen. That is why it is not treated like Greece. The risk shows up as a weak yen and as the BoJ's balance sheet, not as a foreign creditor walking away. The US median adult ($68,998) is poorer than the Japanese median adult ($135,745) even though the US mean is three times higher. US wealth is far more concentrated. (The US median also fell sharply versus older UBS editions because of a method revision, see Anomalies.)

**2. Germany and Italy: one currency, opposite structures.**
Germany's government owes 63% of GDP, Italy's 137% (BIS). Germany is a large net creditor (plus $3.6T, plus 77% of GDP), Italy a small one (plus $0.35T). The surprise is households: Italian households carry little debt (36% of GDP versus Germany's 48%) and Italy's median adult ($131,001) is more than twice as rich as Germany's ($53,485), The usual explanation is home ownership: most Italian households own their home, while Germany has one of the lowest home-ownership rates in Europe (Eurostat housing statistics, not fetched in this lane). Germany's mean is higher, its median low. Italy's state is indebted, its families are not. Foreigners hold about 34% of Italian government debt and 51% of German debt (Eurostat), because German Bunds are the euro area's safe asset and are in short supply. Neither country prints its own currency, so Italy pays a risk spread that a country with its own central bank would not. Link to rb-09 and rb-leader.

**3. The UK and Canada: house-rich households with heavy mortgages.**
Canadian household debt is about 100% of GDP and UK household debt about 74% (BIS), among the highest in the G7. Household debt is 18% to 20% of gross household wealth in both, against 11% in the US. Their wealth leans on housing (real assets 44% of gross household wealth in the UK, 34% in Canada, UBS). The UK is a small net debtor abroad (minus 9.5% of GDP), Canada a large net creditor (plus 59%). Canada's large pension funds investing abroad are a likely reason (not sized here). Foreign investors now hold about a third of gilts and about 45% of the Canadian government bond market. Story: when interest rates rise, these households feel it first, because mortgages reset within a few years.

**4. Switzerland: a tiny state, heavy private balance sheets, huge foreign savings.**
The Swiss government owes only 25% of GDP (BIS). Swiss households owe 123% of GDP, the highest in the table, mostly mortgages that owners often keep rather than repay, a habit commonly linked to Swiss tax rules (not checked in this lane). Yet Swiss adults are the richest in the world on average ($910,382, UBS) and the country owns far more abroad than it owes (NIIP plus $1.15T, plus 119% of GDP). High gross household debt, very high net wealth: a clean example of why gross debt alone says little.

**5. China: debt-built growth, saved at home.**
China's total nonfinancial debt is about 300% of GDP (BIS), above the US (251%), and its debt rose faster than any other country's in H1 2026 (more than $4.8T of the $10T world increase, IIF via press). Its companies carry the load (143% of GDP, BIS), including local government financing vehicles. McKinsey notes China's corporate debt at about 80% of real assets versus a 50% world norm (secondary). Yet China is a net creditor abroad (plus $3.3T) because its savings are invested at home, through banks, in mostly local-currency debt. Half of household wealth is financial (51.9%) and much of the rest is property, whose price fall has dragged wealth (McKinsey notes falling property values in China in 2025, secondary).

**6. Malaysia: a smaller currency with a foreign window.**
Malaysia's total nonfinancial debt is about 224% of GDP (BIS): government 65%, households 70% (high for an emerging market, mostly mortgages and car loans), companies 89%. Its NIIP is close to zero (minus $1.5bn, end 2024). Foreign investors hold about 20% of Malaysian Government Securities (July 2026), enough that a jump in US yields can pull money out and push the ringgit down (rb-em). Malaysia is not in UBS's 56 markets, so its wealth figures are older and weaker (end-2022 databook: mean $29,314, median $8,523 per adult). Malaysia makes up about 0.4% of world nonfinancial debt and about 0.1% of world household wealth on these figures, against 0.4% of world GDP. The wealth figure is likely understated and should be read with care.

---

## E. Who contributes: shares of world wealth, debt, GDP and people (chart-ready)

Denominators: world household wealth $517.7T (UBS, end 2025), world nonfinancial debt $271.9T (IIF Q4 2025, households plus companies plus government), world GDP $118.35T and world population 8.215 billion (World Bank, 2025). Country wealth is derived (see section D). Country debt is BIS total nonfinancial credit (Q4 2025). Chart data: R6A-tables.json, key "countries".

| Country | Share of world wealth (%) | Share of world nonfinancial debt (%) | Share of world GDP (%) | Share of world population (%) | Wealth / GDP | Nonfinancial debt / GDP |
|---|---|---|---|---|---|---|
| United States | 35.1 | 29.0 | 26.0 | 4.2 | 5.9 | 2.6 |
| Japan | 4.2 | 5.7 | 3.8 | 1.5 | 5.0 | 3.5 |
| Germany | 4.6 | 3.9 | 4.3 | 1.0 | 4.7 | 2.1 |
| United Kingdom | 3.0 | 3.5 | 3.4 | 0.8 | 3.9 | 2.4 |
| France | 3.5 | 4.3 | 2.8 | 0.8 | 5.4 | 3.5 |
| Italy | 2.6 | 2.3 | 2.2 | 0.7 | 5.4 | 2.4 |
| Canada | 2.6 | 2.8 | 2.0 | 0.5 | 5.7 | 3.3 |
| Belgium | 0.7 | 0.8 | 0.6 | 0.1 | 5.3 | 2.9 |
| Netherlands | 1.2 | 1.6 | 1.1 | 0.2 | 4.5 | 3.2 |
| Sweden | 0.6 | 0.7 | 0.6 | 0.1 | 5.0 | 2.9 |
| Switzerland | 1.3 | 1.1 | 0.9 | 0.1 | 6.3 | 2.9 |
| China | 16.2 | 22.1 | 16.5 | 17.1 | 4.3 | 3.1 |
| India | 3.1 | 2.6 | 3.3 | 17.8 | 4.1 | 1.8 |

| Group | Wealth (%) | Nonfinancial debt (%) | GDP (%) | Population (%) |
|---|---|---|---|---|
| G7 | 55.6 | 51.5 | 44.4 | 9.6 |
| G10 (11 countries) | 59.5 | 55.6 | 47.6 | 10.2 |
| G10 plus China, India, Malaysia | 78.9 | 80.7 | 67.8 | 45.6 |

**How to read it.**
- The rich are also the big borrowers. The G7 holds about 56% of world household wealth and owes about 51% of world nonfinancial debt, with under 10% of the world's people. Debt follows wealth, because lenders lend against assets and income.
- The US has a larger share of world wealth (35%) than of world debt (29%) and of world GDP (26%). Its assets are valued highly (wealth 5.9 times GDP).
- China's share of world debt (22%) is above its share of wealth (16% to 18.5%) and GDP (16.5%). Its growth has been financed by debt more than by rising asset prices.
- India has 17.8% of the world's people, 3.3% of GDP, 3.1% of wealth and 2.6% of debt. Low debt here mostly means a small formal financial system, not thrift alone. Three quarters of Indian household wealth is real assets such as land, housing and gold (UBS: financial assets only 25.8% of gross wealth).
- Shares of wealth and debt both move with the dollar (section B).

---

## F. Scale tools (checked by script)

Script: scratchpad/scripts/r6a_compute.py, run with python3 -I. Inputs printed by the script:
- UBS household wealth $517.69T (pyramid sum), UBS sample adults 3.846 billion (58m + 588m + 1.58bn + 1.62bn)
- World GDP $118.35T (2025) and $111.67T (2024), world population 8.215 billion, world adults aged 20 and over 5.552 billion (World Bank)
- IIF debt $348.3T (households 64.6, companies 100.6, government 106.7, financial 76.4), nonfinancial $271.9T
- McKinsey net worth $600T, balance sheet about $1,800T. FSB financial assets $503.7T (2024). IMF $251T (2024)

### Per person, per adult, per dollar of GDP
| Measure | Value |
|---|---|
| Household wealth per person on Earth | $63,014 |
| Household wealth per adult (UBS sample adults) | $134,605 |
| Household wealth per adult (all adults aged 20 and over on Earth) | $93,242 |
| National net worth per person (McKinsey) | $73,033 |
| IIF debt per person (all four sectors) | $42,396 |
| Nonfinancial debt per person | $33,096 |
| World output per person (GDP) | $14,406 |
| Household wealth per $1 of world GDP | $4.37 |
| National net worth per $1 of world GDP | $5.07 |
| IIF debt per $1 of world GDP | $2.94 (IIF's own GDP gives about 308%) |
| IMF nonfinancial debt per $1 of world GDP (2024) | $2.25 |
| Financial assets per $1 of world GDP (FSB, 2024) | $4.51 |

Why the averages mislead: the median adult in UBS's sample owns far less than $134,605. In a village of 100 adults (below), 42 own under $10,000. And the per-person debt is not owed by the person: it is owed by governments, firms, banks and households, to each other.

### The world as a village of 100 adults (UBS GWR 2026 pyramid, end 2025)
| Adults out of 100 | Wealth band | Share of all wealth | Average wealth in the band |
|---|---|---|---|
| 42 | under $10,000 | 0.6% | about $1,900 |
| 41 | $10,000 to $100,000 | 12.2% | about $40,000 |
| 15 | $100,000 to $1 million | 38.8% | about $341,000 |
| 1.5 | over $1 million | 48.4% | about $4.3 million |

In words: of 100 adults, the 1 or 2 millionaires own almost half of everything, and the poorest 42 together own less than 1%.

### If the world were one household earning $100,000 a year
Scale everything by world GDP (factor 100,000 / 118.35 trillion).
| Item | Household version |
|---|---|
| Income each year (world GDP) | $100,000 |
| Net wealth of the family members (UBS household wealth) | $437,400 |
| Net worth of the whole household, including the "family business" and the "town hall" (McKinsey) | $507,000 |
| Total IOUs written inside the household (IIF) | $294,300 |
| of which the "town hall" (government) owes | $90,200 |
| of which the "family business" (companies) owes | $85,000 |
| of which family members (households) owe | $54,600 |
| of which the "family bank" (financial sector) owes | $64,600 |
| All financial claims held by financial firms (FSB, scaled by 2024 GDP) | $451,100 |
| Whole balance sheet, every asset counted (McKinsey) | about $1,520,900 |

The key lesson in household terms: the $294,300 of IOUs are owed **from one member of the household to another**. The household as a whole owes nobody outside. Its true net worth is the house, the land, the tools and the business, valued at about five years of income. The danger is not that the household "owes more than it owns" (it does not), but that one member cannot pay another, and the chain of IOUs breaks.

### Number anchors (checked)
- One trillion seconds is about 31,700 years. One trillion dollars counted at $1 a second takes as long.
- Counting the IIF's $348.3T at $1 a second would take about 11 million years.
- $1 trillion in $100 bills (10 billion notes at about 0.11 mm each) makes a stack about 1,090 km high.

---

## G. Sweep: what the public and the schools believe (Move 2)

### Default story from three places
- **Textbook:** every financial asset has a matching liability, so world net worth equals the value of real assets (national accounts, SNA 2008). Debt is a claim on future income.
- **Official view (IMF, BIS, IIF):** global debt is high and still rising. Public debt is the growing part, private debt to GDP is falling, and vulnerabilities sit in refinancing needs (emerging markets face a record over $9T in 2026, IIF) and in rising interest bills. IMF: total debt "just above 235%" of GDP, public debt "nearly 93%" (2024).
- **Most-viewed popular view:** "Every country is in debt, so who is the creditor?" The better videos answer "mostly ourselves". Many quote "over $300T" or "three times the world economy" and frame it as a bomb or a spiral.

### Popular sweep (YouTube via vidIQ, views as of 2026-10-24)
| Explainer | Channel | Date | Views | Testable claim | Verdict |
|---|---|---|---|---|---|
| "the world is in debt to who?" (14-second meme) | Zach Memes | 2021-09-02 | 27.2M | The world owes money but nobody can say to whom | **The right question.** The world owes it to itself. Every debt is someone's asset (section B) |
| "If Every Country Is in Debt… Who's the Money Owed To?" | The Invisible Hand (sponsored by a gold miner) | 2025-06-22 | 3.0M | Countries owe mostly their own citizens and institutions | **Mostly true.** US: 29% of public debt held abroad, Japan 13%. But euro members owe 34% (Italy) to 63% (Belgium) to non-residents, many of them other euro area investors |
| "Why Every Country Is in Debt? And Who Do They Owe?" | Explains 101 | 2025-03-15 | 2.7M | Lenders are bond buyers, the IMF and the World Bank | **Partly.** The IMF and World Bank are small next to bond markets. Central banks hold large shares (BoJ 43%, Fed 14%) |
| "Trump Just Started The Debt Spiral" | Andrei Jikh | 2026-10-12 | 2.4M | US debt is entering a spiral | **Untested here.** The US government owes 116% of GDP (BIS). A spiral needs interest rates above growth for years. Belongs to L2.1 and rb-07 |
| "What Everyone Gets Wrong About Global Debt" | Economics Explained | 2023-07-02 | 1.7M | Global debt "over $300 trillion" is not the problem it seems | **Number now outdated** ($348T to $365T). The framing (debt is also assets) is right |
| "If Every Country Is in Debt… Who's the Creditor?" | Financial Historian | 2025-10-27 | 1.3M | Debt "exceeds $315T, nearly three times the world economy", governments roll debt forever | **Ratio right on the IIF count** (about 3.1 times in 2025). Rolling over is normal for governments (rb-07) |
| "If Every Nation Is in Debt… Who Are They Paying?" | Hidden Capital | 2026-02-14 | 0.8M | "The world owes over $320T", "we are both lenders and borrowers" | **Right idea, old number** |

Other reach: Visual Capitalist's "All of the World's Money and Markets" (latest edition found, 2022) puts derivatives at $630T to $1.2 quadrillion next to debt, which invites readers to add notional derivatives to debt. They should not be added (section A).

### Hypothesis table (popular claims)
| Claim | Who says it | Reach | School | How to test | Verdict |
|---|---|---|---|---|---|
| "World debt is 500T+, more than world wealth of 300T+" | The owner, echoing their Round 1 belief (gold x10, Bitcoin x10) | Desk | Hard money flavour | Compare measures table | **Wrong on every main measure.** Wealth $518T to $600T, debt $348T to $365T. "500T" matches FSB financial assets ($503.7T) or UBS wealth ($518T) |
| "Global debt is $300T" | Many explainers 2021 to 2024 | Millions of views | Popular | IIF series | **Was right for 2022 to 2024** (IIF $319.5T at end 2024). Now $348T (end 2025) and over $365T (mid 2026) |
| "Debt is about three times the world economy" | Financial Historian, Hidden Capital | 2.1M combined | Popular | IIF ratio | **True on the IIF four-sector count** (about 305% to 310%). 2.35 to 2.46 times without the financial sector (IMF, BIS) |
| "The global debt bomb is about to go off" | Common headline frame | High | Hard money, popular | Ratio trend, refinancing needs, defaults | **Overstated as one bomb.** The world ratio fell five years in a row. Risks are specific: emerging market refinancing (over $9T in 2026), dollar debt, specific sovereigns |
| "Debt is bigger than wealth" | Owner's numbers | Desk | Popular | Measures table | **Wrong.** Wealth is 1.5 times IIF debt (UBS) to 1.7 times (McKinsey). And the two should not be subtracted |
| "We owe it to ourselves" | Krugman (2015), many economists | High | Keynesian | Holder data, NIIP | **True for the world and for domestic holders.** False for foreign-currency debt and for net debtor nations (US NIIP minus $26.5T). Also hides who owes whom inside a country |

### The schools (strongest position, best source, scope)
| School | Strongest position on world debt and wealth | Best source | Where it agrees with the map | Where it objects |
|---|---|---|---|---|
| Official (IMF, BIS, IIF) | Debt is high and shifting to governments. Fiscal space is shrinking as interest bills rise. Debt to GDP is the key yardstick | IMF blog 17 Sep 2025 (Global Debt Database), IIF GDM Feb 2026 | Uses the same gross numbers, warns that inflation, not repayment, cut ratios | Pays less attention to the asset side and to net positions |
| Post-Keynesian and MMT | Government debt in its own currency is the private sector's net financial asset. Such a state cannot run out of its own money. The limit is inflation. Private debt is the real danger (Minsky, Keen) | Kelton, The Deficit Myth (2020). Keen, Can We Avoid Another Financial Crisis? (2017) | The ledger in section B (every debt is an asset) is their core point | Would stress that household and corporate debt (China firms, Canada and Swiss households) matter more than government debt |
| Austrian and hard money | Debt has grown faster than output since 1971 because money is not anchored. Cheap credit inflates asset prices, so measured wealth is partly a bubble. The end is debasement | Mises Institute writing on credit expansion. Dalio, How Countries Go Broke (2025) for the big debt cycle (not Austrian, close on the mechanism) | The timeline (debt 100% to about 250% to 300% of GDP since 1971) and the "price, not pile" finding (only about 20% of the 2025 wealth gain was new investment) support them | Would reject GDP ratios as reassurance and treat the five-year fall in the ratio as stealth default by inflation |
| Monetarist and mainstream macro | Debt redistributes, it does not destroy wealth. What matters is real rates versus growth, and who holds the debt | Krugman, "Nobody Understands Debt", NYT 9 Feb 2015. Reinhart and Rogoff, This Time Is Different (2009) on external and foreign-currency debt crises | Agrees debt nets out globally | Reinhart and Rogoff add the warning: crises cluster where debt is external and in a foreign currency |

### Scope of each authority
- **UBS Global Wealth Report:** people's wealth only, 56 markets, its own models, methods revised each year (UBS says figures "are not comparable with those shown in previous editions"). The report is labelled "For UBS marketing purposes". Malaysia is not covered.
- **IIF Global Debt Monitor:** a bank industry body. Counts the financial sector, so it is the largest debt figure. Strong on emerging markets. GDP base is its own.
- **IMF Global Debt Database:** official, nonfinancial only, annual and a year behind.
- **BIS total credit:** about 44 economies, quarterly, careful on valuation (government at nominal value, private at market value). Not the whole world.
- **FSB monitoring report:** counts assets of financial institutions in 29 jurisdictions to watch nonbank risk. It is not a wealth measure.
- **McKinsey Global Institute:** a consultancy's national-balance-sheet model, scaled from major economies. Useful for real assets and decomposition, hard to verify (report not opened in this lane).

---

## H. Curiosity questions and the radiant map

### Curiosity questions (answers use the verified numbers above)
| # | Question | Short answer | Builds on |
|---|---|---|---|
| 1 | If every debt is somebody's asset, who is the world in debt to? | Itself. The $348T of IIF debt is matched by $348T of claims held by people, pension funds, banks and central banks. Only countries can owe "outside": the US owes the rest of the world a net $26.5T, Japan is owed a net $3.5T | rb-07 |
| 2 | World wealth rose about 10.8% in 2025 (UBS). Did the world build 10% more things? | No. McKinsey finds only about 20% of the 2025 household gain came from net new investment and about 58% from above-inflation valuation gains. A weaker dollar added more for non-US wealth | rb-10 |
| 3 | Why is the richest country also the biggest debtor? | Because lenders lend against assets and because the world wants dollar assets. The US has 35% of world household wealth, 29% of world nonfinancial debt and a net foreign debt of $26.5T, mostly in its own currency | rb-leader |
| 4 | Japan's government owes about twice its GDP. Why is it not treated like Greece was? | Its debt is in yen, the Bank of Japan holds about 43% of it, foreigners only about 13%, and Japan as a whole is owed $3.5T by the world. Greece borrowed in a currency it could not print, much of it from foreigners | rb-em |
| 5 | Debt to GDP fell for five years while debt hit a record every year. How can both be true? | Inflation raised nominal GDP faster than debt. BIS: world nonfinancial credit went from $222T (285% of GDP) in 2020 to $237T (235%) in 2024. Nobody paid it down | rb-08 |
| 6 | Real estate is about two thirds of world net worth. What happens to "world wealth" if house prices fall 20%? | Measured wealth falls by roughly 13% of net worth (two thirds times 20%), with no house lost and no debt reduced. Debt stays at face value, so leverage rises | rb-titled |
| 7 | Japan's debt fell by a third in dollars from 2020 to 2025. Did Japan repay? | No. In yen it rose 3% (2,273 to 2,340 trillion yen, BIS). The yen fell from about 103 to about 157 per dollar (implied by BIS). The ruler moved | rb-10 |
| 8 | Germany and Italy share the euro. Why do Italian families look richer than German ones? | The Italian median adult has $131,001, the German $53,485 (UBS). Italian households owe little (36% of GDP) and mostly own their homes. Italy's state is the debtor (137% of GDP), Germany's state is not (63%) | rb-09 |
| 9 | Is a country with high government debt but rich households poor or rich? | Look at the whole national balance sheet. Japan: state debt 193% of GDP, yet a net creditor of 83% of GDP abroad. Switzerland: tiny state debt, households owe 123% of GDP, still the richest adults on Earth | rb-nation |
| 10 | When did world debt jump most: 1971, 2008 or 2020, and who borrowed? | 2020: a record $35T in one year, governments about $14T (IIF). 2008 to 2010: the BIS ratio rose from 202% to 229%. 1971 itself was no jump. Debt was near 100% of world GDP then (IMF) | rb-05 |
| 11 | Split world wealth and debt across 8.2 billion people. What does each own and owe? Why is that misleading? | About $63,000 of household wealth and $42,000 of debt each. But 42 of every 100 adults own under $10,000, and the debt is owed between sectors, not by each person | rb-13 |
| 12 | China is not in the G7 or the G10. Why does that change the picture? | China holds 16% to 18.5% of world household wealth and 22% of world nonfinancial debt, and added more than $4.8T of the roughly $10T world debt increase in H1 2026. The G10 alone (11 countries) covers about 60% of wealth and 56% of debt | rb-11 |

### Radiant map for L2.3
Centre: "Every debt is someone's asset, so what is the world actually worth?"

| # | Ray title | Six-word subtitle | Linked chapter |
|---|---|---|---|
| 1 | Four measures, one table | Wealth, net worth, assets, debt differ | rb-13 |
| 2 | The great cancellation | Every IOU has two equal sides | rb-07 |
| 3 | Price, not pile | Most new wealth is higher prices | rb-titled |
| 4 | The yardstick moves | Dollar swings resize the whole world | rb-10 |
| 5 | Debt's two crisis jumps | 2008 and 2020 lifted every ratio | rb-08 |
| 6 | Countries built differently | Debtor, creditor, saver, borrower, banker, hub | rb-leader |
| 7 | Who holds the paper | Central banks, foreigners, or the family | rb-bonds |
| 8 | Brain-sized numbers | Village, household, per person, per dollar | rb-13 |

---

## Key findings, anomalies, gaps and chains (Topic lane hand-in)

### Key findings
1. The owner's two numbers are swapped and dated. Wealth $518T to $600T, debt $348T (end 2025) to over $365T (mid 2026).
2. "500T" is the asset side: FSB financial assets $503.7T (2024) or UBS household wealth $517.7T (2025). "300T" is the debt headline of 2021 to 2024.
3. At world level debt nets to zero. What remains is real assets ($620T, McKinsey) priced by interest rates.
4. Debt grew from about 100% of world GDP (1950 to about 1980, IMF) to 235% (IMF nonfinancial, 2024) or about 308% (IIF with finance, 2025). Wealth grew from about 4.6 to about 5.1 times GDP between 2000 and 2025 (McKinsey).
5. The G7 holds about 56% of world household wealth and 51% of nonfinancial debt with under 10% of the people. Debt follows wealth.
6. Structures differ more than sizes: US (rich, net debtor), Japan (state debtor, nation creditor, central bank holds 43%), Germany versus Italy (state versus family debt), UK and Canada (mortgage heavy), Switzerland (tiny state, huge net foreign assets), China (corporate debt, home-funded), Malaysia (foreign window on bonds).

### Say/Do gaps
- Official bodies say debt to GDP is "stabilising" or falling (IMF, IIF). What happened: dollar debt rose every year and the ratio fell through inflation. The IIF itself says inflation masks vulnerabilities (September 2026).
- The Bank of England says it will run its gilt holdings to zero (17 September 2026 notice). The Fed's Treasury holdings were $4.57T on 2026-10-21, a level that should be compared with its own runoff statements (not checked here, belongs to L2.2).

### Anomalies
1. Swapped numbers (above).
2. Ratio down, dollar debt up, 2021 to 2025.
3. BIS world ratio rose in 2025 (234.8% to 245.7%) while IIF's fell. Likely an exchange-rate method effect (hypothesis).
4. UBS median wealth per US adult is $68,998 at end 2025 against $107,739 at end 2022 in the 2023 databook. UBS says this year's figures are not comparable with earlier editions. A teaching page should not show a "collapse" of the US median.
5. UBS GWR 2026 regional table is internally inconsistent: its "Americas" figure ($185.0T) equals the US share (35.7% of $517.7T), while the pie chart gives North America 38.1%. Use the pyramid total and the stated shares.
6. IIF H1 2026: press says debt rose about $10T in H1 2026 to over $365T, but $348.3T plus $10T is about $358T. The gap is probably revisions or exchange rates. One outlet's "emerging market debt over $110T" conflicts with IIF's own $116.6T at end 2025. Treat the H1 2026 detail as unconfirmed until the IIF document is read.

### Mechanism chains (with tests)
- Rates rise, then house and share prices fall, then measured wealth falls while debt at face value stays, so leverage rises. Test: UBS GWR 2027 (June 2027) and McKinsey 2027 show wealth growth below debt growth if rates stay high.
- The dollar weakens, then all non-US wealth and debt rise in dollars. Test: a 10% fall in the broad dollar between now and mid 2027 should add about 6% to 7% to world dollar totals (non-US share about 65% of wealth). Model, not checked.
- Inflation above 3% keeps world debt to GDP falling while dollar debt rises. Test: next IIF monitors (Q3 2026 and Q4 2026 data).
- China keeps adding over $4T a half year, so China's share of world debt rises above 23%. Test: IIF February 2027 release.

### Open questions
- McKinsey 2026 report figures should be read in the PDF (blocked from this environment): net worth $600T, real assets $620T, coverage.
- IMF Global Debt Database 2026 update (2025 data) was not found. Check whether it has been released.
- Bank of England, Bank of Canada, Swiss, Chinese and Malaysian central bank shares of government debt were not confirmed.
- World wealth in 1971, 1980 and 2008 has no fetched primary series. WID (World Inequality Database) or the Credit Suisse 2010 and 2014 reports could fill this.

### Proposed changes
- Rulebook rb-titled: keep "$470 trillion" (end 2024) but add a pointer to L2.3 and the end-2025 figure ($518T). Its line "Global debt reached about $365 trillion in mid-2026" is consistent with this lane (press-sourced IIF).
- Rulebook rb-07: resolve the librarian's flag. "$346T" is an older speaker figure, "$365T" is IIF H1 2026. Label both with dates.
- New L2.3 chapter: lead with the definitions box and the one measures table, then the "household earning $100,000" picture, then the timeline, then the six structure stories.

---

## I. Claims table and tripwires

Tiers follow PLAN 4.1. Statistical releases by central banks, treasuries and statistics offices (BIS, Eurostat, TIC, fiscaldata, H.4.1, MoF Japan, IMF balance of payments, World Bank) are treated as T0 measurements. UBS, IIF and McKinsey are T4 (specialist estimates), even when the primary document was read.

Source keys (full URLs):
- UBS26: https://www.ubs.com/global/en/wealthmanagement/insights/global-wealth-report/_jcr_content/root/contentarea/mainpar/gridcontrol_copy/col_1/inner/col_2/actionbutton.901659062.file/PS9jb250ZW50L2RhbS9hc3NldHMvd20vc3RhdGljL2d3ci9nbG9iYWwtd2VhbHRoLXJlcG9ydC1lbi0yMDI2LnBkZg==/global-wealth-report-en-2026.pdf
- UBS26M: https://www.ubs.com/global/en/media/display-page-ndp/en-20260630-gwr-2026.html
- IIF-FEB26: https://www.iif.com/LinkClick.aspx?fileticket=tEhC0oymVlM%3D
- IIF-REFL: https://www.iif.com/Publications/ID/6672/Reflections-Across-Two-Decades-of-Global-Debt-Evidence-from-the-IIF-Global-Debt-Monitor
- IIF-SEP26 (press): https://www.scmp.com/economy/global-economy/article/3368552/led-china-and-us-borrowing-world-now-owes-record-us365-trillion-debt-iif
- IMF25: https://www.imf.org/en/Blogs/Articles/2025/09/17/global-debt-remains-above-235-of-world-gdp
- IMF21: https://www.imf.org/en/blogs/articles/2021/12/15/blog-global-debt-reaches-a-record-226-trillion
- FSB25: https://www.fsb.org/uploads/P161225.pdf
- MCK26: https://www.mckinsey.com/mgi/our-research/the-global-balance-sheet-2026-imbalance-and-divergence and https://fortune.com/2026/07/27/global-household-wealth-mckinsey-40-trillion-balance-sheet-quadrillion/
- BIS-TC: https://stats.bis.org/api/v2/data/dataflow/BIS/WS_TC/2.0/Q..C+G+H+N+P.A..770+USD.A?format=csv
- WB: https://api.worldbank.org/v2/country/WLD/indicator/NY.GDP.MKTP.CD?format=json
- TIC5: https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table5.txt
- FD: https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/debt_to_penny
- H41: https://api.db.nomics.world/v22/series/FED/H41/RESPPALGUM_N.WW
- MOF26: https://www.mof.go.jp/english/policy/jgbs/publication/debt_management_report/2026/esaimu2026-2-3.pdf
- ES-GGD: https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/gov_10dd_ggd
- IMF-BOP: https://api.db.nomics.world/v22/series/IMF/BOP (series IFR_BP6_USD)

| Id | Claim | Tier | Status | Source (URL) | Source date | As-of date | Falsifier |
|---|---|---|---|---|---|---|---|
| R6A-01 | World household net wealth was about $517.7T at end 2025 (sum of UBS pyramid bands 250.59 + 200.72 + 63.16 + 3.22) | T4 | Plausible (primary document read, consistent with McKinsey $570T) | UBS26 | 2026-06-30 | End 2025 | UBS publishes a different 2025 total or a correction |
| R6A-02 | Global personal wealth grew 10.8% in dollars in 2025, after 4.6% in 2024 and 4.2% in 2023 | T4 | Plausible | UBS26M | 2026-06-30 | 2025 | UBS revision |
| R6A-03 | The US holds 35.7% and Greater China 18.5% of world personal wealth | T4 | Plausible | UBS26 | 2026-06-30 | End 2025 | UBS revision |
| R6A-04 | World debt on the IIF four-sector count was $348.3T at Q4 2025: households $64.6T, nonfinancial firms $100.6T, governments $106.7T, financial sector $76.4T | T4 | Plausible (primary document read) | IIF-FEB26 | 2026-02-25 | Q4 2025 | IIF revision beyond 3% |
| R6A-05 | IIF world debt to GDP fell for a fifth straight year to about 308% in 2025 | T4 | Plausible | IIF-FEB26 | 2026-02-25 | 2025 | IIF revises 2025 ratio above 2024 |
| R6A-06 | World debt passed $365T in H1 2026 (IIF), with China adding more than $4.8T | T4 | Speculative (press only, H1 arithmetic gap) | IIF-SEP26 | 2026-09-23 | H1 2026 | IIF document shows a lower figure |
| R6A-07 | World public plus private nonfinancial debt was $251T in 2024, just above 235% of GDP. Public $99.2T, private $151.8T | T2 | Plausible | IMF25 | 2025-09-17 | 2024 | IMF database revision |
| R6A-08 | BIS total credit to the nonfinancial sector, all reporting countries, was $262.7T (245.7% of GDP) at Q4 2025 | T0 | Confirmed | BIS-TC | Fetched 2026-10-24 | Q4 2025 | BIS revision |
| R6A-09 | Total global financial assets were $503.7T at end 2024: central banks $34.1T, banks $191.3T, public financial institutions $21.5T, nonbanks $256.8T | T0/T2 | Confirmed | FSB25 | 2025-12-16 | End 2024 | FSB revision |
| R6A-10 | The owner's "500T" most likely comes from total financial assets or a wealth figure, not debt. No standard debt measure reaches $500T | T4 (inference on R6A-04 to R6A-09) | Plausible | FSB25, IIF-FEB26, IMF25 | 2026-10-24 | 2026 | A primary debt series above $500T is found |
| R6A-11 | The owner's "300T" matches world debt in 2021 to 2024 (IIF $319.5T at end 2024) and popular "over $300 trillion" videos (2023) | T4 | Plausible | IIF-FEB26, https://www.youtube.com/watch?v=IAqj30s4lH8 | 2026-02-25 | End 2024 | Owner names a different source |
| R6A-12 | World wealth exceeds world debt on every main measure: 1.5 times (UBS over IIF) to 1.7 times (McKinsey over IIF) | T4 | Plausible | UBS26, MCK26, IIF-FEB26 | 2026 | 2025 | A like-for-like measure shows debt above net worth |
| R6A-13 | McKinsey puts 2025 national net worth at about $600T (5.1 times GDP), real assets about $620T, household net worth $570T, total balance sheet nearly $1.8 quadrillion | T4 | Speculative (secondary, PDF blocked) | MCK26 | 2026-07 | 2025 | PDF shows different figures |
| R6A-14 | Only about 20% of the 2025 household wealth gain came from net new investment and about 58% from above-inflation valuation gains | T4 | Speculative (secondary) | MCK26 | 2026-07 | 2025 | PDF shows different split |
| R6A-15 | World nonfinancial debt was near 100% of world GDP from 1950 to about 1980 | T4 (summary of IMF chart) | Plausible | https://conversableeconomist.com/2025/09/17/some-trends-in-global-debt-from-the-imf/ | 2025-09-17 | 1950 to 1980 | IMF GDD shows a different level |
| R6A-16 | IMF: world debt hit $226T in 2020, 256% of GDP, a 28-point rise, the largest one-year jump since the Second World War | T2 | Confirmed (official) | IMF21 | 2021-12-15 | 2020 | IMF revision |
| R6A-17 | IIF: world debt rose a record $35T in 2020, governments about $14T, firms $8T, households $6T. World debt was about $130T (240% of GDP) in 2005 | T4 | Plausible | IIF-REFL | 2026-08 | 2005, 2020 | IIF revision |
| R6A-18 | BIS world nonfinancial credit fell from 285.0% of GDP (2020) to 234.8% (2024) while rising from $222.0T to $237.0T | T0 | Confirmed | BIS-TC | Fetched 2026-10-24 | 2020 to 2024 | BIS revision |
| R6A-19 | Japan's total nonfinancial debt fell from $22.05T to $14.94T (2020 to 2025) while rising from 2,273 to 2,340 trillion yen | T0 | Confirmed | BIS-TC (XDC and USD) | Fetched 2026-10-24 | Q4 2020 to Q4 2025 | BIS revision |
| R6A-20 | US NIIP was about minus $26.5T (minus 91% of GDP) at end 2024. Japan plus $3.5T, Germany plus $3.6T, China plus $3.3T, Switzerland plus $1.15T (119% of GDP) | T0 | Confirmed | IMF-BOP | Indexed 2025-08-28 | End 2024 | IMF or national revision |
| R6A-21 | The Fed held $4.57T of Treasuries (2026-10-21), 14.0% of the $32.60T debt held by the public (2026-10-22) | T0 | Confirmed | H41, FD | 2026-10-22 | 2026-10-21 | H.4.1 revision |
| R6A-22 | Foreigners held $9.33T of US Treasuries in August 2026 (28.6% of debt held by the public), $3.76T of it official | T0 | Confirmed | TIC5 | 2026-10 | 2026-08 | TIC revision |
| R6A-23 | The Bank of Japan held 43.1% and foreigners 12.8% of JGBs plus T-bills at end December 2025 | T0 | Confirmed | MOF26 | 2026 | 2025-12 | MoF revision |
| R6A-24 | Central bank and non-resident shares of government debt in 2025: Germany 19.5% and 51.3%, France 16.5% and 54.3%, Italy 18.5% and 34.4%, Belgium 14.9% and 63.4%, Netherlands 20.5% and 49.3%, Sweden 3.7% and 23.1% | T0 | Confirmed | ES-GGD | Fetched 2026-10-24 | 2025 | Eurostat revision |
| R6A-25 | Government debt as % of GDP at Q4 2025 (BIS, nominal): Japan 193.3, Italy 137.1, US 116.3, France 115.5, Belgium 107.9, UK 102.3, Canada 100.2, China 99.3, India 83.8, Malaysia 65.2, Germany 62.6, Netherlands 44.7, Sweden 35.1, Switzerland 24.8 | T0 | Confirmed | BIS-TC | Fetched 2026-10-24 | Q4 2025 | BIS revision |
| R6A-26 | Household debt is highest in Switzerland (122.9% of GDP) and Canada (100.4%) among the countries covered, lowest in Italy (35.9%) | T0 | Confirmed | BIS-TC | Fetched 2026-10-24 | Q4 2025 | BIS revision |
| R6A-27 | China's total nonfinancial credit is about 300% of GDP ($60.1T), above the US ratio (251%). In dollars the US total is larger ($77.3T) | T0 | Confirmed | BIS-TC | Fetched 2026-10-24 | Q4 2025 | BIS revision |
| R6A-28 | Mean and median wealth per adult at end 2025: Switzerland $910,382 and $145,555, US $696,277 and $68,998, Japan $211,846 and $135,745, Germany $346,613 and $53,485, Italy $279,439 and $131,001 | T4 | Plausible | UBS26M | 2026-06-30 | End 2025 | UBS revision |
| R6A-29 | Financial assets are 78.9% of gross household wealth in the US, 68.9% in Japan, 43.6% in Germany and 25.8% in India | T4 | Plausible | UBS26 | 2026-06-30 | End 2025 | UBS revision |
| R6A-30 | The G7 holds about 56% of world household wealth and about 51% of world nonfinancial debt with 9.6% of world population (derived) | T4 (derived from T0 and T4) | Plausible (model) | Derived: UBS26, BIS-TC, IIF-FEB26, WB | 2026-10-24 | 2025 | Recalculation with UBS country totals differs by more than 3 points |
| R6A-31 | In UBS's sample, 42.1% of adults own under $10,000 and hold 0.6% of wealth. 1.5% own over $1M and hold 48.4% | T4 | Plausible | UBS26 | 2026-06-30 | End 2025 | UBS revision |
| R6A-32 | Scaled to a household earning $100,000, the world has about $437,000 of household wealth, $507,000 of national net worth and $294,000 of IOUs written between its own members | Model (inputs R6A-01, 04, 13, WB) | Plausible (model) | Script r6a_compute.py | 2026-10-24 | 2025 | Input revisions |
| R6A-33 | World household wealth per person is about $63,000 and IIF debt per person about $42,400 (8.215 billion people) | Model | Plausible (model) | Script r6a_compute.py, WB | 2026-10-24 | 2025 | Input revisions |
| R6A-34 | The BIS world debt ratio rose in 2025 (234.8% to 245.7%) while the IIF ratio fell, likely an exchange-rate method effect | T0 (data), inference T4 | Plausible (cause unconfirmed) | BIS-TC, IIF-FEB26 | 2026-10-24 | 2025 | BIS methodology shows another cause |
| R6A-35 | UBS's US median wealth fell from $107,739 (end 2022, 2023 databook) to $68,998 (end 2025) largely because of method revisions, not a real collapse | T4 | Speculative (UBS warns editions are not comparable, no reconciliation found) | UBS26, https://en.wikipedia.org/wiki/List_of_countries_by_wealth_per_adult | 2026-06-30 | End 2025 | UBS publishes a back series showing a real fall |
| R6A-36 | Malaysia: total nonfinancial debt 223.7% of GDP (government 65.2, households 69.8, firms 88.6), NIIP about zero, foreigners hold about 20% of MGS | T0 (BIS, IMF), T4 (foreign share, press) | Confirmed for debt, Plausible for holders | BIS-TC, IMF-BOP, https://www.nst.com.my/amp/business/economy/2026/09/1523569/malaysias-resilience-boosts-appeal-government-bonds | 2026 | Q4 2025 to July 2026 | BNM data show a different foreign share |

### Tripwires (dated)
| Tripwire | What would change | Watch date | Source |
|---|---|---|---|
| IIF Global Debt Monitor with Q3 2026 data | World debt above $375T, or the ratio rising for the first time since 2020, flips the "ratio falling" eye-opener | About mid November 2026 to February 2027 | IIF |
| BIS total credit release with Q2 2026 data | BIS world ratio above 250% confirms the 2025 rise is not only a 2025 quirk | Early December 2026 | BIS |
| Fed Z.1 Q3 2026 | US household net worth falling quarter on quarter would be the first sign that the valuation channel has reversed | About 2026-12-11 | Federal Reserve |
| FSB Global Monitoring Report 2026 (2025 data) | Total financial assets above $530T would widen the gap with the owner's "500T" | About mid December 2026 | FSB |
| Broad dollar move of 10% either way by 2027-06-30 | Every world total in dollars moves about 6% to 7% with no real change (model) | 2027-06-30 | Fed broad dollar index |
| UBS Global Wealth Report 2027 | World household wealth below $500T for end 2026 would mean the valuation channel reversed | About 2027-06-30 | UBS |
| BoJ share of JGBs plus T-bills below 40% | Japan's "owes itself" story shifts toward private and foreign holders | MoF data for end 2026, about 2027-03 | MoF Japan |
| China debt growth above $4T in H2 2026 | China's share of world nonfinancial debt above 23% | IIF release about February 2027 | IIF |
| Malaysia foreign share of MGS below 18% or above 25% | Changes the "foreign window" story for rb-em | Monthly, next check 2026-12-31 | BNM, MARC |

