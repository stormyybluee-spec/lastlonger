# R20B lane: rates, the Treasury, dollar plumbing, gold, Japan, China, hero numbers

Round 20, written 2026-11-26. Window: 23 October to 26 November 2026. General education, not advice.
Status key for data rows: verified (source opened and seen), secondary (reliable summary), memory (not checked, must not be printed).

## 1. Hero numbers (latest available)

| claim | number | date | source | URL | status |
|---|---|---|---|---|---|
| Total public debt outstanding | $40,793.3B ($40.79T), up $349B from $40,444.3B on 22 Oct | 2026-11-24 | Treasury, Debt to the Penny (Fiscal Data API) | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/debt_to_penny | verified |
| Debt held by the public / intragovernmental | $32,953.1B / $7,840.2B | 2026-11-24 | Debt to the Penny | same | verified |
| Net interest, October 2026 (one month) | $103.08B, against $90.87B in October 2025 | 2026-10-31 | Monthly Treasury Statement, table 9 | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_9 | verified |
| Net interest, latest 12 months (Nov 2025 to Oct 2026) | $1,064.0B (computed: FY2026 $1,051.75B plus Oct 2026 less Oct 2025) | 2026-10-31 | MTS table 9, computed | same | verified |
| National defense, latest 12 months | $994.1B (computed same way). Net interest still above defense | 2026-10-31 | MTS table 9, computed | same | verified |
| Net interest / receipts, latest 12 months | 19.8% ($1,064.0B over $5,367.9B), up from 19.5% | 2026-10-31 | MTS table 9, computed | same | verified |
| 10-year Treasury yield (constant maturity) | 4.91% (5.13% on 21 Oct, 5.00% on 23 Oct, high in window 5.15% on 13 Nov, low 4.84% on 5 Nov) | 2026-11-24 | Federal Reserve H.15 via FRED DGS10 | https://fred.stlouisfed.org/series/DGS10 | verified |
| Federal funds target range | 3.75% to 4.00% (unchanged through window) | 2026-11-26 | FRED DFEDTARL / DFEDTARU | https://fred.stlouisfed.org/series/DFEDTARU | verified |
| 10-year real yield (TIPS) | 2.79% (2.76% on 21 Oct, 2.66% on 23 Oct, window high 2.92% on 16 Nov) | 2026-11-24 | H.15 via FRED DFII10 | https://fred.stlouisfed.org/series/DFII10 | verified |
| 10-year breakeven inflation | 2.12% (2.37% on 21 Oct). Falling steadily through the window | 2026-11-25 | FRED T10YIE | https://fred.stlouisfed.org/series/T10YIE | verified |
| 2-year / 30-year Treasury yields | 4.63% / 5.30% (were 4.81% / 5.42% on 21 Oct) | 2026-11-24 | H.15 via FRED DGS2, DGS30 | https://fred.stlouisfed.org/series/DGS2 | verified |
| Nominal broad dollar index (Fed H.10) | 123.60, up 1.9% from 121.34 on 21 Oct | 2026-11-20 | Fed H.10 via FRED DTWEXBGS | https://fred.stlouisfed.org/series/DTWEXBGS | verified |
| USD/JPY (noon NY) | 158.76 (window high 159.93 on 13 Nov, 157.11 on 22 Oct) | 2026-11-20 | Fed H.10 via FRED DEXJPUS | https://fred.stlouisfed.org/series/DEXJPUS | verified |
| USD/CNY | 6.6770 (6.6745 on 22 Oct, window low 6.6480 on 2 Nov) | 2026-11-20 | Fed H.10 via FRED DEXCHUS | https://fred.stlouisfed.org/series/DEXCHUS | verified |
| Fed total assets (H.4.1) | $6,741.5B (Wed 18 Nov), $6,753.6B on 21 Oct | 2026-11-18 | H.4.1 via FRED WALCL | https://fred.stlouisfed.org/series/WALCL | verified |
| Reserve balances | $2,979.7B (18 Nov), $2,962.6B on 21 Oct | 2026-11-18 | H.4.1 via FRED WRESBAL | https://fred.stlouisfed.org/series/WRESBAL | verified |
| October 2026 deficit | $404.1B (receipts $368.9B, outlays $773.0B), against $284.3B in October 2025 | 2026-10-31 | MTS table 9 | as above | verified |

Notes. The 10-year move in the window splits into two halves: a fall to 4.84% by 5 November, a jump of 10bp on 10 November and another 12bp on 12 November (to 5.10%, real yield 2.86%), then a fall of 12bp on 20 November. Breakevens fell about 25bp over the window while real yields rose about 3bp, so the real-rate story the Desk told is intact and expected inflation is easing. October receipts fell 8.8% on a year, with customs duties down from $31.4B to $19.2B and individual income taxes down from $217.0B to $186.4B. The reason for the customs fall is checked in section 3.

## 2. The Fed

| claim | number or fact | date | source | URL | status |
|---|---|---|---|---|---|
| FOMC held the target range at 3.75% to 4.00% | vote 10 to 2 | 2026-10-28 | Federal Reserve press release | https://www.federalreserve.gov/newsevents/pressreleases/monetary20261028a.htm | verified |
| Dissents | Governor Lisa D. Cook and Cleveland Fed President Beth M. Hammack, both preferring a 25bp hike. Reported as Cook's first dissent | 2026-10-28 | same | same | verified |
| Statement language | Activity "expanding at a strong pace", strong productivity and capital investment, inflation elevated, Committee will gather more information. Ample reserves policy continues | 2026-10-28 | same | same | verified |
| Interest on reserve balances | kept at 3.90%, effective 29 Oct | 2026-10-28 | Implementation note (secondary summary of the release) | https://www.rootdata.com/news/805853 | secondary |
| Minutes released | 18 November. Almost all participants judged further hikes likely appropriate if the baseline holds. A couple said a move larger than 25bp could be considered in December if inflation data disappoint. Staff estimated September PCE inflation 3.6%, core 3.1% | 2026-11-18 | FOMC minutes, 27 and 28 October meeting | https://www.federalreserve.gov/monetarypolicy/fomcminutes20261028.htm | verified |
| Balance sheet | Reserve management purchases kept at zero, pace not preset and reviewed monthly. Treasury principal rolled over at auction, agency principal reinvested into bills. No long-end buying and no yield-cap language | 2026-11-18 | same minutes | same | verified |
| Financial stability in minutes | Vulnerabilities "somewhat elevated", led by hedge fund leverage and AI-related valuations and debt, with opaque AI financing flagged | 2026-11-18 | same minutes | same | verified |
| Term premium in minutes | Desk survey median longer-run nominal rate up to about 3.4%. Term premiums may explain the gap between market and survey paths | 2026-11-18 | same minutes | same | verified |
| Fed balance sheet size | $6,741.5B on 18 Nov against $6,753.6B on 21 Oct, so a slow drift down | 2026-11-18 | H.4.1 via FRED | https://fred.stlouisfed.org/series/WALCL | verified |
| Next meeting | 8 and 9 December 2026 | 2026-11-18 | FOMC minutes | as above | verified |
| Market odds for 9 December | Polymarket 94% and Kalshi 92% for a 25bp hike, after the October PCE release | 2026-11-25 | KuCoin news flash citing both markets | https://www.kucoin.com/news/flash/polymarket-shows-94-odds-of-december-fed-rate-hike-after-inflation-data | secondary |
| Earlier December odds | Kalshi about 95% hike on 11 November | 2026-11-11 | prediction market tracker | https://predictionmarketspicks.com/tools/fed-rate-tracker/december-2026 | secondary |
| Fewer policy meetings | Chair Warsh said at the 28 October press conference that one of eight 2027 meetings and two in 2028 will be strategy meetings with no rate vote. Which meeting is not yet fixed | 2026-10-28 | Sinclair wire (WJLA) and Nation Thailand | https://wjla.com/news/nation-world/fed-to-cut-back-on-rate-setting-meetings-fed-chair-warsh-says-fomc-2027-2028-mandate | secondary |
| Governor Cook's case | White House committee of inquiry (order of October, Federal Register 14 Oct) moved her hearing from 5 Nov to 14 Dec. On 16 Nov her counsel wrote that she will not attend under the current terms. She remains a voting governor | 2026-11-17 | CNBC, and the Federal Register order | https://www.cnbc.com/2026/11/17/lisa-cook-trump-fed-committee-hearing.html | secondary |
| Committee order | Establishment of a Committee of Inquiry to Investigate Allegations of False Statements by Lisa DeNell Cook | 2026-10-14 | Federal Register | https://www.federalregister.gov/documents/2026/10/14/2026-21061/establishment-of-a-committee-of-inquiry-to-investigate-allegations-of-false-statements-by-lisa | secondary (seen in search listing, not opened) |
| Chair succession | No new nomination or vacancy found in the window. Warsh is chair. Former chair Powell remains a governor (term to January 2028) | 2026-11-26 | search, no window news | n/a | secondary |
| Warsh accord with Treasury | No accord, joint statement or draft published in the window. Balance-sheet decisions still wait on the chair's task force | 2026-11-26 | search of news and the October minutes | https://www.federalreserve.gov/monetarypolicy/fomcminutes20261028.htm | secondary |

Reading. The Fed moved from "hold and watch" to an openly signalled December hike. The minutes say almost all participants expect more tightening. Two voters wanted to hike in October. Markets put the December hike at about 92 to 95 percent. Balance-sheet policy is static: no reserve purchases, no long-end buying, no accord. That keeps the S4 yield-cap tripwire untouched.

## 4. Inflation and growth

| claim | number | date | source | URL | status |
|---|---|---|---|---|---|
| Q3 2026 real GDP, advance estimate | 3.4% annual rate (released 29 Oct). PCE prices 2.1%, core PCE 2.5% annual rates. Final sales to private domestic purchasers 4.9% | 2026-10-29 | BEA news release | https://www.bea.gov/news/2026/gdp-advance-estimate-3rd-quarter-2026/ | verified |
| Q3 2026 real GDP, second estimate | 4.3% annual rate (released 25 Nov), up from 3.4%. Q2 was 2.2% | 2026-11-25 | BEA GDP page, FRED A191RL1Q225SBEA | https://www.bea.gov/data/gdp/gross-domestic-product | verified |
| September CPI | +0.65% on the month (computed from SA index), 3.72% on a year. Core 2.57% on a year | 2026-09 | BLS via FRED CPIAUCSL, CPILFESL, computed | https://fred.stlouisfed.org/series/CPIAUCSL | verified |
| October CPI (released 10 Nov) | headline +0.4% m/m, core +0.3% m/m, energy +0.7% m/m. BLS did not publish 12-month changes because October 2025 was never collected (2025 funding lapse) | 2026-11-10 | BLS CPI news release | https://www.bls.gov/news.release/cpi.nr0.htm | verified |
| October CPI against November 2025 (11 months) | headline 3.82%, core 2.68% (computed, not an official BLS rate) | 2026-10 | FRED index levels, computed | https://fred.stlouisfed.org/series/CPILFESL | verified |
| September PCE price index | 3.67% on a year, core 3.14% | 2026-09 | BEA via FRED PCEPI, PCEPILFE, computed | https://fred.stlouisfed.org/series/PCEPI | verified |
| October PCE price index (released 25 Nov) | headline 3.84% on a year, +0.32% m/m. Core 3.26% on a year, +0.29% m/m (press reported core 3.3% against 3.2% expected) | 2026-10 | BEA via FRED, computed. KuCoin for consensus | https://fred.stlouisfed.org/series/PCEPILFE | verified |
| Unemployment rate | 4.1% in October (4.2% September) | 2026-10 | BLS via FRED UNRATE | https://fred.stlouisfed.org/series/UNRATE | verified |
| Payrolls | +165k in October, +60k September | 2026-10 | BLS via FRED PAYEMS | https://fred.stlouisfed.org/series/PAYEMS | verified |
| Next CPI | November CPI on 10 December, the day after the FOMC decision | 2026-11-10 | BLS | as above | verified |

Reading. Growth is strong (4.3% in Q3 on the second estimate) and core PCE inflation rose to 3.3%. Headline consumer inflation runs near 3.8%. Unemployment fell to 4.1%. This is the mix the minutes describe and the reason a December hike is priced. Market breakevens fell anyway, which reads as confidence that the Fed will tighten.

## 3. The Treasury: refunding, borrowing, deficits, buyers

| claim | number or fact | date | source | URL | status |
|---|---|---|---|---|---|
| November refunding size | $125B: 3-year $58B, 10-year $42B, 30-year $25B, refinancing about $97B maturing, raising about $28B new cash | 2026-11-04 | Treasury, Quarterly Refunding Statement (Assistant Secretary Hunter McMaster) | https://home.treasury.gov/news/press-releases/sb0678 | verified |
| Coupon guidance | "anticipates maintaining nominal coupon and FRN auction sizes for the next several quarters", without the earlier "at least". Changes to be guided by lowest cost over time | 2026-11-04 | same | same | verified |
| Coupon sizes Nov to Jan | 2y 69, 3y 58, 5y 70, 7y 44, 10y 42/39/39, 20y 16/13/13, 30y 25/22/22, FRN 28/28/30 ($B). Unchanged pattern (new issue then reopenings) | 2026-11-04 | same | same | verified |
| Structural change | 7-year note moves from a monthly new issue to a quarterly new issue with two reopenings from March 2027 | 2026-11-04 | same | same | verified |
| TIPS | sizes unchanged: Nov 10y reopening $19B, Dec 5y reopening $24B, Jan 10y new $21B | 2026-11-04 | same | same | verified |
| Bills | Benchmark sizes held through late November, shorter bills cut around mid-December taxes, bill sizes up across the curve in January. Treasury cites "strong demand" for bills and is watching SOMA bill purchases and private demand | 2026-11-04 | same | same | verified |
| Buybacks, Nov to Jan | up to $70B liquidity-support buybacks across buckets, up to $25B cash-management buybacks in the 1-month to 2-year bucket | 2026-11-04 | same | same | verified |
| Cash balance | End-December TGA assumption $850B. Peak about $1.025T (plus or minus $50B) in late November and late January | 2026-11-04 | same | same | verified |
| Borrowing estimate | $618B privately held net marketable borrowing for Oct to Dec 2026 (end-Dec cash $850B), $800B for Jan to Mar 2027 (end-Mar cash $1T). Oct to Dec figure about $10B below the August estimate | 2026-11-02 | Treasury borrowing estimate, as reported | https://www.marketreview.com/news/us-treasury-125-billion-refunding/ | secondary |
| October 2026 deficit | $404.1B, the largest October on record, against $284.3B a year earlier. MTS released 12 Nov | 2026-11-12 | MTS table 9 (API), 247wallst for "record" | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_9 | verified (number), secondary (record) |
| October receipts | $368.9B, down 8.8% on a year. Customs $19.2B against $31.4B (down 39%), linked by press to tariff refunds after the February 2026 Supreme Court tariff decision and a high prior-year base | 2026-11-12 | MTS table 9, Transport Topics | https://www.ttnews.com/articles/us-budget-deficit-up-october | verified (numbers), secondary (cause) |
| TIC, total foreign holdings of Treasuries | $9,241.2B in September, down $75.5B from August ($9,316.7B) | 2026-09 | TIC table 5, Major Foreign Holders (released 18 Nov) | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table5.txt | verified |
| TIC, foreign official holdings | $3,674.7B, down $80.9B in the month and down $334.9B from the February peak of $4,009.6B. Official bills $288.5B (were $453.3B in February) | 2026-09 | same | same | verified |
| Japan | $1,063.1B, down $5.2B in September, down $176.2B from February ($1,239.3B). Still the largest holder | 2026-09 | same | same | verified |
| China, Mainland | $563.9B, down $26.8B in September, down $130.3B from February. Lowest in this table's span | 2026-09 | same | same | verified |
| United Kingdom | $985.8B (down $8.7B), second largest, a custody centre | 2026-09 | same | same | verified |
| Custody centres | Belgium $507.9B (up $17.4B), Cayman $486.8B (up $23.8B), Luxembourg $445.0B, Ireland $344.8B, Canada $467.7B | 2026-09 | same | same | verified |
| France | $332.0B, down $31.4B in September | 2026-09 | same | same | verified |
| September TIC flows | Net TIC inflow $261.0B (private +$267.0B, official minus $6.0B). Net foreign purchases of long-term Treasuries: private $53.1B, official $27.6B. Official bill holdings minus $23.7B | 2026-11-18 | Treasury press release, TIC data for September | https://home.treasury.gov/news/press-releases/sb0693 | verified |

Reading. Treasury kept the captive-demand plan intact: no coupon increases, bills stay the flex, buybacks continue at up to $70B a quarter for liquidity, and the 7-year moves to a quarterly cycle, which concentrates liquidity rather than adding supply. The softer guidance wording opens the door to increases later. Foreign official holdings keep falling, by about $335B since February, led by Japan and China. Official accounts bought long-term Treasuries in September on a flow basis but holdings fell, so price falls and bill run-offs did most of the work. Private and custody-centre buyers (Cayman, Belgium) are taking up the supply, which fits the Desk's "leveraged private buyers replace official ones" line. Next TIC (October data) is due 15 December.

## 5. Gold and central banks

| claim | number or fact | date | source | URL | status |
|---|---|---|---|---|---|
| Spot gold | $3,556.82 per ounce at 3:19 pm ET, down 2% on the day, after a more-than-one-year low the previous Friday | 2026-11-24 | CNBC (Reuters-based markets report) | https://www.cnbc.com/2026/11/24/gold-bargain-buying-us-inflation-data.html | verified |
| Spot gold, earlier in window | about $3,881 on 12 Nov, about $3,726 on 18 Nov (14-month low) | 2026-11-18 | Nation Thailand (Reuters) | https://www.nationthailand.com/business/trading-investment/40073658 | secondary |
| Spot gold after October PCE | reports of about $3,446 on 25 Nov, lowest since August 2025, and about $3,585 in Asia on 26 Nov | 2026-11-25 | political.org and others | https://political.org/2026/11/25/gold-rebounds-from-15-month-low-as-hot-inflation-data-cements-fed-rate-hike-bets/ | secondary, not cross-checked |
| Implied level on 22 Oct | about $4,130 (Desk's $1.08T for 261.5M troy oz of US gold) | 2026-10-22 | DESK_NOW.md, computed | n/a | verified (arithmetic) |
| US gold stock at market | about $930B at $3,557 (261.5M oz), down from $1.08T. Book value unchanged at $42.22/oz ($11B) | 2026-11-24 | computed | n/a | verified (arithmetic) |
| World gold stock at market | about $24.7T if scaled from the Desk's $29.6T by the price change (approximation) | 2026-11-24 | computed | n/a | secondary (approximation) |
| WGC Q3 2026 central bank net purchases | 321.2t, up 42% from 226.3t in Q3 2025. Year to date 675t, up 6%. Only 120t reported, about 63% unreported | 2026-11-03 | World Gold Council, Gold Demand Trends Q3 2026 | https://www.gold.org/goldhub/research/gold-demand-trends/gold-demand-trends-q3-2026/central-banks | verified |
| Q3 reported buyers | PBoC 63t, National Bank of Poland 40t (together about 86% of reported), Kazakhstan 14t, Uzbekistan 14t, Czech Republic 5t | 2026-11-03 | same | same | verified |
| Q3 sellers | Russia minus 19t the only sizeable seller. Qatar, Kyrgyz Republic and UAE small reductions | 2026-11-03 | same | same | verified |
| Total Q3 gold demand | about 1,369t, down 1% on a year. Bar and coin down 19% to 268t | 2026-11-03 | WGC, as summarised by Kitco and others | https://www.kitco.com/news/article/2026-11-03/gold-demand-remains-near-record-highs-central-bank-buying-surges-42-wgc | secondary |
| PBoC gold holdings, end October | 78.30M troy oz (about 2,435t), up 0.83M oz (about 25.8t) from 77.47M oz. 24th straight monthly rise. Value $306.4B, down from $323.5B on price | 2026-11-07 | SAFE official reserve assets, as reported | https://phemex.com/news/article/chinas-central-bank-adds-gold-for-24th-consecutive-month-holdings-hit-2435-tonnes-102704 | secondary |
| PBoC 2026 year to date | about 129t January to October | 2026-11-07 | same reports | same | secondary |
| Repatriation | No new official repatriation announcement found in the window | 2026-11-26 | search | n/a | secondary (absence) |

Reading. Gold fell about 14% from roughly $4,130 to roughly $3,557 between 22 October and 24 November as the market priced a December hike and real yields stayed near 2.8%. Central bank buying did not stop: Q3 was the strongest official quarter in a year and the PBoC sped up to about 26t in October as the price fell. The buyers named are still central banks without a standing Fed line. One correction to Round 5: the UAE was a small net seller in Q3, so it should not be listed as a current buyer. Note on the streak: the PBoC count is 24 months to October (from November 2024), while Round 5 said 23 months to September, which agrees.

## 6. Japan and the yen

| claim | number or fact | date | source | URL | status |
|---|---|---|---|---|---|
| Intervention, 29 Sep to 28 Oct | ¥0 | 2026-10-30 | Japan Ministry of Finance, monthly intervention release | https://www.mof.go.jp/english/policy/international_policy/reference/feio/monthly/20261030e.html | verified |
| Intervention, 29 Oct to 26 Nov | not yet published (due at month end). No operation reported in the press to 19 Nov | 2026-11-26 | MOF schedule, FXStreet | https://www.fxstreet.com/news/japans-october-cpi-is-due-with-the-yen-back-near-16000-202611192227 | secondary |
| Verbal warnings | Finance Minister Katayama on 13 Nov: "sharp, one-sided moves", will work with US Treasury and respond as needed, after the yen briefly passed 160. Vice Minister Mimura on 12 Nov: too early to forget the summer intervention | 2026-11-13 | Bloomberg headlines | https://www.bloomberg.com/news/articles/2026-11-13/japan-s-katayama-warns-of-fx-steps-after-one-sided-rapid-moves | secondary |
| USD/JPY | 158.76 on 20 Nov (Fed H.10 noon rate), window high 159.93 on 13 Nov. Intraday trade above 160 reported around 13 Nov | 2026-11-20 | FRED DEXJPUS | https://fred.stlouisfed.org/series/DEXJPUS | verified |
| BoJ decision, 30 Oct | Held the overnight call rate at around 1.25%, vote 8 to 1. Board member Takata dissented and proposed 1.5% | 2026-10-30 | Bank of Japan, Statement on Monetary Policy | https://www.boj.or.jp/en/mopo/mpmdeci/mpr_2026/k261030a.pdf | verified |
| BoJ ETF sales | Pace of ETF sales raised from about ¥330B to about ¥860B a year (book value), about ¥2.46T at market value, from January 2027. Unanimous | 2026-10-30 | same | same | verified |
| Next BoJ meeting | 18 December 2026. Press reports December hike odds above 70% | 2026-11-26 | Investing.com calendar, BigGo | https://www.investing.com/economic-calendar/interest-rate-decision-165 | secondary |
| JGB 10-year yield | 2.713% on 25 Nov, against 2.914% on 22 Oct. Window high 2.927% on 16 Nov | 2026-11-25 | Japan MOF, JGB interest rate data | https://www.mof.go.jp/english/policy/jgbs/reference/interest_rate/jgbcme.csv | verified |
| JGB 2-year / 30-year / 40-year | 1.731% / 3.998% / 4.095% on 25 Nov, against 1.914% / 3.952% / 3.959% on 22 Oct | 2026-11-25 | same, and historical file | https://www.mof.go.jp/english/policy/jgbs/reference/interest_rate/historical/jgbcme_all.csv | verified |
| Japan's US Treasury holdings | $1,063.1B in September, down $176.2B since February | 2026-09 | TIC table 5 | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table5.txt | verified |

Reading. Japan did not intervene in October and, as far as reported, not in November either, despite the yen touching 160. Tokyo relied on words and on the BoJ's hawkish hold with a dissent for a hike. JGB yields at 2 to 10 years fell about 20bp in the window while the super-long end held near 4%, so the "push from Japan" on US real yields eased. The Desk's 160 to 164 intervention zone was tested at its bottom edge without action.

## 7. China

| claim | number or fact | date | source | URL | status |
|---|---|---|---|---|---|
| Six suspended export-control measures | Not reinstated on 10 November. On 9 November MOFCOM (with the General Administration of Customs) extended the suspension of the six October 2025 announcements (Nos. 55, 56, 57, 58, 61, 62) from 11 November 2026 to 10 January 2027. Covered: synthetic diamond tools, rare-earth equipment and technology, lithium battery and graphite anode items, and the 0.1% Chinese rare-earth content rule for foreign goods | 2026-11-09 | TechTimes and SMM reports of the MOFCOM notice | https://www.techtimes.com/articles/330364/20261110/china-extends-export-controls-pause-batteries-graphite-diamond-saws-rare-earths-january.htm | secondary (MOFCOM notice not opened) |
| Not suspended | The April 2025 licensing regime for seven medium and heavy rare earths (samarium, gadolinium, terbium, dysprosium, lutetium, scandium, yttrium) stays in force | 2026-11-10 | same reports | https://news.metal.com/newscontent/CNTOCBN4QTSC2L3BEOVBYILPAZVOOIHVV6INVPY-china-extends-suspension-of-rare-earth-export-controls-until-january-2027 | secondary |
| Parallel US step | Commerce BIS filed on 5 Nov to extend the suspension of its Affiliates Rule (50% ownership) to 10 Jan 2027. China kept its 24% tariff on US goods suspended and its port fees on US-linked ships paused | 2026-11-05 | TechTimes | as above | secondary |
| Truce end date | Treasury Secretary Bessent reportedly said the truce runs to 10 January 2027. No jointly published settlement text | 2026-11-10 | TechTimes, citing officials | as above | secondary |
| USD/CNY | 6.6770 on 20 Nov (6.6745 on 22 Oct). Strongest yuan in window 6.6480 on 2 Nov. Broadly flat near the 4-year high | 2026-11-20 | Fed H.10 via FRED DEXCHUS | https://fred.stlouisfed.org/series/DEXCHUS | verified |
| China's Treasury holdings | $563.9B in September, down $26.8B in the month and $130.3B since February | 2026-09 | TIC table 5 | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table5.txt | verified |
| China's reserves, gold share | Gold $306.4B at end October, about 7.9% of official reserve assets | 2026-11-07 | SAFE data as reported | https://phemex.com/news/article/chinas-central-bank-adds-gold-for-24th-consecutive-month-holdings-hit-2435-tonnes-102704 | secondary |
| Yuan payments and mBridge | No new official mBridge or CIPS figures found for the window. Latest public mBridge figure found predates the window | 2026-11-26 | search | https://www.pymnts.com/news/cross-border-commerce/cross-border-payments/2026/cross-border-payments-platform-project-mbridge-processed-55-49b-in-transaction-volume/ | secondary (absence) |

Reading. The export-control pause was rolled to 10 January 2027 on both sides, so the Desk's "suspended" status holds but with a new cliff date. China keeps cutting Treasuries and buying gold at the same time: down $130B in Treasuries since February and about 129t of gold this year.

## 8. Swap lines, FIMA and dollar access

| claim | number or fact | date | source | URL | status |
|---|---|---|---|---|---|
| Fed central bank liquidity swaps outstanding | $146M on 18 Nov ($170M on 21 Oct). Small, routine use | 2026-11-18 | H.4.1 via FRED SWPT | https://fred.stlouisfed.org/series/SWPT | verified |
| FIMA repo facility use | $1M on 18 Nov, zero on every other Wednesday from 23 Sep to 11 Nov | 2026-11-18 | H.4.1 via FRED H41RESPPALGTRFNWW | https://fred.stlouisfed.org/series/H41RESPPALGTRFNWW | verified |
| Foreign official reverse repo pool | $316.7B on 18 Nov ($333.8B on 21 Oct) | 2026-11-18 | H.4.1 via FRED WLRRAFOIAL | https://fred.stlouisfed.org/series/WLRRAFOIAL | verified |
| Standing repo facility (domestic) | at most about $0.1B a day in the window (17 Nov). $1.2B at the 30 Sep quarter end | 2026-11-24 | FRED RPONTTLD | https://fred.stlouisfed.org/series/RPONTTLD | verified |
| Overnight reverse repo | about $0.3B on 25 Nov, effectively empty | 2026-11-25 | FRED RRPONTSYD | https://fred.stlouisfed.org/series/RRPONTSYD | verified |
| New swap lines | None announced by the Fed or the Treasury ESF in the window. Standing lines still with the Bank of Canada, Bank of England, BoJ, ECB and SNB. No Gulf line | 2026-11-26 | Federal Reserve liquidity swaps page (as listed), search | https://www.federalreserve.gov/monetarypolicy/bst_liquidityswaps.htm | secondary (page not opened) |

Reading. Dollar plumbing was quiet. No stress draws on swap lines, FIMA or the standing repo facility, even at the end of October. The foreign official repo pool shrank by $17B, which fits falling official holdings. Nothing new for the Gulf.

## 9. Other plumbing items in the lane

| claim | number or fact | date | source | URL | status |
|---|---|---|---|---|---|
| NY Fed Q3 FX report (released 12 Nov) | On 31 July the New York Fed, as fiscal agent for the Treasury, bought ¥79.4B spot against euros sold from the Exchange Stabilization Fund (about $0.5B at 157 yen). The Fed did not intervene. Japan's MOF intervened ¥15.4T in Q3 | 2026-11-12 | NY Fed, Treasury and Federal Reserve Foreign Exchange Operations, July to September 2026 | https://www.newyorkfed.org/medialibrary/media/newsevents/news/markets/2026/q3-2026-fx-quarterly-report.pdf | verified |
| Dollar against yen in Q3 | dollar fell 3.2% against the yen over the quarter after highs near 164 in July | 2026-11-12 | same | same | verified |
| SOMA and ESF foreign currency assets | $19.1B each at end September (euro and yen) | 2026-09-30 | same | same | verified |
| Average interest rate, total marketable debt | 3.570% at 31 Oct (3.518% at 30 Sep). Bills 4.014%, notes 3.399%, bonds 3.483%. All interest-bearing debt 3.580% | 2026-10-31 | Treasury, Average Interest Rates on US Treasury Securities (Fiscal Data API) | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/avg_interest_rates | verified |
| Reserve management purchases, 16 Nov to 11 Dec | none planned. About $14B of reinvestment purchases | 2026-11-13 | NY Fed Desk announcement, as headlined by Newsquawk | https://www.newsquawk.com/headlines/ny-fed-says-the-desk-plans-around-usd-14bln-of-reinvestment-purchases-and-no-reserve-management-purchases-between-november-16th-and-december-11th | secondary |
| Real GDP growth, year on year | 2.29% in Q3 2026 (second estimate). Nominal GDP growth 6.0% | 2026-11-25 | BEA via FRED GDPC1, GDP, computed | https://fred.stlouisfed.org/series/GDPC1 | verified |
| Broad dollar, year to date | +3.2% at 20 Nov against 31 Dec 2025 (119.75). It was +1.3% on 21 Oct on this index | 2026-11-20 | Fed H.10 via FRED DTWEXBGS, computed | https://fred.stlouisfed.org/series/DTWEXBGS | verified |

## 10. DESK_NOW.md check: claims in this lane that events have overtaken

| # | old text (DESK_NOW, facts as of 22 Oct) | new figure or fact | source |
|---|---|---|---|
| 1 | Hero "US debt $40.44T" and card "$40.44T Gross federal debt, Treasury, 2026-10-20" | $40.79T ($40,793.3B) on 2026-11-24 | Debt to the Penny API |
| 2 | Hero "Net interest $1,051.8B" | Keep $1,051.8B as the FY2026 figure, or switch to the latest 12 months: $1,064.0B (Nov 2025 to Oct 2026). October 2026 alone $103.1B | MTS table 9 |
| 3 | "above defense ($965.2B) for a third year" | Still true. Latest 12 months: interest $1,064.0B against defense $994.1B | MTS table 9, computed |
| 4 | Hero "10y yield 5.13%" and "3.52% → 5.13%" | 10y 4.91% on 2026-11-24. Average cost of marketable debt 3.57% on 2026-10-31. So "3.57% → 4.91%" | H.15 via FRED, Treasury average interest rates |
| 5 | Hero "Fed funds 3.75 to 4.00%" and card "after the 2026-09-16 hike under Warsh, 12-0 FOMC" | Level unchanged. Add: held on 2026-10-28 by 10 to 2, Cook and Hammack dissenting for a hike. December hike priced at 92 to 94% (Kalshi, Polymarket, 25 Nov) | Fed press release, KuCoin |
| 6 | Header "Facts as of 2026-10-22" and "Next refresh FOMC 10-28" | Facts as of 2026-11-24 to 26. Next refresh: FOMC 2026-12-09 (CPI follows on 12-10, BoJ 12-18, TIC 12-15) | Fed minutes, BLS, BoJ, Treasury |
| 7 | Calendar 10-28: "markets price a hold (about 88%). The next hike is priced for 12-09 (75 to 79%)" | Hold delivered, 10 to 2. December hike odds rose to about 92 to 95% | Fed, Kalshi and Polymarket via KuCoin |
| 8 | Calendar 10-29: "US Q3 GDP and PCE" | Advance 3.4% (29 Oct), second estimate 4.3% (25 Nov). October core PCE 3.3% on a year, headline 3.8% | BEA |
| 9 | Calendar 11-04: "Treasury refunding: coupon sizes, buybacks" | $125B refunding. Coupon sizes held, "for the next several quarters" (the words "at least" dropped). 7-year to quarterly new issue from March 2027. Buybacks up to $70B liquidity plus $25B cash management, Nov to Jan | Treasury refunding statement |
| 10 | Calendar 11-05: "Lisa Cook removal hearing" | Postponed to 14 Dec. Cook's counsel said on 16 Nov she will not attend under current terms. She dissented for a hike on 28 Oct | CNBC |
| 11 | Calendar mid-Nov: "NY Fed Q3 FX report confirms the euro sale size. Foreign Treasury holdings for September" | Both out. NY Fed confirms ¥79.4B bought against ESF euro sales (about $0.5B). TIC: foreign official holdings $3,674.7B, down $80.9B in September | NY Fed Q3 report, TIC table 5 |
| 12 | "Japan pledges alliance support while its Treasury holdings fell $171B from February to August" | Now down $176.2B from February to September ($1,239.3B to $1,063.1B) | TIC table 5 |
| 13 | Tripwire "Net interest / receipts 19.5%" | 19.8% on the latest 12 months to October | MTS table 9, computed |
| 14 | Tripwire "USD/JPY ~158, 160 to 164 intervention zone" | 158.76 on 20 Nov, window high 159.93 (noon rate), briefly through 160 intraday around 13 Nov. No intervention 29 Sep to 28 Oct (¥0). November total not yet published | FRED DEXJPUS, MOF |
| 15 | Tripwire "10y real yield 2.76%, already above real growth (2.5%)" | 2.79% on 24 Nov (window high 2.92% on 16 Nov). Real GDP growth on a year is 2.3% in Q3 (second estimate), so the gap is about 0.5pp and still "breached" | FRED DFII10, BEA via FRED GDPC1 |
| 16 | Tripwire "Fed bill purchases: reserve buying paused. Routine reserve buying may restart mid-November" | Did not restart. Minutes: reserve management purchases kept at zero, reviewed monthly. Desk plans none for 16 Nov to 11 Dec | FOMC minutes, NY Fed via Newsquawk |
| 17 | "Gold still booked at $42.22/oz ($11B vs $1.08T market)" | Book unchanged. Market value about $930B at $3,557 (24 Nov) | CNBC price, computed |
| 18 | "Devalue via a currency accord: ... yuan (6.67, a 4-year high). Broad dollar up 2.8% this year" | Yuan 6.677 on 20 Nov, unchanged. The Fed broad index was up 1.3% for the year on 21 Oct, not 2.8% (the Desk figure may use another index), and is up 3.2% on 20 Nov | FRED DTWEXBGS, DEXCHUS |
| 19 | Newsletter check "Gold is worth $29.6T" | About $24.7T if scaled by the 14% fall in price since 22 Oct (approximation). The "12x" debt ratio rises to about 15x on the same scaling | computed |
| 20 | "Neutral corner: physical gold between nations, now worth more than euro reserves at market prices" | Not re-checked. The margin narrowed by about 14% with the price fall. Re-check against IMF COFER before printing | gap |
| 21 | Five-line "inflate it away": "nominal growth near 6% beats the 3.5% average debt cost" | Still true: nominal GDP 6.0% on a year in Q3, average cost 3.57% | BEA via FRED, Treasury |
| 22 | Captive demand: "Long-bond buybacks up to $6B per operation" | Not overtaken in direction. Quarterly cap is now stated as up to $70B for liquidity support. Per-operation maxima not re-checked | Treasury refunding statement |
| 23 | Say versus do: "Warsh ... kept Fed money out of the yen trade" | Confirmed by the NY Fed Q3 report (Fed did not intervene) | NY Fed Q3 report |
| 24 | Say versus do: "Treasury's own fund statement shows $500M" | Confirmed: ¥79.4B against euro sales, about $0.5B | NY Fed Q3 report |
| 25 | Round 5 lead (in R5_SUMMARY): central bank gold buyers include "the UAE" | WGC lists the UAE among small net reducers in Q3 2026 | WGC Q3 2026 |

Claims checked and still standing with no change needed: net interest above defense, real yields carrying the cost of capital rather than inflation fear (breakevens fell 25bp in the window), Treasury supply "heavy and short" (bills up in January, coupons flat), no Fed long-end buying or yield-cap language, no Gulf swap line, five standing Fed lines.

## What changed for the Desk's view

The Fed turned from a watchful hold into a signalled December hike. It held on 28 October by 10 to 2, with two votes for a hike. The minutes say almost all participants expect more tightening, and markets price a 25bp move on 9 December at 92 to 94%. Growth (Q3 at 4.3%) and core PCE inflation (3.3%) justify it. Yet the 10-year fell from 5.13% to 4.91% and breakevens fell 25bp, so real yields near 2.8% still carry the cost of capital. Gold fell about 14% to near $3,557 on the hike pricing, while central banks kept buying (321t in Q3, the PBoC 26t in October). Treasury held coupon sizes, softened its guidance, kept buybacks and leaned on bills. Foreign official holdings fell another $81B in September, and Japan and China lead the decline. Japan let the yen touch 160 without intervening, and JGB yields eased. China and the US rolled the export-control truce to 10 January 2027. Dollar plumbing was calm. None of this trips the S4 yield-cap tripwire. It strengthens the "captive demand plus tight Fed" reading of S1. Watch two cliff dates: 9 December for the Fed, 10 January for China.

## Gaps

- Japan's MOF intervention total for 29 October to 26 November is due around 30 November. A quiet operation cannot be ruled out until then.
- Japan's foreign reserves at end October were not checked.
- The MOVE index and the Kalshi 2027 recession odds were not found from a source with a date. The Desk's 95.9 and 21% are unverified now.
- CME FedWatch was not opened directly. December odds come from Kalshi and Polymarket as reported by a news flash on 25 November.
- The gold price after 24 November (reports of about $3,446 on 25 November) is from secondary sites only. No LBMA benchmark was opened.
- The MOFCOM notice that extended the export-control suspension was not opened. The extension rests on consistent press reports.
- The PBoC October gold figure rests on reports of SAFE data, not the SAFE table itself.
- No window news on mBridge, CIPS volumes or new yuan swap lines was found.
- The comparison of gold and euro reserves needs IMF COFER. The Desk's 2.8% dollar gain may use the ICE dollar index, which was not checked.
- The Treasury borrowing estimate of 2 November rests on press summaries. The refunding statement itself was verified.
- Per-operation buyback maxima and the "70% reprices within 5 years" figure were not re-checked.
- The 2027 FOMC strategy-meeting plan rests on wire reports. No Fed document was found.

## Ledger

| id | claim | tier | status | source URL | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R20B-01 | Total public debt outstanding $40,793.3B | T1 | confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/debt_to_penny | 2026-11-25 | 2026-11-24 | Debt to the Penny shows a different figure for 24 Nov |
| R20B-02 | Net interest, latest 12 months to October 2026, $1,064.0B (computed from MTS) | T1 | confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_9 | 2026-11-12 | 2026-10-31 | MTS revision of October or FY2026 net interest |
| R20B-03 | Net interest still above defense on a 12-month basis ($1,064.0B against $994.1B) | T1 | confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_9 | 2026-11-12 | 2026-10-31 | Defense outlays exceed net interest on the 12-month sum |
| R20B-04 | Net interest over receipts 19.8% on the latest 12 months | T1 | confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_9 | 2026-11-12 | 2026-10-31 | Recomputed ratio differs by more than 0.1pp |
| R20B-05 | October 2026 deficit $404.1B, against $284.3B a year earlier | T1 | confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_9 | 2026-11-12 | 2026-10-31 | MTS shows a different October total |
| R20B-06 | October customs receipts $19.2B, down 39% on a year, linked to tariff refunds | T1 | plausible | https://www.ttnews.com/articles/us-budget-deficit-up-october | 2026-11-12 | 2026-10-31 | Treasury attributes the fall to something other than refunds or base effects |
| R20B-07 | 10-year Treasury yield 4.91% | T1 | confirmed | https://fred.stlouisfed.org/series/DGS10 | 2026-11-25 | 2026-11-24 | H.15 shows another value for 24 Nov |
| R20B-08 | 10-year TIPS real yield 2.79%, window high 2.92% on 16 Nov | T1 | confirmed | https://fred.stlouisfed.org/series/DFII10 | 2026-11-25 | 2026-11-24 | H.15 shows other values |
| R20B-09 | 10-year breakeven 2.12%, down from 2.37% on 21 Oct | T1 | confirmed | https://fred.stlouisfed.org/series/T10YIE | 2026-11-26 | 2026-11-25 | FRED series revised |
| R20B-10 | Fed funds target 3.75% to 4.00% unchanged in the window | T1 | confirmed | https://fred.stlouisfed.org/series/DFEDTARU | 2026-11-26 | 2026-11-26 | Any intermeeting move before 26 Nov |
| R20B-11 | Broad dollar index 123.60, up 1.9% from 21 Oct and up 3.2% year to date | T1 | confirmed | https://fred.stlouisfed.org/series/DTWEXBGS | 2026-11-23 | 2026-11-20 | H.10 revision |
| R20B-12 | FOMC held on 28 Oct by 10 to 2, Cook and Hammack dissenting for a 25bp hike | T1 | confirmed | https://www.federalreserve.gov/newsevents/pressreleases/monetary20261028a.htm | 2026-10-28 | 2026-10-28 | Fed release shows a different vote |
| R20B-13 | Minutes (18 Nov): almost all participants judged further hikes likely appropriate, a couple open to more than 25bp | T1 | confirmed | https://www.federalreserve.gov/monetarypolicy/fomcminutes20261028.htm | 2026-11-18 | 2026-10-28 | Minutes text differs |
| R20B-14 | Reserve management purchases kept at zero, no long-end buying or yield-cap language | T1 | confirmed | https://www.federalreserve.gov/monetarypolicy/fomcminutes20261028.htm | 2026-11-18 | 2026-11-18 | NY Fed announces RMPs or coupon purchases before 9 Dec |
| R20B-15 | No RMPs planned 16 Nov to 11 Dec, about $14B reinvestments | T3 | plausible | https://www.newsquawk.com/headlines/ny-fed-says-the-desk-plans-around-usd-14bln-of-reinvestment-purchases-and-no-reserve-management-purchases-between-november-16th-and-december-11th | 2026-11-13 | 2026-11-13 | NY Fed operational details page shows RMPs in that period |
| R20B-16 | Market odds of a 25bp hike on 9 Dec: Polymarket 94%, Kalshi 92% | T3 | plausible | https://www.kucoin.com/news/flash/polymarket-shows-94-odds-of-december-fed-rate-hike-after-inflation-data | 2026-11-25 | 2026-11-25 | Exchange pages show odds below 85% on 25 Nov |
| R20B-17 | Next FOMC 8 and 9 December 2026 | T1 | confirmed | https://www.federalreserve.gov/monetarypolicy/fomcminutes20261028.htm | 2026-11-18 | 2026-11-18 | Fed changes the calendar |
| R20B-18 | From 2027 one of eight FOMC meetings, and two in 2028, will be strategy meetings with no rate vote | T3 | plausible | https://wjla.com/news/nation-world/fed-to-cut-back-on-rate-setting-meetings-fed-chair-warsh-says-fomc-2027-2028-mandate | 2026-10-28 | 2026-10-28 | Fed publishes a 2027 calendar with eight policy meetings |
| R20B-19 | Cook hearing moved from 5 Nov to 14 Dec, counsel says she will not attend under current terms | T3 | plausible | https://www.cnbc.com/2026/11/17/lisa-cook-trump-fed-committee-hearing.html | 2026-11-17 | 2026-11-17 | Hearing held on another date or Cook attends |
| R20B-20 | No Fed-Treasury accord or joint statement published in the window | T3 | plausible | https://www.federalreserve.gov/monetarypolicy/fomcminutes20261028.htm | 2026-11-18 | 2026-11-26 | A joint Fed and Treasury statement dated in the window |
| R20B-21 | November refunding $125B (3y $58B, 10y $42B, 30y $25B), about $28B new cash | T1 | confirmed | https://home.treasury.gov/news/press-releases/sb0678 | 2026-11-04 | 2026-11-04 | Statement shows other sizes |
| R20B-22 | Coupon guidance "for the next several quarters", without "at least" | T1 | confirmed | https://home.treasury.gov/news/press-releases/sb0678 | 2026-11-04 | 2026-11-04 | Statement text includes "at least" |
| R20B-23 | 7-year note to a quarterly new issue with two reopenings from March 2027 | T1 | confirmed | https://home.treasury.gov/news/press-releases/sb0678 | 2026-11-04 | 2026-11-04 | Treasury reverses the change |
| R20B-24 | Buybacks Nov to Jan up to $70B liquidity support and $25B cash management | T1 | confirmed | https://home.treasury.gov/news/press-releases/sb0678 | 2026-11-04 | 2026-11-04 | Tentative schedule shows other caps |
| R20B-25 | Borrowing estimate $618B for Oct to Dec and $800B for Jan to Mar | T2 | plausible | https://www.marketreview.com/news/us-treasury-125-billion-refunding/ | 2026-11-02 | 2026-11-02 | Treasury borrowing estimate release shows other figures |
| R20B-26 | Foreign holdings of Treasuries $9,241.2B, official $3,674.7B in September | T1 | confirmed | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table5.txt | 2026-11-18 | 2026-09-30 | TIC revision with October data |
| R20B-27 | Japan $1,063.1B, down $176.2B since February | T1 | confirmed | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table5.txt | 2026-11-18 | 2026-09-30 | TIC revision |
| R20B-28 | China $563.9B, down $26.8B in September and $130.3B since February | T1 | confirmed | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table5.txt | 2026-11-18 | 2026-09-30 | TIC revision |
| R20B-29 | UK $985.8B, Belgium $507.9B, Cayman $486.8B, Luxembourg $445.0B | T1 | confirmed | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table5.txt | 2026-11-18 | 2026-09-30 | TIC revision |
| R20B-30 | September net TIC inflow $261.0B, official outflow $6.0B, official net long-term Treasury purchases $27.6B | T1 | confirmed | https://home.treasury.gov/news/press-releases/sb0693 | 2026-11-18 | 2026-09-30 | Release text differs |
| R20B-31 | Q3 GDP advance 3.4% (29 Oct) | T1 | confirmed | https://www.bea.gov/news/2026/gdp-advance-estimate-3rd-quarter-2026/ | 2026-10-29 | 2026-09-30 | BEA release shows another value |
| R20B-32 | Q3 GDP second estimate 4.3% (25 Nov) | T1 | confirmed | https://www.bea.gov/data/gdp/gross-domestic-product | 2026-11-25 | 2026-09-30 | Third estimate on 23 Dec (a revision, not a falsifier of the release) |
| R20B-33 | October CPI +0.4% m/m, core +0.3%, no official 12-month rate | T1 | confirmed | https://www.bls.gov/news.release/cpi.nr0.htm | 2026-11-10 | 2026-10-31 | BLS release text differs |
| R20B-34 | October PCE prices 3.8% on a year, core 3.3% (computed from BEA index) | T1 | confirmed | https://fred.stlouisfed.org/series/PCEPILFE | 2026-11-25 | 2026-10-31 | BEA revision in December |
| R20B-35 | Unemployment rate 4.1% in October, payrolls +165k | T1 | confirmed | https://fred.stlouisfed.org/series/UNRATE | 2026-11-26 | 2026-10-31 | BLS revision |
| R20B-36 | Spot gold $3,556.82 at 3:19 pm ET on 24 Nov | T3 | confirmed | https://www.cnbc.com/2026/11/24/gold-bargain-buying-us-inflation-data.html | 2026-11-24 | 2026-11-24 | LBMA benchmark far from this level on 24 Nov |
| R20B-37 | Gold down about 14% since 22 Oct (from about $4,130) | T3 | plausible | https://www.cnbc.com/2026/11/24/gold-bargain-buying-us-inflation-data.html | 2026-11-24 | 2026-11-24 | LBMA price on 22 Oct far from $4,130 |
| R20B-38 | WGC: Q3 central bank net buying 321.2t, up 42%, 675t year to date | T2 | confirmed | https://www.gold.org/goldhub/research/gold-demand-trends/gold-demand-trends-q3-2026/central-banks | 2026-11-03 | 2026-09-30 | WGC revision |
| R20B-39 | WGC Q3 reported buyers PBoC 63t, Poland 40t, Kazakhstan 14t, Uzbekistan 14t, Czech 5t, UAE a small reducer | T2 | confirmed | https://www.gold.org/goldhub/research/gold-demand-trends/gold-demand-trends-q3-2026/central-banks | 2026-11-03 | 2026-09-30 | IMF IFS data show different changes |
| R20B-40 | PBoC gold 78.30M oz (about 2,435t) at end October, up about 26t, 24th straight month | T3 | plausible | https://phemex.com/news/article/chinas-central-bank-adds-gold-for-24th-consecutive-month-holdings-hit-2435-tonnes-102704 | 2026-11-07 | 2026-10-31 | SAFE table shows a different holding |
| R20B-41 | Japan MOF intervention ¥0 from 29 Sep to 28 Oct | T1 | confirmed | https://www.mof.go.jp/english/policy/international_policy/reference/feio/monthly/20261030e.html | 2026-10-30 | 2026-10-28 | MOF revises the figure |
| R20B-42 | No Japanese intervention reported 29 Oct to 26 Nov | T3 | unverified | https://www.fxstreet.com/news/japans-october-cpi-is-due-with-the-yen-back-near-16000-202611192227 | 2026-11-19 | 2026-11-19 | MOF month-end release shows a non-zero amount |
| R20B-43 | BoJ held at about 1.25% on 30 Oct by 8 to 1, Takata proposing 1.5% | T1 | confirmed | https://www.boj.or.jp/en/mopo/mpmdeci/mpr_2026/k261030a.pdf | 2026-10-30 | 2026-10-30 | BoJ statement differs |
| R20B-44 | BoJ ETF sales pace raised to about ¥860B a year from January 2027 | T1 | confirmed | https://www.boj.or.jp/en/mopo/mpmdeci/mpr_2026/k261030a.pdf | 2026-10-30 | 2026-10-30 | BoJ statement differs |
| R20B-45 | JGB 10-year 2.713% on 25 Nov, from 2.914% on 22 Oct | T1 | confirmed | https://www.mof.go.jp/english/policy/jgbs/reference/interest_rate/jgbcme.csv | 2026-11-26 | 2026-11-25 | MOF data differ |
| R20B-46 | USD/JPY 158.76 on 20 Nov, window high 159.93 on 13 Nov | T1 | confirmed | https://fred.stlouisfed.org/series/DEXJPUS | 2026-11-23 | 2026-11-20 | H.10 revision |
| R20B-47 | China extended the suspension of six export-control announcements to 10 Jan 2027 | T3 | plausible | https://www.techtimes.com/articles/330364/20261110/china-extends-export-controls-pause-batteries-graphite-diamond-saws-rare-earths-january.htm | 2026-11-10 | 2026-11-10 | MOFCOM notice shows reinstatement or another date |
| R20B-48 | USD/CNY 6.6770 on 20 Nov, near unchanged from 6.6745 on 22 Oct | T1 | confirmed | https://fred.stlouisfed.org/series/DEXCHUS | 2026-11-23 | 2026-11-20 | H.10 revision |
| R20B-49 | Fed swap lines outstanding $146M and FIMA repo $1M on 18 Nov | T1 | confirmed | https://fred.stlouisfed.org/series/SWPT | 2026-11-19 | 2026-11-18 | H.4.1 shows other balances |
| R20B-50 | No new Fed or ESF swap line announced in the window | T3 | plausible | https://www.federalreserve.gov/monetarypolicy/bst_liquidityswaps.htm | 2026-11-13 | 2026-11-26 | A Fed or Treasury announcement dated in the window |
| R20B-51 | NY Fed Q3 report: ¥79.4B bought on 31 July against ESF euro sales (about $0.5B), Fed did not intervene | T1 | confirmed | https://www.newyorkfed.org/medialibrary/media/newsevents/news/markets/2026/q3-2026-fx-quarterly-report.pdf | 2026-11-12 | 2026-09-30 | Revised NY Fed report |
| R20B-52 | Average interest rate on marketable debt 3.570% at end October | T1 | confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/avg_interest_rates | 2026-11 | 2026-10-31 | Treasury table shows another value |
| R20B-53 | Real GDP 2.3% and nominal GDP 6.0% on a year in Q3 | T1 | confirmed | https://fred.stlouisfed.org/series/GDPC1 | 2026-11-25 | 2026-09-30 | BEA revision |
