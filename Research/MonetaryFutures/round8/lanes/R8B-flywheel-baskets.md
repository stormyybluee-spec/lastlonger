# R8B: the flywheel, its brakes and the pipe between baskets

Round 8, Standard tier, lane R8B (merges framer lanes R8C and R8D plus the standing Data, Ledger and Sweep jobs for Q3 and Q4). Date 2026-11-05. Topic: a talk by Michael Saylor of Strategy on digital credit (STRC) and the owner's ask to "take this concept for future money moving between baskets" for Rulebook Level 4.

General research, not personal financial advice. Every model is labelled. Company metrics are T2 for Strategy's own numbers. Scripts: /tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/r8b_stress.py and btc_hist.py. Raw downloads: scratchpad/r8b_dl. Chart tables: round8/lanes/R8B-tables.json.

## Pass checklist (Moves 2 to 6 plus standing lanes)
- [x] Move 1 inputs read: FRAME_R8 Q3 and Q4 specs, blind spots, hidden hypotheses H1 to H4, CONTEXT_R8 prior beliefs
- [x] Move 2 default story named (the speaker's triple flywheel, the bear "death spiral" story, the official stablecoin view) with scope
- [x] Move 3 every actor mapped (15 players), ledger walk of four transactions on both floors, "did public money rise, fall or only move" answered for each
- [x] Move 4 regimes: 2022 crypto bear as the stress year, the 2026 drawdown (Bitcoin weekly low $57,740 in the week of 2026-06-25) as the live stress, nine precedents with outcomes
- [x] Move 5 channel table in both directions with sizes for the latest year and a stress year, before prose
- [x] Move 6 every size word backed by a number with a source and a date, dated tripwires
- [x] Data lane: every series has a source, unit, date range and checked label (table D2 and R8B-tables.json)
- [x] Ledger lane: final counterparty named for each transaction, upstairs checked (Fed reverse repo "others" was $176 million on 2026-10-28, so the upstairs floor is barely touched)
- [x] Sweep lane: popular and rival claims listed as hypotheses (section J)
- [x] Stress model run with python3 -I, inputs shown, labelled as a model
- [x] Overcorrection guard applied to every debunk
- [x] Word audit run on only, always, never, all, none, most, main, cannot, impossible, myth, wrong
- [x] Style check: no em-dashes, no en-dashes, no semicolons, "to" for ranges

---

## 0. Answers in brief

**Q3 (what keeps the flywheel turning, what stops it).** The loop runs on one variable: the price at which Strategy can sell claims on itself compared with the Bitcoin those claims buy. In 2024 and 2025 the common stock traded at 2 to almost 4 times its Bitcoin, so selling stock bought more Bitcoin per share. By 2026 that premium was gone. The company's own measure (enterprise value over Bitcoin, mNAV) was 1.01 on 2026-08-21 and about 1.08 today (desk model). Market cap alone is about 0.86 of the Bitcoin held. The brakes are real and several are close: Bitcoin is only 6.7% above Strategy's average cost ($80,512 against $75,451), the dollar reserve fell from $5.10B in August to $4.79B, and every convertible note is now below its conversion price, so about $5.91B of holder put options fall due between September 2027 and September 2028. The talk did not mention that STRC itself fell to about $71 to $74 in late June 2026 when Bitcoin dropped under $60,000 (T4, two outlets), or that Strategy sold Bitcoin in 2026: $431.8M in nine months, of which $239.9M paid preferred dividends in the third quarter (company release, T2).

**Q4 (the pipe between baskets).** The pipe moves ownership of Bitcoin, not dollars. When a saver buys STRC, the saver's dollars go to Strategy, then to whoever sold Strategy the Bitcoin. They never leave the dollar system (Set 1). They change hands. Total deposits and money fund assets are unchanged by the trade itself. What crosses between baskets is risk: a Set 1 saver now holds a claim whose value rests on Bitcoin. The pipe also runs backward in a bear market, and 2026 shows both directions in one year. At its largest the pipe is small against the pools it draws from: about $14.7B of digital credit (Strategy preferreds plus Strive's SATA) is 0.19% of US money fund assets, 0.21% of Treasury bills and 5.0% of stablecoin supply. Against the yearly flow of new Bitcoin it is large: Strategy bought 137% of the year's mined supply in 2025 but only 4% in the third quarter of 2026.

**Verdict on "Set 1 absorbs Set 2".** Holds for the legal form and for the dollars, fails for the risk. Proposed restatement: Set 1 is absorbing Bitcoin into its wrappers (ETFs, listed companies, preferred stock, index funds), and in exchange some Set 1 savings now carry Bitcoin's risk. In a bear market the wrapper can become a forced seller of Bitcoin back into dollars. Competing hypotheses and tests in section G.

---

## 1. Key findings
1. **The flywheel stalled in the third quarter of 2026 and its fuel changed.** Strategy raised $5.41B of common stock in Q3 2026 but bought only $0.59B of Bitcoin (1,666 BTC). The rest went to dollars: short-term investments bought rose by about $2.9B, STRC buybacks used $1.34B and dividends $0.42B (desk derivation from XBRL cash-flow tags, T0 inputs). The common stock was used to defend the credit, the reverse of the talk's loop ("issue common, buy Bitcoin").
2. **The pipe has already run backward.** Bitcoin sold: $83.2M in Q2 and $348.6M in Q3 2026, of which $239.9M funded preferred dividends and $108.6M funded STRC repurchases (Q3 release, T2, XBRL T0). BTC Yield year to date was -3.7% (company metric).
3. **The par is defended, not promised.** STRC repurchases year to date: 20.98 million shares for about $2.04B at an average $97.39. STRC notional fell from $9.97B (2026-08-23) to $9.10B (2026-09-30) and $8.39B (2026-10-25) (10-Q). The rate was raised to 12% from July 2026.
4. **The convert wall is the nearest hard brake.** All six convertible series ($6.71B) have conversion prices from $149.77 to $672.40, above today's MSTR price of about $139 (derived from the latest ATM fill). Holder puts: $1.01B on 2027-09-15, $2.0B on 2028-03-01, $1.5B on 2028-06-01, $1.40B on 2028-09-15 (10-Q).
5. **The counter-pipe was four times larger in 2025.** Stablecoin supply rose $100.5B in 2025 (DefiLlama), backed largely by Treasury bills and repo (Tether alone held about $115B of bills per the desk's rb-bonds, press figure), while Strategy raised $25.3B in total. In 2026 the stablecoin pipe reversed (-$9.1B to 2026-11-05) while Strategy raised $21.2B in nine months.
6. **Strategy is itself now a Set 1 buyer.** Its dollar reserve went from $1.44B (2025-12-01) to a peak of $5.10B (2026-08-23). Digital credit money partly sits in bills and money funds, not in Bitcoin.
7. **Coverage depends on the yardstick.** Today: 45.6 years of obligations in Bitcoin, 39 months in dollars, 3.4x total Bitcoin against all debt plus preferred (gross), 4.5x for claims at or above STRC net of cash (model). Preferred coverage net of cash falls below 1x at about $17,900 Bitcoin, STRC's own at about $13,500 (model).

---
## A. The flywheel as a loop

### A1. The loop, link by link (bull direction, with the sign of each link)
| # | From | To | Sign | What powers the link | Reading today |
|---|---|---|---|---|---|
| 1 | Credit sold (STRC and other preferreds) | Dollars raised | + | Buyers' demand at or above $100, the rate (12%), the spread over bills | No preferred sold in the week to 2026-11-01 (8-K). STRC closed $99.85 on 2026-10-28 (T4) |
| 2 | Dollars raised | Bitcoin bought | + | Management choice. Since 2026 part goes to the dollar reserve and buybacks instead | Q3 2026: $0.59B of $5.41B raised went to Bitcoin |
| 3 | Bitcoin bought | Bitcoin price | + (small, uncertain) | Size against sellers' supply. 164,250 new BTC a year | Strategy bought 225,030 BTC in 2025 (137% of mined), 1,666 in Q3 2026 (4%) |
| 4 | Bitcoin price | Common premium (mNAV) | + | Leverage: equity is the residual after about $20B of senior claims | mNAV peaked about 3.2 to 3.9 in Nov 2024 (T4), about 1.08 today (model) |
| 5 | Premium | Common issued | + | Selling stock above its Bitcoin per share raises Bitcoin per share. Company rule: issue to pay dividends only above mNAV 1 | $164.0M common sold last week (8-K) |
| 6 | Common issued plus Bitcoin held | Coverage of credit | + | More junior capital under the preferreds | Bitcoin over all debt plus preferred 3.4x gross (model) |
| 7 | Coverage plus reserve | Credit spreads | - (spreads fall) | Buyers price default and dividend-cut risk | STRC 12% against 3-month bill 4.21% and 10-year 4.90% (2026-11-04): about 780 bp and 710 bp |
| 8 | Lower spreads | More credit sold | + | Lower cost lets more preferred clear above par | Rate was raised, not cut, in 2026 (11.5% to 12% from July) |

Every link reverses in a bear market: Bitcoin down, premium down (equity is levered), common issuance stops or turns dilutive, coverage falls, spreads widen, preferred trades below par, the issuer spends dollars on buybacks or raises the rate, and dividends must come from the reserve, common stock sold near or below its Bitcoin, or Bitcoin sales. The loop is reflexive in both directions. The question is which brake engages first.

### A2. The brakes: threshold and today's reading
| Brake | Threshold that matters | Today's reading | Source and date | Status |
|---|---|---|---|---|
| Bitcoin price against average cost | Below $75,451 the whole stack is under water at cost | $80,512, 6.7% above cost. 2026 weekly low $57,740 (week of 2026-06-25), 23% below cost | 8-K 2026-11-02 (T0), CoinGecko and Kraken (T3) | Near |
| Common premium (mNAV, company definition: enterprise value over Bitcoin) | 1.0: below it, selling common to buy Bitcoin or pay dividends lowers Bitcoin per share. Company says it may sell Bitcoin or derivatives below 1 | About 1.08 (model: MSTR $139.15, 423.5M shares, debt $6.75B, preferred $13.40B, cash $4.92B, Bitcoin $68.38B). Market cap over Bitcoin about 0.86 | Inputs T0, model | Near |
| Dividend coverage in dollars | 12 months minimum (policy since June 2026), 24 months long-run goal | $4.92B = 39 months of about $1.50B a year. 27 months before the 12-month floor | 8-K 2026-11-02, Q3 release (3.4 years) | Comfortable |
| Dividend coverage in Bitcoin | Below about 10 years would make Bitcoin sales a large share of holdings each year | 45.6 years at today's price | Model | Comfortable, but it means selling Bitcoin |
| Annual preferred dividends plus interest | Against operating cash flow ($14.3M in nine months 2026) | About $1.50B (derived from company's 3.4 years). Sensitivity $1.60B (Q3 declared x4) | Q3 release, XBRL | Uncovered by operations |
| STRC price against $100 par | Below about $99 the issuer stops selling and starts buying back or raises the rate | $99.85 (2026-10-28, T4). Low about $71.40 in late June 2026 (T4) | News coverage | Near par again |
| Convertible puts | Holders put when MSTR is below conversion price | MSTR about $139 against conversion prices $149.77 to $672.40. $5.91B of puts from 2027-09-15 to 2028-09-15 | 10-Q Q3 2026 | Live in 10 to 22 months |
| Index inclusion | MSCI's new screen applied from the November 2026 review | Finalised in October 2026, outcome of the November review not seen | The Block 2026-10-15 (T4) | Open |
| Share of new money from preferreds | If preferreds supply most new money while mNAV is near 1, leverage rises | 2026 nine months: preferred 35.6%, common 64.4%, converts 0. By quarter: Q1 28%, Q2 65%, Q3 0% (net -$1.34B after buybacks) | XBRL (T0) | Mixed |

### A3. mNAV history 2024 to 2026 (company or press readings, definitions vary)
| Date | mNAV | Definition | Source | Tier |
|---|---|---|---|---|
| Nov 2024 | about 3.2 to 3.89 (peak) | Mixed | Press summaries | T4 |
| 2025-10-10 | 1.17 | Company style | Press | T4 |
| 2025-11-12 | about 0.97 | Basic (market cap) | Bankless, 2025-11-13 | T4 |
| Feb 2026 | 1.09 | Unclear | Press | T4 |
| Q1 2026 call (May 2026) | 1.27 | Company, threshold fixed at 1.0 | Earnings call coverage | T4 |
| 2026-06-25 | 1.03 | Company | KuCoin blog 2026-06-26 | T4 |
| 2026-06-28 | below 1 (first close below 1 on the enterprise basis) | Enterprise | Forklog 2026-06-29 | T4 |
| 2026-08-21 | 1.01 | Company (FWP) | SEC FWP 2026-08-24 | T2 |
| 2026-11-05 | about 1.08 enterprise, about 0.86 market cap | Desk model | Inputs T0 | Model |

Gap: Strategy's own daily mNAV series sits on strategy.com (returned 403 to the framer) and in image-only FWP pages. The 2024 to 2025 readings need a T2 check by the verifier.

### A4. Capital raised and where it went (XBRL cash-flow tags, $ billion)
| Period | Common | Preferred | Converts | Bitcoin bought | Preferred dividends paid | Bitcoin sold | Preferred bought back |
|---|---|---|---|---|---|---|---|
| 2022 (stress year) | 0.05 | 0 | 0 | 0.29 | 0 | 0.012 | 0 |
| 2024 | 16.36 | 0 | 6.21 | 22.07 | 0 | 0 | 0 |
| 2025 | 16.27 | 7.04 | 2.00 | 22.47 | 0.38 | 0 | 0 |
| 2026 Q1 | 5.30 | 2.07 | 0 | 7.25 | 0.23 | 0 | 0 |
| 2026 Q2 | 2.95 | 5.47 | 0 | 6.42 | 0.40 | 0.08 | 0 |
| 2026 Q3 | 5.41 | 0 | 0 | 0.59 | 0.42 | 0.35 | 1.34 |
| 2026 nine months | 13.66 | 7.53 | 0 | 14.26 | 1.05 | 0.43 | 1.34 |

The talk's "$21B this year, $25B last year, $24B the year before" matches the filings for 2026 ($21.2B) and 2025 ($25.3B). For 2024 the cash-flow tags give $22.6B (S29 holds with a small overstatement).

### A5. Convertible notes (10-Q, 2026-09-30)
| Series | Principal | Coupon | Holder put date | Conversion price | In the money at $139? |
|---|---|---|---|---|---|
| 2028 | $1.01B | 0.625% | 2027-09-15 | $183.19 | No |
| 2030B | $2.00B | 0% | 2028-03-01 | $433.43 | No |
| 2029 | $1.50B (after a $1.50B repurchase on 2026-05-19) | 0% | 2028-06-01 | $672.40 | No |
| 2030A | $0.80B | 0.625% | 2028-09-15 | $149.77 | No |
| 2031 | $0.60B | 0.875% | 2028-09-15 | $232.72 | No |
| 2032 | $0.80B | 2.25% | 2029-06-15 | $204.33 | No |

Cash interest is small (about $35M a year). The risk is principal: if MSTR stays below conversion prices, about $5.91B can be put back for cash within 22 months, more than the $4.92B of dollars on hand. Strategy can refinance, issue stock or sell Bitcoin. A put is a refinancing test, not a default, as long as markets are open.

---
## B. Stress model (MODEL, not a forecast)

Script: scratchpad/scripts/r8b_stress.py, output scratchpad/r8b_stress_out.json, run with python3 -I.

Inputs: Bitcoin $80,512 (CoinGecko, 2026-11-05). Holdings 849,327 BTC and average cost $75,451 (8-K, 2026-11-01). Dollars $4.79B reserve plus $0.13B cash (same 8-K). Debt $6.75B (10-Q convert principal plus about $0.04B secured). Preferred $13.40B (10-Q liquidation preference $14.11B at 2026-09-30, less STRC repurchased to 2026-10-25, derived). STRC $8.39B (10-Q, 2026-10-25). STRF $1.28B, ranked above STRC (T4, unconfirmed). Annual dividends plus interest $1.50B (derived from the company's 3.4 years). Shares 423.5M. MSTR $139.15 (net ATM proceeds over shares, week to 2026-11-01). mNAV uses the company's enterprise definition: market cap plus debt plus preferred minus cash, over Bitcoin. The model holds the reserve, debt and preferred fixed and asks what the stack looks like at each Bitcoin price.

| Scenario | BTC price | mNAV | Implied MSTR | Bitcoin over debt plus all preferred (gross / net of cash) | Over claims at or above STRC (net) | Years of obligations in Bitcoin | Months of dollar reserve | BTC to sell per year if no stock is sold (share of holdings / of mined supply) | 24-month funding gap (dividends plus puts minus cash) |
|---|---|---|---|---|---|---|---|---|---|
| Today | $80,512 | 1.08 | $139 | 3.39 / 3.64 | 4.46 | 45.6 | 39.4 | 18,631 (2.2% / 11%) | $3.99B = 49,570 BTC |
| -30%, mNAV 1.0 | $56,358 | 1.0 | $77 | 2.37 / 2.62 | 3.21 | 31.9 | 39.4 | 26,615 (3.1% / 16%) | $3.99B = 70,815 BTC |
| -30%, mNAV 0.8 | $56,358 | 0.8 | $54 | 2.37 / 2.62 | 3.21 | 31.9 | 39.4 | 26,615 (3.1% / 16%) | same |
| -50%, mNAV 1.0 | $40,256 | 1.0 | $45 | 1.70 / 1.94 | 2.38 | 22.8 | 39.4 | 37,262 (4.4% / 23%) | $3.99B = 99,141 BTC |
| -50%, mNAV 0.8 | $40,256 | 0.8 | $29 | 1.70 / 1.94 | 2.38 | 22.8 | 39.4 | 37,262 (4.4% / 23%) | same |
| -70%, mNAV 1.0 | $24,154 | 1.0 | $12.5 | 1.02 / 1.26 | 1.55 | 13.7 | 39.4 | 62,103 (7.3% / 38%) | $3.99B = 165,234 BTC |
| -70%, mNAV 0.8 | $24,154 | 0.8 | $2.8 | 1.02 / 1.26 | 1.55 | 13.7 | 39.4 | 62,103 (7.3% / 38%) | same |

Break-even prices (model): preferred coverage net of cash falls below 1x at **$17,937** Bitcoin (gross, ignoring cash: $23,733). STRC's own coverage (debt, STRF and STRC, net of cash) falls below 1x at **$13,541**. Debt alone is covered down to $7,952. At mNAV 1.0 the common stock would be worth nothing at $17,937, the same point.

What the model says:
1. **No scenario forces a Bitcoin sale for dividends in the next 27 months.** The dollar reserve pays about 39 months of obligations and 27 months before it reaches the 12-month policy floor. This holds even at -70%. That is the genuine improvement over 2022 lenders (section C).
2. **Whether common or Bitcoin gets sold after that depends on mNAV, not on Bitcoin's level.** At mNAV 1.0 selling stock is neutral per Bitcoin share, but at -70% the market cap is $5.3B, so raising $1.5B a year would issue more than a quarter of the company each year. At mNAV 0.8 the company's stated policy points to selling Bitcoin or derivatives.
3. **The convert puts, not the dividends, are the binding constraint.** Dividends for two years ($3.0B) plus puts ($5.91B) are $8.91B against $4.92B of dollars, a $3.99B gap that must be refinanced, issued or sold. At -50% that is about 99,000 BTC, 60% of a year's mined supply. If converts are refinanced at par, the gap closes.
4. **Selling to pay dividends in a deep bear would equal a large share of new supply:** 23% of yearly mined Bitcoin at -50% and 38% at -70%, before the April 2028 halving cuts issuance to about 82,125 BTC a year (then 45% and 76%).
5. **Coverage stays above 1x in every case modelled**, so a preferred holder's claim stays backed even at -70%. The danger for a holder is price and dividend continuity, not loss of the backing, unless Bitcoin falls below about $18,000 or the stack grows.

Limits of the model: it ignores new issuance, buybacks, rate changes, taxes (the corporate alternative minimum tax on unrealized gains, to verify), the euro preferred (STRE, size not confirmed) and Bitcoin sold at a discount in a disorderly market. The STRF amount and its seniority over STRC are T4.

---

## C. Precedents: outcomes, what was similar, what was different
| Case | What powered it | What broke it | How long the break took | Who was paid first | Similar to Strategy | Different | Source |
|---|---|---|---|---|---|---|---|
| South Sea Company, 1720 | Swap of government debt for company shares with a ratio that was not fixed, so a higher share price let the company take in debt more cheaply | Share price from £128 (January) to about £1,000 to £1,050 (June), then a fall from September to about £135 by November | About three months | Insiders who sold early, the government (debt refinanced) | Premium-powered conversion, like issuing stock above its asset value. The higher the price, the more the scheme "earned" | The company had almost no real asset. Strategy holds a transparent, liquid asset worth $68B | ASU CSEL, Encyclopedia.com (T4) |
| Mississippi Company and Banque Royale, 1719 to 1720 | Shares rose to about 10,000 livres, paid for with bank notes | The bank pegged shares at 9,000 livres from March 1720 by printing notes, then gave up. About 2,000 livres by September, about 1,000 by December | Under a year | Holders who converted to land or coin early | An issuer defending the price of its own security (Strategy defends STRC's par with buybacks and rates) | Law could print money. Strategy defends par with a finite reserve, so the defence ends when the reserve does | Same (T4) |
| Goldman Sachs Trading Corporation, Shenandoah and Blue Ridge, 1928 to 1929 | Trusts stacked on trusts, financed by preferred stock and debt. Shenandoah held $62.4M of its $122M in Blue Ridge | Leverage on leverage after the October 1929 crash. Shenandoah from $39 to $3 5/8 by 1930, Blue Ridge from 29 5/8 to 3 1/2 | Months to a year | Senior debt and preferred over common | Common equity levered by preferred stock and debt, priced above asset value at the peak | Strategy holds one asset directly, not other trusts. No cross-holdings. GSTC's own peak and low prices not confirmed | Goldman Sachs history page, Time (T4) |
| MicroStrategy, March 2000 | Dot-com valuation of a software company | Restatement of two years of results on 2000-03-20. Stock fell 62% in one day. SEC settlement 2000-12-14 with $350,000 fines on three officers | One day for the price, months for the rest | Not applicable (no debt crisis) | Same founder and company. A reminder that a single disclosure can reprice the equity | The asset then was accounting earnings. Today it is on-chain Bitcoin that anyone can verify | CNN 2000-12-14, MicroStrategy 10-K FY2000 (T1 and T4) |
| UK split-capital trusts and their zero dividend preference shares, 2001 to 2002 | "Zeros" sold as low-risk, paid at a set date if the trust's assets were enough. Trusts held each other's shares and borrowed | Bear market plus cross-holdings and bank debt ranked above the zeros | About two years | Bank lenders, then zeros, then income and capital shares | A "safe" senior equity class whose safety depends on a volatile pool, sold to savers | Zeros had a maturity. STRC is perpetual. Cross-holdings were hidden. Strategy's are not | FSA settlement with 18 firms, £194M, Christmas Eve 2004, average compensation about 40% of losses (citywire, Birmingham Post, T4) |
| Closed-end fund discounts | A fixed pool of assets traded on an exchange, no redemption | Discounts persist and widen in stress, a long-studied puzzle (Lee, Shleifer and Thaler 1991) | Standing feature | Not applicable | MSTR and peers can trade below their Bitcoin, as Metaplanet (about 0.9) and Nakamoto (about 0.92) did in June 2026 | Strategy can buy back stock or sell Bitcoin to close a discount. A fund board rarely acts fast | Forklog 2026-06-29 (T4) |
| GBTC premium to discount, 2021 to 2022 | Only way for many to own Bitcoin in a brokerage account. Average premium about 35% before 2021. Creations at NAV, sales at a premium | No redemption, new ETFs in Canada, unlocks. Discount from late February 2021, record about 47% to 50% in December 2022 | About 22 months from first discount to record | Holders who sold at the premium, the sponsor's fee income | The premium came from wrapper scarcity, not from the asset. Today ETFs offer the same wrapper at 1.0 | GBTC had no leverage and no fixed claims. Strategy does | The Block (2021, 2022), CoinDesk 2022-12-08 (T4) |
| Celsius and BlockFi, 2022 | High yields paid on deposits, lent onward or rehypothecated | Run after Terra. Celsius paused withdrawals 2022-06-12 and filed in July 2022. BlockFi filed November 2022 | Weeks | Secured lenders | Retail yield above the risk-free rate on a crypto asset base | Deposits were redeemable on demand, assets were opaque and lent out. STRC has no redemption right and the Bitcoin is not lent | The Block 2022-12-15 (Chainalysis $33B of losses tied to Celsius and 3AC), T4 |
| Terra and Anchor, May 2022 | About 20% yield on the UST stablecoin, paid from reserves and subsidies | UST lost its peg on 2022-05-07 and fell to about $0.13 within a week. Realized losses about $20.5B | Days | Early redeemers | A yield far above bills used to attract dollar savers | UST promised $1 on demand and was backed by its own token. STRC promises no redemption and is backed by an outside asset | The Block, Chainalysis (T4) |

What is genuinely different now (overcorrection guard):
- The assets are on-chain and disclosed weekly in 8-Ks. Split caps hid their cross-holdings, and Celsius hid its lending.
- No margin calls on the Bitcoin. The debt is unsecured converts, so a price fall cannot force a liquidation by itself.
- The preferreds are perpetual with no holder put, so a run shows up as a lower STRC price, not as forced asset sales. A run on Celsius drained cash. A run on STRC drains the issuer's willingness to defend par.
- A published dollar reserve covers about 39 months.

What is the same: the premium is the engine, the premium is levered to one volatile asset, the issuer defends the price of its own paper with a finite pool, and the instrument is sold to savers as a near-cash product (the talk's "four months to four years" ladder, S22).

---
## D. The basket pipe (the owner's main ask)

### D1. Channel table, both directions (before prose)
Set 1 = dollar cash and claims (money funds, bills, deposits, stablecoins, bond funds). Set 2 destination = Bitcoin. "Toward Bitcoin" means dollars go to Bitcoin sellers and Bitcoin moves into a Set 1 wrapper. "Back" means Bitcoin is sold for dollars, or dollars are pulled into Set 1 assets.

| # | Channel | Direction | Latest year size | Stress year size | Source |
|---|---|---|---|---|---|
| 1 | Strategy preferred issuance (STRC, STRF, STRK, STRD) | Toward | $7.04B (2025), $7.53B (2026 nine months) | $0 (2022) | XBRL ProceedsFromIssuanceOfPreferredStock |
| 2 | Strategy common at-the-market sales | Toward (or into the dollar reserve) | $16.27B (2025), $13.66B (2026 nine months) | $0.05B (2022) | XBRL |
| 3 | Strategy convertible notes | Toward | $2.0B (2025), $0 (2026) | $0 (2022) | XBRL |
| 4 | Strategy Bitcoin purchases (the pipe's exit) | Toward | $22.47B (2025), $14.26B (2026 nine months) | $0.29B (2022) | XBRL PaymentForAcquisitionCryptoAsset |
| 5 | Strive SATA and peers | Toward | SATA notional $1.29B at 2026-09-30 | Did not exist in 2022 | Strive 8-K 2026-10-05 (T0 via search summary) |
| 6 | Other listed treasury companies | Toward | Public companies hold 1.30M BTC, Strategy 849,327 of it | Small in 2022 | CoinGecko treasury API (T3) |
| 7 | US spot Bitcoin ETFs (the larger rival pipe, no leverage) | Both | About +$0.3B to +$1.2B 2026 year to date in early October after -$5.8B by mid July. Assets about $106B to $111B | Did not exist in 2022 | Press citing Farside, SoSoValue, Bloomberg (T4) |
| 8 | Bank loans against Bitcoin | Toward | Not sized | Not sized | Gap |
| 9 | Strategy dollar reserve build (dollars parked in bills and money funds) | Back into Set 1 | +$3.35B (2025-12-01 to 2026-11-01). Short-term investments bought $3.73B in nine months 2026 | Did not exist | 8-Ks, XBRL |
| 10 | STRC buybacks below par | Back (dollars to sellers of STRC) | About $2.04B year to date | Not applicable | Q3 release |
| 11 | Convertible repurchase | Back | $1.38B (2026) | $0 | XBRL |
| 12 | Strategy Bitcoin sales | Back | $431.8M (2026 nine months), $239.9M of it for dividends in Q3 | $11.8M (2022, tax) | Q3 release, XBRL |
| 13 | Preferred dividends paid in cash | Strategy to savers (inside Set 1) | $0.38B (2025), $1.05B (2026 nine months) | $0 | XBRL |
| 14 | Stablecoin supply growth (the counter-pipe: crypto users' dollars into bills and repo) | Into Set 1 | +$100.5B (2025), -$9.1B (2026 to 2026-11-05) | -$24.5B (2022) | DefiLlama stablecoincharts (T3) |
| 15 | Money fund asset growth | Into Set 1 | +$0.95T (2025, Z.1) | +$0.02T (2022, Z.1) | Fed Z.1 via DBnomics |

Which channel dominates when: in 2024 and 2025 channels 2 and 4 (common stock into Bitcoin) dominated the toward direction. In the first half of 2026 channel 1 (preferreds) took over (65% of new money in Q2). In the third quarter of 2026 channels 9 to 12 (back into dollars) dominated and channel 4 nearly stopped. Channel 14 dwarfs every Strategy channel in 2025 and runs in the opposite direction.

### D2. Pool sizes (Data lane, labels checked)
| Pool | Size | Unit | As of | Source | Digital credit as a share |
|---|---|---|---|---|---|
| US money market funds (ICI) | 7,901 | $ billion | week to 2026-10-28 | ICI weekly | 0.19% |
| US money market funds, total financial assets (Z.1) | 8,441 | $ billion | 2026-06-30 | Fed Z.1 FL634090005.Q | 0.17% |
| Treasury bills outstanding | 7,118 | $ billion | 2026-09-30 | Treasury MSPD table 1 | 0.21% |
| Commercial bank deposits (H.8, seasonally adjusted) | 19,637 | $ billion | September 2026 | Fed H.8 B1058NCBAM | 0.075% |
| Stablecoin supply (USD-pegged) | 294.6 | $ billion | 2026-11-05 | DefiLlama | 5.0% |
| Bitcoin market cap | 1,620 | $ billion | 2026-11-05 | CoinGecko | 0.91% |
| Fed overnight reverse repo, "others" (mostly money funds) | 0.176 | $ billion | 2026-10-28 | Fed H.4.1 RESPPLLRD_N.WW | Not applicable |
| Digital credit outstanding (Strategy preferred about $13.40B plus SATA $1.29B) | about 14.7 | $ billion | late October 2026 | 10-Q, Strive 8-K (derived) | 100% |
| New Bitcoin per year | 164,250 BTC, about $13.2B | BTC and $ | post-2024 halving | Protocol arithmetic | Digital credit equals about 1.1 years of new supply |

Comparison points: stablecoins peaked at $315.5B on 2026-05-17 and are down 6.6% since. Bills rose from $6.55T (2025-12-31) to $7.12T. Three-month bill yield 4.21%, 10-year 4.90% (2026-11-04), up from 3.67% and 4.18% at the end of 2025.

### D3. Ledger walk: four transactions, both floors
Floors: upstairs = reserves, the Treasury General Account and reverse repo at the Fed. Downstairs = deposits and cash held by the public. Reverse repo use by money funds is about $0.2B, so a money fund redemption today is met by selling bills or letting repo run off, not by drawing on the Fed.

**T1. A saver moves $10,000 from a government money fund into STRC.**
| Actor | Asset change | Liability or equity change |
|---|---|---|
| Saver | Money fund shares -$10,000, STRC +$10,000 (at par) | None |
| Money fund | Bills or repo -$10,000 | Shares outstanding -$10,000 |
| Buyer of the bill (dealer, bank or another fund) | Bill +$10,000, deposit or reserves -$10,000 | None |
| Strategy | Deposit +$10,000 | Preferred equity +$10,000 |
Result: deposits move from the bill buyer to Strategy. Public money only moved. If a bank is the final buyer of the bill, it pays with reserves upstairs and the public's deposits are unchanged. Set 1 is the same size. The saver now holds a Bitcoin-backed equity claim instead of a claim on bills.

**T2. Strategy buys $10,000 of Bitcoin from a miner or an early holder.**
| Actor | Asset change | Liability or equity change |
|---|---|---|
| Strategy | Deposit -$10,000, Bitcoin +$10,000 | None |
| Seller (miner or holder) | Bitcoin -$10,000, deposit +$10,000 | None |
Result: **the dollars end with the Bitcoin seller.** Public money only moved. The miner spends them on power, wages and taxes. An early holder often parks them in a money fund or bills, which closes the loop back into Set 1. Bitcoin moves from a private wallet into a Set 1 wrapper (a listed Delaware company). This is the step the phrase "money flowing into Bitcoin" hides: no dollar enters Bitcoin, Bitcoin enters a Set 1 legal shell, and the price may move.

**T3. Strategy pays a daily dividend from its dollar reserve.**
| Actor | Asset change | Liability or equity change |
|---|---|---|
| Strategy | Short-term investments or cash -$3.3 per $10,000 per day (12% a year) | Retained earnings (or paid-in capital) down |
| STRC holder | Deposit up | None (return of capital lowers the tax basis while the company has no earnings and profits, R8A to confirm) |
Result: dollars move from Strategy's bills and money fund holdings to savers. Public money only moved. The reserve itself was raised by selling common stock in 2025 and 2026, so in effect common shareholders are paying preferred holders through the reserve, not Bitcoin's returns.

**T4. In a bear market Strategy sells Bitcoin to pay dividends.**
| Actor | Asset change | Liability or equity change |
|---|---|---|
| Strategy | Bitcoin down, deposit up, then deposit down as dividends go out | Equity down by the dividend |
| Bitcoin buyer (ETF, fund, holder) | Bitcoin up, deposit down | None |
| STRC holder | Deposit up | None |
Result: dollars move from the Bitcoin buyer to STRC holders. Public money only moved. Bitcoin leaves the wrapper. This happened in Q3 2026: $239.9M of Bitcoin sold to pay dividends.

**Ledger finding.** In all four steps public money only moved. Digital credit does not take dollars out of Set 1 or put them into Set 2. It swaps who holds the dollars (Bitcoin sellers in bull years, STRC holders in every year) and who holds the Bitcoin (a Set 1 wrapper in bull years, outside buyers in bear years). The only basket change is in risk: a saver's money fund claim on the Treasury becomes an equity claim on a Bitcoin pool. The Fed's balance sheet is touched only if a money fund draws on reverse repo, which today is about $0.2B in total.

### D4. The counter-pipe
Stablecoins pull crypto users' dollars into bills and repo: every new compliant stablecoin dollar is demand for short Treasuries (rb-12). Digital credit pulls savers' dollars toward Bitcoin sellers. In 2025 the counter-pipe grew by $100.5B and Strategy raised $25.3B, so the net basket flow ran into Set 1 assets by about four to one. In 2026 to date the counter-pipe shrank by $9.1B while Strategy raised $21.2B, and Strategy itself parked $3.35B in dollars. The talk's goal, a Bitcoin-backed stablecoin paying 6% to 8% (S40, S41), would merge the two pipes: a payment token whose backing is digital credit instead of bills. Under the GENIUS Act a permitted issuer may not pay yield to holders for holding (T1, R8A to confirm wording), and the OCC's February 2026 proposal treats yield routed through affiliates as presumptively barred (T4). So the merged pipe would need either a change of law or a wrapper that is not a payment stablecoin (a tokenized fund or tokenized STRC).

---
## E. Players and the game

### E1. Player map
| # | Player | Wants | Moves available | Payoff in a bull market | Payoff in a bear market | Say/do gap |
|---|---|---|---|---|---|---|
| 1 | Strategy management (Saylor, Class B with about 33% of votes, derived from 19.64M Class B shares at 10 votes each, to verify) | More Bitcoin per share, an unbroken dividend record | Issue common, preferred or converts, set STRC's rate monthly, buy back STRC, sell Bitcoin, build the reserve | Premium lets them buy Bitcoin accretively | Must pick between dilution, reserve drawdown and Bitcoin sales | "Never sell Bitcoin" in earlier years, sold $431.8M in 2026 |
| 2 | MSTR common holders | Bitcoin per share up faster than Bitcoin | Hold, sell, short against Bitcoin | Levered gains (talk: 51% a year since August 2020, S30) | Residual loss, dilution to fund dividends and the reserve | They funded the reserve and the Q3 buybacks |
| 3 | STRC buyers (retail yield seekers, preferred and credit ETFs, treasurers) | 12% near par, liquidity, tax deferral | Buy above par, sell below, hold through cuts | 12% plus small price gains | Price gap (about $71 in June 2026), rate cuts allowed under the terms (R8A) | Sold as "four months to four years" money, priced like equity in June |
| 4 | Senior holders (convert holders, STRF) | Principal back | Put in 2027 to 2028, hold | Convert into stock | Put for cash | |
| 5 | Bitcoin sellers (miners, early holders, ETF redeemers) | Dollars at the best price | Sell into Strategy's demand | Receive the savers' dollars | Buy back cheaply from forced sellers | |
| 6 | Copycats (Strive, Metaplanet, Twenty One, others) | Their own premium | Issue preferreds (SATA $1.29B), buy Bitcoin | Premiums of their own (Strive about 1.24 in June 2026) | Peers fell to about 0.9 | |
| 7 | Spot Bitcoin ETFs | Fee income | Create and redeem at NAV | The same exposure without leverage at 1.0 | Redemptions | They cap any premium above 1 for plain exposure |
| 8 | Banks | Keep deposits, lend against Bitcoin when custody is allowed | Offer Bitcoin-backed loans, lobby against stablecoin yield | Fees, collateral | Losses on Bitcoin loans | Talk says banks will lend when they custody (S6) |
| 9 | Money fund managers | Assets under management | Compete on yield (about 4%) | Lose some yield-seeking money | Gain flight-to-safety money | |
| 10 | Stablecoin issuers (Tether, Circle) | Keep the bill yield, grow supply | Buy bills, lobby for or against holder yield | Supply growth | Supply shrinks (2026: -$9.1B) | Earn about 4% on reserves while paying holders nothing |
| 11 | Index providers (MSCI, S&P) | Credible indexes | Include, exclude, reweight | Passive demand for MSTR | Exclusion forces passive selling | MSCI new screen from November 2026 |
| 12 | SEC | Disclosure and investor protection | Review shelves, prospectuses, marketing | Few moves | Scrutiny of "credit" and "bank account" marketing | |
| 13 | Treasury | Cheap bill funding | Write stablecoin rules, tax rules | Stablecoins add bill demand | | Digital credit competes with bills for savers |
| 14 | Fed | Price stability | Set the policy rate | Higher rates widen the hurdle for STRC buyers | Cuts help the spread story | |
| 15 | Short sellers and arbitrageurs | Spread income | Long Bitcoin or STRC, short MSTR, trade converts | Sell the premium | Cover | |
| 16 | Congress and the OCC (stablecoin yield) | Banks' deposits versus crypto rewards | Extend or narrow the yield ban (CLARITY Act, OCC rule) | | | CLARITY status disputed in sources |

### E2. Payoff boxes (rb-clubs format)

| Box 1. Race: the treasury-company rush | Others buy Bitcoin with new paper | Others hold back |
|---|---|---|
| You buy Bitcoin with new paper | Middle: the price rises a little, but "Bitcoin exposure" becomes common and every premium shrinks toward 1 | Best: you capture the premium and become the default wrapper |
| You hold back | Worst: your premium vanishes as peers grow | Middle: nothing changes |

Settles: everyone issues while any premium exists, so the premium is competed away. By June 2026 Metaplanet traded near 0.9 and Nakamoto near 0.92, while Strive held about 1.24 (Forklog, T4). Misses: Strategy's size and liquidity gave it a lasting edge, and spot ETFs cap plain exposure at 1.0.

| Box 2. Run on a preferred when coverage falls | Other holders sell | Other holders hold |
|---|---|---|
| You sell | Middle: you take the lower price, about $71 to $74 in June 2026 | Best for you: you exit near par before the fall |
| You hold | Bad: the price gaps and the rate may be cut, but dividends continue while the reserve lasts | Good: 12% with a stable price |

Settles: unlike a bank run there is no redemption right, so selling only moves the price. The issuer can change the payoffs by raising the rate (12% from July 2026) and buying back below par ($2.04B in 2026). That worked in 2026, at the cost of the reserve and common dilution. Misses: holders who must mark to market (funds) sell regardless, which is why June 2026 gapped.

| Box 3. Regulator's choice on stablecoin yield | Industry routes yield through exchanges and affiliates | Industry complies (no yield) |
|---|---|---|
| Regulator allows yield | Stablecoins compete with money funds and bank deposits. Bill demand rises. A Bitcoin-backed 8% token becomes legal in form | Same, with less friction |
| Regulator bans yield, affiliates included | Enforcement fights. Yield moves to tokenized funds or tokenized STRC, outside the payment stablecoin category | Status quo: issuers keep the bill yield, banks keep deposits |

Settles: banks prefer a full ban, exchanges prefer a narrow one. Whichever wins decides whether "digital money paying 8%" (S41) can be a payment stablecoin or only an investment product. Misses: tokenized money funds already pay holders the bill yield legally.

---

## F. Regime grid
| Regime | Credit sold (toward) | Common issued | Bitcoin bought | Reserve and buybacks (back) | Stablecoin counter-pipe | Who gains | Who loses | Tell to watch, with date |
|---|---|---|---|---|---|---|---|---|
| Bull (Bitcoin up, mNAV above 1.2) | Rises, STRC above par | Rises, accretive | Rises, can exceed mined supply (2025: 137%) | Shrinks | Grows (2025: +$100.5B) | Common holders, Bitcoin sellers | Short sellers | mNAV above 1.2 for 20 sessions, next weekly 8-K (each Monday) |
| Bear (Bitcoin down, mNAV at or below 1) | Stops, STRC below par | Used to fund the reserve, dilutive | Near zero (Q3 2026: 4% of mined) | Grows, Bitcoin sold for dividends (Q3 2026: $239.9M) | Shrinks (2022: -$24.5B, 2026: -$9.1B) | Bitcoin buyers at low prices | Common holders, then preferred price | Reserve below 12 months (about $1.5B), or Bitcoin sales in an 8-K |
| Rate cut | Spread over bills widens, easier to sell 12% | Helped by risk appetite | Up | Less needed | Bill income falls, issuers' margin shrinks | STRC issuer | Money funds | FOMC statement, December 2026 meeting (date to confirm) |
| Rate hike (the live regime: 3-month bill 3.67% to 4.21% in 2026) | Harder, buyers compare 12% with 4% to 5% risk-free | Harder | Down | More buybacks | Bill income rises | Money funds, stablecoin issuers | Treasury companies | 10-year above 5% (4.90% on 2026-11-04) |
| Stablecoin yield allowed | Competes with STRC for yield seekers, but enables a "digital money" built on digital credit | Neutral | Neutral to up | Neutral | Grows fast | Stablecoin issuers, exchanges | Banks (deposits) | Final OCC rule or CLARITY text, any 2026 to 2027 vote |
| Tax rule change (return-of-capital status ends if earnings and profits turn positive, or a tax on unrealized gains applies) | STRC's after-tax edge shrinks (12% untaxed is 19% pre-tax at a 37% rate) | Neutral | Neutral | Possible tax payments in dollars | Not affected | | STRC holders | FY2026 10-K (February 2027) and the dividend tax notice (early 2027) |
| Index exclusion | Neutral | Passive selling, mNAV falls | Down | Up | Not affected | Arbitrageurs | Common holders | MSCI November 2026 review, effective at month end (date to confirm) |

---

## G. Verdict on the desk's Round 1 belief "Set 1 absorbs Set 2"
| Hypothesis | What it says | Evidence for | Evidence against | Test that separates it | Date |
|---|---|---|---|---|---|
| H-A Absorption (legal form) | Bitcoin is pulled into Set 1 wrappers: listed companies, ETFs, preferred stock in index funds | Public companies hold 1.30M BTC (6.5% of supply), Strategy alone 4.2% of circulating supply. ETFs hold about $106B to $111B | Wrappers can shed Bitcoin in a bear (2026 sales) | Share of Bitcoin supply held in SEC-registered wrappers keeps rising through a bear | Each quarter end, next at 2026-12-31 |
| H-B Leakage (money) | Set 1 cash drains into Set 2 | 12% yield attracts savers. $7.5B of preferreds sold in 2026 | Ledger: dollars never leave Set 1. Digital credit is 0.19% of money fund assets | Money fund assets or bills fall in a quarter when digital credit issuance is large | 2027 Q1 data |
| H-C Two-way valve | The pipe runs toward Bitcoin in bull years and back in bear years | 2026 shows both: $7.5B preferred in, $0.43B Bitcoin out, $3.35B into the dollar reserve | Not yet tested in a long bear with puts due | Bitcoin sales for dividends in two consecutive quarters | 10-Q for Q4 2026 and Q1 2027 |
| H-D Risk transfer | Set 1 savers carry Set 2 risk in a credit costume while Set 1 keeps the dollars | STRC fell to about $71 in June 2026. Dividends paid from a reserve funded by common stock | STRC returned to par by October | STRC below $90 for 20 sessions with Bitcoin above cost would mean risk is priced as equity | Any month |

**Verdict.** Round 1's belief survives in two of its three senses and needs a rewrite in the third. Legal absorption (H-A) is supported by data. Dollar absorption is supported by the ledger: no dollar enters Bitcoin, and the counter-pipe into bills was four times larger in 2025. Risk is the exception: digital credit moves Bitcoin's risk into a Set 1 saver's portfolio (H-D) and turns the wrapper into a seller in bear years (H-C). Proposed wording: "Set 1 is absorbing Set 2's assets into its legal wrappers while some Set 1 savings take on Set 2's risk. In a bear market the wrapper can sell Bitcoin back into dollars." Confidence that H-A plus H-D describe 2026 to 2028 better than H-B: about 70 (desk judgement, not a market price).

---
## H. Curiosity questions, radiant map, scale check

### H1. Curiosity questions (answers use verified numbers)
1. **You pay $100 for STRC. Where are your dollars a week later?** With whoever sold Strategy its Bitcoin, or in Strategy's dollar reserve. In Q3 2026 only about $0.59B of $5.41B raised reached Bitcoin sellers. The rest went into short-term investments, buybacks and dividends.
2. **Did the 12% ever come from Bitcoin?** In 2026, partly from selling Bitcoin ($239.9M in Q3 for dividends) and mainly from a reserve funded by common stock ($1.44B set up on 2025-12-01 from at-the-market sales). Operating cash flow was $14.3M in nine months.
3. **How can a "credit" fall 29% in a month?** It is preferred equity with no right to redeem. When Bitcoin fell under $60,000 in late June 2026, STRC traded down to about $71.40 (T4) while dividends continued.
4. **Does Strategy buy all the Bitcoin mined?** In 2025 it bought 225,030 BTC against 164,250 mined (137%). From January to October 2026 about 129%. In Q3 2026 only 4%.
5. **Is the stablecoin pipe bigger than the digital credit pipe?** Yes in 2025: stablecoins grew $100.5B, Strategy raised $25.3B. In 2026 stablecoins shrank $9.1B.
6. **What is the biggest bill Strategy faces before 2029?** Not dividends but convertible puts: $5.91B between 2027-09-15 and 2028-09-15, because all six conversion prices ($149.77 to $672.40) are above the stock price.
7. **At what Bitcoin price is the preferred stack no longer covered?** About $17,900 net of cash, about $23,700 gross (model). Bitcoin's 2022 low was $15,470 (Kraken weekly, 2022-11-17 week).
8. **Who controls the vote that moved STRC to daily dividends?** 381.4M votes for, 2.2M against (99.3%) on 2026-10-28. Class B shares (19.64M, ten votes each, to verify) carry about a third of all votes.

### H2. Radiant-map rays (8)
| Ray | Short label | Link |
|---|---|---|
| The pipe | Dollars to sellers, Bitcoin to the wrapper | rb-moneymake |
| The loop | Credit, Bitcoin, premium, common, spreads | rb-crypto |
| The brakes | Cost $75,451, mNAV 1.08, 39 months | rb-bonds |
| The stress test | -30%, -50%, -70%, coverage above 1x | rb-buckets |
| The reverse valve | Bitcoin sold for dividends in Q3 2026 | rb-08 |
| The counter-pipe | Stablecoins into bills, +$100.5B in 2025 | rb-12 |
| The players | 16 players, 3 payoff boxes | rb-clubs |
| The precedents | 1720, 1929, 2000, 2002, 2022 | rb-09 |

### H3. Scale check
| Set 1 pool | Pool size | Digital credit (about $14.7B) as a share | Strategy's 2025 raise ($25.3B) as a share |
|---|---|---|---|
| US money market funds (ICI, 2026-10-28) | $7.90T | 0.19% | 0.32% |
| Treasury bills (2026-09-30) | $7.12T | 0.21% | 0.36% |
| Bank deposits (September 2026) | $19.64T | 0.075% | 0.13% |
| Stablecoins (2026-11-05) | $294.6B | 5.0% | 8.6% |
| Bitcoin market cap (Set 2, 2026-11-05) | $1.62T | 0.91% | 1.6% |
| New Bitcoin per year (Set 2 flow) | about $13.2B | 111% | 192% |

Reading: a straw in the Set 1 lake, a fire hose on the Set 2 flow. The talk's "$1.5 to $2 trillion system that can scale to $10 to $100 trillion" (S36) matches Bitcoin's market cap today ($1.62T). If digital credit kept today's ratio to Bitcoin (0.9%), a $10T to $100T system would carry about $90B to $900B of digital credit, 1.1% to 11% of today's money fund assets (model). Only the top of that range would change the Set 1 lake.

---

## J. Sweep: popular and rival claims (hypotheses, T5 unless noted)
| Claim | Who says it | School | How to test | Result here |
|---|---|---|---|---|
| Triple flywheel: credit, equity and reserves reinforce each other (S34) | Saylor | Issuer, Bitcoin maximalist | Common issuance used for Bitcoin when mNAV is above 1 | Q3 2026 common went to dollars, not Bitcoin |
| "Death spiral": falling Bitcoin forces sales, forcing more falls | Short sellers, crypto press in June 2026 | Bear case | Bitcoin sales as a share of mined supply in a drawdown | 5,552 BTC sold in Q3 2026, about 13% of Q3 mined. Not a spiral yet |
| "Not a death spiral": no margin calls, perpetual funding | KuCoin blog, FXStreet (2025-12-11), BitMEX recap | Defenders | Coverage above 1x in a -70% scenario | Model supports for coverage, not for dividend continuity without dilution |
| "Strategy is a closed-end fund in disguise" | Hard-money and accounting critics | Credit analyst | mNAV below 1 for long periods | Below 1 on market cap basis today |
| "Stablecoins are Set 1 in Set 2 clothes" | Desk (rb-crypto), official view | Official | Bill holdings of issuers | Supported, counter-pipe +$100.5B in 2025 |
| "12% untaxed is a 24% bank account" (S19) | Saylor | Issuer | Tax-equivalent at the holder's rate | 19% at a 37% rate. 24% needs a combined rate near 50% and assumes return of capital status lasts (R8A) |

---
## K. Say/do gaps, anomalies, mechanism chains, open questions

### Say/do gaps
| Said | Done | Source |
|---|---|---|
| Triple flywheel: issue common, buy Bitcoin (S34) | Q3 2026: $5.41B common, $0.59B Bitcoin, about $2.9B into short-term investments, $1.34B preferred buybacks | XBRL |
| "Six times over-collateralized" (S18) | 4.5x for claims at or above STRC net of cash, 3.4x for the whole stack gross (model). The company's 5.7x (August) uses its own ranking and netting | FWP 2026-08-24, model |
| "48 years of dividends covered" (S16) | 45.6 years in Bitcoin, 39 months in dollars. Coverage in Bitcoin means selling Bitcoin | Model |
| STRC "fell below par at the start of summer" (S23) | It fell to about $71 to $74, roughly 26% to 29% below par, in late June 2026 | Forklog, KuCoin (T4) |
| Bitcoin is held, not sold | $431.8M sold in nine months 2026 | Q3 release |

### Anomalies
1. The flywheel's equity leg ran in reverse in Q3 2026: common stock funded the credit's defence. The framer's guess that "the pipe is powered by preferred stock" was right for Q2 (65%) and wrong for Q3 (0%).
2. Holdings rose only 1,661 BTC from 2026-09-30 to 2026-11-01 while the talk describes buying all new supply.
3. Strategy became a buyer of Set 1 assets: dollar reserve up $3.35B in eleven months.
4. The press release's Q3 table gives $5,407.7M of MSTR ATM proceeds and a footnote gives $588.1M used for Bitcoin. Both fit: the difference went to dollars.

### Mechanism chains
1. Bitcoin -30% → mNAV under 1 (equity is levered) → common issuance dilutive → reserve drawdown or Bitcoin sales → STRC below par → buybacks drain reserve faster. Test: reserve months in each Monday 8-K.
2. MSTR below conversion prices into 2027 → $1.01B put on 2027-09-15 → refinancing at a higher coupon, stock sale, or Bitcoin sale. Test: refinancing announcements before mid 2027.
3. Rate hike → 12% looks smaller against 4% to 5% bills → STRC demand weaker → rate held at 12% or raised → annual cost up. Test: STRC monthly rate announcements.
4. Stablecoin yield allowed → yield-seeking crypto dollars stay in stablecoins → less demand for tokenized STRC in DeFi (S40). Test: OCC final rule, CLARITY vote.

### Open questions
1. Exact STRF, STRK, STRD and STRE amounts and the seniority ladder at 2026-10-25 (needed to recompute STRC coverage exactly).
2. Strategy's own mNAV daily history for 2024 to 2026 (strategy.com blocked, FWP is image-only).
3. Spot ETF 2025 and 2026 flows from one provider.
4. Size of bank lending against Bitcoin.
5. Whether earnings and profits for 2026 keep distributions as return of capital (R8A).
6. Outcome of MSCI's November 2026 review for MSTR.

---

## I. Claims table
| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R8B-01 | Strategy held 849,327 BTC at an average cost of $75,451 (aggregate $64.08B) | T0 | Verified | https://www.sec.gov/Archives/edgar/data/1050446/000119312526442707/mstr-20261102.htm | 2026-11-02 | 2026-11-01 | A later 8-K restates the figures |
| R8B-02 | USD Reserve $4.79B plus USD cash $132.7M | T0 | Verified | same 8-K | 2026-11-02 | 2026-11-01 | Next 8-K |
| R8B-03 | Bitcoin $80,512, 6.7% above Strategy's average cost | T3 | Verified | https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd | 2026-11-05 | 2026-11-05 | Price data error |
| R8B-04 | Bitcoin's 2026 weekly low was $57,740 (week of 2026-06-25), 23% below Strategy's cost. Weekly high since 2013 was $126,198 (week of 2025-10-02) | T3 | Verified | https://api.kraken.com/0/public/OHLC?pair=XBTUSD&interval=10080 | 2026-11-05 | 2026-11-05 | Another venue shows a materially different low |
| R8B-05 | Company-definition mNAV about 1.08 and market cap over Bitcoin about 0.86 | Model on T0 inputs | Model | scratchpad/scripts/r8b_stress.py | 2026-11-05 | 2026-11-05 | Strategy's published mNAV differs by more than 0.05 |
| R8B-06 | Enterprise mNAV closed below 1 for the first time around 2026-06-28 | T4 | Reported | https://forklog.com/en/strategys-valuation-falls-below-its-bitcoin-reserves-for-the-first-time/ | 2026-06-29 | 2026-06-28 | Company series shows an earlier close below 1 |
| R8B-07 | STRC traded down to about $71.40 in late June 2026 ($74.25 on 2026-06-25) | T4 | Reported | https://kucoin.com/blog/tr-strategy-death-spiral-debunked-why-mstr-s-crypto-flywheel-paused-as-strc-preferred-stock-hits-75-amid-bitcoin-slump | 2026-06-26 | 2026-06-25 | Nasdaq price history shows a low above $80 |
| R8B-08 | STRC buybacks in 2026: 20,980,508 shares for about $2.04B at an average $97.39 | T2 | Verified | https://www.sec.gov/Archives/edgar/data/1050446/000105044626000047/mstr-20261029x8kxex9912.htm | 2026-10-29 | 2026-10-25 | 10-K FY2026 differs |
| R8B-09 | STRC notional $9.10B at 2026-09-30 and $8.39B at 2026-10-25 | T0 | Verified (via filing text in search) | https://www.sec.gov/Archives/edgar/data/1050446/000105044626000060/mstr-20260930.htm | 2026-11-02 | 2026-10-25 | Next filing |
| R8B-10 | Total preferred liquidation preference $15.46B at 2026-06-30 and $14.11B at 2026-09-30 | T0 | Verified | https://data.sec.gov/api/xbrl/companyfacts/CIK0001050446.json | 2026-11-02 | 2026-09-30 | XBRL amended |
| R8B-11 | Strategy sold $431.8M of Bitcoin in nine months 2026. Q3 sales $348.6M: $239.9M for preferred dividends, $108.6M for STRC buybacks | T0 and T2 | Verified | XBRL and Q3 release (URLs above) | 2026-10-29 | 2026-09-30 | 10-Q restated |
| R8B-12 | Q3 2026: $5.41B of common raised, $0.59B of Bitcoin bought | T0 (derived) | Verified | XBRL ProceedsFromIssuanceOfCommonStock, CryptoAssetPurchase | 2026-11-02 | 2026-09-30 | Quarterly tags revised |
| R8B-13 | 2026 nine months: common $13.66B, preferred $7.53B, converts $0. Preferred share 35.6% | T0 | Verified | XBRL | 2026-11-02 | 2026-09-30 | Revised tags |
| R8B-14 | 2025: common $16.27B, preferred $7.04B, converts $2.0B, total $25.3B. Bitcoin bought $22.47B | T0 | Verified | XBRL | 2026 filings | 2025-12-31 | 10-K amended |
| R8B-15 | 2022 (stress year): Bitcoin bought $0.29B, common $0.05B, Bitcoin sold $11.8M | T0 | Verified | XBRL | 2023 filing | 2022-12-31 | |
| R8B-16 | Strategy bought 225,030 BTC in 2025, 137% of 164,250 mined | T0 plus arithmetic | Verified | XBRL CryptoAssetNumberOfUnits | 2026 | 2025-12-31 | |
| R8B-17 | Q3 2026 holdings rose 1,666 BTC, about 4% of Q3 mined supply | T0 plus arithmetic | Verified | XBRL | 2026-11-02 | 2026-09-30 | |
| R8B-18 | Six convertible series total $6.71B, conversion prices $149.77 to $672.40, holder puts from 2027-09-15 to 2029-06-15 | T0 | Verified | 10-Q (URL above) | 2026-11-02 | 2026-09-30 | Repurchase or exchange announced |
| R8B-19 | $5.91B of holder puts fall between 2027-09-15 and 2028-09-15, more than the $4.92B of dollars on hand | T0 derived | Verified | 10-Q, 8-K | 2026-11-02 | 2026-11-01 | Notes refinanced or MSTR above conversion prices |
| R8B-20 | Dollar assets of $5.07B cover about 3.4 years of preferred dividends and interest, implying about $1.50B a year | T2 | Company figure | Q3 release | 2026-10-29 | 2026-10-25 | 10-K gives a different annual total |
| R8B-21 | Operating cash flow was $14.3M in nine months 2026 | T0 | Verified | XBRL | 2026-11-02 | 2026-09-30 | |
| R8B-22 | Dollar reserve: $1.44B (2025-12-01), $2.55B or 17.4 months (2026-06-22), $5.10B (2026-08-23), $4.79B (2026-11-01) | T4, T4, T0, T0 | Mixed | https://decrypt.co/350459/bitcoin-giant-strategy-1-44-billion-usd-reserve-still-might-sell-btc and filings | 2025-12-01 to 2026-11-02 | as stated | Filings show other values |
| R8B-23 | Reserve policy: at least 12 months, goal 24 months. Strategy said it may sell Bitcoin or derivatives if mNAV falls below 1 | T4 | Reported | decrypt (above) | 2025-12-01 | 2026-06 | Policy withdrawn |
| R8B-24 | STRC rate 12%, raised 50 bp from July 2026 | T2 and T4 | Verified | Q3 release, Forklog | 2026-10-29 | 2026-11-01 | Monthly rate notice |
| R8B-25 | Daily dividend proposal passed 381,373,199 for, 2,236,551 against, 444,753 abstaining (99.3% of votes cast). STRC daily from 2026-11-01, STRF, STRK and STRD from 2027-01-01. Total dividends unchanged | T0 | Verified | https://www.sec.gov/Archives/edgar/data/1050446/000119312526437776/mstr-20261028.htm | 2026-10-29 | 2026-10-28 | |
| R8B-26 | Preferred coverage net of cash falls below 1x at about $17,937 Bitcoin, STRC's own at about $13,541 | Model | Model | r8b_stress.py | 2026-11-05 | 2026-11-05 | Stack changes or STRF figure wrong |
| R8B-27 | In every modelled drop down to -70% the reserve pays 39 months, 27 months before the 12-month floor, so no Bitcoin sale is forced by dividends alone in that window | Model | Model | r8b_stress.py | 2026-11-05 | 2026-11-05 | Reserve spent on buybacks or puts |
| R8B-28 | At -50% Bitcoin, funding dividends by Bitcoin sales would take 37,262 BTC a year, 23% of mined supply | Model | Model | r8b_stress.py | 2026-11-05 | 2026-11-05 | |
| R8B-29 | Stablecoin supply $294.6B on 2026-11-05, peak $315.5B on 2026-05-17. Change: +$100.5B in 2025, -$24.5B in 2022, -$9.1B in 2026 to date | T3 | Verified | https://stablecoins.llama.fi/stablecoincharts/all | 2026-11-05 | 2026-11-05 | Issuer attestations differ by more than 3% |
| R8B-30 | US money fund assets $7,901.28B in the week to 2026-10-28 | T2 | Verified | https://www.ici.org/research/stats/mmf | 2026-10-29 | 2026-10-28 | |
| R8B-31 | Marketable Treasury bills outstanding $7.118T at 2026-09-30 | T0 | Verified | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/debt/mspd/mspd_table_1 | 2026-10 | 2026-09-30 | |
| R8B-32 | Fed reverse repo with "others" was $176M on 2026-10-28, so money fund redemptions barely touch the Fed's floor | T0 | Verified | https://api.db.nomics.world/v22/series/FED/H41/RESPPLLRD_N.WW?observations=1 | 2026-10-29 | 2026-10-28 | |
| R8B-33 | 3-month Treasury 4.21% and 10-year 4.90% on 2026-11-04. STRC's 12% is about 780 bp and 710 bp above them | T0 | Verified | https://home.treasury.gov/resource-center/data-chart-center/interest-rates/daily-treasury-rates.csv/2026/all?type=daily_treasury_yield_curve | 2026-11-04 | 2026-11-04 | |
| R8B-34 | Digital credit outstanding about $14.7B, 0.19% of money fund assets, 0.21% of bills, 5.0% of stablecoins, 0.91% of Bitcoin's market cap | Derived | Verified inputs | D2 sources | 2026-11-05 | late October 2026 | Other issuers' preferreds add more than $2B |
| R8B-35 | Strive's SATA notional $1.29B (12,940,621 shares) at 2026-09-30 | T4 (filing seen only through a search summary) | To verify | https://www.sec.gov/Archives/edgar/data/0001920406/000162828026064753/asst-20261005.htm | 2026-10-05 | 2026-09-30 | Filing text differs |
| R8B-36 | Listed companies hold about 1.30M BTC, 6.5% of circulating supply. Strategy holds 4.2% of circulating supply | T3 | Verified | https://api.coingecko.com/api/v3/companies/public_treasury/bitcoin | 2026-11-05 | 2026-11-05 | |
| R8B-37 | In each of the four ledger transactions public money only moved. The dollars paid for STRC end with Bitcoin sellers, STRC holders or in Strategy's reserve, never "in Bitcoin" | T2 (accounting) | Reasoned | Section D3 | 2026-11-05 | 2026-11-05 | A channel where buying STRC creates or destroys deposits on net |
| R8B-38 | GBTC first traded at a discount in late February 2021 after an average premium of about 35%, record discount about 47% to 50% in December 2022 | T4 | Reported | https://www.theblock.co/post/98973/grayscale-bitcoin-trust-discount-premium | 2021-03 and 2022-12 | 2022-12 | |
| R8B-39 | The FSA and 18 firms agreed £194M for zero dividend preference shareholders (Christmas Eve 2004), average payout about 40% of losses | T4 | Reported | https://citywire.com/investment-trust-insider/news/fsa-reveals-splits-compensation/a262792 | 2004-12 | 2004-12 | |
| R8B-40 | MicroStrategy fell 62% on 2000-03-20 after announcing a two-year restatement. SEC settlement 2000-12-14 | T4 and T1 | Reported | https://money.cnn.com/2000/12/14/technology/microstrategy/index.htm | 2000-12-14 | 2000 | |
| R8B-41 | South Sea shares went from £128 (January 1720) to about £1,000 to £1,050 (June) and about £135 (November) | T4 | Reported, sources differ in detail | https://csel.asu.edu/research/publications/Two-Bubbles-Plague | n.d. | 1720 | |
| R8B-42 | MSCI finalised a new screen for non-operating companies in October 2026, applied from the November 2026 review | T4 | Reported | https://www.theblock.co/news/business/2026-10-15-msci-rules-could-exclude-strategy-mstr-from-indexes-418729 | 2026-10-15 | 2026-10-15 | MSCI notice says otherwise |
| R8B-43 | BTC Yield was -3.7% in 2026 to 2026-10-25 (company metric) | T2 | Company figure | Q3 release | 2026-10-29 | 2026-10-25 | |
| R8B-44 | "Set 1 absorbs Set 2" holds for legal form and for dollars and fails for risk. H-A plus H-D better than H-B, confidence about 70 | Judgement | Proposed | Section G | 2026-11-05 | 2026-11-05 | Money fund assets or bills fall in a quarter of heavy digital credit issuance, or wrapper share of Bitcoin supply falls in a bear |

### Tripwires (dated)
| Date | Tripwire | Fires if | Moves |
|---|---|---|---|
| Every Monday from 2026-11-09 | Strategy weekly 8-K | Bitcoin sold, or reserve below $4.0B, or preferred ATM sales resume above $500M a week | Q3, regime row |
| Mid November 2026 (date to confirm) | December STRC rate notice | Rate raised above 12% or cut | STRC demand |
| November 2026 review, effective at month end (date to confirm) | MSCI index decision on MSTR | MSTR excluded | mNAV brake |
| 2026-12-31 | Quarter end holdings | Strategy adds under 10,000 BTC in Q4 2026 | Flywheel stalled for two quarters |
| 2027-01-01 | Daily dividends on STRF, STRK, STRD | Liquidity or price change in those series | Talk claim S38 to S39 |
| February 2027 (date to confirm) | FY2026 10-K and dividend tax notice | Distributions not treated as return of capital | Tax regime row |
| Any date | Bitcoin below $75,451 (cost) for 20 sessions | Fires | Brake row |
| Any date | Company mNAV below 1.0 for 20 sessions | Fires | Bitcoin-sale policy |
| Any date | Reserve below 12 months of obligations (about $1.5B) | Fires | Policy breach |
| 2027-09-15 | 2028 notes put ($1.01B) | MSTR below $183.19 | Refinancing test |
| 2028-03-01 and 2028-06-01 | 2030B ($2.0B) and 2029 ($1.5B) puts | MSTR below $433.43 and $672.40 | Refinancing test |
| About April 2028 (block 1,050,000, date estimated) | Halving to 1.5625 BTC a block | Fires | Share of mined supply doubles for any buyer or seller |
| Any date | Stablecoin supply below $290B or above $315.5B | Fires | Counter-pipe row |

---

## L. Proposed changes (for the court)
1. Rulebook Level 4 chapter: spine is the ledger finding (no dollar enters Bitcoin), then the two-way valve with 2026 data, then the brakes table and the stress model.
2. rb-crypto and rb-12: add one line that a Set 1 wrapper can hold Set 2 risk (digital credit), and that the wrapper can be a seller in bear markets. Keep "Set 2 rails end tied to Set 1 anchors".
3. Round 1 belief "Set 1 absorbs Set 2": restate as in section G, confidence about 70, with tests and dates.
4. Bridges: Level 2 rb-bonds (yield over bills, par), rb-moneymake (two floors, deposits only move), rb-clubs (payoff box format). Check each bridge against the actual Level 1 and 2 text before publishing.

## Sources (accessed 2026-11-05)
- Strategy 8-K 2026-11-02: https://www.sec.gov/Archives/edgar/data/1050446/000119312526442707/mstr-20261102.htm
- Strategy 10-Q Q3 2026: https://www.sec.gov/Archives/edgar/data/1050446/000105044626000060/mstr-20260930.htm
- Strategy Q3 2026 release: https://www.sec.gov/Archives/edgar/data/1050446/000105044626000047/mstr-20261029x8kxex9912.htm
- Strategy vote 8-K: https://www.sec.gov/Archives/edgar/data/1050446/000119312526437776/mstr-20261028.htm
- Strategy FWP 2026-08-24 (framer): https://www.sec.gov/Archives/edgar/data/0001050446/000119312526363557/d431748dfwp.htm
- SEC XBRL company facts: https://data.sec.gov/api/xbrl/companyfacts/CIK0001050446.json
- CoinGecko price, coin and treasury APIs. Kraken weekly OHLC.
- DefiLlama stablecoin charts: https://stablecoins.llama.fi/stablecoincharts/all
- ICI money fund weekly: https://www.ici.org/research/stats/mmf
- Fed Z.1, H.8 and H.4.1 via DBnomics. Treasury MSPD and daily yield curve.
- Press (T4): Forklog 2026-06-29, KuCoin 2026-06-26, Decrypt 2025-12-01, Bankless 2025-11-13, The Block (GBTC 2021 and 2022, MSCI 2026-10-15, Chainalysis 2022-12-15), CoinDesk 2022-12-08, CNN 2000-12-14, Citywire and Birmingham Post (split caps), ASU CSEL and Encyclopedia.com (1720), Goldman Sachs history page and Time (1929 trusts), Mondaq and Cointelegraph (stablecoin yield), Strive 8-K 2026-10-05 via search summary.
