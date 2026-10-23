# R4E: Markets and odds

Lane R4E, Round 4. Question R4-5.
As of: 2026-10-23. Prediction-market snapshots were taken 19:00 to 19:08 UTC on 2026-10-23. Price data are the latest prints at about 19:02 UTC (European closes for 2026-10-23, US intraday). Bond yields are the latest dated prints found (dates given in each row).
Reused: R1 L5 (COFER Q2 2026), R3 R3E (method, scoring ledger, Le Pen and recession rows), R3 WIF section 3 (China capital account odds, not redone), R0 calibration (France-Germany spread history), REPORT.md (scenario odds).

Access log:
- Polymarket Gamma API (`/public-search`, `/events?slug=`): worked, no key. Scripts: `/tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/pm_r4e.py` and `pm_event.py`.
- Kalshi public API (`/trade-api/v2/series`, `/markets?series_ticker=`): worked, no key. Script `kalshi.py` (from R3E). Kalshi volume is reported in contracts (each pays $1), so it is an upper bound on dollars traded.
- Yahoo chart API (FX, equity indices, US 10y, MOVE, gold): worked. Script `yh_r4e.py`.
- Bundesbank statistics API (Bund 10y), Bank of England IADB (gilt 10y), ECB Data Portal API (deposit rate), Eurostat API (saving rates), World Bank API and OGHIST.xlsx (income classes), IMF DataMapper API (GDP, PPP per capita): all worked.
- worldgovernmentbonds.com (script page), CNBC quotes, investing.com, stooq: blocked or empty. OAT and BTP yields therefore come from dated Italian and French press reports (T3 via T4).
- Derived numbers: `scripts/r4e_calc.py`. Raw snapshots: `scratchpad/round4/r4e/`.
- WebSearch calls used: 14.

How to read a market price: 0.46 means about a 46% chance. "Thin" means under about $50k traded or a bid-ask spread over 10 points. The market-odds rule (PLAN 4.1c) applies to markets above $1M traded.

## Answers

**R4-5. What do markets and prediction markets price on the Round 4 questions, how do they compare with the desk's views, and what probabilities should this round assign?**

Markets price a France problem, not a European collapse. The deepest contract on any Round 4 question is the 2027 French presidential election ($155.7M traded), where Marine Le Pen is at 46% and a National Rally win at about 47%, and the OAT-Bund spread is near 157bp, the widest since 2012, with France now paying about 41bp more than Italy. But the signs of a euro breakup are absent: the Bund yield is rising with the OAT rather than falling as a safe haven, Italy's spread is about 115bp (it was above 500bp in 2011), Spain's is about 64bp, and every market on a country leaving the EU is tiny (under $10k) and priced at 1% to 8%. Equity prices say "cheaper and slower, not broken": Europe beat the US by a wide margin in 2025 in dollars (Euro Stoxx 50 +34% vs S&P 500 +16%), gave much of it back in 2026 (S&P +11.5% vs Euro Stoxx 50 about flat in dollars), and trades at its normal valuation discount (forward P/E 14.3 vs 19.3, a 35% US premium, close to the ten-year median). Households are far gloomier than markets: euro-area consumer confidence fell to -17.9 in October, the ECB's own survey shows people expecting income growth of 1.0% against inflation of 3.0%, about three in ten Europeans expect their living standards to fall (44% in France), and saving rates are 2 to 4 points above pre-pandemic levels. Base rates are on the side of the markets: no member has ever left the euro in about 456 member-years, no established high-income country of size has fallen to middle income in peacetime in the World Bank's records (Greece lost about a quarter of its output and stayed high income), and the last reserve-currency handover took roughly half a century. No market above $1M differs from the desk's numbers by more than 15 points. The probability table below assigns low single digits to breakup events and puts the real risk in a French-led spread crisis (25% in H0) and slow relative decline (EU income per head falling against the US, about 70% in H0).

- Status: Plausible (prices are T3 and confirmed as prices, the probabilities are judgment built on T0 to T3 inputs and base rates).
- Confidence: 70.
- Horizon: H0 for markets, H1 and H2 for the base-rate table.
- Three views. Governance: the market is telling Paris, not Brussels, that it has a problem, and the ECB has refused so far to rescue it (TPI eligibility depends on fiscal compliance), so the policy test comes with the budget vote, the Moody's decision and the April 2027 election. Business: European assets are priced as a discount market, not a distressed one, so the cheap-Europe trade is a valuation bet with a France-shaped tail, while the dollar, the S&P 500 and US yields price US resilience, not a US downfall. Ordinary person: people in France, Portugal and Germany expect to be poorer and are saving more, and the ECB survey points to a real income squeeze of about 2% over the next year, which is a cost-of-living story driven by energy and rates, not a sign that the euro in your pocket is going away.

## Key findings

1. **The deepest Round 4 market is France 2027.** Polymarket "Next French Presidential Election" ($155.7M, liquidity $19.5M): Le Pen 46.15, Philippe 16.5, Lisnard 13.9, Mélenchon 10.5, Glucksmann 4.35, Bardella 0.75. Le Pen reaches the runoff 90 (Polymarket) and 87 to 91 (Kalshi, thin). She is on the ballot at 92. A National Rally president is therefore about 47%.
2. **France is priced as the euro area's weak link, and the stress is French, not systemic.** OAT about 4.98% and OAT-Bund 156.1bp at midday on 2026-10-21 (above 159bp intraday, the widest in about 15 years), OAT-BTP 41.3bp, so BTP-Bund about 115bp. Bund 3.39% on 2026-10-23 (Bundesbank), down from 3.49% on 10-19. French 5y CDS about 81 to 87bp in early October, the highest since 2013. TPI has not been activated, and the Bank of France governor said on 10-07 that conditions do not justify intervention.
3. **Exit markets are thin and low.** Kalshi "vote to leave the EU before 2030": France last 7.5 (bid 2.1, ask 7.6, $9.7k), Hungary last 8.4 (bid 1, ask 7.7), Italy, Germany, Poland, Spain 1 to 6. "Referendum on leaving" by 2030: Hungary 4 to 11, France, Italy, Greece 1 to 8. No Polymarket market on Frexit, Italexit, Nexit or Polexit exists. UK rejoins the EU by 2032: 2 to 7, by 2035: 3 to 10, by 2040: 9 to 16 (all under $1k).
4. **Rates markets price an ECB that is tightening, not rescuing.** ECB deposit rate 2.50% since 2026-09-16 (hikes in June and September 2026). Polymarket: hold on 2026-10-29 at 97.85 ($656k event), a 25bp hike in December 75.5 ($38k). Euro-area inflation for 2026 above 3.1% at 89.5.
5. **FX: the euro is weak this year but not broken.** EUR/USD 1.1197, down 4.7% in 2026 after +12.9% in 2025, still 7.6% above end-2024. The 52-week high was 1.2018 on 2026-01-28. The yuan is the strongest it has been in the window at 6.67 per dollar (+4.7% against the dollar in 2026), so the euro is down 9.1% against the yuan this year. GBP/USD 1.3373, down 0.7% this year. DXY 101.8, up 3.6% in 2026.
6. **Equities: Europe's 2025 rally has partly reversed in 2026.** In dollars, 2025: Euro Stoxx 50 +34.4%, Stoxx 600 +32.5%, FTSE MIB +48.4%, S&P 500 +16.4%. 2026 to date: Euro Stoxx 50 -0.2%, Stoxx 600 +2.2%, DAX -2.0%, CAC 40 -9.0%, FTSE 100 +6.9%, S&P 500 +11.5%. France is the laggard in equities as in bonds.
7. **Valuation gap is normal.** Forward P/E S&P 500 19.3 vs Stoxx 600 14.3 (2026-10-20). Trailing premium 45% now vs a ten-year median of 40%. Europe is not priced for collapse.
8. **Money moved into Europe before it moved out.** European equity funds took in more than €60B in 2025 and about €15B in January and February 2026 (J.P. Morgan AM), while European-domiciled funds as a whole (not only equity) lost €18.7B in March as the Middle East war began (Morningstar). This is T0-type evidence that the "Europe fall" trade was not the consensus going into 2026.
9. **The UK is priced as an inflation and fiscal-premium story.** The 10y gilt is 5.33% (BoE, 2026-10-21), about 35bp above the 10y Treasury (4.99%). UK recession in 2026: Kalshi 13 to 14 ($83k), Polymarket 5 (thin). Next UK election winner (Kalshi): Labour 34 to 38, Reform 30 to 34, Conservative 21 to 25.
10. **Households are gloomier than markets.** Euro-area flash consumer confidence -17.9 in October (EU -17.3), down 1.1 points. ECB Consumer Expectations Survey (August wave): expected nominal income growth 1.0% vs expected inflation 3.0% (12 months), expected economic growth -1.2%, expected unemployment 11.0%. Spring 2026 Eurobarometer: about 29% expect their living standards to fall (France 44%, Portugal 39%, Germany and Austria 38%, Poland 9%, Hungary 8%). UK GfK -13 in September, and the index has not been positive for ten years.
11. **Households are saving, not fleeing.** Gross household saving rate, EU 14.1% (Q1 2026) vs 11.7% average in 2015 to 2019. France 17.4% vs 13.7%, Spain 11.0% vs 7.3%, Germany 19.0% vs 17.5%. Italy is the exception at 9.5% vs 10.8%.
12. **The "US downfall" trade peaked in January 2026.** EUR/USD (1.2018 on 01-28) and gold ($5,318 on 01-29) peaked within a day of each other. Since then the dollar is up, gold is down 7.6% for the year, the US 10y is up from 4.16% to 4.99%, and the S&P 500 is up 11.5%. Kalshi prices a US recession starting in 2026 at 3 to 4 ($3.7M) and in 2027 at 21 to 22 ($731k).
13. **Macro forecasts point to slow relative decline.** IMF DataMapper (current WEO vintage): 2026 growth euro area 1.1%, US 2.3%, UK 1.3%, China 4.5%. EU GDP per head at PPP vs the US: 57.1% (2000), 66.8% (2024), 66.1% (2026), 65.1% (2031). Germany falls from 92.0% (2019) to 80.1% (2031), France from 78.1% to 69.7%, Italy from 71.1% to 66.8%. The EU aggregate holds up because central and eastern Europe converge.
14. **Reserve share is drifting, not breaking.** COFER Q2 2026: dollar 56.70%, euro 20.60%, yuan 2.11% (R1 L5-01). Kalshi's Q2 market resolved "above 56.5" yes and "above 57.0" no, consistent. The long-run pace (about 0.6pp a year since 2001) reaches 50% around 2038, the faster 2016 to 2026 pace (about 0.9pp a year) around 2034 (both starting values from memory, labelled).
15. **China markets are calm.** Polymarket China 2026 growth 4% to 5%: 96.3 ($941k). Kalshi China overtakes US GDP by 2030: 21 ($134k), which looks far too high against the IMF projection of China at 70% of US nominal GDP in 2030 (resolution source not checked). No market on yuan reserve share, BRICS currency or China capital controls exists. BRICS adds a member in 2026: 8 to 11. A country leaves BRICS in 2026: 8.3.

## Say/Do gaps

| Actor | Says | Does | Gap |
|---|---|---|---|
| European households | About 29% expect to be poorer, confidence -17.9, growth expectation -1.2% | Save more (EU saving rate 14.1% vs 11.7%), and European fund buyers added more than €60B to European equities in 2025 | Fear shows up as precautionary saving, not as capital flight |
| X thread crowd (R4-3, T5) | "Europe will be dirt poor in 10 to 20 years" | Markets price a 35% US P/E premium (normal), EUR/USD above end-2024, Italy at 115bp | The crowd extrapolates a trend the market prices as slow relative decline, not collapse |
| ECB | Ready to counter "unwarranted" market dynamics (Lagarde, 2026-10-08) | Hikes into the French spread widening (2.50%), no TPI | Words keep the option open, actions put the burden on Paris |
| France (government) | Deficit to 5.0% of GDP in 2027 | 2026 deficit about 5.4%, budget enactment priced at 46 to 54% | Markets do not believe the path, hence the 157bp spread |
| Dollar bears | "Everyone is praying for US downfall" | DXY +3.6% in 2026, S&P +11.5%, US yields up | The trade peaked in January 2026 and reversed with the war and the Fed |

## Anomalies

1. **France pays more than Italy.** OAT-BTP about +41bp. The default move for a core country is to trade inside Italy. This happened in 2026 for the first time in the euro era by this size (T3). It tells you the market treats France's politics, not its debt level alone, as the risk.
2. **The Bund is not acting as a haven.** In 2011 and 2012 Bund yields fell as spreads widened (redenomination fear). Now the Bund is at 3.39% to 3.49%, up from about 2.6% at the start of 2025 [memory for the 2025 level], and Spain is at 64bp. A breakup bet would show the opposite pattern.
3. **The gilt yields more than the Treasury.** About +35bp. A "UK fall" thesis would read this as distress, but the GBP is near flat for the year, which points to an inflation and term premium, not to capital flight.
4. **Thin exit markets.** A $155M market on who runs France sits next to a $9.7k market on whether France leaves the EU. Traders do not think the second question is live.
5. **Kalshi's AfD market.** "AfD wins the next Bundestag election" trades at 81 to 83 but on only $13k. If a deep market confirmed it, it would be the biggest political signal in Europe. As it stands it is unreadable.

## Mechanism chains

1. **French spread crisis (H0, the main tail).** Budget fails or 49.3 is used (61 to 62 in R3E) and Moody's cuts (90 priced thin) -> spread to 175bp, then 200bp -> TPI is blocked by eligibility (EDP non-compliance) -> ECB says "fix your budget" -> Le Pen campaign gains (46 now) -> after a National Rally win, a budget clash with Brussels -> either a negotiated path plus OMT-style support with conditions (more likely) or a standoff with spreads above 250bp. Tests: OAT-Bund daily, French CDS above 100bp, Moody's on 2026-10-23, Polymarket Le Pen price, BTP-Bund staying under 150bp (contagion check).
2. **Slow relative decline (H1, the main path).** Growth gap of about 1.2 points a year (US 2.3% vs euro area 1.1%) plus higher energy costs -> EU GDP per head at PPP drifts from 66% toward 65% of the US by 2031 -> high saving rates and a valuation discount persist -> money stays home or goes to US assets, not to a new center. Tests: IMF WEO each April and October, Stoxx 600 forward P/E premium, EPFR flows.
3. **Reserve drift (H1 to H2).** Dollar share falls about 0.6 to 0.9pp a year -> mostly to "other" currencies and gold, not to the yuan (2.11%) -> dollar under 50% only in the 2030s at the earliest. Test: COFER quarterly.

## Tripwires (with dates)

| Date | Event | Line that matters |
|---|---|---|
| 2026-10-23 after close | Moody's France (Aa3 negative) | A cut to A1 or lower. Polymarket 90.5 by 10-31 (thin) |
| 2026-10-27 onward | French budget vote | Kalshi "enacted before 2027" 46 to 47 bid/ask, Polymarket 54 |
| 2026-10-29 | ECB meeting | Hold priced 97.85. Any TPI language or eligibility review |
| Daily | OAT-Bund spread | 175bp (ECB tweaks), 200bp (TPI test), desk lines from Round 0 |
| Daily | BTP-Bund spread | Above 150bp means contagion from France to Italy |
| Mid-December 2026 | ECB meeting | Hike priced 75.5 |
| Late December 2026 | COFER Q3 2026 | Dollar under 56.5% |
| 2026-12-31 | Lecornu out (23.5), French snap election called (Kalshi 2 to 10, Polymarket 5.5) | Either resolving yes raises the H0 spread-crisis odds |
| April and May 2027 | French presidential election | National Rally win (47 now) |

## Open questions

- No market on TPI use, a member leaving the euro, the dollar reserve share beyond the next quarter, yuan reserve share or China capital controls. The desk's numbers on those rest on base rates and earlier lanes.
- French and Italian CDS for 2026-10-23 were not available from a primary source. The early-October French figures come from a news aggregator.
- Euro-area October flash PMIs and the October GfK UK reading were not checked.
- The IMF DataMapper vintage (April or October 2026 WEO) was not confirmed on the page. The 2026 Gulf contractions suggest it is the October 2026 vintage.
- World Bank API lists Argentina as upper-middle income although its 2025 Atlas GNI per head ($14,650) is above the FY27 line ($14,375). The classification and the data may be on different vintages.

## Data tables

### Table 1. Prediction markets on Round 4 questions (2026-10-23, 19:00 to 19:08 UTC)

| # | Event | Venue | Implied % | Volume | Desk or R4E view | Gap | Rule ($1M, 15pt) | Thin? |
|---|---|---|---|---|---|---|---|---|
| M1 | Le Pen wins 2027 French presidency | Polymarket | 46.15 (bid 46.1, ask 46.2) | Event $155.7M, Le Pen $4.35M | 45 | -1 | Within 15 | No |
| M2 | National Rally wins (Le Pen or Bardella) | Polymarket | About 47 | Same event | 46 | -1 | Within 15 | No |
| M3 | Le Pen reaches the runoff | Polymarket, Kalshi | 90, Kalshi 87 to 91 | $427k event, Kalshi $720 | 88 | -2 | n/a | Kalshi yes |
| M4 | French snap legislative election called by 2026-12-31 | Polymarket, Kalshi KXSNAPELECTIONFR | 5.5, Kalshi 2 to 10 (last 11) | Event $1.1M, this leg $16k. Kalshi $6k | 8 | +2.5 | Leg under $1M | Yes |
| M5 | Lecornu out as PM by 2026-12-31 | Polymarket | 23.5 | Event $367k | 25 (R3E) | +1.5 | n/a | No |
| M6 | France enacts 2027 budget before 2027 | Kalshi, Polymarket | 46 to 47, Polymarket 54 | $3.7k, $19.6k | 50 | 0 | n/a | Yes |
| M7 | Moody's or S&P downgrades France by 10-31 | Polymarket | 90.5 | $10.2k | 70 (R3E) | -20 | Under $1M | Yes |
| M8 | France votes to leave the EU before 2030 | Kalshi KXEUEXITCOUNTRY | Last 7.5, bid 2.1, ask 7.6 | $9.7k | 1.5 | -3 to -6 | n/a | Yes |
| M9 | Hungary, Italy, Germany, Poland, Spain vote to leave before 2030 | Kalshi | Bids 1, asks 4 to 8 | $1.4k to $4.6k each | Under 1 each | n/a | n/a | Yes |
| M10 | Referendum on leaving the EU by 2030 (HU, FR, IT, GR) | Kalshi KXEUREF | 1 to 11 | Under $2k each | Hungary 3, others 1 to 2 | n/a | n/a | Yes |
| M11 | UK joins the EU by 2032, 2035, 2040 | Kalshi KXEUUK | 2 to 7, 3 to 10, 9 to 16 | Under $1k | 2, 4, 10 | n/a | n/a | Yes |
| M12 | ECB holds on 2026-10-29 | Polymarket | 97.85 | $656k | Agree | 0 | n/a | No |
| M13 | ECB hikes 25bp in December 2026 | Polymarket | 75.5 | $38k | Agree in direction | n/a | n/a | Yes |
| M14 | Euro-area 2026 growth 0% to 1% / 1% to 2% / below 0 | Polymarket | 46 / 47 / 1.85 | $58.5k | IMF 1.1% | n/a | n/a | Partly |
| M15 | Euro-area 2026 inflation above 3.1% | Polymarket | 89.5 | $120k | Agree | n/a | n/a | No |
| M16 | EUR/USD touches 1.20 / 1.10 / 1.05 in 2026 | Polymarket | 13.5 / 46 / 7 | $98k event | Agree | n/a | n/a | Partly |
| M17 | GBP/USD touches 1.25 / 1.30 in 2026 | Polymarket | 33 / 43 (wide spreads) | $62k event | No view | n/a | n/a | Yes |
| M18 | US recession starting 2026 | Kalshi KXRECSSNBER-26, Polymarket | 3 to 4, Polymarket 7.5 | $3.72M, $2.34M | 4 | 0 | Within 15 | No |
| M19 | US recession in 2027 | Kalshi KXRECSSNBER-27, Polymarket | 21 to 22, Polymarket 35 | $731k, $11.8k | 22 (R3E) | 0 | n/a | Polymarket yes |
| M20 | UK recession in 2026 | Kalshi WRECSS-26-UK, Polymarket | 13 to 14, Polymarket 5 | $83k, $16k | 8 | n/a | n/a | Partly |
| M21 | China 2026 growth 4% to 5% | Polymarket | 96.3 | $941k | Agree (IMF 4.5%) | 0 | n/a | No |
| M22 | China overtakes US GDP by 2030 | Kalshi CHINAUSGDP-30 | 19 to 21 | $134k | 3 | -18 | Under $1M | No |
| M23 | Another US sovereign downgrade before 2027 | Polymarket | 10 (bid 4, ask 16) | $13.9k | 8 | n/a | n/a | Yes |
| M24 | US defaults by end 2027 / 2028 | Kalshi KXDEFAULT | 5 to 6 / 3 to 11 | Under $5k | Under 1 | n/a | n/a | Yes |
| M25 | Dollar share of reserves Q2 2026 above 56.5 / 57.0 | Kalshi KXUSDRESERVE (settled) | Yes / No | Under $200 | COFER 56.70 | Agree | n/a | Yes |
| M26 | BRICS adds a member in 2026 / a country leaves BRICS | Polymarket, Kalshi | 11, Kalshi 8 to 10 / 8.3 | $38k, $8.7k / $78k | No view | n/a | n/a | Partly |
| M27 | Merz out as Chancellor by 2026-12-31 / 2027-12-31 | Polymarket | 7.5 / 40.5 | Event $2.98M (Dec 2026 leg $2.35M) | No view | n/a | No desk number | No |
| M28 | AfD wins next Bundestag election | Kalshi KXGERELECTION | 81 to 83 | $13k | No view, unreadable | n/a | n/a | Yes |
| M29 | Meloni out by 2026-12-31 / next Italian PM is Meloni | Polymarket | 4 / 52.5 | $176k / $96k | No view | n/a | n/a | No |
| M30 | Russia military action against an EU country by 2026-12-31 / 2027-12-31 | Polymarket | 10.5 / 25 | Event $288k | No view | n/a | n/a | No |
| M31 | Not found on either venue | Frexit, Italexit, Nexit, Polexit, eurozone exit, euro-area recession, dollar reserve share beyond Q2 2026, yuan reserve share, BRICS currency, China capital controls, Europe vs US growth | n/a | n/a | n/a | n/a | n/a | n/a |

Rule check: the markets above $1M are M1 and M2 (France 2027), M4 at event level (but its relevant leg is $16k), M18 (US recession 2026), and M27 (Merz). None differs from the desk or R4E by more than 15 points. The two gaps above 15 points are M7 (France downgrade, $10k) and M22 (China overtakes US by 2030, $134k), both below $1M, so no written reason is required. Reasons are given anyway: M7, Moody's has held through earlier French crises and S&P and Fitch already sit at A+, so a one-notch cut is likely but not 90% likely (scores on 2026-10-23). M22, China would need its dollar GDP to rise about 43% relative to the US in four years (IMF puts it at 70% of US GDP in 2030), which needs a yuan revaluation of a size no forecaster projects.

### Table 2. Financial-market pricing

| Item | Level | Date | Change | Source (tier) |
|---|---|---|---|---|
| EUR/USD | 1.1197 | 2026-10-23 | 2025 +12.9%, 2026 -4.7%, 52w high 1.2018 (01-28), low 1.1160 (10-12) | Yahoo (T3) |
| GBP/USD | 1.3373 | 2026-10-23 | 2025 +7.3%, 2026 -0.7% | Yahoo (T3) |
| USD/CNY | 6.6697 | 2026-10-23 | 2025 -4.1%, 2026 -4.7% (yuan stronger) | Yahoo (T3) |
| EUR/CNY | 7.4696 | 2026-10-23 | 2026 -9.1% | Yahoo (T3) |
| DXY | 101.80 | 2026-10-23 | 2025 -9.4%, 2026 +3.6% | Yahoo (T3) |
| Bund 10y | 3.39% | 2026-10-23 | 3.49% on 10-19 | Bundesbank BBSIS (T3, official) |
| OAT 10y | about 4.98% | 2026-10-21 midday | First time near 5% since 2002 | ANSA via Soldionline (T3 via T4) |
| OAT-Bund | 156.1bp (above 159bp intraday) | 2026-10-21 | 87bp on 09-10 (R0), about 55bp in February | Soldionline, R0 (T3 via T4) |
| BTP 10y and BTP-Bund | about 4.57%, about 115bp | 2026-10-21 (derived: 156.1 - 41.3) | 78 to 82bp in August | Soldionline, QuiFinanza (T3 via T4) |
| OAT-BTP | +41.3bp | 2026-10-21 | France above Italy | Soldionline (T3 via T4) |
| Spain-Bund | 64bp | 2026-10-06 | n/a | QuiFinanza (T3 via T4) |
| Gilt 10y | 5.33% | 2026-10-21 | 5.31% on 10-15 | Bank of England IADB IUDMNPY (T3, official) |
| US 10y | 4.99% | 2026-10-23 | 4.16% at end 2025 | Yahoo ^TNX (T3) |
| France 5y CDS | about 81 to 87bp | early October 2026 | above 45bp in late September | roic.ai citing LSEG and S&P Global (T4) |
| Italy 5y CDS | not found | n/a | n/a | n/a |
| ECB deposit rate | 2.50% | since 2026-09-16 | 2.00% to 2.25% (06-17) to 2.50% | ECB Data Portal (T1) |
| Euro Stoxx 50 | 6,068 | 2026-10-23 | 2025 +19.0% local, +34.4% USD. 2026 +4.7% local, -0.2% USD | Yahoo (T3) |
| Stoxx 600 | 635.8 | 2026-10-23 | 2025 +17.4% local, +32.5% USD. 2026 +7.3% local, +2.2% USD | Yahoo (T3) |
| S&P 500 | 7,629 | 2026-10-23 intraday | 2025 +16.4%, 2026 +11.5% | Yahoo (T3) |
| CAC 40 / DAX / FTSE MIB / FTSE 100 (2026, USD) | -9.0% / -2.0% / +3.0% / +6.9% | 2026-10-23 | 2025 USD: +24.6% / +38.9% / +48.4% / +30.4% | Yahoo (T3) |
| Forward P/E S&P 500 vs Stoxx 600 | 19.3 vs 14.3 | 2026-10-20 | US premium 35%. Trailing 25.8 vs 17.8 (45%), ten-year medians 24.2 vs 17.3 (40%) | Midgard Finance (T4) |
| European equity fund flows | +€60B in 2025, +€15B Jan and Feb 2026, -€18.7B in March 2026 for all European funds, not equity only | 2026 | n/a | J.P. Morgan AM, Morningstar (T4 on T0 data) |
| Gold | $4,010.5 | 2026-10-23 | 2025 +64.4%, 2026 -7.6%, high $5,318 (01-29) | Yahoo GC=F (T3) |
| MOVE | 102.7 | 2026-10-23 | 64.0 at end 2025 | Yahoo (T3) |

What these say about an EU or UK "fall": (1) a France-specific fiscal and political premium, the largest since 2012, (2) no redenomination pattern (Bund up, Italy and Spain contained), (3) a normal Europe valuation discount, (4) a weak euro against the dollar and especially the yuan in 2026, after a strong 2025, (5) a UK term premium (gilt above Treasury) without currency flight. Net: markets price relative decline and a French tail, not a fall.

### Table 3. Retail and survey expectations

| Measure | Value | Date | Source (tier) |
|---|---|---|---|
| Euro-area flash consumer confidence | -17.9 (EU -17.3), down 1.1 | October 2026 (released 2026-10-22) | European Commission DG ECFIN (T1) |
| Economic Sentiment Indicator | 97.9 (EU and euro area) | September 2026 | DG ECFIN (T1) |
| ECB CES: income growth expected / inflation expected (12m) | 1.0% / 3.0%, so about -2% real | August 2026 (released 2026-09-18) | ECB (T1) |
| ECB CES: economic growth expected (12m) / unemployment expected | -1.2% / 11.0% | August 2026 | ECB (T1) |
| Eurobarometer: expect living standards to fall | about 29% (France 44, Portugal 39, Germany and Austria 38, Poland 9, Hungary 8). 47% name rising prices the main concern | Spring 2026 (released 2026-07-01) | Eurobarometer via press (T1 via T4) |
| Household gross saving rate | EU 14.1% (Q1 2026) vs 11.7% in 2015 to 2019. FR 17.4 vs 13.7. ES 11.0 vs 7.3. DE 19.0 vs 17.5. IT 9.5 vs 10.8 | Q1 and Q2 2026 | Eurostat nasq_10_ki (T0) |
| UK GfK consumer confidence | -13 (best since August 2024), low of -25 in April | September 2026 | GfK via Trading Economics (T4) |

### Table 4. Base rates

| Question | Base rate | Source (tier) |
|---|---|---|
| Currency union exits | About 69 exits since 1946, about one a year, mostly post-colonial unions. Leavers tend to be larger, richer and more democratic. Typically no sharp macro moves around exit | Rose (2007), CEPR DP6254 and VoxEU (T4) |
| Euro exits | Zero in about 456 member-years (21 members by 2026). Rule-of-three upper bound 0.66% per member-year | Computed (r4e_calc.py) |
| EU exits | One (UK, 2020) in about 1,050 member-years (Greenland 1985 was a territory). A naive rate gives 6% (H0), 16% (H1), 32% (H2) for any exit | Computed (r4e_calc.py) |
| Falls from World Bank high income, FY89 to FY25 | 25 cases, almost all small or borderline: Argentina (FY17, FY20), Venezuela (FY17), Russia (FY17, now high again), Korea (FY00, Asian crisis, high again), Hungary (FY14), Croatia (FY18), Latvia (FY12), Romania and Panama (FY22), small islands and territories. Never: Greece, Portugal, Spain, Italy during the euro crisis | World Bank OGHIST.xlsx (T1) |
| Peacetime rich-to-middle cases | Argentina (rich in 1900 to 1930s, never back) and Venezuela (richest in Latin America in the 1970s) are the cases. Both had commodity dependence, high inflation and broken institutions [memory, Maddison Project for the long series]. Greece lost about a quarter of GDP in 2008 to 2013 and stayed high income [memory for the size] | T4 |
| Reserve-currency handovers | The US overtook the UK in output around the 1870s [memory], the dollar first overtook sterling in reserves in the mid-1920s, and dominance was settled only after 1945. Roughly 50 years from economic to monetary leadership | Eichengreen and Flandreau, NBER w14154 (T4) |
| Dollar share drift | About 71.5% (2001, memory) to 56.70% (Q2 2026). Pace 0.6 to 0.9pp a year, so 50% around 2034 to 2038 | COFER via R1 L5, r4e_calc.py |
| Headroom over high-income line ($14,375, FY27) | Germany 4.2x, France 3.4x, Italy 2.9x, Spain 2.6x, Netherlands 4.8x, Poland 1.8x. Italy needs a 66% relative fall, Poland 44% | World Bank API GNI Atlas 2025 (T1) |

## Probability table (R4E proposal)

Each cell is the probability that the event happens within that window (H0: 2026-10 to 2028-12, H1: 2029 to 2035, H2: 2036 to 2050), except the reserve-share rows, which are the probability that the reading at the end of the window is past the line, and the last row, which is the probability that the ratio is lower at the end of the window than at its start.

| Event | H0 | H1 | H2 | Reasoning and market evidence |
|---|---|---|---|---|
| Dollar share of allocated reserves below 50% (COFER, end of window) | 1 | 20 | 45 | 56.70% now. Needs 6.7pp. The 2.2 years of H0 would need three times the fastest recent pace. The trend reaches 50% around 2034 to 2038, but dollar rallies raise the share (2026 DXY +3.6%). The only market (Kalshi quarterly) is tiny and agreed with COFER |
| Yuan above 10% of reserves (end of window) | 0.5 | 2 | 8 | Kept from R3 WIF 3.6 (1 by 2030, 2 by 2035, 8 by 2050). Yuan 2.11% now. A strong yuan (6.67) has not lifted its reserve use. No market |
| China full capital-account convertibility (in window) | 1 | 7 | 20 | WIF: 3 by 2030, 8 by 2035, 25 by 2050, re-split by window. Opening is likelier in a strong-yuan year and the yuan is at its strongest in this sample, which keeps H1 near WIF. No market |
| Euro-area sovereign crisis with ECB emergency action (TPI activation or a country-targeted purchase program, in window) | 25 | 35 | 50 | ECB emergency sovereign actions came in 2010, 2011, 2012, 2020 and 2022 (about one every three years [memory for dates]). Now: OAT-Bund near 157bp, Moody's today, budget 46 to 54%, Le Pen 46% ($155.7M). Against: ECB hiking and refusing, Italy and Spain contained, TPI eligibility blocks a quick rescue (which delays action rather than prevents a crisis) |
| A member leaves the euro (in window) | 0.5 | 2 | 5 | Zero exits in 456 member-years. No legal exit route without leaving the EU. The National Rally dropped euro exit from its program in 2019 [memory]. Kalshi France "vote to leave EU before 2030" bid 2.1, ask 7.6 on $9.7k |
| A member leaves the EU (Article 50 notice, in window) | 1 | 5 | 10 | Naive base rate is higher (6/16/32) but the UK was an outlier (own currency, opt-outs, never in the euro), and euro members face the redenomination cost too. Exit markets are thin at 1 to 8. Hungary's leave odds look stale given the Orbán arrest market (25 by year-end) |
| A large EU economy (DE, FR, IT, ES, NL, PL) falls below the high-income line (in window) | 0.5 | 1 | 3 | No established high-income country of this size has fallen in the World Bank record. Italy would need a 66% relative fall, Poland 44%. Greece's depression did not do it. H2 allows for a war or a disorderly euro exit |
| EU GDP per head at PPP falls relative to the US over the window | 70 | 65 | 55 | IMF: 66.8% (2024) to 66.1% (2026) to 65.1% (2031). Growth gap about 1.2 points a year. Central and eastern Europe convergence and US fiscal and demographic drags pull H2 toward even. Market evidence: S&P 500 beat Europe by about 11 points in dollars in 2026, the US P/E premium is at its median, not compressing |

Not in the table but used above: France elects a National Rally president in 2027, R4E 46 (market 47). US recession starting in 2027, 22 (Kalshi 21 to 22).

## Claims

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R4E-01 | Polymarket prices Le Pen winning the 2027 French presidency at 46.15% on an event with $155.7M traded, about 47% for any National Rally candidate | T3 | Confirmed (as a price) | https://polymarket.com/event/next-french-presidential-election | 2026-10-23 | 2026-10-23 | Price moves above 60 or below 30 |
| R4E-02 | No Polymarket market exists on Frexit, Italexit, Nexit, Polexit or a eurozone exit, and Kalshi's EU-exit markets trade under $10k each at 1% to 8% | T3 | Confirmed | https://api.elections.kalshi.com/trade-api/v2/markets?series_ticker=KXEUEXITCOUNTRY | 2026-10-23 | 2026-10-23 | A listed exit market above $1M |
| R4E-03 | OAT-Bund was 156.1bp at midday on 2026-10-21 (above 159bp intraday), with the OAT near 5% for the first time since 2002 | T3 | Confirmed (press data) | https://www.soldionline.it/?p=178460 | 2026-10-21 | 2026-10-21 | Primary data show a spread under 140bp that day |
| R4E-04 | France paid about 41bp more than Italy on 10y debt on 2026-10-21, implying BTP-Bund about 115bp | T3 | Confirmed (press data, derived) | https://www.soldionline.it/?p=178460 | 2026-10-21 | 2026-10-21 | OAT-BTP negative on primary data |
| R4E-05 | The 10y Bund yield was 3.39% on 2026-10-23, down from 3.49% on 10-19, so the Bund is not acting as a falling-yield haven | T3 | Confirmed | https://api.statistiken.bundesbank.de/rest/data/BBSIS/D.I.ZST.ZI.EUR.S1311.B.A604.R10XX.R.A.A._Z._Z.A | 2026-10-23 | 2026-10-23 | Bund below 3.0% while OAT-Bund widens above 200bp |
| R4E-06 | The ECB deposit rate is 2.50% since 2026-09-16 after hikes in June and September 2026 | T1 | Confirmed | https://data-api.ecb.europa.eu/service/data/FM/B.U2.EUR.4F.KR.DFR.LEV | 2026-10-23 | 2026-10-23 | ECB cut or TPI activation |
| R4E-07 | Markets price an ECB hold on 2026-10-29 at 97.85% and a December hike at 75.5% | T3 | Confirmed (as prices) | https://polymarket.com/event/ecb-interest-rates-october-2026-20260723225848778 | 2026-10-23 | 2026-10-23 | ECB decision |
| R4E-08 | TPI has not been activated for France, and the Bank of France governor said on 2026-10-07 that conditions do not justify intervention | T2 | Confirmed | https://www.roic.ai/news/ecb-reluctant-to-intervene-as-french-bond-risks-mount-10-08-2026 | 2026-10-08 | 2026-10-23 | TPI activation |
| R4E-09 | French 5y CDS reached about 81 to 87bp in early October 2026, the highest since 2013 | T3 via T4 | Plausible | https://www.roic.ai/news/french-sovereign-risk-premium-spikes-as-five-year-cds-hits-81-basis-points-10-02-2026 | 2026-10-02 | 2026-10-02 | Primary CDS data below 60bp |
| R4E-10 | EUR/USD is 1.1197, down 4.7% in 2026 after +12.9% in 2025, still 7.6% above end-2024 | T3 | Confirmed | https://query1.finance.yahoo.com/v8/finance/chart/EURUSD=X | 2026-10-23 | 2026-10-23 | EUR/USD below 1.04 |
| R4E-11 | The yuan is at its strongest in the sample at 6.67 per dollar, and the euro is down 9.1% against it in 2026 | T3 | Confirmed | https://query1.finance.yahoo.com/v8/finance/chart/CNY=X | 2026-10-23 | 2026-10-23 | USD/CNY above 7.0 |
| R4E-12 | In dollars, the Euro Stoxx 50 returned +34.4% in 2025 vs +16.4% for the S&P 500, and -0.2% vs +11.5% in 2026 to date (price returns) | T3 | Confirmed | https://query1.finance.yahoo.com/v8/finance/chart/%5ESTOXX50E | 2026-10-23 | 2026-10-23 | Index data revisions |
| R4E-13 | Stoxx 600 forward P/E 14.3 vs S&P 500 19.3 (2026-10-20). The trailing US premium of 45% is near its ten-year median of 40% | T4 | Plausible | https://www.midgardfinance.com/eu-us-pe/ | 2026-10-20 | 2026-10-20 | Premium above 60% or below 20% |
| R4E-14 | European equity funds took in more than €60B in 2025 and about €15B in January and February 2026 | T4 on T0 | Plausible | https://am.jpmorgan.com/dk/en/asset-management/adv/insights/portfolio-insights/equity/chart-of-the-month-march-2026/ | 2026-03 | 2026-02-28 | EPFR data showing net 2025 outflows |
| R4E-15 | The 10y gilt yielded 5.33% on 2026-10-21, about 35bp above the 10y Treasury | T3 | Confirmed | https://www.bankofengland.co.uk/boeapps/database/ (IUDMNPY) | 2026-10-21 | 2026-10-21 | Gilt below Treasury |
| R4E-16 | Euro-area flash consumer confidence fell to -17.9 in October 2026 (EU -17.3) | T1 | Confirmed | https://economy-finance.ec.europa.eu/economic-forecast-and-surveys/business-and-consumer-surveys/latest-business-and-consumer-surveys_en | 2026-10-22 | 2026-10 | Final October figure revised above -16 |
| R4E-17 | In the ECB's August survey, households expected 1.0% nominal income growth against 3.0% inflation and -1.2% economic growth over 12 months | T1 | Confirmed | https://www.ecb.europa.eu/press/pr/date/2026/html/ecb.pr260918~295b3ab978.en.html | 2026-09-18 | 2026-08 | Later waves with income expectations above inflation expectations |
| R4E-18 | About 29% of Europeans expect their living standards to fall (France 44%, Poland 9%) | T1 via T4 | Plausible | https://www.theportugalnews.com/news/2026-07-01/cost-of-living-remains-europeans-biggest-concern/1048499 | 2026-07-01 | Spring 2026 | Eurobarometer report shows different figures |
| R4E-19 | The EU household saving rate is 14.1% (Q1 2026), 2.4 points above its 2015 to 2019 average, with France 3.7 points above | T0 | Confirmed | https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/nasq_10_ki | 2026-10-23 | 2026-Q1 | Saving rate back to 12% |
| R4E-20 | Dollar share of allocated reserves was 56.70% in Q2 2026, and Kalshi's market settled consistent with it | T0 | Confirmed | https://coferdata.com/ (R1 L5-01), Kalshi KXUSDRESERVE-26SEP29 | 2026-09-30 | 2026-06-30 | IMF revision |
| R4E-21 | At 0.6 to 0.9pp a year, the dollar share reaches 50% around 2034 to 2038, so below 50% by end 2028 is about 1% | Model (T0 inputs, memory start values) | Speculative | r4e_calc.py | 2026-10-23 | 2026-10-23 | Two quarters with a combined fall above 2pp |
| R4E-22 | About 69 countries or territories left currency unions from 1946 to about 2005, roughly one a year, mostly small post-colonial unions | T4 | Confirmed | https://cepr.org/publications/dp6254 | 2007 | 2005 | n/a |
| R4E-23 | No euro member has left in about 456 member-years, and Greece, Portugal, Spain and Italy never lost World Bank high-income status during the euro crisis | T1 | Confirmed | https://datacatalogfiles.worldbank.org/ddh-published/0037712/DR0090754/OGHIST.xlsx | FY25 file | FY25 | A reclassification of any of them |
| R4E-24 | Every World Bank fall from high income since FY89 was a small, newly high or borderline economy (25 cases including Argentina, Venezuela, Russia, Korea, Hungary) | T1 | Confirmed | https://datacatalogfiles.worldbank.org/ddh-published/0037712/DR0090754/OGHIST.xlsx | FY25 file | FY25 | n/a |
| R4E-25 | Italy's 2025 GNI per head ($42,080) is 2.9 times the FY27 high-income line ($14,375), so falling below it needs a 66% relative collapse | T1 | Confirmed | https://api.worldbank.org/v2/country/ITA/indicator/NY.GNP.PCAP.CD | 2026-10-08 | 2025 | Large data revision |
| R4E-26 | The dollar first overtook sterling in central bank reserves in the mid-1920s, decades after the US economy overtook Britain's | T4 | Confirmed | https://www.nber.org/papers/w14154 | 2008 | n/a | n/a |
| R4E-27 | IMF projects EU GDP per head at PPP falling from 66.8% of the US (2024) to 65.1% (2031), with Germany falling from 92.0% (2019) to 80.1% | T2 (IMF projection) | Plausible | https://www.imf.org/external/datamapper/api/v1/PPPPC | 2026-10 | 2026-10-23 | Next WEO shows the ratio rising |
| R4E-28 | IMF projects 2026 growth of 1.1% for the euro area vs 2.3% for the US and 4.5% for China | T2 | Confirmed (as forecast) | https://www.imf.org/external/datamapper/api/v1/NGDP_RPCH | 2026-10 | 2026-10-23 | Outturn |
| R4E-29 | Kalshi prices a US recession starting in 2026 at 3 to 4% ($3.7M) and in 2027 at 21 to 22% ($731k) | T3 | Confirmed (as prices) | https://api.elections.kalshi.com/trade-api/v2/markets?series_ticker=KXRECSSNBER | 2026-10-23 | 2026-10-23 | NBER dating |
| R4E-30 | The EUR/USD high (1.2018, 01-28) and gold high ($5,318, 01-29) came within a day, so the "US downfall" trade peaked in January 2026 | T3 | Confirmed (prices), inference on meaning | https://query1.finance.yahoo.com/v8/finance/chart/GC=F | 2026-10-23 | 2026-10-23 | New highs in both before mid-2027 |
| R4E-31 | Kalshi's "China overtakes US GDP by 2030" at about 21% ($134k) is far above the IMF path (China at 70% of US nominal GDP in 2030) | T3 vs T2 | Plausible | https://api.elections.kalshi.com/trade-api/v2/markets?series_ticker=KXCHINAUSGDP | 2026-10-23 | 2026-10-23 | Resolution uses PPP, or a large yuan revaluation |
| R4E-32 | No market above $1M on a Round 4 question differs from the desk or R4E by more than 15 points | T3 vs judgment | Plausible | Table 1 | 2026-10-23 | 2026-10-23 | Le Pen above 61 or below 31 with desk unchanged |

## Proposed changes

Scenario odds (S1 dollar extension, S2 neutral layer, S3 energy or compute, S4 disorderly reset).

- **H0: keep 62/15/1/22.** Markets confirm the desk's H0 S4 story (oil-shock inflation with the euro periphery as the weak link), and the weak link is now clearly France, not Italy. They do not support raising S4: the Bund is not a haven, Italy and Spain are contained, the dollar and US equities are firm, and the US recession odds for 2026 are 3 to 4. Add a conditional: if OAT-Bund closes above 200bp for five sessions with BTP-Bund above 150bp, or a National Rally president is elected and Brussels opens a budget clash, move 3 points from S1 to S4 in H0.
- **H1: keep 44/23/3/30.** The "US downfall" trade (weak dollar, gold up) peaked in January 2026 and reversed. Gold down 7.6% in 2026 is a small argument for S2 drifting lower, but central bank buying (the desk's S2 test) is a tonnage question that markets do not price.
- **H2: keep 31/28/10/31.** A dollar share below 50% by 2050 at 45 is consistent with S1 at 31, because a sub-50 dollar can still be the largest currency.
- **New desk numbers to adopt** (from the probability table): euro-area emergency ECB action 25/35/50, member leaving the euro 0.5/2/5, member leaving the EU 1/5/10, large EU economy below high income 0.5/1/3, EU PPP income per head falling vs the US 70/65/55, dollar share below 50% 1/20/45, yuan above 10% 0.5/2/8, China full convertibility 1/7/20, National Rally wins the 2027 French presidency 46.
- **Scoring ledger additions:** Moody's France (2026-10-23, market 90.5, R3E 70), ECB 2026-10-29 hold (97.85), French budget enacted by 2027 (50), Lecornu out by year-end (25), snap election called by year-end (8), US recession 2026 (4), French presidency (46, May 2027), COFER Q3 dollar share below 56.5 (R4E 40, late December 2026).
