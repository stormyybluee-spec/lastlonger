# DCD: Why seigniorage and sanctions power live in Set 1, and what gold can and cannot do

Lane: DCD (decoded intent, Round 3 segment D). Written 2026-10-22. As-of date for every status below: 2026-10-22 unless noted.

Owner question (their words, all parts kept): "Explain clearly why Set 1 seigniorage and sanctions power live there. Why is it important that it only matters at the government level? If all the new rails are happening and can expand real wealth more, and gold has a capped supply with only about 20% more to be mined, does that mean asteroid resources expand it? Or can gold still price to $10k to $20k per ounce to tally with the debt, or be revalued against the debt, when it now sits around $4,000 to $5,000? You called gold insurance against the board, but that wealth is small (worth $30 to 40T when total debt is $500T+). And you said 'what money is backed by', but an earlier round refuted the 10x idea. Why do you now say gold is what money is backed by? Isn't money the form of bonds (primary issuance)?"

Reused (cited, not re-argued): R1 L7 (gold value, the x10 refutation, L7-09 to L7-11), R2 R2A (Set 1's three jobs, gold under Basel, Tether gold, stablecoin float), R1 L5 (central bank gold, Russia, "Economic Outcast"), R1 Db (gold revaluation arithmetic, 1934 precedent, the 1863 analogy), R1 L1 and L2 (gold book value, ARMA), R3 DCA (gold revaluation ledger row DCA-D09, kept consistent here).

Method: 17 web searches plus direct primary fetches: Treasury Fiscal Data API (debt to the penny 2026-10-20, gold reserve 2026-09-30), Fed H.4.1 (week ended 2026-10-14), Fed press releases on remittances (2022-01-14, 2023-01-13), Treasury press release jy0612 (2022-02-28), USGS Mineral Commodity Summaries 2026 gold chapter (PDF), WGC "How much gold" page (dated 2026-08-18), WGC FY2025 Gold Demand Trends press release (PDF), COMEX gold quote (Yahoo chart API). Model script: `/tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/dcd_gold.py` (run with python3 -I). Everything labelled "model" is arithmetic on stated inputs, not data. Items marked [memory] come from pre-cutoff knowledge and were not re-verified this session.

Live inputs used throughout (all 2026-10-22 unless noted):

| Input | Value | Source |
|---|---|---|
| Gold (COMEX front month) | $4,078/oz (52-week high $5,586, low $3,901) | Yahoo GC=F chart API |
| US government gold | 261,498,926 oz, book $11.04B at $42.2222 | Treasury gold_reserve, 2026-09-30 |
| US debt | gross $40.44T, held by the public $32.57T | Debt to the Penny, 2026-10-20 |
| Base money | currency $2.488T + bank reserves $3.022T = $5.51T | H.4.1, week to 2026-10-14 |
| Fed holdings of Treasuries | $4.57T of $6.76T total assets | H.4.1 |
| Treasury cash (TGA) | $0.883T | H.4.1 |
| Foreign-held Treasuries | $9.33T, of which official $3.76T | TIC Table 5, Aug 2026 (R1 L5) |
| FY2026 deficit | $1.99T (net interest $1.05T + primary $0.94T) | MTS (R1 L7) |
| US M2 | $23.34T | H.6, Aug 2026 (R1 L7) |
| Above-ground gold | 222,600t, about $29T | WGC, end Q2 2026 |
| Official (central bank) gold | about 39,000t (WGC), about 36,000t (IMF-reported, R1 L5) | WGC, R1 L5 |
| Global debt | about $365T | IIF Global Debt Monitor Q2 2026 (secondary coverage) |
| Stablecoin supply | $303.8B | DefiLlama (R3 R3A) |

---

## 1. Answers

### A1. Why do seigniorage and sanctions power live in Set 1, and why does it matter that this is "at the government level"?

**Answer.** Seigniorage is the profit from issuing money. Whoever issues a liability that people hold at zero interest, and buys an interest-paying asset with it, keeps the spread. In the dollar system that spread sits where Set 1 sits: the Fed issues cash and reserves and holds $4.57T of Treasuries, and it sent $117B to the Treasury in 2015 and $107.4B in 2021. It stopped in September 2022 because the Fed now pays interest on reserves above what its old bonds earn, so its losses sit in a "deferred asset" ($233.2B on 2026-10-14, down from about $243.5B at end 2025). Stablecoins copy the same model privately: holders get zero by law, the issuer earns about $11.6B a year on $304B of bill reserves (model), and Tether alone made more than $10B in 2025. Sanctions power lives in Set 1 for a mechanical reason. Every dollar payment ends as a transfer on a ledger the US controls: Fedwire ($4.59T a day in 2025), CHIPS ($2.0T a day) and US correspondent banks. Foreign central banks also keep their Treasuries as book entries, $2.55T of them in custody at the New York Fed. So on 2022-02-28 one Treasury directive "effectively immobilizes any assets" of Russia's central bank held by US persons anywhere, and Europe froze the euro side (about €202B still at Euroclear in June 2026). Only states can do this, because the power comes from law over the ledger keepers, not from technology. A private issuer like Tether can freeze tokens only by borrowing that state power. This is why the government level matters: these two powers explain how the state treats the new rails. It lets Set 2 grow only on terms that keep seigniorage (bill reserves, a yield ban) and keep the freeze button (issuers must block on lawful orders). It also reaches you: you pay it through zero yield on cash and stablecoins, and you feel it if an account is frozen.

- **Status:** Confirmed (mechanics T0/T1: Fed releases, H.4.1, Treasury directive, GENIUS). Plausible (that these powers drive the design of US rules for new rails).
- **Confidence:** 85 for the mechanics, 75 for the design motive.
- **Horizon:** H0 to H2.
- **Three views.**
  - Governance: seigniorage and the freeze button are the two things a state loses if money moves to rails it does not control. Expect every new rail to be licensed so that both stay inside the state's reach.
  - Business: if you issue money-like tokens, your profit is the float, and your license requires freeze capability. Both depend on the state's goodwill.
  - Ordinary person (wages or UHI): holding cash or a stablecoin means lending at zero interest to someone else (about $2,125 a year forgone on $50,000 at 4.25%). And your dollars, on any rail, can be frozen by a lawful order. Gold in your own hands cannot be frozen remotely, but it can be hard to sell across borders.

### A2. Gold supply: is "only about 20% more to mine" right, and could asteroids expand it?

**Answer.** Roughly right as a snapshot, wrong as a ceiling. The WGC counts about 222,600t above ground and about 61,000t of below-ground reserves (USGS: 66,000t), so reserves are about 21.5% of all gold ever found and mined, or 27% more than today's stock. But reserves are an economic category. They rise when prices rise and technology improves. The WGC also counts about 114,400t of known resources, 51% more than the stock, and reserves have equalled roughly 17 to 20 years of mine output for decades even as mines produce. Mine output was a record 3,672t in 2025 (WGC), so the stock grows about 1.5% to 1.7% a year. At that pace it is about 39% larger by 2050, with cheaper energy and robot mining pushing at the margin. Asteroids are no answer in our horizons. Metal asteroids hold about 1 gram of gold per tonne, about the grade of an ordinary open-pit mine on Earth. Returning 1,000t of gold (about a quarter of one year's mine supply) would mean processing roughly a billion tonnes of asteroid metal (model). The best result so far is a sample return of grams at a cost of about a billion dollars (OSIRIS-REx, [memory]). AstroForge's first deep-space probe was lost in 2025, and its next one aims only to land, with no metal return. If asteroid mining ever works, it will target platinum-group metals, which are about ten times richer there. Gold would be a byproduct. That said, the expectation alone of cheap space gold would hurt gold's scarcity premium before any metal arrived.

- **Status:** Confirmed (stock, reserves, mine supply: T0 WGC and USGS). Speculative (any asteroid effect).
- **Confidence:** 85 that asteroid gold has no material price effect before 2050.
- **Horizon:** supply growth H0 to H2. Asteroid risk H3.
- **Three views.**
  - Governance: gold's role as a neutral reserve rests on slow supply growth (about 1.6% a year), and nothing in view changes that before 2050.
  - Business: robot mining and cheap power lower costs and turn resources into reserves. They do not create a supply shock.
  - Ordinary person: the "20% left" story overstates scarcity, but gold supply still grows more slowly than the money supply or the economy. That is why gold tends to hold value over decades, not because it is running out.

### A3. Can gold reach $10k to $20k to "tally with the debt", or be revalued against it?

**Answer.** Two different things are mixed here. The market price can reach $10k, but not because of a debt formula. And an official revaluation is legally possible, but it cannot cover the debt at any price the market would believe. On the market side: gold went from about $2,060 at the start of 2024 to a $5,586 high in January 2026, then fell to $4,078 while the debt kept rising. No stable gold-to-debt link exists (R1 L7: the debt-to-gold ratio wandered between 12x and 53x). Ten years of 4% inflation plus 3% a year of real gains would give about $8,000 by 2036 (model). On the official side: the US carries its 261.5M oz at $42.2222. Marking it to $4,078 books a one-off gain of about $1.06T, roughly half of one year's deficit (L7-11). To make the gain equal 10% of the debt held by the public needs about $12,500 an ounce. Equal to foreign official Treasuries, $14,400. Equal to all base money, $21,100. Equal to all debt held by the public, about $124,600 (model). So the decoders' $10k to $20k numbers match "cover a slice" (8% to 16% of public debt), not "cover the debt". Precedents exist (1934: $20.67 to $35, 1972 to 1973: $38 then $42.22), but each came when gold still anchored the dollar by law. Bessent said in March 2025 "we're not revaluing the gold", and in July 2026 he called the US system fiat. The revaluation gain would also be new base money. With the Fed paying interest on reserves near the bill rate, swapping debt for reserves saves almost no interest.

- **Status:** Refuted (gold priced to "tally with the debt" as a mechanism, T0/T3). Speculative (revaluation as a policy act).
- **Confidence:** 80.
- **Probabilities (judge's estimates):** formal US revaluation by 2029-01-20: 10 (same as R3 DCA-D09). By 2035: 15. A revaluation sized to offset a large share of debt (official price of $10k or more) by 2035: 3. Market gold at or above $10,000 at any point by end 2030: 20. At or above $20,000 by 2035: 7.
- **Horizon:** H0 to H1.
- **Three views.**
  - Governance: revaluation is a one-off emergency tool that buys about six months of deficits and looks like money printing. Expect it only in a crisis (S4), as in 1934.
  - Business: price gold off central bank and investor flows, not off debt arithmetic.
  - Ordinary person: gold can protect you if the debt is inflated away, which is the real path. Do not buy it expecting a government to set it at $20,000.

### A4. Gold is $30T against $365T to $500T of debt. Is it too small to be "insurance"?

**Answer.** No. Insurance does not need to be as big as what it insures. It needs to pay out in the specific disaster you fear. Fire insurance premiums are a tiny share of house values. Gold does not insure the world's debt. Almost all of that debt ($365T per the IIF, Q2 2026, which already counts financial-sector debt. A $500T+ total could not be sourced and would not change the logic) is owed in the borrower's own currency and is settled in that currency, not in gold. Gold insures something narrower: a state's ability to pay abroad when its dollar or euro reserves can be frozen, or when its own currency fails. Measured against that job it is large. Official gold is about $5T against $13.2T of allocated foreign-exchange reserves, and at end 2025 prices it was 27% of official reserves, more than Treasuries at 22% (ECB, R1 L5). Russia's case shows both sides. About €202B of its euro assets are still immobilized at Euroclear, while its roughly 2,300t of gold held at home was never frozen [memory]. But Western markets banned Russian bars, so Russia now sells gold at home to fund its budget (22t in Q2 2026). For a household, "insurance against the board" means a small slice that holds value if the currency or the rails fail. It does not mean gold backs your money.

- **Status:** Plausible (insurance framing, T0 reserve data). Confirmed (debt is mostly settled in domestic currency, T0).
- **Confidence:** 75.
- **Horizon:** H0 to H2.
- **Three views.**
  - Governance: compare gold with reserves and sanction exposure, not with total debt. Central banks bought 863t in 2025 and 289t in Q2 2026 for exactly this reason.
  - Business: gold is a reserve and hedge product. As collateral it is limited: Basel gives it a 0% risk weight, but it is not a high-quality liquid asset (HQLA) and carries an 85% stable-funding charge.
  - Ordinary person: size gold like insurance, a slice whose job is to be there in the bad state of the world, not like a growth engine.

### A5. "What money is backed by": why gold? Isn't money the form of bonds?

**Answer.** We did not say gold backs money, and it does not. The Round 2 line was "Crypto replaces the rails (how money moves and settles), not the balance sheet (what money is backed by)", and it named the backing as "Treasuries, bank deposits and bank credit". Gold appeared separately, as the neutral reserve "underneath for nations". That word "underneath" was ambiguous. It meant the last layer of trust between states, not the asset behind your dollars. Plainly: the dollar has not been backed by gold since 1971 (the legal 25% gold cover behind Fed notes ended in 1968). Stablecoins are backed by Treasury bills by law. Treasuries are claims on future federal taxes. Your instinct about bonds is half right. Money is not bonds, but in today's dollar system bonds are what most money is backed by. Base money ($5.51T of cash and reserves) is a Fed liability, and the Fed's main asset is $4.57T of Treasuries. Bank deposits ($19.6T) are bank liabilities created when banks lend or buy securities, Treasuries included. Stablecoins are tokens backed by bills. A Treasury itself is not money: you cannot pay a bill with it, its price moves, and it is a promise to pay dollars later. It is near-money and the system's top collateral. A primary auction does not create money by itself. Buyers pay with existing deposits or reserves, which move to the Treasury's account and come back out when the government spends. New money appears when a bank or the Fed is the buyer, or when banks lend. The x10 idea fails for the same reason: gold is not the base that credit is stacked on (R1 L7).

- **Status:** Confirmed (definitions and balance sheets, T0/T1).
- **Confidence:** 90.
- **Horizon:** H0 to H2.
- **Three views.**
  - Governance: the state's real "backing" is its taxing power plus the bond market's willingness to roll the debt. Protecting that, not gold, is the policy priority (captive demand, R1 Db).
  - Business: Treasuries are the collateral everything else is priced against. A Treasury market accident is the systemic risk, not a gold shortage.
  - Ordinary person: your dollars are a claim on a bank or the Fed, backed in the end by government bonds and the taxes behind them. Gold is a separate asset you can choose to own, not the thing behind your money.

---

## 2. Decoded claims ledger

Grades: D1 decoded-strong, D2 decoded-plausible, D3 folklore, D4 debunked. Probability = chance the decoded intent is real (or, where marked, that the event happens), not that it succeeds.

| id | decoded claim | decoders (named) | convergence | action fit (for / against, cite) | grade | prob. | tell to watch (date) |
|---|---|---|---|---|---|---|---|
| DCD-D01 | The US keeps new rails on Set 1 balance sheets on purpose, to keep seigniorage (bill demand plus float) and the freeze button | Bessent (1863 analogy, his own words), Brent Johnson, Arthur Hayes, Lyn Alden, Kobyakov (hostile version), R1 Db | High, includes the actor's own words and an adversary | For: GENIUS 93-day bill reserves and yield ban (R2A-13), CBDC ban (R1 L2), freeze obligations (R1 Db toll-booth map), Treasury jy0612 (DCD-08). Against: stablecoins are only about 4% of bills, and supply was flat for a year (R3 R3A) | D1 | 80 | GENIUS and OCC rule effective 2027-01-18. Stablecoin bill holdings above $500B |
| DCD-D02 | Weaponized dollar rails push states into gold held at home | Zoltan Pozsar ("Bretton Woods III", 2022 [memory]), Rogoff (R1 L5), WGC surveys, Putin (SPIEF 2026) | High, from left, right, Russia and the gold industry | For: 863t bought in 2025, 289t in Q2 2026 at falling prices, France took 129t home, Poland targets 700t (R1 L5), "Economic Outcast" covers gold (L5-28). Against: Russia and Turkey sold, H1 2026 buying was the weakest since 2022 | D1 | 80 | WGC Q3 2026 Gold Demand Trends (about 2026-10-29 to 11-05). Above 200t a quarter confirms |
| DCD-D03 | The US will revalue its gold to pay down debt | Rickards ($27,533 from 40% backing of M1, 2024), Gromen (about $20,000, said a "Nixonian" move could come in H1 2025), Stoeferle (reported odds above 50%, 2026-10-07, T5), Shelton (mark-to-market as part of her bond plan) | Medium in commentary, weak in action | For: Bessent's "monetize the asset side" (Feb 2025), the gold certificate mechanism exists, 1934 precedent, the "budget-neutral" Bitcoin reserve mandate (R1 L2). Against: book still $42.2222 (2026-09-30), Bessent "we're not revaluing the gold" (Mar 2025) and "fiat system" (Jul 2026), ARMA substitute dropped the study (L2-11), Gromen's H1 2025 date missed | D3 | 10 by 2029-01-20, 15 by 2035 | Monthly Treasury gold_reserve book value. Any bill touching 31 U.S.C. 5117 |
| DCD-D04 | Gold must rise to $10k to $20k to "tally with" or back the debt | Rickards, Gromen, gold-dealer media, the owner's x10 frame | Medium, but all use a different coverage ratio | For: arithmetic exists (DCD-14). Against: ratio wandered 12x to 53x (L7-09), gold fell 27% in 2026 while debt rose, no legal link since 1971 | D4 (as a mechanism) | 20 for $10k by end 2030 (market path, not mechanism) | Gold versus 10y breakeven inflation. If gold tracks inflation, not debt, the mechanism stays refuted |
| DCD-D05 | Gold-convertible Treasury bonds re-anchor the dollar (Treasury Trust Bonds launched for 2026-07-04) | Judy Shelton, Idaho SJM113 and Arizona HCM2013 memorials, gold newsletters | Low to medium | For: state memorials (T1, non-binding), Shelton's reported talks. Against: no issuance by 2026-07-04, no Treasury statement, Bessent "fiat system" | D3 | 5 by 2028 | Any Treasury auction announcement with a gold option. Refunding 2026-11-04 |
| DCD-D06 | Fed losses and interest on reserves are a hidden subsidy to banks that replaced Treasury seigniorage | Judy Shelton ("quiet subsidy", 2025-07-22), First Trust (Wesbury), some members of Congress | Medium | For: remittances near zero since Sep 2022 (DCD-02), deferred asset $233.2B (DCD-03), reserves of $3.02T earn the policy rate. Against: interest on reserves is how the Fed sets rates with a large balance sheet. The deferred asset is shrinking, so the Fed is profitable again | D2 (transfer is real, "subsidy" intent is contested) | 35 (deliberate subsidy) | Weekly H.4.1 deferred asset. Any bill to cap or end interest on reserves |
| DCD-D07 | The West will end up confiscating Russia's frozen reserves | Russian officials and CBR lawsuit (claims about $229B from Euroclear), Ukraine supporters, Oxford Business Law Blog critics | Medium | For: EU indefinite immobilization (2025-12-12), €90B loan plans, G7 profit-backed loans [memory]. Against: EU chose not to seize principal, Belgium demands guarantees | D2 | 20 (outright seizure by 2028) | Euroclear H2 2026 results. EU Council decisions on the assets |
| DCD-D08 | Stablecoins become a sanctions tool as much as a dollar export | Brent Johnson, Kobyakov, R1 Db, Iran (Hormuz toll in stablecoins) | Medium to high | For: issuers must block on lawful orders, Tether freezes addresses on request [memory], "Economic Outcast" covers digital assets (L5-28). Against: offshore USDT and DeFi rails partly outside reach | D1 | 85 | First OFAC action on a GENIUS-licensed issuer after 2027-01-18 |
| DCD-D09 | Asteroid mining will break gold's scarcity | Space-mining promoters, media "Psyche is worth quadrillions" stories | Low | For: real startups (AstroForge). Against: about 1 g/t gold in asteroid metal (NASA abstract), Odin lost in 2025, no metal return planned | D3 | under 2 (material supply effect by 2050) | AstroForge DeepSpace-2 launch (stated Q4 2026) |
| DCD-D10 | Gold is "what money is backed by" (x10 collateral base) | Owner's earlier frame, gold-bug media | Low | Against: no gold cover since 1968 (notes), US gold booked at $42.22, Bank of England 2014 on money creation (L7) | D4 | 2 | None needed |

---

## 3. Seigniorage from scratch (part a)

### 3.1 The idea in three steps
1. **Old seigniorage (coins).** A king stamps a coin with face value above its metal cost and keeps the difference.
2. **Paper seigniorage.** A $100 bill costs a few cents to print. Once printed, it buys $100 of goods. The issuer gains the difference once.
3. **Modern seigniorage (the interest-free loan).** The Fed issues cash (which pays no interest) and buys Treasuries (which do). The interest it earns, minus costs and minus interest it pays on reserves, goes to the Treasury as "remittances". So the public, by holding cash, lends to the government at 0%.

### 3.2 Fed remittances, history (T0)
| Year | Remittances to Treasury | Note |
|---|---|---|
| 2012 | $88.4B | |
| 2013 | $79.6B | |
| 2014 | $96.9B | |
| 2015 | $117.0B | $97.7B earnings plus $19.3B surplus transfer required by law (record) |
| 2016 | $91.5B | |
| 2017 | $80.6B | |
| 2018 | $65.3B | incl. $3.2B surplus |
| 2019 | $54.9B | |
| 2020 | $88.5B | |
| 2021 | $107.4B | |
| 2022 | $76.0B | suspended from September 2022, deferred asset $18.8B at year end |
| 2023 to 2025 | about zero | operating losses ($114.3B in 2023, $77.6B in 2024, $18.7B in 2025, per secondary coverage) |
| 2026 | zero so far | deferred asset $233.2B on 2026-10-14, down from about $243.5B at end 2025 |

Sources: Fed press releases 2022-01-14 and 2023-01-13, H.4.1, First Trust and secondary coverage of the 2025 audited statements.

Why it stopped: since 2008 the Fed pays interest on bank reserves, and since 2022 that rate has been above the average coupon on its bond portfolio. With $3.02T of reserves and $0.33T of reverse repo paying about the policy rate, its interest bill exceeded its income. The loss is booked as a "deferred asset", a negative liability, and remittances resume only once it is paid down to zero. Falling from $243.5B to $233.2B in about ten months means the Fed earns roughly $12B a year at current rates (model). So remittances look years away unless rates fall.

The lesson for the owner: seigniorage is not a fixed gift. It is large when money pays no interest (cash) and close to zero when most base money is interest-bearing reserves. Today the seigniorage that remains is concentrated in cash.

### 3.3 The cash piece, and how much foreigners pay (model)
Currency in circulation is $2.488T. At a 4.25% bill rate the government saves about $106B a year by funding that much at 0%. The Fed's own researchers (Judson) estimate that a large share of US banknotes is held abroad, about 60% of all notes and about 70% of $100 bills in the 2017 estimate (T4 summary). Taking 45% to 60%, foreigners give the US about $48B to $63B a year of interest-free funding (model).

### 3.4 The "exorbitant privilege" (T4)
- **McKinsey Global Institute (2009):** a net benefit of about $40B to $70B a year in a normal year (2007 to 2008), 0.3% to 0.5% of GDP, falling to $5B to $25B in a crisis year. Its seigniorage component alone was about $10B a year (at the much smaller currency stock of that time).
- **Krishnamurthy and Vissing-Jorgensen (2012)** [memory]: Treasuries yield on average about 73 basis points less than they would without their money-like "convenience". Applied to $32.6T of debt held by the public, that is up to about $238B a year, or about $81B at 25bp (model, illustrative only).
- **Gourinchas and Rey (2005, 2010):** the US earns a higher return on its foreign assets than it pays on its foreign liabilities, and in crises pays an "exorbitant duty" by providing insurance to the world.
- Range: tens of billions to about $250B a year depending on method. Not a fix for a $2T deficit, but a permanent discount on all federal borrowing.

### 3.5 Stablecoin float as private seigniorage
A GENIUS stablecoin is a token that pays its holder nothing (GENIUS Sec. 4(a)(11)) and is backed by bills that pay about 4.25%. That spread is seigniorage, privatized.
- Market float: $303.8B of stablecoins at 90% in bills earns about $11.6B a year at 4.25% (model, matches R2A's $11.7B).
- Tether: net profit above $10B in 2025, after above $13B in 2024 (BDO attestation via The Block, 2026-01-30). About $122B to $141B of Treasury exposure at end 2025.
- Circle: 61.5% of reserve income goes to distributors (R2A-01). The holder gets zero.
- Who gains publicly: the US Treasury gets a captive buyer for bills (R1 Db). When a foreign saver swaps pesos or lira for USDT, seigniorage moves from that country's central bank to Tether and, through bill demand, to the US (R1 Db).

### 3.6 Why seigniorage "lives in Set 1"
Seigniorage appears wherever a zero- or low-interest liability is used as money and the issuer holds an interest-paying asset. Every such balance sheet today holds Set 1 assets: the Fed (cash vs Treasuries), stablecoin issuers (tokens vs bills), banks (deposits at 0.38% vs loans and bonds, a $1,935 a year spread on $50,000, R2A-05). The blockchain rail itself earns no seigniorage. It moves claims. Bitcoin's seigniorage (the block subsidy) goes to miners on a fixed schedule, and no state receives it, which is exactly why no state issues money on it.

---

## 4. How sanctions physically work (part b)

### 4.1 The plumbing
1. **Final settlement is on the Fed's books.** Every dollar transfer between banks ends as a debit and credit of reserve accounts at the Fed, via Fedwire Funds ($4.59T a day on average in 2025, about 869,000 transfers a day) or via CHIPS ($2.01T a day in 2025, +9%), whose participants fund and settle through Fed accounts.
2. **Foreign banks reach that ledger through US correspondents.** A bank in Dubai or Mumbai without a Fed account holds a dollar "nostro" account at a US bank (or a US branch). Every dollar payment it makes passes through a US person's books.
3. **US persons must obey OFAC.** A US correspondent must block or reject any payment touching a sanctioned party. FinCEN can also bar US banks from holding correspondent accounts for a named foreign bank (Patriot Act Section 311 [memory]).
4. **Secondary sanctions extend the reach.** A foreign bank that serves a sanctioned client risks losing its own US correspondent accounts, so it drops the client. "Operation Economic Outcast" (2026-08-24) extends this to banking, digital assets and gold (R1 L5).
5. **SWIFT is only the messaging layer.** SWIFT is a Belgian cooperative that carries payment instructions. It moves no money. Cutting a bank off SWIFT (EU Regulation 2022/345, seven Russian banks, March 2022 [memory]) makes payments slow and costly, but the dollar block itself comes from the correspondent and Fed layers.
6. **Treasury custody.** Treasuries are book entries in Fedwire Securities. Foreign official holders keep $2.55T of marketable Treasuries in custody at the New York Fed (H.4.1, 2026-10-14), plus more at Euroclear and Clearstream. A legal order freezes them instantly. No vault is involved.

### 4.2 Russia, 2022
- On 2022-02-28 Treasury's OFAC issued Directive 4 under E.O. 14024, barring US persons from transactions with the Central Bank of Russia, its National Wealth Fund and its Finance Ministry. Treasury said this "effectively immobilizes any assets of the Central Bank of the Russian Federation held in the United States or by U.S. persons, wherever located" (T1).
- Russia had sold most of its Treasuries in 2018 [memory], so the US share was small. The bulk sat in euros and securities in Europe. Euroclear reported €202B of sanctioned Russian assets on its balance sheet at end June 2026. The EU made the immobilization indefinite on 2025-12-12. The Russian central bank sued Euroclear for 18.2T rubles (about $229B). The commonly cited total frozen in 2022 is about $280B to $300B, roughly half of Russia's reserves [memory].
- Gold at home was not frozen. But the LBMA de-listed Russian refiners (March 2022) and the G7 banned imports of Russian gold (June 2022) [memory]. So Russia's gold kept its value but lost its Western market. Russia is now a seller at home (22t in Q2 2026, R1 L5).

### 4.3 Why only states can wield this
The power is legal, not technical. It needs (1) jurisdiction over the institutions that keep the ledger (the Fed, US banks, Euroclear in Belgium), (2) the legal-tender and tax monopoly that makes everyone need those ledgers, and (3) enforcement that reaches foreign banks through their need for dollar access. Private actors can freeze only inside their own ledger, and in practice they do it because a state orders them to. GENIUS turns stablecoin issuers into deputies: they must be able to block, freeze and reject transfers on lawful orders. Bitcoin's base layer has no freeze button, but its on-ramps (exchanges, custodians, ETFs) do.

Why this matters for the forecast: sanctions power is the second reason, after seigniorage, that the state absorbs new rails instead of letting them compete. A rail without a freeze button is a rail the state fights (the 2022 Tornado Cash sanctions [memory]). A rail with one gets licensed.

---

## 5. Gold supply (part c)

| Measure | Value | Source |
|---|---|---|
| Above-ground stock | about 222,600t (jewellery 99,700, bars and coins 47,800, central banks 39,000, ETFs 4,000, OTC 10,000, other 22,100) | WGC, end Q2 2026 |
| Mine production 2025 | 3,672t, a record (WGC). USGS: 3,300t | WGC FY2025 release. USGS MCS 2026 |
| Stock growth from mining | 1.5% (USGS) to 1.65% (WGC) a year | model |
| Below-ground reserves | about 61,000t (WGC). 66,000t (USGS) | WGC, USGS MCS 2026 |
| Below-ground resources | about 114,400t | WGC |
| Reserves as share of all gold ever (stock plus reserves) | 21.5% | model |
| Reserves relative to today's stock | +27% (WGC), +30% (USGS) | model |
| Resources relative to stock | +51% | model |
| Years of reserves at 2025 output | 16.6 (WGC), 20.0 (USGS) | model |
| Stock in 2050 if output stays at 3,672t | about 309,000t, +39% | model |
| Largest reserve holders (USGS) | Australia 13,000t (JORC-compliant 4,500t), Russia 12,000t, South Africa 5,000t, Indonesia 3,600t | USGS MCS 2026 |

**Verdict on "only 20% left".** As a share of all gold ever identified as economic to mine, reserves are 21.5%. So the owner's figure is close for that definition. But (1) resources add another 53,000t or so, (2) reserves are re-estimated upward as prices rise, which is why reserve life has stayed near 20 years for decades, and (3) roughly 1,300t to 1,400t a year comes back as recycling [memory], so supply is not only mining. Gold is scarce because its stock grows about 1.6% a year, slower than money and output, not because it is about to run out.

**Will the new rails "expand real wealth" past gold?** Yes, and that does not hurt gold's role. If real output grows 3% a year and the gold stock 1.6%, then either gold's share of wealth falls or its real price rises. Gold's value moved from 3.7% to 23% of world GDP between 1971 and 2026 (R1 L7), mostly through price. Gold does not have to grow with wealth. It has to stay scarce relative to it.

**Asteroids.**
- Grade: metal in meteorites carries about 1 ppm gold (1 g/t) and about 10 ppm platinum-group elements (NASA NTRS abstract). Earth's open-pit gold ore is commonly around 1 g/t to a few g/t [memory]. So space offers no grade advantage for gold, only for PGMs (and iron and nickel for use in space).
- Scale: 1,000t of gold at 1 g/t means about 1 billion tonnes of processed asteroid metal (model).
- State of the art: OSIRIS-REx returned about 121.6 g of Bennu in 2023 at a total mission cost of roughly $1B+ [memory]. Hayabusa2 returned about 5.4 g [memory]. AstroForge's Odin was lost in March 2025. Its next mission (DeepSpace-2, also reported as "Vestri") aims to land on a metal asteroid, costs under $10.5M, launch stated for Q4 2026. It plans no metal return.
- Timeline: material gold supply from space before 2050 is under 2% likely (judge). H3.
- Price effect if it happened: gold's price is set by a stock about 60 times annual supply, so even doubling the flow would cut the scarcity premium gradually, not overnight. The faster damage would come from expectations. A credible plan to land hundreds of tonnes would push central banks and investors toward the one reserve whose supply cannot be expanded by technology: Bitcoin (supply fixed by code). That is a real H3 risk to gold's monetary job (R2A section 3.1).

---

## 6. Gold revaluation arithmetic (part d)

### 6.1 Mechanics
The Treasury owns 261.5M oz and has issued gold certificates to the Fed at the statutory $42.2222 (31 U.S.C. 5117), which is why the Fed's "gold certificate account" shows $11.04B (H.4.1). A revaluation means Congress (or, some argue, Treasury) raises the official price. Treasury issues more certificates to the Fed, and the Fed credits the Treasury's cash account (TGA). Nothing is sold. When the Treasury spends that cash, it becomes new bank reserves, which is base money. In effect it is monetization with a gold label (R1 Db-7).

### 6.2 Price needed for the US revaluation gain to equal a target (model)
Gain = (P minus $42.22) x 261.5M oz.

| Target | Size | Price needed | x today ($4,078) |
|---|---|---|---|
| TGA cash balance | $0.88T | $3,420 | 0.8 (already covered) |
| FY2026 net interest | $1.05T | $4,064 | 1.0 |
| FY2026 total deficit | $1.99T | $7,662 | 1.9 |
| 10% of debt held by the public | $3.26T | $12,496 | 3.1 |
| Foreign official Treasuries | $3.76T | $14,404 | 3.5 |
| Base money (cash plus reserves) | $5.51T | $21,115 | 5.2 |
| All foreign-held Treasuries | $9.33T | $35,728 | 8.8 |
| M2 | $23.34T | $89,308 | 21.9 |
| 100% of debt held by the public | $32.57T | $124,579 | 30.5 |
| 100% of gross debt | $40.44T | $154,687 | 37.9 |

At $10,000 the gain is $2.60T (8.0% of public debt). At $20,000 it is $5.22T (16.0%). At Rickards' $27,533 it is $7.19T (22.1%).

### 6.3 World official gold against global debt (model, $365T IIF)
| Share of global debt covered | With official gold (39,000t) | With all above-ground gold (222,600t) |
|---|---|---|
| 10% | $29,110 | $5,100 (the L7 "x10" coincidence) |
| 25% | $72,774 | $12,750 |
| 50% | $145,548 | $25,500 |
| 100% | $291,097 | $51,001 |

Today: all gold about $29.2T, official gold about $5.1T (39,000t) or $4.7T (36,000t).

### 6.4 Historical revaluations
| Date | Change | Context | Lesson |
|---|---|---|---|
| 1934 (Gold Reserve Act, 1934-01-30) | $20.67 to $35, +69% | Gold nationalized in 1933, deflation, gold standard binding. Profit of about $2.8B, of which $2B created the Exchange Stabilization Fund [memory] | The ESF used in July 2026 (R1 L5) is the child of this act. Done in a deflationary crisis by a government that had just confiscated private gold |
| 1972 (Par Value Modification Act) | $35 to $38 | After the 1971 closing of the gold window. A formal devaluation of the dollar under Smithsonian | Book price change after convertibility had ended |
| 1973 | $38 to $42.2222, +21% over both steps | Second devaluation. The price has been frozen since | The $42.22 is a fossil of the last fixed-rate system |

### 6.5 The decoders
| Decoder | Claim | Date | Incentive and track record |
|---|---|---|---|
| Jim Rickards | Gold "may actually exceed $27,000", from M1 $17.9T x 40% backing / 261.5M oz = $27,533 | May 2024 column | Sells newsletters. Forecast $10,000 gold repeatedly since about 2011 [memory]. The method's answer depends entirely on the chosen aggregate and ratio |
| Luke Gromen | Revalue to about $20,000 via the gold certificate account. Said a "Nixonian shock" could come in H1 2025 | 2024 interviews | Paid research (FFTT). The H1 2025 timing missed. Strong on mechanism, weak on timing |
| Ronnie Stoeferle (Incrementum) | Odds of US revaluation above 50%, up from 10% to 15% | reported 2026-10-07 (goldsilver.com, page blocked, T5) | Gold fund manager. Unverified |
| Judy Shelton | 50-year zero-coupon gold-convertible "Treasury Trust Bonds", aimed at 2026-07-04, plus marking gold to market | 2025 | Former Fed nominee. No issuance occurred. Only non-binding state memorials (Idaho SJM113, Arizona HCM2013) |
| Scott Bessent (the actor) | "Monetize the asset side of the U.S. balance sheet for the American people" (sovereign wealth fund order, Feb 2025). Then "I can say today we're not revaluing the gold" (All-In podcast, March 2025, via BullionVault). Then gold is "present and accounted for", "over a trillion dollars" at market, and the US runs a fiat system (Fox interview, reported 2026-07-22 to 07-23) | 2025 to 2026 | The words that started the theory were about federal land and energy leases, by his own account |
| BofA strategist (unnamed in the snippet) | Possible but legally uncertain, could look like fiscal and monetary easing | 2025 to 2026, secondary | Sell-side, neutral |

### 6.6 The case against
1. **It is a one-off.** At market it is $1.06T, about half of one year's deficit. The deficit recurs.
2. **Above market it is printing.** Certificates at $20,000 when the market pays $4,078 would create about $5T of base money backed by a price nobody pays. Markets would read it as monetization, so the dollar falls and long yields rise.
3. **It saves little interest today.** Using the cash to retire bills swaps a bill paying about 4.25% for reserves on which the Fed pays about the same rate. The Treasury's saving comes back as lower Fed remittances, which are already zero.
4. **No anchor is binding.** 1934 and 1972 to 1973 happened when gold still defined the dollar in law. Today it does not, so a higher official price changes accounting, not policy space.
5. **Revealed preference.** Book value unchanged (2026-09-30), Bessent's two denials, ARMA's committee text dropped the gold-certificate study (L2-11), no Shelton bond.
6. **The Fed under Warsh is hiking** (R1 L1), which is the opposite of the cooperation monetization would need.

### 6.7 The case for
1. The legal mechanism exists, and the Fed's accounting manual describes how gold is monetized and demonetized through certificates (cited by Gromen).
2. Precedent: the US has done it twice, both times as part of a dollar devaluation.
3. The "budget-neutral" Bitcoin reserve mandate leaves few funding sources, and revaluing gold is one (R1 L2).
4. Central banks buying gold at falling prices raises the chance of a world where gold is re-anchored by price, after which a revaluation would only recognize reality.
5. In an S4 (disorderly) scenario, a one-off $1T to $5T of "free" cash looks better than a failed auction.

**Ruling:** formal revaluation 10 by 2029-01-20, 15 by 2035, sized to $10k or more by 2035: 3. Grade D3 for "revaluation is coming". D4 for "gold will be set to tally with the debt".

---

## 7. Reconciliation: four meanings of "backed" (part e)

| Term | Meaning | Today's examples | Where earlier rounds used it |
|---|---|---|---|
| **Backed by (legal reserve asset)** | An issuer must hold specific assets against each unit it issues, and holders have a claim on them | GENIUS stablecoins: cash, deposits, bills of 93 days or less, bill repo. Money funds: Treasuries. Historically Fed notes needed 40% gold cover (1913), cut to 25% (1945), ended for deposits (1965) and notes (1968) [memory]. 1863 national bank notes had to be backed by US bonds | R2 Q2/Q3 ("stablecoins backed by T-bills", "the balance sheet, what money is backed by: Treasuries, bank deposits and bank credit"). R1 L2 and Db on the 1863 analogy. R1 "cellar was gold" (historical picture of the pre-1971 system) |
| **Collateral (pledged against a loan)** | An asset handed over or locked so a lender can seize it on default | Treasuries in repo. Gold at CME as margin in approved vaults. BTC on Aave at up to 73% LTV. XAUT at 0% LTV on Aave | R1 L7 (the x10 refutation is about collateral leverage). R2A M3 (gold's Basel and DeFi status). R1 Da (watt-dollar: energy assets as collateral) |
| **Anchor or reserve of value between states** | An asset a state holds to pay abroad or survive when others' promises fail. It backs no particular note | Official gold (about 39,000t, 27% of reserves at end-2025 prices). Before 1971 also the convertibility anchor | R1 Db-04 ("neutral reserve layer"), R2 Q1 and Q3 ("gold underneath for nations"), "insurance against the board" |
| **Fiat backed by taxing power** | No asset redemption. Value comes from legal tender status, the need to pay taxes in it, and the economy and institutions behind the issuer | The dollar. Treasuries as claims on future taxes | R2A section 3.2 (Treasuries rest on a wage tax base), R1 L7 (no gold link since 1971) |

**Plain statements.**
- The dollar is not backed by gold. It has not been convertible for anyone since 1971, and the Fed's gold certificate account ($11.04B) is a rounding error against $5.51T of base money.
- Stablecoins are backed by T-bills (and cash and bill repo), by law, from 2027-01-18 under the OCC rule.
- Treasuries are claims on future taxes. Their quality depends on the state's ability to tax whatever the economy produces, which in a robot economy means capital, energy or compute income (R2A chain 5, R3 R3B).

**Money layers.**
| Layer | What it is | Whose liability | Created how | Size |
|---|---|---|---|---|
| Base money | Cash and bank reserves | The Fed | Fed buys assets (mostly Treasuries) or lends | $5.51T |
| Bank deposits | What most people call money | Commercial banks | Banks lend or buy securities, crediting a deposit (Bank of England 2014) | $19.6T (H.8) |
| Stablecoins | Tokens redeemable 1:1 | Issuer (Tether, Circle) | Someone pays in dollars, issuer buys bills | $0.30T |
| Treasuries | Government bonds, sold at primary auctions | The Treasury | Auction: buyer pays with existing deposits or reserves | $32.57T held by the public |

**"Isn't money the form of bonds (primary issuance)?"** Careful answer in four steps.
1. Bonds are not money. Money settles a payment with finality. A Treasury is a promise to deliver money later, its price moves with rates, and to spend it you must sell it or borrow against it. Short bills are "near-money", and Treasuries are the world's top collateral.
2. But bonds are what most money is backed by. The Fed's base money sits on $4.57T of Treasuries. Banks hold Treasuries against deposits. Stablecoins hold bills. So the owner's instinct is right in the accounting sense: in the post-1971 dollar, government debt is the asset at the bottom of the money stack, where gold used to sit.
3. A primary auction does not itself create money. The buyer pays with deposits or reserves that move into the TGA, and they return when the Treasury spends. Net new money appears when the buyer is a bank (it creates a deposit to pay), when the Fed buys (it creates reserves), or when stablecoin inflows come from abroad. So deficits financed by banks, the Fed or foreign stablecoin buyers do expand the money stock. That is the "money creation tilts to the deficit" chain in R2A.
4. Gold sits outside this chain. It is an asset some states hold beside it, valuable precisely because it is nobody's liability.

**Where the confusion came from.** R2's Q3 answer said the balance sheet (what money is backed by) "stays Treasuries, bank deposits and bank credit". In the next paragraph it said "token rails on top, Treasuries in the middle, gold underneath for nations". "Underneath" was meant as the last-resort layer of trust between states, but it reads like "the base that backs everything". This lane corrects the wording: gold is the reserve beside the dollar system for states, not the base under it.

---

## 8. Key findings

1. **Fed seigniorage to the Treasury has been zero since September 2022.** Remittances were $117.0B in 2015, $107.4B in 2021 and $76.0B in 2022. The deferred asset is $233.2B (2026-10-14), shrinking from about $243.5B, so the Fed earns about $12B a year now (model). [DCD-01 to DCD-03]
2. **The remaining state seigniorage is concentrated in cash.** $2.49T of currency saves about $106B a year at 4.25%, of which foreigners provide about $48B to $63B (model). [DCD-04, DCD-05]
3. **Private seigniorage is now material.** The stablecoin float is about $11.6B a year (model), and Tether made more than $10B in 2025. [DCD-06]
4. **Sanctions run through the Fed ledger and US correspondents, not SWIFT.** Fedwire $4.59T a day, CHIPS $2.01T a day (2025). The Russia directive of 2022-02-28 immobilized central bank assets "wherever located" if held by US persons. €202B is still immobilized at Euroclear. [DCD-07 to DCD-10]
5. **"20% left to mine" is about right for reserves (21.5%) but wrong as a ceiling.** Resources are 51% of the stock, and the stock grows about 1.6% a year. [DCD-11, DCD-12]
6. **Asteroids offer no gold grade advantage** (about 1 g/t, like ordinary ore). The industry has not yet returned any metal. [DCD-13]
7. **The owner's $10k to $20k range equals US gold covering 8% to 16% of public debt**, or roughly foreign official Treasuries ($14.4k) and base money ($21.1k). Covering all public debt needs about $124,600. [DCD-14]
8. **No decoded revaluation date has come true.** Gromen's H1 2025 date missed, Shelton's 2026-07-04 bond did not happen, and the book is still $42.2222. [DCD-15 to DCD-18]
9. **"Backed by" was used in four senses across rounds.** Earlier rounds never said gold backs the dollar. The R2 "underneath" wording was ambiguous and is corrected here. [DCD-19]

---

## 9. Say/Do gaps

| Actor | Says | Does | Gap |
|---|---|---|---|
| Bessent | "Monetize the asset side of the U.S. balance sheet" (Feb 2025). Gold "over a trillion dollars" (2026) | Book value unchanged. "We're not revaluing the gold" (Mar 2025). Calls the dollar fiat (2026) | Uses gold's market value rhetorically, refuses it operationally |
| Gold-revaluation decoders | Revaluation imminent | Dates passed (H1 2025, 2026-07-04) with no action | Timing record poor, mechanism description accurate |
| Russia | Dollar and euro assets can be "stolen", gold is safe (Putin SPIEF 2026) | Sells gold at home to fund the budget, admits USDT to regulated trading | Gold was safe from freezing but not from needing to sell |
| Fed | Remittances are a byproduct, not a goal | Pays about the policy rate on $3T of reserves while remitting nothing | The transfer is real (banks and money funds earn what the Treasury used to) |
| Stablecoin issuers | "Open dollar for everyone" | Keep 100% of the float from holders, pay distributors | Private seigniorage with a public license |
| EU | Will not confiscate Russian assets | Immobilized indefinitely, uses the proceeds and plans loans against them | Confiscation in all but title is the decoded fear |

---

## 10. Mechanism chains

**Chain 1: seigniorage capture shapes the rules (Plausible).** Private rails threaten to move money off state balance sheets → the state loses seigniorage and the freeze button → it licenses rails that must hold bills and must freeze on order (GENIUS) and bans a public competitor that would not buy bills (CBDC ban) → new rails grow as Set 1 demand. Test: GENIUS reserve rule unchanged after 2027-01-18. Stablecoin bill share.

**Chain 2: sanctions push gold home (Plausible to Confirmed).** Dollar and euro reserves frozen (2022) → states hold more gold, at home → official gold demand stays high at falling prices → gold's share of reserves rises, mostly by price → gold is re-anchored as the neutral asset between states, not as backing for any currency. Test: WGC quarterly central bank buying, custody repatriation news.

**Chain 3: revaluation equals monetization (Speculative).** Crisis (failed auction, S4) → Congress raises the official gold price → certificates to the Fed, TGA credited with $1T to $5T → spent into reserves → base money up 20% to 90% → dollar falls, gold's market price likely rises toward the new official price. Test: any bill touching 31 U.S.C. 5117, Treasury gold_reserve book value.

**Chain 4: debt inflated away, gold follows inflation (Plausible).** Primary deficits and r roughly equal to g (R1 L7) → the quiet path is inflation above the average coupon → gold's nominal price rises with the price level plus a premium for the risk of financial repression → gold at $8,000 by about 2036 needs 4% inflation and 3% real gains (model). Test: gold against breakevens, real yields.

**Chain 5: space scarcity shock (Speculative, H3).** Credible asteroid metal return → expected gold supply rises → gold's scarcity premium falls before the metal arrives → reserve managers shift toward assets whose supply technology cannot expand (Bitcoin). Test: any metal-return mission manifest. AstroForge milestones.

---

## 11. Tripwires to monitor

| Date / trigger | What | Meaning |
|---|---|---|
| Weekly (Thursday) | H.4.1 "earnings remittances due" (deferred asset) | A faster fall means rates or reserves are falling. Zero means remittances resume |
| Monthly | Treasury gold_reserve book value | Any change from $42.2222 is the revaluation tell |
| About 2026-10-29 to 11-05 | WGC Q3 2026 Gold Demand Trends | Central bank buying above 200t supports Chain 2 |
| About 2026-10-31 | Tether Q3 attestation | Gold tonnage and bill share of private seigniorage |
| 2026-11-04 | Treasury refunding | Any gold-linked instrument (Shelton) or tenor change |
| Q4 2026 | AstroForge DeepSpace-2 launch | Space-mining progress (landing only) |
| 2027-01-18 | GENIUS and OCC rule effective | Freeze and reserve rules bind licensed issuers |
| Feb 2027 | USGS MCS 2027 gold chapter | Reserves rising with price confirms "reserves are not a ceiling" |
| Any | Bill touching 31 U.S.C. 5117 or the gold certificate account | Revaluation moves from D3 to D2 |
| Any | EU or Euroclear decision on the principal of Russian assets | Confiscation risk for all reserve holders, more gold buying |

---

## 12. Open questions and gaps

1. 2023 to 2025 Fed operating losses and the end-2025 deferred asset ($243.5B) come from secondary coverage, not the audited statements. The 2026-10-14 figure is T0.
2. The share of US currency held abroad is an indirect estimate (Judson, about 2017). No 2025 figure was found.
3. Krishnamurthy and Vissing-Jorgensen's 73bp, the 1934 profit split ($2.8B and $2B), the Russian total frozen ($280B to $300B), SWIFT Regulation 2022/345, Russia's 2018 Treasury sales, OSIRIS-REx cost and sample mass, and the gold cover history (40%, 25%, 1965, 1968) are [memory] and were not re-verified this session.
4. Stoeferle's "above 50%" revaluation odds rest on a search snippet (the page returned 403).
5. Bessent's exact words in the 2025 Bloomberg walk-back differ by source ("not what I meant", "not what I had in mind"). Only the All-In line "we're not revaluing the gold" is quoted, via BullionVault.
6. The IIF $365T figure is from secondary coverage. The owner's "$500T+" could not be sourced.
7. Recycled gold supply for 2025 (about 1,300t to 1,400t) was not retrieved from the WGC tables.
8. Whether Treasury can revalue without Congress (by certificate issuance at a new price) is legally disputed. No legal opinion was fetched.

---

## 13. Claims

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| DCD-01 | Fed remittances: 2015 $117.0B (incl. $19.3B surplus), 2020 $88.5B, 2021 $107.4B | T0 | Confirmed | https://www.federalreserve.gov/newsevents/pressreleases/other20220114a.htm | 2022-01-14 | 2021-12-31 | Audited restatement |
| DCD-02 | 2022 remittances $76.0B, suspended from Sep 2022, deferred asset $18.8B at end 2022 | T0 | Confirmed | https://www.federalreserve.gov/newsevents/pressreleases/other20230113a.htm | 2023-01-13 | 2022-12-31 | Audited restatement |
| DCD-03 | Deferred asset (earnings remittances due) minus $233.2B on 2026-10-14, about $243.5B at end 2025 | T0 (2026), T4 (2025) | Confirmed / Plausible | https://www.federalreserve.gov/releases/h41/current/h41.htm , https://www.ftportfolios.com/Commentary/EconomicResearch/2026/4/2/the-feds-2025-financials-shrinking-losses,-still-massive | 2026-10-15 / 2026-04-02 | 2026-10-14 | Fed audited 2025 statement differs |
| DCD-04 | Base money $5.51T (currency $2.488T, reserves $3.022T). Fed Treasuries $4.57T of $6.76T assets. Foreign official custody $2.55T of Treasuries. Gold certificates $11.04B | T0 | Confirmed | https://www.federalreserve.gov/releases/h41/current/h41.htm | 2026-10-15 | 2026-10-14 | n/a |
| DCD-05 | Cash funding at 0% saves about $106B a year at 4.25%. Foreign share (45% to 60%) about $48B to $63B | model on T0/T4 | Plausible | H.4.1 above, https://www.bullionstar.com/blogs/jp-koning/how-much-u-s-currency-is-held-overseas/ | 2026-10-15 / about 2017 | 2026-10-22 | A Fed estimate of foreign share far below 45% |
| DCD-06 | McKinsey: net exorbitant privilege $40B to $70B a year in a normal year (0.3% to 0.5% of GDP), seigniorage about $10B | T4 | Confirmed (as estimate) | https://www.mckinsey.com/featured-insights/employment-and-growth/an-exorbitant-privilege | 2009-12 | 2008 | Newer estimates differ (they do by method) |
| DCD-07 | Stablecoin float about $11.6B a year (model). Tether 2025 net profit above $10B, after above $13B in 2024 | T0 via T4 + model | Confirmed (secondary) | https://www.theblock.co/post/387908/tether-rakes-10-billion-net-profit-2025-excess-reserves-6-3-billion | 2026-01-30 | 2025-12-31 | BDO report differs |
| DCD-08 | OFAC Directive 4 (2022-02-28) "effectively immobilizes any assets" of Russia's central bank held in the US or by US persons wherever located | T1 | Confirmed | https://home.treasury.gov/news/press-releases/jy0612 | 2022-02-28 | 2022-02-28 | n/a |
| DCD-09 | Fedwire Funds averaged $4.59T a day (2025), CHIPS $2.01T a day (+9%) | T0 | Confirmed | https://frbservices.org/resources/financial-services/wires/volume-value-stats/annual-stats.html , https://www.cuinsight.com/press-release/chips-delivers-record-value-and-resilience-for-participants-in-2025/ | 2026-01-26 / 2026-04 | 2025 | Revised statistics |
| DCD-10 | EU made immobilization of Russian central bank assets indefinite on 2025-12-12. Euroclear held €202B of sanctioned Russian assets end June 2026. CBR suing Euroclear for about $229B | T1/T4 | Confirmed (secondary) | https://malaymail.com/news/world/2025/12/15/how-does-the-eu-want-to-use-russias-frozen-assets-for-ukraine/202013 , https://www.themoscowtimes.com/2026/08/06/russias-central-bank-seeks-230bln-from-euroclear-over-frozen-assets | 2025-12-15 / 2026-08-06 | 2026-06-30 | EU unfreezes or confiscates |
| DCD-11 | Above-ground gold 222,600t, reserves about 61,000t, resources about 114,400t (WGC). USGS reserves 66,000t, 2025 mine output 3,300t | T0/T4 | Confirmed | https://www.gold.org/goldhub/data/how-much-gold , https://pubs.usgs.gov/periodicals/mcs2026/mcs2026-gold.pdf | 2026-08-18 / 2026-02 | 2026-06-30 | WGC or USGS revision |
| DCD-12 | Mine production a record 3,672t in 2025, stock growth about 1.5% to 1.7% a year. "20% left" equals reserves as 21.5% of all gold ever, not a ceiling | T0 + model | Confirmed | https://www.gold.org/download/file/20498/FY_2025_GDT_Press_Release.pdf | 2026-01 | 2025-12-31 | Reserves stop rising with price for a decade |
| DCD-13 | Meteoritic metal holds about 1 ppm gold and about 10 ppm PGEs. AstroForge Odin lost in 2025, next mission targets landing only, no metal return | T4 | Plausible | https://ntrs.nasa.gov/citations/19920003664 , https://www.ocbj.com/oc-homepage/astroforges-odin-likely-lost-in-space/ | 1992 / 2025-03 | 2026-10-22 | A planned asteroid metal return mission funded |
| DCD-14 | Price for US gold revaluation gain to equal: 10% of public debt $12,496, foreign official Treasuries $14,404, base money $21,115, all public debt $124,579 | model on T0 | Confirmed (arithmetic) | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/gold_reserve , https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/debt_to_penny | 2026-10 | 2026-10-20 | n/a |
| DCD-15 | Bessent: "monetize the asset side of the U.S. balance sheet" (Feb 2025), later "we're not revaluing the gold" (Mar 2025) | T2 (via T4) | Confirmed (secondary) | https://fortune.com/2025/02/23/us-gold-reserves-repricing-fort-knox-trump-musk-treasury-federal-reserve , https://www.bullionvault.com/gold-news/gold-price-news/us-gold-reserves-revalue-record-031920251 | 2025-02-23 / 2025-03-19 | 2026-10-22 | Original clip with different wording |
| DCD-16 | Bessent (2026): gold "present and accounted for", over $1T at market, US runs a fiat system | T2 (via T4) | Confirmed (secondary) | https://www.thewealthadvisor.com/article/if-scott-bessent-says-gold-doesnt-matter-why-bring-it | 2026-07-23 | 2026-07 | Transcript differs |
| DCD-17 | Rickards' $27,533 = M1 $17.9T x 40% / 261.5M oz. Gromen argued about $20,000 and an H1 2025 "Nixonian shock" | T4 | Confirmed (as their claims). Gromen timing failed | https://www.moneymetals.com/news/2024/05/16/could-we-see-27000-gold-003196 , https://www.fxstreet.com/analysis/the-us-is-ready-with-a-gold-revaluation-mechanism-too-202408151424 | 2024-05-16 / 2024-08-15 | 2026-10-22 | n/a |
| DCD-18 | Shelton's gold-convertible Treasury Trust Bonds targeted 2026-07-04. No issuance or Treasury statement found. Only state memorials | T1 (state, non-binding) / T4 | Confirmed (absence as of search) | https://www.usagold.com/reviving-the-gold-standard-judy-sheltons-proposal-for-a-gold-convertible-treasury-bond/ , https://legislature.idaho.gov/wp-content/uploads/sessioninfo/2026/legislation/SJM113.pdf | 2025 / 2026 | 2026-10-22 | Treasury announces a gold-option security |
| DCD-19 | R2 never said gold backs money. It named the backing as Treasuries, bank deposits and bank credit. Gold was "underneath for nations" | internal | Confirmed | round2/DEBATE_R2.md Q3 | 2026-10-22 | 2026-10-22 | n/a |
| DCD-20 | US gold 261,498,926 oz at $42.2222 = $11.04B book. Market value about $1.066T at $4,078. Revaluation gain about $1.055T, about 53% of the FY2026 deficit | T0/T3 + model | Confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/gold_reserve | 2026-10 | 2026-09-30 | Book value change |
| DCD-21 | Debt held by the public $32.57T, gross $40.44T | T0 | Confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/debt_to_penny | 2026-10-21 | 2026-10-20 | n/a |
| DCD-22 | Global debt about $365T (IIF, Q2 2026). All gold about $29.2T, official about $5.1T. Covering 25% of global debt with all gold needs about $12,750 | T4 + model | Plausible (secondary IIF) | https://stockanalysis.com/news/global-debt-hits-365-trillion/ | 2026-09 | 2026-06-30 | IIF primary release differs materially |
| DCD-23 | Formal US gold revaluation by 2029-01-20: 10%. By 2035: 15%. Sized to $10k or more by 2035: 3% | judgment | Speculative | this file, R3 DCA-D09 | 2026-10-22 | 2026-10-22 | Any bill or order changing $42.2222 |
| DCD-24 | Market gold at or above $10,000 at any point by end 2030: 20%. At or above $20,000 by 2035: 7% | judgment | Speculative | this file | 2026-10-22 | 2026-10-22 | Prices |
| DCD-25 | Revaluation with interest-bearing reserves saves almost no interest, because retired bills are replaced by reserves paid near the bill rate | inference on T0 | Plausible | H.4.1 (reserves $3.02T), R1 Db-7 | 2026-10-15 | 2026-10-22 | Interest on reserves cut far below bill rates |
