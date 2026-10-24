# R3A: Dollar plumbing. Who really buys the tokens, the yield floor, and crisis dollar access

Lane: R3A (Round 3). Written 2026-10-22. As-of date for all data: 2026-10-22 unless a row says otherwise.
Questions answered: R3-1, R3-9, R3-10.
Reused inputs (cited as R2 R2A, R1 L1, R1 L2, R1 L5, R1 L7, R2 R2E): round2/lanes/R2A-set1-survival.md, round1/lanes/L1-fed-treasury.md, L2-law-regulation.md, L5-geo-reserves.md, L7-quant.md, round2/lanes/R2E-rivals-intime.md.
Method: about 19 web searches plus direct primary pulls: all 41 weekly Fed H.4.1 releases of 2026 (FIMA repo, swap lines, foreign custody), the NY Fed swap-operations API (400 operations since May 2022), Fed H.8, DefiLlama and CoinGecko stablecoin data, Treasury yield curves for 2010 to 2015, 2021 and 2026, the GENIUS Act text (govinfo), the OCC final rule PDF (2026-10-21), FOMC minutes (April, June, July, September 2026), TBAC Q1 2026 charge, IMF WP/25/141, Brookings 2025 paper, Japan MoF releases, Kalshi public API.
Model script: `/tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/r3a_model.py` (run with python3 -I). H.4.1 parser: `.../scripts/h41parse.py`. Everything labelled "model" is arithmetic on stated inputs, not data.

---

## Answers

### R3-1. How much stablecoin demand is new foreign dollar demand, and how much is money moving out of US money funds and bank deposits?

In the last twelve months, none of it is either, because the market stopped growing. Total stablecoins were $304.9B on 2025-10-21 and $303.8B on 2026-10-22 (DefiLlama, cross-checked at about $298B by CoinGecko). Over the same year US bank deposits rose $1.23T (H.8, +6.7%) and money funds rose about $0.5T to $7.92T (ICI, +6.8%), so stablecoins took nothing net from either. In the growth phase (end 2023 to October 2025, +$175B) the best estimate is that about two thirds went to holders outside the US (model range 55% to 81%), and about 40% of the total was genuinely new dollar demand from people converting local currency (range 22% to 61%). The rest was switching, either offshore dollar holders moving into tokens or US money moving from deposits, funds and crypto trading. The IMF's flow study supports the foreign tilt: North America was a net exporter of $54B of stablecoins in 2024, equal to 73% of that year's supply growth. Nobody can measure holder geography directly. The Fed's own September 2026 note says blockchain data lacks geography, and Tether discloses 650M users but no country split. Stablecoins are a new foreign buyer of bills only when the crypto cycle is up. In 2026 the real captive bill buyers were the Fed (bill holdings +$370B in a year) and money funds.
Status: plausible (supply and deposit data T0, foreign split is a model on T4 inputs). Confidence: 55. Horizon: H0.
Three views. Governance: do not budget on stablecoins as a dependable Treasury buyer. They were flat while the Fed and money funds carried the bills. Business: growth is foreign and crypto-cyclical, so build for cross-border and emerging-market users, not for US savers. Ordinary person on wages or UHI: a US household gains little from parking pay in a zero-yield token. The people who gain are savers in weak-currency countries.

### R3-9. In a crisis, do Gulf and Asian states get dollars (Fed swap lines, FIMA repo) or turn to the yuan?

They get dollars, but mostly from themselves and from markets, not from the Fed. In all 41 weeks of 2026, including the Hormuz shock and Japan's ¥27.1T of interventions, the Fed's FIMA repo line was zero except for a pre-war blip of $3.0B on 4 February. Swap lines never exceeded $481M, and only the five standing partners used them. Foreign official Treasury custody fell $254B (-9.1%) from its February peak, so official holders met their dollar needs by selling Treasuries and using their $332B cash pool at the Fed. Japan said on 3 August that it "plans to utilize" FIMA, then did not draw it, and made no intervention from 27 August to 28 September. The UAE floated a swap line in April. Bessent said "numerous" Gulf and Asian allies had asked and pointed to the Exchange Stabilization Fund (about $219B, the Argentina $20B precedent was repaid in January 2026). I found no announced Gulf line. The Gulf borrowed in markets instead (GCC bond and sukuk issuance $102.7B in H1 2026). The yuan is a top-up for trade, not a crisis dollar substitute: PBoC swap draws hit a two-year high in Q1 2026 (RMB 111.6B, about $16.4B, mainly Thailand and Indonesia), and Qatar renewed its PBoC swap on 14 October. Carnegie (July 2026) finds Gulf energy trade stays dollar-settled because the pegs are to the dollar.
Status: plausible (usage data T0, motives T2/T4). Confidence: 70. Horizon: H0.
Three views. Governance: the US backstop is shifting from Fed-run technical lines to Treasury-run political lines (ESF), which buys loyalty but also makes access conditional, and that pushes states toward gold and self-insurance. Business: in a shock, expect official holders to sell Treasuries, so long yields rise when you most need cheap funding. Ordinary person: the dollar stays your crisis currency, but each shock routed through Treasury sales raises US mortgage and loan rates.

### R3-10. If T-bill yields fall below about 1.5%, does Congress widen stablecoin reserves (longer bills, gold), or do issuers fold into banks?

That test is not close. The 3-month bill is 4.25%, the 2-year is 4.81%, and Kalshi prices only about 2% to 7% odds (thin market) of a fed funds ceiling at or below 1.5% by January 2027, with a hike more likely than a cut by December. If rates do fall that far, widening reserves cannot fix the economics. In the zero-rate years (2010 to 2015 and 2021) the 2-year averaged 0.45% and the 5-year 1.34%, both below Circle's roughly 1.5% breakeven (model). Only riskier assets such as gold, credit or commercial paper would close the gap, and GENIUS bans them for compliant issuers. Widening does not need Congress for Treasury-type assets: GENIUS Sec. 4(a)(1)(A)(vii) lets the regulator approve "any other similarly liquid Federal Government-issued asset", and the OCC kept that route on 21 October 2026, with conditions. But the OCC has already turned down longer-dated Treasuries for the issuer backstop. Gold is not government-issued, so gold would need a new act of Congress, and none exists. The money-fund precedent (about $36B of fee waivers in 2009 to 2015, about $5B a year) points to the likely path: cutting what is paid to distributors (breakeven falls to 0.97% at a 40% payout, 0.58% at zero), new fees, and consolidation into bank-type charters. Circle's national trust bank opened in July 2026, and the Fed has proposed stablecoin subsidiaries of member banks. Low-cost offshore issuers would gain share.
Status: plausible (rules T1, economics a model). Confidence: 65. Horizon: H1 to H2 (the trigger is not priced in H0).
Three views. Governance: the low-cost lever is administrative approval of floating-rate notes or short notes, not a gold door. Gold re-entry is speculative before H2. Business: distribution margins are the shock absorber, so Coinbase-style payouts get cut first, then issuers merge into banks or payment networks. Ordinary person: in a low-rate world your zero-yield token costs you less, so holding one gets cheaper, but fewer, bigger and more bank-like firms will issue it.

---

## 1. Key findings

1. **Stablecoin supply has been flat for a year.** DefiLlama total: $130.0B (end 2023), $203.8B (end 2024), $304.9B (2025-10-21), peak $315.5B (2026-05-17), $303.8B (2026-10-22). USDT $182.1B to $182.7B and USDC $75.8B to $72.6B over the same year. CoinGecko's stablecoin category is $298.2B today. R1 L7 and R1 L2 quoted about $305B "as of 2026-10-21". The level is right, but it is also the level of a year ago. [R3A-01]
2. **The competitors grew, the token did not.** H.8 seasonally adjusted deposits: $18,411.6B (Sep 2025) to $19,636.9B (Sep 2026), +$1,225B. ICI money funds: $7.418T (week to 2025-10-29) to $7.923T (week to 2026-10-14), +$505B. Stablecoins are about 1.1% of deposits plus money funds (model). [R3A-02, R3A-03]
3. **In 2026 the captive bill buyer was the Fed, not tokens.** H.4.1 shows Fed bill holdings of $565.5B, +$370.0B year on year (week to 2026-10-14), against -$1.1B for stablecoins. This confirms R1 L1's "Fed bill purchases of more than $300B". [R3A-04]
4. **When stablecoins grew, most went abroad (model).** End 2023 to October 2025: USDT +$90.3B, USDC +$51.8B, others +$32.8B. With stated assumptions on the non-US share of each, about 68% (55% to 81%) went to non-US holders, and about 41% (22% to 61%) of the total was new-to-dollar demand. IMF WP/25/141 (Reuter): North America was the net source of $54B of stablecoin outflows to every other region in 2024, against $73.8B of supply growth that year. USDT dominates in emerging regions, USDC in North America and Europe. Brookings: over 80% of transactions are outside the US. [R3A-05 to R3A-07]
5. **Foreign demand is real but measured in flows, not holdings.** Chainalysis 2026 (year to June 2026): cross-border stablecoin value +77.5% to $220.3B, domestic P2P stablecoin value +302.9% to $228.7B, but stablecoin balances in personal wallets only $98B to $109B, about a third of supply. The rest sits with exchanges, DeFi and institutions. The US ranks first in total flows but 11th in cross-border and 20th in P2P. [R3A-08]
6. **Official sources admit the split is unknown.** TBAC (Q1 2026): stablecoins can raise short-end demand "should stablecoin growth be driven by new offshore demand currently not in USD". The Fed's September 2026 note: GENIUS "does not distinguish between domestic and international circulation" and blockchain data lacks geography. The Fed's May 2026 note: foreign demand may raise US deposits if reserves are held domestically. Kansas City Fed: per $1 moved from deposits, net Treasury demand rises only about $0.30 to $0.42. [R3A-09, R3A-10]
7. **FIMA repo was not used in the crisis it was built for.** Across all 41 weekly H.4.1 releases of 2026, the foreign official repo line was zero in every week from 18 February to 14 October. The only use was before the war (weekly average $2.17B, Wednesday peak $3.0B on 4 February), 5% of the $60B cap. A year earlier (October 2025) the weekly average was $1.43B. [R3A-11]
8. **Swap lines were tiny and closed to newcomers.** NY Fed API: in 2026 only the ECB (43 operations, maximum $378M), BoJ (18, maximum $6M), BoE (10, maximum $20M), SNB (5) and BoC (1) drew. The 7-day rate is 4.13% (October). The H.4.1 swap balance peaked at $481M (week to 7 January). Compare SNB $11.09B (2022) and ECB $1.36B (2023). The FOMC renewed only the five standing lines on 29 April. "A few participants" floated terms beyond one year. Minutes for June, July and September do not mention FIMA. [R3A-12, R3A-13]
9. **Official holders sold instead of borrowing.** Foreign official marketable Treasuries in custody: weekly average $2,803.1B (18 February) to $2,549.1B (14 October), -$254.0B (-9.1%). Their cash at the Fed (foreign official reverse repo pool) was steady at $298B to $365B and stood at $331.9B, 5.5 times the FIMA cap. [R3A-14] Round 5 update: custody rose $18.5B in the week to 21 October to a weekly average of $2,572.8B, so official selling paused in October.
10. **Japan said FIMA, did not draw.** The MoF statement of 3 August 2026: "Japan also plans to utilize the Federal Reserve's ... FIMA Repo Facility in the future." The MoF monthly release: ¥0 of intervention from 27 August to 28 September 2026. An analyst post (Emons, 3 August) claiming that the MoF "confirmed" FIMA use, and that Japan holds about $350B in the Fed's foreign repo pool, is contradicted by H.4.1. FIMA was zero and the entire pool is $332B. [R3A-15, R3A-16]
11. **The UAE's ask went to Treasury, not the Fed.** The WSJ (via Bernama, 20 April): the CBUAE governor raised a swap line with Bessent and Fed officials, "not a formal request", and US officials doubted FOMC approval. Bessent (22 April): "numerous other countries, including some of our Asian allies, have also requested them". The purpose was "to prevent the sale of the US assets in a disorderly way". Van Hollen said the UAE asked "through the Exchange Stabilization Fund". By May the UAE said talks were ongoing and "not about bailing out". I found no announcement of a line since. ESF about $219B in total assets, of which $173B are SDRs matched by SDR allocations and certificates. Net position $44.3B, dollar securities $24.9B (August 2026 statement, Round 5). Argentina's $20B ESF agreement (18 October 2025) had one $2.5B swap, fully repaid in December 2025 per the ESF statement. [R3A-17, R3A-18]
12. **The Gulf financed itself in markets.** GCC primary bond and sukuk issuance was $102.69B in H1 2026 (+6.5%), Saudi $49.34B, Kuwait +128.6% (Markaz). UAE dollar and euro issuance hit a record $30.3B through 28 July (Bloomberg via secondary). [R3A-19]
13. **Yuan liquidity is rising at the margin.** PBoC swap draws were RMB 111.6B (about $16.4B) in Q1 2026, up 45% from Q4 2025 and the highest in two years. Thailand and Indonesia made 42% of draws. Corrected in Round 5: the PBoC counts 32 swap agreements of about RMB 4.5T, with RMB 132.8B drawn at end June 2026 (Caixin citing the PBoC). Qatar renewed its PBoC swap on 14 October 2026 (third extension). Carnegie (30 July 2026): energy trade "will likely stay mostly dollar-settled" and "talk of straightforward RMB displacement of the USD does not reflect the reality". [R3A-20, R3A-21]
14. **Bills below 1.5% are not priced.** Treasury 2026-10-21: 3-month 4.25%, 1-year 4.52%, 2-year 4.81%, 10-year 5.13%. 13-week bill coupon equivalent 4.17%. Kalshi (2026-10-22): 13% odds of a hike on 28 October, about 57% to 85% (bid/ask) that the ceiling is above 4.00% after 9 December, and 2% to 7% that it is at or below 1.5% after January 2027. [R3A-22, R3A-23]
15. **GENIUS already contains an administrative widening valve.** Sec. 4(a)(1)(A)(vii): "any other similarly liquid Federal Government-issued asset approved by the primary Federal payment stablecoin regulator". OCC final rule § 15.11(b)(7) keeps it, "subject to such conditions as the OCC may impose". Commenters asked for longer Treasuries, agencies, CP, AAA corporates and FRNs. The OCC declined to recognise longer-dated Treasuries for the backstop because of "heightened interest rate and price risk", required at least 5% in demand deposits or Fed balances, and capped any single counterparty at 40%. [R3A-24, R3A-25]
16. **Duration cannot rescue a zero-rate issuer (model).** Average yields 2010 to 2015 plus 2021: 3-month 0.07%, 2-year 0.45%, 5-year 1.34%. Circle's net result at Q2 2026 payout terms: all bills -$0.42B a year, all 2-year -$0.31B, all 5-year -$0.05B. Breakeven by distributor payout: 61.5% gives 1.50%, 50% gives 1.16%, 40% gives 0.97%, 0% gives 0.58%. [R3A-26]
17. **Money funds' zero-rate playbook.** ICI: "From 2009 to 2015, advisers waived an estimated $36 billion in money market fund expenses", and $8.4B in 2021 alone. [R3A-27]
18. **Issuers are already becoming banks.** Circle's First National Digital Currency Bank, N.A. got final OCC approval on 10 July 2026 and opened on 24 July (law-firm alert). Ripple, Paxos, BitGo and Fidelity Digital Assets hold conditional charters (December 2025), Bridge (Stripe) and Crypto.com conditional (February 2026), Coinbase pending. The Fed proposed member-bank stablecoin subsidiaries in September 2026 (R1 L2). [R3A-28]

---

## 2. Detail

### 2.1 R3-1: decomposition of stablecoin growth

| Window | Stablecoins | Bank deposits (H.8 SA) | Money funds (ICI) | Fed bills (H.4.1) |
|---|---|---|---|---|
| End 2023 to 2025-10-21 | +$174.9B | n/a | n/a | n/a |
| 2025-10 to 2026-10 | -$1.1B | +$1,225B (Sep to Sep) | +$505B | +$370B |

Model split of the +$174.9B growth phase (assumptions in the script, labelled as assumptions):

| Bucket | Low | Central | High | Inputs |
|---|---|---|---|---|
| Non-US holders | 55% | 68% | 81% | Non-US share of incremental USDT 75/85/95%, USDC 35/50/65%, others 30/50/70% |
| of which new-to-dollar (converted local currency) | 22% | 41% | 61% | 40/60/75% of non-US |
| of which offshore switching (existing dollar deposits or cash) | 33% | 27% | 20% | remainder |
| US-held (switch from deposits, money funds, crypto proceeds) | 45% | 32% | 19% | remainder |

Cross-check (data, not model): IMF net North American outflow of $54B in 2024 equals 73% of 2024 supply growth. That sits inside the model's range.

Net Treasury demand per $1 of new token (model in the Kansas City Fed style): with issuers holding 80% Treasuries (GENIUS-like) a foreign new-to-dollar buyer adds about $0.80, a switch from a US bank deposit adds about $0.72 (the bank's Treasury share of 0.08 is lost), and a switch from a government money fund adds about $0.30 (assuming the fund held 50% Treasuries). At Kansas City's own 50% issuer share these are $0.50, $0.42 and $0.00. So even domestic switching adds some bill demand, but the dollar-demand story ("foreigners newly want dollars") rests on the 22% to 61% bucket only.

What would make it measurable: issuer monthly reports under GENIUS from 2027-01-18 (no geography required), the 2028-07-18 ban on non-permitted coins for US persons (which forces USDT onto a comparability path or into USAT and so reveals the US-facing share), TIC custody lines for Tether's custodian, and any Treasury comparability finding.

### 2.2 R3-9: dollar access in the 2026 shock, week by week

| Week ended (2026) | FIMA repo, weekly avg ($M) | Swap lines ($M) | Foreign official Treasuries in custody ($B) |
|---|---|---|---|
| Jan 7 | 0 | 481 | 2,737.2 |
| Feb 4 | 857 (Wed 3,000) | 22 | 2,791.4 |
| Feb 11 | 2,173 | 24 | 2,797.0 |
| Feb 18 | 75 | 58 | 2,803.1 (peak) |
| Mar 4 (war under way) | 0 | 30 | 2,777.6 |
| Apr 29 (Japan intervention 1 starts Apr 30) | 0 | 20 | 2,727.0 |
| May 6 | 0 | 206 | 2,737.9 |
| Jul 29 (joint intervention Jul 31) | 0 | 132 | 2,638.8 |
| Aug 5 | 0 | 145 | 2,647.3 |
| Aug 26 | 0 | 121 | 2,601.9 |
| Sep 30 | 0 | 207 | 2,594.8 |
| Oct 14 | 0 | 205 | 2,549.1 |

All other 2026 weeks: FIMA 0 to 2 ($M), swaps $17M to $378M. Source: weekly H.4.1 releases at federalreserve.gov/releases/h41/YYYYMMDD/.

Why FIMA went unused (inference): (a) holders had cheaper dollars of their own, $332B of cash in the Fed's foreign repo pool and bills that could be sold, (b) the $60B cap was below Japan's single-episode needs (about $59B on 31 July to 26 August, about $172B in total, R1 L5), so the facility could not replace selling anyway, (c) borrowing from the Fed against Treasuries is a backstop price, not a market price (Emons calls it "above-market-priced"), and (d) stigma. Result: the Treasury market, not the Fed balance sheet, absorbed the 2026 dollar demand of official holders, which is the mechanism R1 L1 flagged as the reason Bessent wants FIMA upsized.

Who gets what in a crisis (2026 evidence):

| Group | Fed swap line | FIMA | ESF line | Own reserves and markets | Yuan |
|---|---|---|---|---|---|
| ECB, BoJ, BoE, SNB, BoC | Yes, standing, renewed 2026-04-29 | Yes | Not needed | Yes | No |
| Japan (2026) | Barely used ($1M to $6M operations) | Said it would, did not | No | Sold reserves ¥27.1T, Treasuries -$171B Feb to Aug | No |
| UAE, other Gulf | No (FOMC reluctant) | Eligible in principle (any FIMA account holder), no use recorded | Asked April 2026, no line found | Record bond issuance, AED 1T+ reserves, $5B UAE to Bahrain swap | PBoC swaps with Saudi, UAE, Qatar (sizes not verified), Qatar renewed Oct 2026 |
| Thailand, Indonesia | No | Eligible, no use | No | Yes | Largest PBoC swap users Q1 2026 |

### 2.3 R3-10: issuer economics and the reserve rules

Circle at Q2 2026 terms (USDC $76.5B, payout 61.5% of reserve income, other revenue $134M a year, opex about $578M a year):

| Reserve yield | Circle result per year (model) | Comment |
|---|---|---|
| 4.25% (today's 3-month bill) | +$0.81B (R2A) | |
| 1.50% | about 0 | R2 M1 breakeven |
| 1.34% (all in 5-year, zero-rate average) | -$0.05B | maximum duration, not allowed today |
| 0.45% (all in 2-year, zero-rate average) | -$0.31B | |
| 0.07% (bills, zero-rate average) | -$0.42B | |

To stay whole at 0.25% bills Circle would need about 0.48% a year of fees on USDC balances (model), close to what money funds waived. Market-wide float falls from $11.6B a year at 4.25% to $4.1B at 1.5% and $0.7B at 0.25% (model, 90% invested).

Paths, in the order they would happen (inference): (1) cut distributor payouts, (2) mint and redeem fees or transaction fees (charging holders is allowed, paying them is not), (3) OCC approval under § 15.11(b)(7) of FRNs or short notes with a maturity cap, (4) consolidation into bank or trust-bank charters and payment networks that earn on transactions and data, (5) only then pressure on Congress for wider assets. Gold would need a GENIUS amendment because it is not a "Federal Government-issued asset". The historical precedent of a zero-rate issuer reaching for yield is Tether's 2021 book, with large commercial-paper holdings (memory, not re-verified this session). That is exactly the behaviour GENIUS was written to stop.

---

## 3. Say/Do gaps

| Actor | Says | Does | Gap |
|---|---|---|---|
| Japan MoF | "plans to utilize" FIMA (2026-08-03) | Zero FIMA draws, sold reserves, no intervention 27 Aug to 28 Sep | A pledge for US consumption, not a funding choice |
| Bessent | FIMA "an important backstop", should be upsized. Swap lines for allies to stop "disorderly" asset sales | Routes Gulf requests to the ESF ($219B total, $24.9B dollar securities, $44.3B net), no line announced in six months | Words point to a broad backstop, capacity and delivery are narrow |
| FOMC | Standing swap lines are "key liquidity backstops" | Renewed only the five, no FIMA change through September | Technocratic line held against political pressure |
| UAE | "Not about bailing out" | Asked for a swap line, then borrowed a record amount in markets | Uses the request as insurance and leverage |
| Stablecoin industry | Tokens extend dollar dominance and are a growing Treasury buyer | Supply flat for a year. Lobbied the OCC for longer Treasuries, agencies, CP and AAA corporates even at 4% rates | Seeks yield now, not only in a zero-rate world |
| Treasury (TBAC) | Stablecoins are an emerging bill demand | Its own deck makes it conditional on "new offshore demand currently not in USD" | The forecast assumes the very split nobody measures |
| PBoC | Yuan as an alternative liquidity source | Swap draws a two-year high, still small next to Gulf dollar needs, Gulf pegs untouched | Real but marginal |

---

## 4. Anomalies

1. **The facility built for this crisis sat idle.** Default: in an oil shock with a 40-year-low yen, FIMA usage spikes (as in 2020). Observed: zero from March to October. Reading: official holders preferred selling Treasuries and using their own Fed cash, so FIMA's real job is signalling.
2. **The "competitor" to deposits did not compete.** Default per bank lobbying: stablecoins drain deposits. Observed: deposits +$1.23T, money funds +$0.5T, stablecoins -$1.1B.
3. **An analyst figure bigger than the whole pool.** "Japan holds about $350B in the Fed's foreign repo pool" (T4), when H.4.1 puts the entire foreign official pool at $331.9B.
4. **More dollars borrowed from China's swap network than from the Fed's in a dollar shock.** PBoC draws about $16.4B in Q1 2026 against a Fed swap peak of $0.48B. The purposes differ (yuan trade settlement versus dollar funding), and the PBoC figure is single-source, but the direction is notable.
5. **The yield lobby is early.** The industry asked for longer Treasuries and corporate paper when bills paid 4%. That means the margin squeeze it fears is distribution cost, not rates.
6. **Stablecoins peaked in May 2026 ($315.5B), during the war.** Default: a dollar shock raises demand for digital dollars abroad. Observed: a small rise, then a fall back as crypto prices fell.

---

## 5. Mechanism chains

**Chain A: self-insured crisis dollars (plausible, H0).** Oil shock and Fed hikes → importers' currencies fall and petro-exporters lose volumes → they need dollars → they sell Treasuries and draw down cash at the Fed rather than borrow at FIMA or swap lines (capped, priced as a backstop, stigmatised, or not offered) → foreign official custody -$254B → US yields rise with term premium → Treasury pushes FIMA upsizing and ESF "swap diplomacy" → access becomes conditional on alignment → states hedge with gold and yuan trade swaps. Tests: H.4.1 FIMA above $0 during the next intervention, an ESF statement showing a Gulf swap, custody below $2.5T.

**Chain B: crypto-cycle demand for tokens (plausible, H0).** Crypto prices up → exchange and DeFi collateral demand up → stablecoin supply up → issuers buy bills → the "new Treasury buyer" story. Crypto down → supply flat (2026) → bill demand falls back on money funds and Fed purchases. Test: supply above $350B (a new high) without a crypto rally would show payments demand taking over.

**Chain C: currency substitution abroad (plausible, H0 to H1).** Weak local currency → P2P stablecoin buying (P2P stablecoin value +302.9%) → net outflow of tokens from North America (IMF $54B in 2024) → issuers hold bills → a foreign private bill buyer appears → host countries respond with capital-flow measures. Test: EM regulators restricting stablecoins, and the Reuter correlation with dollar strength.

**Chain D: zero-rate squeeze (speculative, H1 to H2).** Bills below 1.5% → payout cuts and fees → OCC (b)(7) approvals of FRNs or short notes → consolidation into charters and banks → offshore issuers gain share → only if offshore growth threatens US control does Congress consider wider assets. Gold enters last, if at all.

---

## 6. Tripwires (dated)

| Date | Event | What it would show |
|---|---|---|
| Every Thursday | H.4.1 foreign official repo, swap lines, custody | FIMA above $1B or swaps above $5B means the backstop is finally used. Custody below $2.5T means selling continues |
| 2026-10-28 | FOMC (Kalshi 13% hike odds) | Any FIMA cap change or swap term change |
| about 2026-10-31 | Tether Q3 attestation | Bill share, USDT size, any regional user data |
| early Nov 2026 | Circle Q3 results | Distributor payout share, USDC trend |
| 2026-11-04 | Treasury refunding | Bill share and any language on stablecoin demand |
| about 2026-11-18 | TIC September | Japan, Saudi, UAE Treasury holdings |
| mid Nov 2026 | NY Fed Q3 FX operations report | ESF use beyond the yen operation |
| 2026-12-09 | FOMC | Hike priced at 57% to 85% on Kalshi |
| Q3 2026 data (date unknown) | PBoC swap usage | Q1's RMB 111.6B sustained or not |
| 2027-01-18 | GENIUS and OCC rule effective | First (b)(7) asset-approval request, first permitted issuers |
| April 2027 | FOMC swap-line renewal | Terms beyond one year or new counterparties |
| 2028-07-18 | Ban on non-permitted stablecoins for US persons | Reveals the US-facing share of USDT |
| Any time | Stablecoins above $350B or below $250B | A new growth phase, or a crypto-led contraction |
| Any time | ESF monthly statement showing a Gulf or Asian swap | Treasury political lines become operational |

---

## 7. Open questions and gaps

1. Holder geography of USDT and USDC: no primary data exists. The model rests on IMF and Chainalysis flow shares.
2. Whether any UAE or other ESF swap was signed quietly. I did not read the ESF monthly statements (the finances page did not list them in fetchable form).
3. The FIMA repo rate and minimum bid terms (not re-verified this session).
4. PBoC swap sizes with Saudi Arabia and the UAE, and Q2 and Q3 2026 usage (only a single secondary source for Q1).
5. Tether's breakeven yield: operating cost not disclosed.
6. Whether the OCC will approve FRNs under § 15.11(b)(7), and what a Fed or FDIC reading of clause (vii) looks like.

---

## 8. Proposed changes to earlier rulings

1. **R2 Q2 and M4 ("stablecoins take over the petrodollar recycling job").** Soften to: "stablecoins can take over part of the recycling job when crypto demand grows, and when they grew about two thirds went to foreign holders (model). In the 12 months to October 2026 they did not grow at all ($304.9B to $303.8B), and the bill-buying job was done by the Fed (+$370B of bills) and money funds (+$505B of assets)." Q2 confidence 65 to 60. M4 stays 60 but its "first flow" (foreign stablecoin buying) is relabelled cyclical. Evidence: R3A-01 to R3A-05.
2. **R2 M2 and the TBAC "$2T by 2028" path.** Add: "now unlikely on the current trend". Reaching $2T needs +$1.7T in about 26 months from a flat base. The R1 L7 tripwire ($500B or 10% of bills) stays. Evidence: R3A-01.
3. **R1 L1 and L5 FIMA chain ("FIMA repo so Japan borrows instead of selling").** Change from "chosen tool" to "announced but unused". T0: zero FIMA usage from 18 February to 14 October, no Japan intervention since 26 August, custody -$254B. The REPORT.md line "repo lines so Japan borrows instead of selling" should read "a repo line Japan promised to use but has not". Evidence: R3A-11, R3A-14, R3A-15.
4. **R2 M1 (zero-rate economics).** Keep confirmed 75, add: widening via clause (vii) is administrative and limited to government-issued assets, and duration cannot close the gap in a true zero-rate world (2-year 0.45%, 5-year 1.34% averages). Gold re-entry into compliant reserves is speculative and needs Congress. R2A Chain 3's "lobbying to widen eligible reserves (longer bills, gold)" becomes "OCC approvals of floating or short notes first, Congress for gold only if offshore issuers threaten US control". Evidence: R3A-24 to R3A-26.
5. **Correction of a T4 claim.** Any use of "Japan used FIMA in the July 2026 intervention" or "Japan holds about $350B in the Fed's foreign repo pool" is refuted by H.4.1. Evidence: R3A-16.
6. **Scenario odds.** H0 unchanged (62/15/1/22): the 2026 shock was absorbed by markets and self-insurance without a dollar-funding break, and the yuan role stayed marginal. H1 small shift, S1 45 to 43 and S2 22 to 24 (judgment): (a) the captive stablecoin bid is cyclical, not structural, and (b) crisis access for non-core states is moving to politically conditional ESF lines, which strengthens the incentive to hold gold and other neutral reserves. S3 and S4 unchanged (3 and 30). H2 unchanged.

---

## 9. Claims table

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R3A-01 | Stablecoin supply was flat for a year: $304.9B (2025-10-21) to $303.8B (2026-10-22). Peak $315.5B (2026-05-17). USDT $182.1B to $182.7B, USDC $75.8B to $72.6B. CoinGecko category $298.2B | T0/T4 | confirmed | https://stablecoins.llama.fi/stablecoincharts/all , https://api.coingecko.com/api/v3/coins/categories | 2026-10-22 | 2026-10-22 | Issuer attestations show growth above 10% y/y |
| R3A-02 | Commercial bank deposits (SA) rose from $18,411.6B (Sep 2025) to $19,636.9B (Sep 2026), +$1,225B | T0 | confirmed | https://www.federalreserve.gov/releases/h8/current/default.htm | 2026-10-16 | 2026-09 | H.8 revision |
| R3A-03 | Money fund assets $7.923T (week to 2026-10-14) vs $7.418T (week to 2025-10-29), about +$505B | T0 (ICI, prior-year via Crane) | confirmed | https://www.ici.org/research/stats/mmf , https://cranedata.com/archives/news/2025/10 | 2026-10-15 | 2026-10-14 | ICI revision |
| R3A-04 | Fed bill holdings $565.5B, +$370.0B y/y. The 2026 captive bill buyer was the Fed, not stablecoins | T0 | confirmed | https://www.federalreserve.gov/releases/h41/current/h41.htm | 2026-10-15 | 2026-10-14 | n/a (data) |
| R3A-05 | Of the +$174.9B stablecoin growth from end 2023 to October 2025, about 68% (55% to 81%) went to non-US holders and about 41% (22% to 61%) was new-to-dollar demand | model on T0/T4 | speculative | r3a_model.py, inputs from R3A-01, R3A-06, R3A-07 | 2026-10-22 | 2025-10-21 | Issuer or regulator holder-geography data with a US share above 50% |
| R3A-06 | IMF: North America was the net source of $54B of stablecoin outflows to all other regions in 2024. USDT prevails in emerging regions, USDC in North America and Europe | T4 (IMF staff) | plausible | https://www.imf.org/-/media/files/publications/wp/2025/english/wpiea2025141-source-pdf.pdf | 2025-07 | 2024-12-31 | A later study finds net inflows to North America |
| R3A-07 | Over 80% of stablecoin transactions occur outside the US. USDT bought about 4.6% of new foreign Treasury purchases in 2024 | T4 | plausible | https://www.brookings.edu/wp-content/uploads/2025/10/The_Rise_of_Stablecoins_and_Implications_for_Treasury_Markets_Davidovic_Ghani_Moszoro.pdf | 2025-10 | 2024-12-31 | On-chain studies show a US majority of transactions |
| R3A-08 | Chainalysis 2026: cross-border stablecoin value +77.5% to $220.3B, P2P stablecoin value +302.9% to $228.7B, personal-wallet stablecoin balances $98B to $109B. US 11th in cross-border, 20th in P2P | T4 | plausible | https://news.bitcoin.com/crypto-news/chainalysis-2026-crypto-adoption-index-brazil-stablecoins/ | 2026-09-23 | 2026-06-30 | Full report figures differ |
| R3A-09 | TBAC: stablecoins raise short-end demand "should stablecoin growth be driven by new offshore demand currently not in USD" | T2 | confirmed | https://home.treasury.gov/system/files/221/TBACCharge2Q12026.pdf | 2026-02 | 2025-09-30 | n/a (document) |
| R3A-10 | The Fed (Sept 2026 note) says GENIUS does not distinguish domestic and international circulation and chain data lacks geography. Kansas City Fed: net Treasury demand about $0.30 to $0.42 per $1 moved from deposits | T2/T4 | confirmed (statements) | https://www.federalreserve.gov/econres/notes/feds-notes/new-forms-of-money-and-the-u-s-monetary-aggregates-20260904.html , https://www.kansascityfed.org/research/economic-bulletin/stablecoins-could-increase-treasury-demand-but-only-by-reducing-demand-for-other-assets/ | 2026-09-04 | 2026-09 | A Fed estimate of holder geography is published |
| R3A-11 | FIMA repo usage in 2026: zero every week from 18 Feb to 14 Oct. Peak weekly average $2.17B (week to 11 Feb), Wednesday $3.0B (4 Feb), 5% of the $60B cap | T0 | confirmed | https://www.federalreserve.gov/releases/h41/20260205/ and weekly releases to https://www.federalreserve.gov/releases/h41/current/h41.htm | 2026-10-15 | 2026-10-14 | Any H.4.1 revision |
| R3A-12 | Fed swap lines in 2026: only ECB, BoJ, BoE, SNB, BoC. Largest operation $378M (ECB), H.4.1 peak $481M. 7-day rate 4.13% | T0 | confirmed | https://markets.newyorkfed.org/api/fxs/usdollar/last/400.json | 2026-10-14 | 2026-10-14 | A new counterparty appears |
| R3A-13 | FOMC renewed only the five standing swap lines (2026-04-29). A few participants floated terms beyond one year. No FIMA mention in the June, July and September minutes | T1/T2 | confirmed | https://www.federalreserve.gov/monetarypolicy/fomcminutes20260429.htm | 2026-05-20 | 2026-09-16 | October minutes show FIMA action |
| R3A-14 | Foreign official marketable Treasuries in Fed custody fell $254.0B (-9.1%), from $2,803.1B (18 Feb) to $2,549.1B (14 Oct). Foreign official RRP pool $331.9B | T0 | confirmed | https://www.federalreserve.gov/releases/h41/current/h41.htm | 2026-10-15 | 2026-10-14 | n/a (data) |
| R3A-15 | Japan "plans to utilize" FIMA (3 Aug 2026), did not draw it, and made no intervention from 27 Aug to 28 Sep 2026 | T2 + T0 | confirmed | https://www.mof.go.jp/english/public_relations/statement/others/20260803073000.html , https://www.mof.go.jp/english/policy/international_policy/reference/feio/monthly/20260930e.html | 2026-09-30 | 2026-09-28 | A FIMA draw during the next intervention |
| R3A-16 | The claims that Japan used FIMA in July 2026 and holds about $350B in the Fed's foreign repo pool are contradicted by H.4.1 (FIMA zero, whole pool $332B) | T0 vs T4 | refuted (the T4 claim) | https://benemons.substack.com/p/fima-kabuki , H.4.1 | 2026-08-03 | 2026-10-14 | n/a |
| R3A-17 | Bessent: "numerous" Gulf and Asian allies requested swap lines, aim "to prevent the sale of the US assets in a disorderly way". The UAE request was routed via the ESF, with doubts about FOMC approval | T2 via T4 | confirmed (words) | https://www.aljazeera.com/economy/2026/4/22/us-treasury-secretary-bessent-says-gulf-asian-allies-request-swap-lines , https://bernama.com/tv/news.php?id=2547049 | 2026-04-22 | 2026-04 | Transcript differs |
| R3A-18 | No US swap line for the UAE or another Gulf state has been announced as of 2026-10-22 (searches found coverage only to May 2026). Argentina's $2.5B ESF swap drawing was fully repaid in December 2025 (ESF statement, corrected in Round 5) | T4 (absence) | plausible | https://profit.pakistantoday.com.pk/2026/05/05/uae-says-it-is-discussing-currency-swap-line-with-us/ , https://www.theglobaltreasurer.com/2026/04/24/scott-bessents-swap-diplomacy-a-new-front-for-us-treasury/ | 2026-05-05 | 2026-10-22 | An ESF statement or announcement of a Gulf line |
| R3A-19 | GCC bond and sukuk issuance $102.69B in H1 2026 (+6.5%), Saudi $49.34B, Kuwait +128.6% | T4 | plausible | https://www.markaz.com/en/media-center/our-news/markaz-report-gcc-fixed-income-market-sees-usd-102-69-billion-in-primary-issuances-during-h1-2026,/ | 2026-07 | 2026-06-30 | Markaz revision |
| R3A-20 | PBoC swap draws RMB 111.6B (about $16.4B) in Q1 2026, a two-year high, mainly Thailand and Indonesia. Active lines corrected in Round 5 to 32 agreements, about RMB 4.5T, RMB 132.8B drawn at end June 2026 (Caixin citing the PBoC) | T4 (single secondary) | plausible | https://cryptobriefing.com/pboc-swap-lines-q1-16-billion/ | 2026-05-13 | 2026-03-31 | PBoC data differ |
| R3A-21 | Qatar renewed its PBoC swap (14 Oct 2026). Carnegie: Gulf energy trade likely stays mostly dollar-settled | T2/T4 | plausible | https://www.gulf-times.com/article/735766/business/qatar-central-bank-peoples-bank-of-china-sign-agreement-to-extend-local-currency-swap/amp , https://carnegieendowment.org/sada/2026/07/the-channels-of-chinas-currency-promotion-in-gulf-markets | 2026-10-14 | 2026-10-14 | A yuan-settled Gulf crude term contract |
| R3A-22 | Treasury curve 2026-10-21: 3-month 4.25%, 2-year 4.81%, 10-year 5.13%. 13-week bill 4.17% coupon equivalent | T3 | confirmed | https://home.treasury.gov/resource-center/data-chart-center/interest-rates/TextView?type=daily_treasury_yield_curve&field_tdr_date_value_month=202610 | 2026-10-21 | 2026-10-21 | n/a |
| R3A-23 | Kalshi prices 13% odds of an Oct 28 hike, 57% to 85% that the ceiling is above 4.00% after Dec 9, and 2% to 7% that it is at or below 1.5% after Jan 2027 (thin) | T3 | confirmed (snapshot) | https://api.elections.kalshi.com/trade-api/v2/events?series_ticker=KXFED&status=open&with_nested_markets=true | 2026-10-22 | 2026-10-22 | n/a (snapshot) |
| R3A-24 | GENIUS Sec. 4(a)(1)(A)(vii) lets the federal regulator approve "any other similarly liquid Federal Government-issued asset". Gold does not qualify | T1 | confirmed | https://www.govinfo.gov/content/pkg/PLAW-119publ27/html/PLAW-119publ27.htm | 2025-07-18 | 2026-10-22 | Amendment |
| R3A-25 | OCC final rule keeps § 15.11(b)(7) approvals "subject to such conditions as the OCC may impose", requires at least 5% demand deposits or Fed balances and a 40% counterparty cap, and declined to recognise longer-dated Treasuries for the backstop | T1 | confirmed | https://www.occ.gov/news-issuances/news-releases/2026/nr-occ-2026-92a.pdf | 2026-10-21 | 2026-10-21 | Rule amended or withdrawn |
| R3A-26 | At Q2 2026 payout terms, no Treasury maturity rescues Circle in a zero-rate world: 2-year average 0.45% gives -$0.31B, 5-year 1.34% gives -$0.05B. Breakeven 1.50% at a 61.5% payout, 0.97% at 40%, 0.58% at 0% | model on T0 | plausible | r3a_model.py, https://s206.q4cdn.com/265218871/files/doc_news/2026/Aug/05/CIRCLE_Q2-2026.pdf | 2026-10-22 | 2026-06-30 | Circle opex or payout changes materially |
| R3A-27 | Money funds waived about $36B of expenses in 2009 to 2015 (about $5B a year) and $8.4B in 2021 | T0 (ICI via Crane) | confirmed | https://cranedata.com/archives/all-articles/9189/ | 2022-03-25 | 2021-12-31 | ICI revision |
| R3A-28 | Circle's First National Digital Currency Bank, N.A. got final OCC approval (10 Jul 2026) and opened 24 Jul. Ripple, Paxos, BitGo, Fidelity Digital Assets conditional, Coinbase pending | T4 (law-firm alert) | plausible | https://legalbison.com/blog/circle-secures-final-occ-approval-for-national-trust-bank-implications-for-fintech-and-crypto-licensing/ | 2026-07 | 2026-07-24 | OCC records differ |
| R3A-29 | Tether Q2 2026: USDT about $184.6B, over 650M users, about $1.5B operating profit, excess reserves $4.11B | T0 via T4 | plausible | https://stablecoininsider.org/tether-q2-2026-reserve-buffer-halved/ | 2026-07 | 2026-06-30 | Q3 attestation differs |
| R3A-30 | Fed May 2026 note: stablecoins likely change deposit composition "rather than causing a one-for-one contraction", foreign demand may add to US deposits | T2 (staff) | confirmed (statement) | https://www.federalreserve.gov/econres/notes/feds-notes/banks-in-the-age-of-stablecoins-lessons-from-their-historical-responses-to-financial-innovations-20260501.html | 2026-05-01 | 2026-05 | n/a |

Sources used in searches (for the record): https://alhurra.com/en/18970 , https://www.chainalysis.com/blog/north-america-crypto-adoption-2026/ , https://www.chainalysis.com/reports/the-2026-geography-of-cryptocurrency-report/ , https://www.kitco.com/news/off-the-wire/2026-08-04/us-treasurys-bessent-reasonable-fed-consider-upsizing-fima , https://www.federalreserve.gov/econres/notes/feds-notes/payment-stablecoins-and-cross-border-payments-benefits-and-implications-for-monetary-policy-20260330.html .
