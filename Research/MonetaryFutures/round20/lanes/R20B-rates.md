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

