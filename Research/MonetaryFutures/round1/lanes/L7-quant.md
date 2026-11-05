# L7: Quantitative checks (Round 1)

Lane: L7, quantitative checks. Written 2026-10-22. All numbers fetched on 2026-10-22 unless a different "as-of" date is shown.
Scripts (python3 -I): `/tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/l7_calc.py`, `l7_extra.py`, `l7_ai.py` in the same folder. Raw downloads and full console output: `/tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/data/` (output in `l7_output.txt`).

Limitation: the shared web-search budget for this turn ran out partway through the lane. Items still unverified are listed under "Open questions / gaps". The core US fiscal, rates, GDP, gold-reserve and energy series come from primary APIs and data files, which needed no search.

---

## Key findings

1. **The US debt treadmill is driven by the primary deficit, not by r minus g.** The 10y real yield (2.76%) is only 0.26 pp above the 10-year real growth trend (2.50%). With r roughly equal to g, debt-to-GDP rises by about the primary deficit each year, and the FY2026 primary deficit was 2.92% of GDP ($941B). Stabilising debt at today's market rates needs either about +2.9% of GDP in primary adjustment (about $0.93T a year) or real growth of about 5.5% a year (3.0 pp above trend).
2. **Interest costs are on a known escalator.** The average rate on marketable debt is 3.518% (2026-09-30), against a blended market refinancing rate of about 4.88%. About 36% of marketable debt reprices within 1 year, 57% within 3 years and 70% within 5 years (from Treasury's security-level MSPD data). If market yields stay where they are, interest on marketable debt rises from about $1.12T (FY2026 run rate) to $1.27T in year 1, $1.60T in year 3 and $1.93T in year 5 (4.8% of GDP).
3. **"Interest exceeds defense" is verified on Treasury's own numbers.** Net interest has exceeded national defense outlays for three straight fiscal years: FY2024 (+$7.6B), FY2025 (+$53.7B) and FY2026 ($1,051.8B vs $965.2B, +$86.6B, ratio 1.09). Defense plus veterans ($1,381B) is still larger than net interest.
4. **Musk-scale AI only fixes the debt if spending does not rise with it and real rates do not follow growth up.** A +25% output level reached over 10 years adds about 2.26 pp a year to growth and about $8.1T a year to US GDP at full effect (US share of his ~$30T global figure). With non-interest spending held to its baseline path, debt held by the public falls to about 87% of GDP by year 10. If spending scales with GDP, debt still rises to about 107%. If real rates rise one-for-one with growth, debt reaches about 129%, the same as with no AI at all. Even +1 pp of real growth with spending discipline roughly stabilises the ratio near 109%.
5. **Claim A1 (gold x10 = world debt) is a coincidence of today's numbers, not a mechanism.** Gold is worth $29.6T now (222,600 t x $4,131/oz). IIF global debt is $365T, a ratio of 12.3x. The same ratio was about 35x in 1971, 53x in 2000, 23x in 2010 and 17x in 2024 (max/min 4.3, coefficient of variation 52%). A stable mechanism would show a stable ratio. It wanders by a factor of four and is driven mainly by the gold price. The x10 only "works" today because gold quintupled from 2010 to 2026.
6. **Claim A4 (BTC 21M x10 = $300T) reconstructs as "BTC at gold parity, then x10".** $300T / 10 / 21M = $1.43M per BTC, which is 17x today's $84,040 and almost exactly the price that equals gold's $29.6T market value. Actual crypto-collateralised lending is $56.16B (Galaxy, Q2 2026), about 4.8% of BTC market value even counting all collateral types. That is a multiple of about 0.05x, not 10x. Crypto loans are over-collateralised, so the leverage runs the other way from the claim.
7. **Claim "M2 / 8.2B people is about $15k" mixes up two aggregates.** US M2 ($23.34T, Aug 2026) divided by world population gives $2,841. World broad money (World Bank, 135.7% of world GDP in 2024) gives $18,609 per person in 2024 and about $19,500 in 2025. The $15k figure matches world broad money per person in 2020 ($15,408).
8. **An energy-referenced unit of account would be inflationary, not deflationary, if energy keeps getting cheaper.** Solar module costs fell from $132/W (1975) to $0.265/W (2024, constant 2025 $), a 27.7% learning rate per doubling of capacity. If the real cost of a kWh falls 4% a year and goods costs are flat, goods priced in kWh rise about 4.2% a year. "Money measured in watts" is only hard money if the unit is a claim on a share of total energy flow, not a fixed kWh.
9. **The economy in watts.** World GDP is $118.35T (2025) on 166,754 TWh of primary energy (600 EJ) and 31,772 TWh of electricity. That is $0.71 of GDP per kWh of primary energy, $3.72 per kWh of electricity, about $6.22 per watt-year, and 2.3 kW of continuous primary power per person. Energy intensity has improved 1.4% a year since 1970 and 1.7 to 1.8% a year since 2000.
10. **The US gold reserve is still booked at $42.22/oz.** 261.5M oz is carried at $11.04B (Treasury, 2026-09-30) against a market value of $1.08T. A revaluation would book about $1.07T, which is 2.6% of gross debt or roughly one year of net interest. It is a one-off, not a fix for a deficit that recurs every year.
11. **Stablecoins are still small next to the T-bill market.** The total supply is $304.9B (2026-10-21), 4.3% of the $7.12T bills outstanding. Tether's direct T-bills ($114.96B, 2026-06-30) are 1.6% of bills. Tether plus Circle, including reverse repo, come to about 2.9% of bills.

---

## Inputs table (latest values)

| Item | Value | As-of | Source | Tier |
|---|---|---|---|---|
| Gross federal debt | $40,439.5B | 2026-10-20 | [Treasury Debt to the Penny API](https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/debt_to_penny?sort=-record_date&page[size]=1) | T0 |
| Debt held by the public | $32,566.2B | 2026-10-20 | same | T0 |
| Intragovernmental holdings | $7,873.3B | 2026-10-20 | same | T0 |
| Avg interest rate, total marketable | 3.518% (bills 3.870, notes 3.383, bonds 3.466, TIPS 1.149, FRN 4.141) | 2026-09-30 | [Treasury avg_interest_rates](https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/avg_interest_rates?sort=-record_date) | T0 |
| Avg rate, total interest-bearing debt | 3.531% | 2026-09-30 | same | T0 |
| Marketable debt held by public | $31,814B (bills 7,118, notes 16,278, bonds 5,539, TIPS 2,172, FRN 708) | 2026-09-30 | [MSPD table 1](https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/debt/mspd/mspd_table_1?filter=record_date:eq:2026-09-30) | T0 |
| FY2026 receipts / outlays | $5,403.3B / $7,395.8B | FY ending 2026-09-30 | [MTS table 1](https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_1?sort=-record_date) | T0 |
| FY2026 deficit | $1,992.5B (FY2025: $1,775.4B) | 2026-09-30 | same | T0 |
| FY2026 net interest (function 900) | $1,051.8B (FY2025: $970.4B) | 2026-09-30 | [MTS table 9](https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_9?filter=record_date:eq:2026-09-30) | T0 |
| FY2026 national defense (function 050) | $965.2B (FY2025: $916.6B) | 2026-09-30 | same | T0 |
| FY2026 gross interest expense | $1,360.4B (public issues $1,068.5B + GAS $291.9B) | 2026-09-30 | [Treasury interest_expense](https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/interest_expense?filter=record_date:eq:2026-09-30) | T0 |
| FY2026 primary deficit | $940.7B = deficit minus net interest | 2026-09-30 | computed | T0 |
| 10y nominal Treasury | 5.13% | 2026-10-21 | [Treasury par yield curve CSV](https://home.treasury.gov/resource-center/data-chart-center/interest-rates/daily-treasury-rates.csv/2026/all?type=daily_treasury_yield_curve&field_tdr_date_value=2026&page&_format=csv) | T3 |
| 3m / 2y / 5y / 30y | 4.25 / 4.81 / 4.95 / 5.42% | 2026-10-21 | same | T3 |
| 10y real (TIPS par curve) | 2.76% | 2026-10-21 | [Treasury real yield curve CSV](https://home.treasury.gov/resource-center/data-chart-center/interest-rates/daily-treasury-rates.csv/2026/all?type=daily_treasury_real_yield_curve&field_tdr_date_value=2026&page&_format=csv) | T3 |
| 10y breakeven inflation | 2.37% (5.13 minus 2.76) | 2026-10-21 | computed from the two Treasury curves (FRED T10YIE is bot-blocked) | T3 |
| Fed funds | target 3.75 to 4.00%, EFFR 3.88% | 2026-10-20 | [NY Fed EFFR API](https://markets.newyorkfed.org/api/rates/unsecured/effr/last/3.json) | T0 |
| Nominal GDP | $32,563.0B SAAR (Q1: $31,906.3B) | 2026Q2 | [BEA NIPA flat file, series A191RC](https://apps.bea.gov/national/Release/TXT/NipaDataQ.txt) | T0 |
| Real GDP | Q2 +2.2% SAAR, Q1 +2.5%. 10y CAGR 2.50%, 5y 2.59%, 2009Q2 to 2019Q4 2.45% | 2026Q2 (third estimate 2026-09-30) | [BEA release](https://www.bea.gov/news/2026/gdp-third-estimate-industries-corporate-profits-state-gdp-and-state-personal-income-2nd), A191RX | T0 |
| PCE price index Q2 | +5.0% SAAR (core 3.3%) | 2026Q2 | BEA release above | T0 |
| Gross debt / GDP | 124.2% (vs Q2 SAAR GDP) | 2026-10-20 / Q2 | computed | T0 |
| Debt held by public / GDP | 100.0% | same | computed | T0 |
| Gold (COMEX front month) | $4,131/oz (52-wk high $5,586, low $3,901) | 2026-10-22 00:51 UTC | [Yahoo Finance GC=F chart API](https://query1.finance.yahoo.com/v8/finance/chart/GC=F) | T3 |
| Above-ground gold stock | about 222,600 t (central banks about 39,000 t, jewellery 99,700 t, bars/coins 47,800 t, ETFs 4,000 t) | end-Q2 2026 (page dated 2026-08-18) | [WGC: How much gold](https://www.gold.org/goldhub/data/how-much-gold) | T0/T4 |
| US government gold | 261,498,926 fine oz (8,134 t), book value $11,041.1B at $42.2222/oz | 2026-09-30 | [Treasury gold_reserve API](https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/gold_reserve?sort=-record_date) | T0 |
| Global debt (IIF) | about $365T, about 310% of GDP | Q2 2026 (report Sept 2026) | secondary coverage: [StockAnalysis](https://stockanalysis.com/news/global-debt-hits-365-trillion/), [Khaleej Times](https://www.khaleejtimes.com/business/uae-government-debt-falls-as-global-debt-hits-a-record-dh1339-trillion) | T4 (IIF primary not fetched) |
| US M2 (SA) | $23,342.8B | Aug 2026 (H.6 released 2026-09-22) | [Fed H.6](https://www.federalreserve.gov/releases/h6/current/default.htm) | T0 |
| World broad money | 135.7% of world GDP = $151.5T | 2024 | [World Bank FM.LBL.BMNY.GD.ZS](https://api.worldbank.org/v2/country/WLD/indicator/FM.LBL.BMNY.GD.ZS?format=json) (updated 2026-10-08) | T0 |
| World population | 8,215,424,893 | 2025 | [World Bank SP.POP.TOTL](https://api.worldbank.org/v2/country/WLD/indicator/SP.POP.TOTL?format=json) | T0 |
| World GDP | $118.35T (2025, World Bank). IMF WEO: $118.5T (2025), $128.0T (2026 forecast), real growth 3.1% (2026) | 2025 / 2026f | [World Bank NY.GDP.MKTP.CD](https://api.worldbank.org/v2/country/WLD/indicator/NY.GDP.MKTP.CD?format=json), [IMF DataMapper NGDPD](https://www.imf.org/external/datamapper/api/v1/NGDPD/WEOWORLD) | T0/T4 |
| Bitcoin price | $84,040 (52-wk high $116,273, low $57,748) | 2026-10-22 01:01 UTC | [Yahoo Finance BTC-USD](https://query1.finance.yahoo.com/v8/finance/chart/BTC-USD) | T3 |
| BTC circulating supply | 20,101,421 BTC (schedule check at block 972,548: 20,101,716) | 2026-10-22 | [blockchain.info totalbc](https://blockchain.info/q/totalbc), [mempool.space tip height](https://mempool.space/api/blocks/tip/height) | T0 |
| BTC market cap | $1.689T | 2026-10-22 | computed | T3 |
| Crypto-collateralised lending | $56.16B total (CeFi $22.98B, DeFi $20.43B, CDP stablecoins about $12.75B by difference). Peak $78.69B in Q3 2025 | Q2 2026 (published 2026-08-19) | Galaxy Research via [Crypto Briefing](https://cryptobriefing.com/galaxy-crypto-lending-q2-2026-decline/) | T4 |
| US spot BTC ETF holdings | about 1.293M BTC (IBIT about 806k) | 2026-10-08 | [Pluang summary](https://pluang.com/en/news-feed/blackrocks-ibit-kuasai-62-persen-bitcoin-spot-etf) | T4 |
| Stablecoin supply | $304.9B total (USDT $182.8B, USDC $72.7B) | 2026-10-21 | [DefiLlama stablecoins API](https://stablecoins.llama.fi/stablecoins) | T0/T4 |
| Tether reserves | T-bills $114.96B, reverse repo $25.62B, gold 146.2 t ($18.84B), BTC 98,933 ($5.8B), secured loans $13.45B. Assets $187.75B vs USDT $184.6B | 2026-06-30 (report 2026-07-31) | BDO report via [Forklog](https://forklog.com/en/news/tethers-excess-reserves-halve-in-q2) | T0 via T4 |
| Circle USDC reserves | $74.5B: reverse repo $49.6B, T-bills $14.5B, bank deposits $10.4B | early Sept 2026 | PANews via [KuCoin](https://www.kucoin.com/news/flash/usdc-circulation-increases-by-600m-in-7-days), [Circle transparency](https://www.circle.com/transparency) | T4 |
| World primary energy (total energy supply) | 166,754 TWh = 600.3 EJ (+1.4% vs 2024) | 2025 | Energy Institute Statistical Review 2026 via [OWID](https://ourworldindata.org/grapher/primary-energy-cons), [DieselNet summary](https://dieselnet.com/news/2026/07energyreview.php) | T0/T4 |
| World electricity generation | 31,772 TWh | 2025 | Ember 2026 via [OWID](https://ourworldindata.org/grapher/electricity-generation) | T0/T4 |
| Energy intensity (kWh per int-$ 2011) | 2.503 (1970), 1.769 (2000), 1.517 (2010), 1.214 (2022) | 1970 to 2022 | EI 2026 via [OWID](https://ourworldindata.org/grapher/energy-intensity) | T4 |
| Solar PV module cost (2025 $/W) | 132.38 (1975), 6.50 (2000), 2.51 (2010), 0.265 (2024) | 2024 | IRENA, Nemet via [OWID](https://ourworldindata.org/grapher/solar-pv-prices) | T4 |
| Cumulative PV capacity | 2,397 GW | 2025 | IRENA 2026 via [OWID](https://ourworldindata.org/grapher/installed-solar-pv-capacity) | T0/T4 |
| Context prices | WTI crude $98.03, DXY 101.7, silver $57.45 | 2026-10-22 | Yahoo Finance chart API | T3 |

---

## 1. Debt treadmill

### 1a. r minus g

Formula: real treadmill = r_real minus g_real. Nominal version = effective or market nominal rate minus nominal GDP growth.

| Measure | r | g | r minus g | Read |
|---|---|---|---|---|
| 10y TIPS vs 10y real GDP CAGR (2016Q2 to 2026Q2) | 2.76% | 2.50% | +0.26 pp | Slightly unfavourable |
| 10y TIPS vs 5y real CAGR | 2.76% | 2.59% | +0.17 pp | Slightly unfavourable |
| 10y TIPS vs 2009 to 2019 real CAGR | 2.76% | 2.45% | +0.31 pp | Slightly unfavourable |
| Effective nominal rate (net interest / debt held by public) vs 10y nominal GDP CAGR | 3.23% | 5.70% | minus 2.47 pp | Favourable, but only because legacy low coupons meet high recent inflation |
| 10y nominal market vs 10y nominal GDP CAGR | 5.13% | 5.70% | minus 0.57 pp | Favourable, and closing as debt reprices |
| Blended market refinancing rate vs trend nominal growth (2.50% real + 2.37% breakeven = 4.93%) | 4.88% | 4.93% | minus 0.05 pp | About zero |

Sources: Treasury yield curves (2026-10-21), BEA NIPA (2026Q2), MTS (FY2026).

Interpretation: at the margin, r is about equal to g. In that case the debt ratio moves by roughly the primary balance each year. The treadmill is the 2.9% of GDP primary deficit, not the interest-growth spread. The favourable effective spread today exists because 2021 to 2026 inflation raised nominal GDP faster than the average coupon. That is a quiet inflation tax on bondholders, and it fades as debt reprices.

### 1b. Interest cost if the average rate converges to market yields

Repricing schedule from Treasury's security-level data ([MSPD table 3 market](https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/debt/mspd/mspd_table_3_market?filter=record_date:eq:2026-09-30), 893 securities, 2026-09-30). FRNs reset weekly to the 13-week bill, so they are treated as repricing in year 1.

| Years ahead | 1 | 2 | 3 | 4 | 5 |
|---|---|---|---|---|---|
| Share of marketable debt maturing or resetting | 35.7% | 47.6% | 56.8% | 63.3% | 70.4% |

Blended market refinancing rate = stock-weighted market yields: bills at the 3m yield (4.25), notes at the average of 2/3/5/7/10y (4.96), bonds at the average of 20/30y (5.45), TIPS at 10y real plus breakeven (5.13 nominal-equivalent), FRN at 4.25. Result: 4.88% (4.72% counting TIPS cash coupons only).

Model (simple, stated assumptions):
- Legacy stock rate in year t = 3.518% x (1 minus s_t) + r_new x s_t, where s_t is the cumulative repriced share above.
- New borrowing each year = primary deficit (held at 2.92% of GDP) plus that year's interest, all issued at r_new.
- Nominal GDP grows 4.37% a year (2.0% real plus 2.37% breakeven). Starting stock: $31.81T marketable debt held by the public.
- Calibration: year-0 model interest ($1.119T) vs public-issue interest expense $1.0685T and MTS net interest $1.052T. The model runs about 5% high, so treat paths as upper-middle estimates.

| Scenario | Year | Interest on marketable debt | Avg rate | Interest / GDP | Marketable debt / GDP |
|---|---|---|---|---|---|
| A: yields stay here (4.88%) | 1 | $1.274T | 4.06% | 3.79% | 101.3% |
| | 3 | $1.596T | 4.40% | 4.36% | 107.0% |
| | 5 | $1.925T | 4.60% | 4.82% | 113.2% |
| B: all refinancing at 10y (5.13%) | 1 | $1.302T | 4.16% | 3.87% | 101.4% |
| | 3 | $1.656T | 4.57% | 4.52% | 107.4% |
| | 5 | $2.017T | 4.80% | 5.05% | 113.9% |
| C: yields fall 100 bp (3.88%) | 1 | $1.161T | 3.66% | 3.45% | 101.0% |
| | 3 | $1.357T | 3.75% | 3.70% | 105.5% |
| | 5 | $1.567T | 3.80% | 3.93% | 110.2% |
| Instant full convergence (static) | now | $1.553T at 4.88% ($1.632T at 5.13%) | | | |

Note that even scenario C (100 bp lower yields) leaves interest rising, because the deficit adds debt every year.

### 1c. Growth that would stabilise debt / GDP

Formula: d(t+1) = d(t) x (1 + i) / (1 + g_n) + pd. Stability requires pd = d x (g_n minus i) / (1 + g_n), so g_n = (pd + d x i) / (d minus pd). Real g = (1 + g_n) / (1 + breakeven) minus 1.
Inputs: d = debt held by public / FY2026 GDP = 32.566 / 32.224 = 1.011. pd = 2.92%. FY2026 GDP estimated as the average of 2025Q4 to 2026Q2 SAAR plus an assumed Q3 (Q2 grown at 5% annualised, Q3 BEA release due 2026-10-29).

| Interest rate assumption | Nominal growth needed | Real growth needed | Gap vs 2.50% trend |
|---|---|---|---|
| Effective today, 3.23% | 6.30% | 3.84% | +1.34 pp |
| Blended market, 4.88% | 8.00% | 5.50% | +3.00 pp |
| 10y, 5.13% | 8.26% | 5.75% | +3.25 pp |

| Alternative: primary balance needed at trend growth (4.93% nominal) | Needed | Actual | Adjustment |
|---|---|---|---|
| At effective rate 3.23% | minus 1.64% GDP | minus 2.92% | 1.28% GDP ($0.41T/yr) |
| At market rate 4.88% | minus 0.05% GDP | minus 2.92% | 2.87% GDP ($0.93T/yr) |

### 1d. How much would AI need to add? (Musk: +20 to 30% output, about $30T/yr)

$30T is 23.4% of IMF's 2026 world GDP ($128.0T), so Musk's number corresponds to the middle of his own 20 to 30% range. The US is 25.2% of world GDP.

| Level gain | Reached over | Extra growth per year | World $/yr at full effect | US $/yr at full effect |
|---|---|---|---|---|
| +20% | 10y / 20y | +1.84 / +0.92 pp | $25.6T | $6.4T |
| +25% | 10y / 20y | +2.26 / +1.12 pp | $32.0T | $8.1T |
| +30% | 10y / 20y | +2.66 / +1.32 pp | $38.4T | $9.7T |

Ten-year debt path, debt held by the public / GDP, starting at 101%, i = 4.88% on all debt:

| Scenario | Year 5 | Year 10 | Primary balance yr 10 |
|---|---|---|---|
| No AI, primary deficit fixed at 2.92% of GDP | 115.4% | 129.7% | minus 2.92% |
| AI +1.0 pp, spending scales with GDP | 110.4% | 119.2% | minus 2.92% |
| AI +2.26 pp (25% over 10y), spending scales with GDP | 104.4% | 107.4% | minus 2.92% |
| AI +1.0 pp, non-interest spending stays on its no-AI path | 107.6% | 109.3% | minus 1.10% |
| AI +2.26 pp, spending stays on its no-AI path | 98.4% | 86.9% | +0.93% |
| AI +3.0 pp, spending stays on its no-AI path | 93.3% | 75.1% | +2.01% |
| AI +2.26 pp, but real rates also rise 2.26 pp | | 129.2% | |

At full effect, +$8.1T of US GDP at the current receipts ratio (16.8%) adds about $1.36T a year of federal revenue, more than the $0.94T primary deficit. So Musk's "not transformative" AI tier is arithmetically enough for the US debt, but only under two conditions that history rarely grants: (1) spending does not rise with the new income (including any UHI-type transfers), and (2) real rates do not rise with real growth. Standard growth theory (Ramsey/Euler) says r tends to move with g, which is the 129% row.

---

## 2. Claim A1: gold (~$30 to 50T) x10 = ~$500T world debt

Gold value now: 222,600 t x 32,150.75 oz/t x $4,131 = **$29.56T**.

| Check | Result |
|---|---|
| Gold x10 | $296T, against IIF $365T, so 19% short of the actual |
| Owner's $500T global debt | Not supported by IIF ($365T). It would need a much broader definition, for example including derivatives notionals, which are not debt in this sense |
| Gold price that makes x10 exactly equal to IIF debt | $5,100/oz |
| Gold price that makes gold $50T | $6,986/oz |
| Debt / gold now | 12.3x (IIF, includes financial-sector debt). 10.9x on an IMF non-financial basis ($321T est.) |
| Broad money / gold now | 5.4x ($160.6T est. / $29.6T) |
| Central bank gold (about 39,000 t) | $5.18T, 18% of the gold stock |

### Is the ratio stable over time? (mechanism test)

Method: global non-financial debt = GDP-weighted sum over countries of (general government debt + private loans and debt securities, % GDP) from the [IMF Global Debt Database](https://www.imf.org/external/datamapper/api/v1/GG_DEBT_GDP) (Sep 2025 vintage, indicators GG_DEBT_GDP and PVD_LS), weighted by World Bank GDP, then applied to world GDP. Gold stock and average price for past years are estimates (see note).

| Year | Gold stock (t, est.) | Avg gold price ($/oz) | Gold value | Gold / world GDP | Global non-fin. debt (IMF GDD, coverage) | Debt / gold | Broad money / gold |
|---|---|---|---|---|---|---|---|
| 1971 | 95,000 | 40.80 | $0.125T | 3.7% | $4.4T (133% GDP, 68% coverage) | **35.4x** (31 to 37 range) | 16.1x |
| 2000 | 147,000 | 279.11 | $1.32T | 3.9% | $70.0T (206%, 87%) | **53.0x** (51 to 57) | 25.4x |
| 2010 | 168,000 | 1,224.53 | $6.61T | 9.9% | $153.4T (229%, 89%) | **23.2x** (19 to 24) | 10.9x |
| 2024 | 216,265 | 2,386.20 | $16.59T | 14.9% | $279.9T (251%, 88%) | **16.9x** | 9.1x |
| 2026 | 222,600 | 4,131 (spot) | $29.56T | 23.1% of 2026 GDP | $365T IIF total (incl. financial) | **12.3x** | 5.4x |

Ranges show ±5% on stock and year-average vs year-end price. The ratio swings from 12x to 53x (max/min 4.3, CV 52%). Every year it moves is a year the gold price moved. Gold's share of world GDP rose from 3.7% to 23%, while debt kept rising regardless of gold.

Note on estimates: the historical gold stock figures (95k, 147k, 168k t) and 1971/2000/2010 average prices are reconstructions from WGC and LBMA series as I recall them, not re-fetched this session (search budget). The 2024 stock (216,265 t) comes from WGC via [CoinWeek](https://coinweek.com/gold-supply-reserves-2025/). A ±5% error does not change the conclusion. The 1971 debt aggregate covers only 68% of world GDP (mostly advanced economies), so it is a rough figure.

### Mechanism: fractional reserve multiplier vs BoE 2014

- The textbook "money multiplier" says banks lend out a multiple of reserves, so a fixed base (gold, then reserves) caps credit at about 1/reserve ratio.
- The Bank of England's [Money creation in the modern economy (Quarterly Bulletin 2014 Q1)](https://www.bankofengland.co.uk/quarterly-bulletin/2014/q1/money-creation-in-the-modern-economy) states the reverse. Commercial banks create deposits when they make loans, reserves are supplied on demand at the policy rate, and the binding limits are capital rules, borrower demand, profitability and monetary policy. Not a reserve or gold base.
- Since 1971 there has been no legal link between gold and dollar credit. The US still books its gold at a statutory $42.2222/oz (Treasury, 2026-09-30), a T0 sign that gold is not used as live collateral by the issuer of the reserve currency.
- What actually anchors credit today is high-quality collateral, mostly Treasuries and agency MBS, in repo, margin and bank liquidity rules.
- Verdict: **Refuted as a mechanism (T0 data), coincidence as a number.** The defensible version of the owner's idea is "gold is the one reserve asset with no counterparty, and its share of global wealth is rising". The gold share of world GDP did rise from 3.7% to 23%, which is a real trend.

---

## 3. Claim A4: Bitcoin 21M x10 collateral = ~$300T

| Reconstruction | Value |
|---|---|
| Price implied by 21M x P x 10 = $300T | $1,428,571 per BTC (17.0x today) |
| BTC price at gold-value parity ($29.56T / 21M) | $1,407,836. Times 10 = $296T. So "$300T" is "BTC equals gold, then times 10" |
| Today: 20.10M x $84,040 | $1.689T market cap. Times 10 = $16.9T |
| Actual crypto-collateralised lending, Q2 2026 (all collateral) | $56.16B = 4.8% of BTC market value at 2026-06-30 (about $58.6k/BTC, implied by Tether's report) |
| Leverage multiple implied by actual lending | about 0.05x, against the claimed 10x. Owner's figure is about 5,300x the real market |
| US spot ETFs | 1.293M BTC = 6.4% of supply = $109B |
| Tether holds | 98,933 BTC and runs 58.5% of CeFi crypto lending (Galaxy) |

Why the x10 is backwards: crypto loans are over-collateralised. A borrower pledges about $2 of BTC to borrow about $1 (typical 50% LTV), so collateral supports roughly 0.5x its value in loans, not 10x. Re-hypothecation chains could raise this, but the 2022 CeFi collapse (Celsius, BlockFi, Genesis) was exactly that mechanism failing. Status: **Refuted on current data (T0/T4)**. Also, about 3 to 4M BTC are widely estimated as lost (Chainalysis-type estimates, not re-verified), so 21M overstates the usable base.

---

## 4. Money per person

| Measure | Money | Population | Per person |
|---|---|---|---|
| US M2 / world population | $23.34T (Aug 2026) | 8.215B (2025) | $2,841 |
| US M2 / US population (about 342M, assumed) | $23.34T | 0.342B | about $68,250 |
| World broad money 2020 | $121.0T (140.1% x $86.4T) | 7.85B | **$15,408** |
| World broad money 2024 | $151.5T (135.7% x $111.7T) | 8.14B | $18,609 |
| World broad money 2025 est. (2024 ratio x 2025 GDP) | $160.6T | 8.215B | about $19,544 |

Sources: Fed H.6, World Bank WDI (FM.LBL.BMNY.GD.ZS, NY.GDP.MKTP.CD, SP.POP.TOTL, updated 2026-10-08).
Verdict: the $15k figure is right for global broad money in about 2020, not US M2, and is now about $19.5k. Caveat: national "broad money" definitions differ, and the World Bank aggregate converts at market exchange rates.

---

## 5. Energy-denominated economy

| Metric | Value | Formula |
|---|---|---|
| World GDP per kWh primary energy | $0.710 | $118.35T / 166,754 TWh |
| World GDP per kWh electricity | $3.72 | $118.35T / 31,772 TWh |
| "The dollar in watts" | $1 of world output uses 1.41 kWh primary or 0.268 kWh electricity | inverse of the above |
| Average world primary power | 19.0 TW | 166,754 TWh / 8,766 h |
| Per person | 2,315 W continuous primary, 441 W electricity (3,867 kWh/yr) | / 8.215B |
| GDP per watt-year of primary power | $6.22 | $118.35T / 19.0 TW |
| Energy intensity change 1970 to 2022 | minus 1.38%/yr | CAGR of kWh per int-$ |
| 1990 to 2022 / 2000 to 2022 / 2010 to 2022 | minus 1.75 / minus 1.70 / minus 1.84%/yr | same |
| PV module cost CAGR 1975 to 2024 | minus 11.9%/yr | 132.38 to 0.265 $/W |
| PV module cost CAGR 2010 to 2024 | minus 14.8%/yr | 2.51 to 0.265 |
| PV learning rate (2000 to 2024) | 27.7% cost fall per doubling of cumulative capacity | log-log regression, slope minus 0.468 |

### What happens to an energy-referenced unit of account?

Prices of goods in kWh = (USD price of goods) / (USD price of a kWh). If energy gets cheaper faster than goods, goods priced in kWh go UP:

| Real cost of a kWh falls | Real cost of goods falls | Goods priced in kWh change |
|---|---|---|
| 2%/yr | 0%/yr | +2.04%/yr |
| 2%/yr | 2%/yr | 0.00%/yr |
| 4%/yr | 0%/yr | +4.17%/yr |
| 4%/yr | 2%/yr | +2.08%/yr |
| 6%/yr | 0%/yr | +6.38%/yr |
| 6%/yr | 2%/yr | +4.26%/yr |

Implications:
- A fixed-kWh unit loses purchasing power whenever energy productivity outruns the rest of the economy, which is the solar learning-curve world. It behaves like soft money that anyone with panels can "mint".
- A unit is deflationary (gains purchasing power) only if it is scarce relative to output, for example a claim on a fixed share of total energy flow (like equity in global power output) or a capped asset whose issuance costs energy (Bitcoin's design).
- Energy intensity falling 1.4 to 1.8% a year means each kWh supports more output over time, so GDP-per-kWh rises. That pushes the other way, but it is a quantity ratio, not a price. Which force wins depends on the relative price of energy, which has been trendless with big shocks (oil at $98 today).
- Module cost is now a small share of all-in solar cost (land, grid, storage, finance, permits), so electricity prices fall much more slowly than module prices. Storage and transmission, not panels, set the marginal cost of firm power.
- Status of "currency measured in watts" (Musk, H3 horizon): **Speculative (T2 words, no T0/T1 path)**. The arithmetic shows it needs a scarcity rule to work as a store of value.

---

## 6. Interest on US debt vs defense

| Fiscal year | Net interest (function 900) | National defense (function 050) | Difference | Ratio |
|---|---|---|---|---|
| FY2023 | $659.2B | $820.7B | minus $161.6B | 0.80 |
| FY2024 | $881.7B | $874.0B | +$7.6B | 1.01 |
| FY2025 | $970.4B | $916.6B | +$53.7B | 1.06 |
| FY2026 | $1,051.8B | $965.2B | +$86.6B | 1.09 |

Source: [MTS table 9](https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_9?filter=record_date:eq:2026-09-30) (September MTS for each year, FYTD and prior FYTD columns).
Also: net interest is 19.5% of federal receipts and 3.26% of GDP in FY2026. Gross interest including intragovernmental is $1,360.4B. Defense plus veterans ($1,381.4B) still exceeds net interest.
Verdict: **Confirmed (T0)** that interest exceeds defense, as Musk said, for FY2024 to FY2026. I did not re-verify his exact wording (see L-lane on the Isaacson interview).

---

## Claims

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| L7-01 | US gross debt is $40.44T, debt held by public $32.57T | T0 | Confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/debt_to_penny | 2026-10-21 | 2026-10-20 | Treasury revision |
| L7-02 | FY2026 deficit $1,992.5B, net interest $1,051.8B, primary deficit $940.7B (2.92% GDP) | T0 | Confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_1 | Oct 2026 MTS | 2026-09-30 | Final FY2026 Financial Report revision |
| L7-03 | Net interest exceeded national defense in FY2024, FY2025 and FY2026 (FY2026: $1,051.8B vs $965.2B) | T0 | Confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/accounting/mts/mts_table_9 | Oct 2026 MTS | 2026-09-30 | MTS revision, or a reclassification of functions |
| L7-04 | Avg rate on marketable debt 3.518% vs blended market refinancing rate about 4.88%: interest rises toward about $1.6T in 3 years and $1.9T in 5 years if yields hold | T0+T3 | Plausible (model) | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/avg_interest_rates | 2026-10 | 2026-09-30 | Yields fall more than 100 bp, or the deficit shrinks sharply. Track monthly avg rate and MTS net interest |
| L7-05 | 70% of marketable debt reprices within 5 years (36% within 1) | T0 | Confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v1/debt/mspd/mspd_table_3_market | 2026-10 | 2026-09-30 | Treasury terms-out issuance |
| L7-06 | Real r minus g is about +0.2 to +0.3 pp (10y TIPS 2.76% vs 2.5% trend). Debt dynamics are driven by the primary deficit | T3+T0 | Plausible | Treasury real yield curve CSV, BEA NIPA | 2026-10-21 / 2026-09-30 | 2026-10-21 | TIPS 10y below 2.0% with trend growth intact |
| L7-07 | Stabilising debt/GDP at market rates needs about 5.5% real growth or about 2.9% GDP ($0.93T/yr) of primary adjustment | T0+T3 | Plausible (model) | computed, see section 1c | 2026-10-22 | 2026-10-22 | CBO baseline showing a stable ratio under current law |
| L7-08 | Musk-scale AI (+25% level, about $8T/yr US) stabilises US debt only if spending does not scale with it and real rates do not rise with growth | T2+model | Plausible | computed, see section 1d | 2026-10-22 | 2026-10-22 | Productivity data showing >1 pp extra growth with flat real rates. Spending growth below nominal GDP |
| L7-09 | Gold x10 = world debt is a coincidence: the debt/gold ratio went 35x (1971), 53x (2000), 23x (2010), 17x (2024), 12x (2026) | T0/T4 | Refuted as mechanism | IMF GDD https://www.imf.org/external/datamapper/api/v1/GG_DEBT_GDP, WGC https://www.gold.org/goldhub/data/how-much-gold | 2025-09 / 2026-08-18 | 2026-10-22 | A stable ratio across decades (it is not) |
| L7-10 | Gold stock worth $29.6T (222,600 t x $4,131) vs IIF debt $365T | T3+T4 | Confirmed (arithmetic), IIF figure secondary | https://www.gold.org/goldhub/data/how-much-gold, https://stockanalysis.com/news/global-debt-hits-365-trillion/ | 2026-08-18 / 2026-09 | 2026-10-22 | IIF primary release with a different total |
| L7-11 | US gold (261.5M oz) still booked at $42.22/oz ($11.04B) vs $1.08T market value | T0 | Confirmed | https://api.fiscaldata.treasury.gov/services/api/fiscal_service/v2/accounting/od/gold_reserve | 2026-10 | 2026-09-30 | Book value change in the gold_reserve dataset (would signal revaluation) |
| L7-12 | BTC $300T = gold-parity price ($1.43M) times 10. Actual crypto lending $56B is about 0.05x BTC value, not 10x | T3+T4 | Refuted | https://cryptobriefing.com/galaxy-crypto-lending-q2-2026-decline/ | 2026-08-19 | 2026-06-30 | Crypto-backed lending above $1T, or regulated banks lending at >1x against BTC |
| L7-13 | "$15k per person" matches world broad money in 2020, not US M2 (US M2 / world pop = $2,841). Now about $19.5k | T0 | Refuted as stated (wrong aggregate) | https://api.worldbank.org/v2/country/WLD/indicator/FM.LBL.BMNY.GD.ZS, https://www.federalreserve.gov/releases/h6/current/default.htm | 2026-10-08 / 2026-09-22 | 2024 / Aug 2026 | None needed (arithmetic) |
| L7-14 | World GDP is about $0.71 per kWh primary energy and $3.72 per kWh electricity. Energy intensity improves 1.4 to 1.8%/yr | T0/T4 | Confirmed | https://ourworldindata.org/grapher/primary-energy-cons, https://ourworldindata.org/grapher/energy-intensity | 2026-06/07 | 2025 | EI 2027 review |
| L7-15 | A fixed-kWh unit of account would be inflationary while energy costs fall faster than goods costs (solar learning rate about 28%) | T4 + arithmetic | Plausible | https://ourworldindata.org/grapher/solar-pv-prices | 2026-07-28 | 2024 | Real electricity prices rising for a decade despite solar growth |
| L7-16 | Stablecoins total $305B = 4.3% of T-bills outstanding. Tether direct bills 1.6% of bills | T0/T4 | Confirmed (with secondary inputs) | https://stablecoins.llama.fi/stablecoins, https://forklog.com/en/news/tethers-excess-reserves-halve-in-q2 | 2026-10-21 / 2026-07-31 | 2026-10-21 | Tether Q3 2026 attestation |
| L7-17 | Fed target is 3.75 to 4.00% (EFFR 3.88%) while 2y is 4.81% and 10y 5.13% (curve prices tightening, rising term premium) | T0+T3 | Confirmed (prices) | https://markets.newyorkfed.org/api/rates/unsecured/effr/last/3.json, Treasury yield CSV | 2026-10-21 | 2026-10-21 | 2y falls below EFFR |

---

## Say/Do gaps

| Actor | Says | Does (T0) | Gap |
|---|---|---|---|
| US Treasury / Congress | Deficit reduction is a priority (common official line, not re-sourced this session) | FY2026 deficit rose to $1,992.5B from $1,775.4B. Primary deficit $941B | Deficit growing in an expansion with real growth at 2.2 to 2.5% |
| US Treasury (gold) | Revaluation talk in 2025 to 2026 commentary (T4/T5) | Gold still booked at $42.2222/oz on 2026-09-30 | No action as of Sept 2026 |
| Musk | "Only AI and robots can solve the debt". Digital AI alone is "not transformative" | Arithmetic: his own $30T figure is enough only with spending discipline and flat real rates | His claim is internally consistent with the math, but the conditions are political, not technological |
| Fed | Policy rate held at 3.75 to 4.00% (path of recent moves not verified in this lane) | Q2 PCE inflation 5.0% annualised, nominal GDP +8.5% annualised | Real policy rate near zero or negative on headline inflation while the 10y real yield is 2.76%. The market, not the Fed, is setting the tightening |
| Crypto "collateral" narrative (owner thesis A4) | BTC as base collateral, x10 | Crypto lending $56B, down 40% from peak, over-collateralised | Narrative is about 5,000x the T0 reality |

## Anomalies

1. **Low policy rate while long yields rise.** EFFR 3.88% vs 10y 5.13% and 30y 5.42%. The 2y at 4.81% sits about 90 bp above fed funds, which means the market prices hikes or a much higher term premium. Default expectation with a stable outlook: the 2y trades close to fed funds. (T3)
2. **Inflation surge in the data.** Q2 2026 PCE +5.0% annualised, nominal GDP +8.5% annualised, WTI at $98. The 10y breakeven is only 2.37%, so the bond market treats this as transitory. If it is not, the breakeven is mispriced. (T0/T3)
3. **Customs duties fell year on year.** FY2026 $173.2B vs FY2025 $194.9B, while corporate income taxes fell from $452.1B to $381.4B (MTS table 9). Default expectation under the 2025 tariff regime: rising customs receipts. Cause not verified here (possible court rulings, refunds or trade diversion). Flag for the fiscal lane.
4. **Gold fell from $5,586 (52-week high) to $4,131** while debt and deficits rose. That is further evidence against a fixed gold-to-debt link.
5. **Crypto lending is down 40% from its Q3 2025 peak** while BTC ETF holdings rose to about 1.29M BTC. BTC is being held more than it is being borrowed against.

## Mechanism chains

1. **Repricing chain:** average rate 3.52%, then about 36% of debt reprices at about 4.9% within 12 months, then interest rises about $150 to 180B a year, then primary deficit plus interest pushes issuance up, then more supply at the long end pushes term premium up, then higher refinancing rates. This loop is visible now in the 10y at 5.13%.
2. **Inflation escape valve:** effective rate 3.2% vs nominal growth 5.7%, so inflation is eroding the debt ratio. This works only while the average coupon lags. As 70% reprices within 5 years, the escape valve closes unless inflation stays above breakevens (financial repression) or the Fed caps yields.
3. **AI fiscal chain:** AI raises output, then receipts rise about 16.8 cents per dollar, then the primary balance improves, unless spending (UHI, defense, health) rises with income, or real rates rise with growth (higher investment demand for capital), in which case interest absorbs the gain.
4. **Energy-unit chain:** a cheaper kWh, then goods cost more kWh, then a kWh-denominated currency depreciates, so holders demand a scarcity rule. That pushes design toward "share of energy flow" or a capped asset, which brings back the gold or Bitcoin problem (a scarce token), not "watts" as such.
5. **Stablecoin bill-demand chain:** stablecoin growth means T-bill demand (GENIUS Act reserve rules), so Treasury can tilt issuance toward bills. At $305B, stablecoins hold about 3 to 4% of bills. They would need roughly 5 to 10x growth to become a structural buyer comparable to money funds.

## Tripwires to monitor

| Tripwire | Current | Threshold that matters | Source |
|---|---|---|---|
| Avg rate on marketable debt (monthly) | 3.518% | above 4.0% | Treasury avg_interest_rates |
| 10y nominal | 5.13% | above 5.5% (debt math stress) or below 4.5% | Treasury yield CSV |
| 10y TIPS real | 2.76% | above 3.0% (r minus g clearly positive) | Treasury real yield CSV |
| Net interest / receipts | 19.5% | above 25% | MTS |
| US gold book value | $11.04B | any change | Treasury gold_reserve |
| Gold price for the A1 coincidence | $4,131 | $5,100 makes gold x10 equal to IIF debt | COMEX |
| Crypto-collateralised lending | $56B | above $150B (leverage returning) | Galaxy quarterly |
| Stablecoin supply | $305B | above $500B, or 10% of bills | DefiLlama, Treasury MSPD |
| Real GDP growth (4-quarter) | 2.2% | above 3.5% for 4+ quarters (AI signal) | BEA NIPA |
| Energy intensity improvement | about minus 1.7%/yr | faster than minus 3%/yr (AI efficiency) or a reversal (AI power demand) | EI Statistical Review |

## Open questions / gaps

1. **Search budget ran out.** Not fetched: CBO's latest baseline and Monthly Budget Review (to compare against MTS), the IIF primary release (I used secondary coverage for $365T), the WGC official-holdings spreadsheet (download gated, so I used the WGC "how much gold" page's rounded 39,000 t), and Ember's primary report.
2. **Historical gold stocks and prices** (1971, 2000, 2010) are reconstructions, not re-fetched. The conclusion is robust to ±5% but the figures should be checked against the WGC historical series.
3. **IMF WEO vintage.** The DataMapper figure ($128.0T for 2026) is assumed to be the October 2026 WEO. The vintage was not confirmed.
4. **BTC-specific lending.** Galaxy's $56.16B covers all crypto collateral. A BTC-only figure was not found. MicroStrategy-type corporate debt backed implicitly by BTC is not included.
5. **Circle reserve split** is from a secondary aggregator (early Sept 2026). Tether's Q3 2026 attestation is not yet published.
6. **Gold quote** is the COMEX front-month future, which can differ from LBMA spot by a few dollars.
7. **FY2026 GDP** uses an assumed Q3 2026 figure. BEA's advance Q3 estimate is due 2026-10-29.
8. **Model limits.** The interest model holds the issuance mix constant, ignores the Fed's balance-sheet remittances, and treats TIPS accrual at the breakeven. It runs about 5% above actual FY2026 interest at the starting point.
9. **Cause of falling customs receipts** in FY2026 was not determined.
