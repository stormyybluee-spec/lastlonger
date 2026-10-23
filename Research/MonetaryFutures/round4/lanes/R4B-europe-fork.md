# R4B: Europe's fork. Is the EU heading for a fall, and would a breakaway do better?

Lane R4B, Round 4. Facts as of 2026-10-23. Question R4-2.
Scripts and raw pulls: /tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts (imf_table.py, compare.py, yahoo.py, eurostat.py, models.py) and the data folder next to it.
Primary pulls used: IMF WEO October 2026 (DataMapper API, vintage matches the 13 October release: euro area 1.1%, Germany 1.3%, France 0.4% for 2026), World Bank WDI API, Eurostat API (industry, COFOG, saving rate, HICP, population projections), ECB Data Portal (policy rate, 10y yields, EUR/USD), Yahoo Finance chart API (indices, FX), Polymarket Gamma API.

---

## 1. Answers

### R4-2a. Is the EU heading for a fall?
Not a fall, a slow slide with one sharp edge. Measured in purchasing power, EU GDP per head was 73% of the US in 2000 and 72% in 2025 (World Bank, constant 2021 PPP), so the EU as a whole has held its place because the East converged fast (Poland went from 34% to 61% of the US). The western core did slide: euro area 81% to 74%, Italy 91% to 70%, France 83% to 72%, Germany 91% to 82%, and output per worker fell from 88% to 76% of the US for the EU. Germany's industrial output is 15.5% below its 2017 level, chemicals 24% below and cars 28% below (Eurostat, August 2026). The sharp edge is France: its 10y yield reached 5.05% today, 171.8bp over the Bund, above Italy and Greece in the September averages, while the ECB is hiking into 3.8% inflation and the 2027 presidential favourite on Polymarket is Marine Le Pen at 46%. Absolute impoverishment is not on the table: no big EU economy can fall to World Bank middle income by 2045 without a collapse about twice as deep as Greece's.
- Status: relative decline Confirmed (T1 data). Absolute fall Refuted as a base case. French-led stress Plausible.
- Confidence 75. Horizon: H0 for France, H1 to H2 for the slide.
- Three views. Governance: the problem is the core (France, Italy, Germany), not the Union, and the binding constraint is energy prices and a fiscal arithmetic in which old-age spending (10.6% of GDP) already exceeds the entire public payroll (10.2%). Business: Europe is a high-income, slow-growth, high-energy-cost market, good for consumption and defence suppliers, bad for energy-intensive production and AI compute. Ordinary person: living standards are not collapsing, but wages in the western core will keep losing ground to the US, and French savers face higher rates and possible tax rises.

### R4-2b. What would "fall" mean, and how likely is each version?
"Fall" covers at least six different events, and they have very different odds (table 3.6). Slow relative decline is the base case (about 65 to 70% at every horizon). A euro-area sovereign crisis led by France is the real tail risk, about 15% by 2028 and 28% by 2035. A member leaving the EU (1% by 2028, 5% by 2035) or the euro (1%, 3%) is unlikely because the costs are visible (Brexit, Greece) and euro support sits near its record (83% in 2025). A breakup of the euro is 2% by 2035. "Dirt poor" is effectively zero and "middle income" for a large member is about 1% by 2050. The World Bank FY2027 line for high income is gross national income per head above $14,375 (Atlas method). Italy is at $42,080, about 2.9 times the line, and would need to lose about 5.2% a year against the line for twenty years. Only Bulgaria (1.24 times) and Romania (1.40 times) are close enough to slip back in a bad currency shock.
- Status: probabilities are judgment (model inputs shown). Middle-income test Confirmed as arithmetic.
- Confidence 65. Horizon H0 to H2.
- Three views. Governance: plan for a 2027 French stress test, not a European collapse. Business: the hedge that matters is French and Italian spread risk, not euro breakup. Ordinary person: the realistic bad case is a recession and higher borrowing costs in 2027 to 2028, not your euros turning into lira.

### R4-2c. Would one or several states that break away stand a better chance?
On the evidence, no for leaving the EU and mostly no for leaving the euro, but yes for countries that never joined the euro. Brexit cost the UK about 6 to 8% of GDP per head by 2025 (NBER working paper 34459, built with the Bank of England's Decision Maker Panel), 4% of long-run productivity (OBR assumption), and 5 to 6% of GDP by 2035 (NIESR). The UK has grown 13.5% from 2016 to 2026 against 18.1% for the EU, though roughly level with the euro area (14.6%), so it did not escape the European slide either. Switzerland and Norway are rich, but they are inside the single market by treaty (Swiss bilaterals, Norway's EEA) and Switzerland is now ratifying a deeper package. Non-euro members did well (Poland converged from 49% to 88% of the EU average since 2004), but euro adopters did about as well (Lithuania went from 51% to 89%), so the currency regime is not the driver. Leaving the euro now would mean a bank run and capital controls (Greece lost about €41bn of deposits before July 2015 and kept controls until 2019), and our model shows a redenominated Italian debt ends higher than the euro path within six to seven years. The best position on the evidence is Poland's or Sweden's: in the EU, outside the euro, joined from strength.
- Status: Plausible (strong T1 and T4 evidence, counterfactuals are models).
- Confidence 70. Horizon H1 to H2.
- Three views. Governance: exit is a cost a country pays up front for a gain that never showed up in the UK data. Business: the single market, not the euro, is what firms lose on exit, and they lose it at once. Ordinary person: the people who pay for an exit are depositors and wage earners in the first two years.

### R4-2d. Markets and retail: more or less pessimistic than the X thread?
Markets are less pessimistic about Europe as a whole and more specific about France. European equities beat the US in 2025 by a wide margin (STOXX 600 +32.5% in dollars against the S&P 500 at +16.4%), and in 2026 they lag (STOXX +2.2% in dollars year to date, S&P +11.5%), with the French CAC 40 down 4.5% this year. EUR/USD is 1.12, up from 1.04 at end 2024 but down from 1.175 at end 2025. Retail and fund money still votes for the US: European-domiciled ETFs took €157.8bn into US equity funds in Q3 2026 against €10.1bn into European equity funds. Households save 14% of disposable income in the EU (19% in Germany) and about €300bn a year leaves the EU, by the Commission's own count. So the market prices French fiscal-political stress and a slow core, not an EU collapse, while savers quietly bet on America.
- Status: Confirmed (T3 prices, T0 flow data via T4 aggregators).
- Confidence 75. Horizon H0.
- Three views. Governance: the €300bn outflow is the policy target of the Savings and Investments Union, and so far flows go the other way. Business: European valuations already discount slow growth, so a France event is the main downside catalyst. Ordinary person: the market does not price an EU breakup, and neither should you, but a France-heavy portfolio is the concentrated risk.

### R4-2e. Decoded intent ("the US wants a weak Europe", "Brussels will seize savings")
"The US wants a weak Europe" decodes to something narrower and better supported: Washington wants a Europe that is militarily stronger, politically more national, economically dependent on US energy, arms and tech, and weaker as a rule-making bloc (D2, 60). The December 2025 National Security Strategy speaks of Europe's "civilizational erasure" and of EU bodies that "undermine political liberty and sovereignty", while demanding 5% of GDP on defence. That is not a plan to impoverish Europe (D3, 10). "Brussels is preparing to seize savings" is D4 for insured deposits: the Savings and Investments Union steers savings through incentives and the digital euro will have holding limits, both announced openly. The real tails are bank-resolution bail-ins of uninsured deposits above €100,000 (law since 2014, used in Cyprus 2013) and, in an exit, capital controls (Greece 2015). Those are risks of crisis, not a hidden plan.
- Status: Speculative (decoded), graded below.
- Confidence 60. Horizon H0 to H1.
- Three views. Governance: US pressure aims at the EU as regulator, not at Europeans as customers. Business: expect US pressure on the AI Act, digital taxes and defence procurement, not on European demand. Ordinary person: your insured deposit is not the target, but the digital euro cap and investment-account nudges are real.

---

## 2. Key findings

1. **The "80% to 50%" claim is an exchange-rate artefact.** EU GDP per head in current dollars was 47% of the US in 2000, peaked at 77% in 2008 when the euro was near 1.47 dollars, and is 52% in 2025 (World Bank). So "80 to 50" holds only from the 2008 peak and only in nominal dollars. In constant PPP the EU went from 73% to 72%. The true decline is in the western core (euro area 81% to 74%) and in productivity per worker (EU 88% to 76%, euro area 98% to 79%).
2. **Europe's growth gap with the US is persistent, not accelerating.** IMF October 2026: EU 1.4% and euro area 1.1% in 2026, against 2.3% for the US. Cumulative growth 2008 to 2026: US 45.9%, EU 24.5%, euro area 18.6%, Italy 3.6%, Greece minus 12.2%, Poland 82.2%.
3. **German industry has shrunk, not just paused.** Eurostat (2021 = 100, average of June to August 2026 against 2017 average): total industry minus 15.5%, chemicals minus 24.3%, basic metals minus 21.0%, motor vehicles minus 28.1%. Destatis: energy-intensive output fell 15.2% from February 2022 to March 2026, against 9.5% for all industry. Car output fell 9.2% in July alone.
4. **Energy is the binding cost.** EU industrial electricity was more than twice US and Chinese prices and gas about four times the US level in H1 2025 (Commission). The Hormuz disruption pushed TTF gas up 64% from the start of the conflict (Council document). The Draghi Observatory found 0 of 83 energy recommendations implemented after one year.
5. **Europe is a compute minnow.** Bruegel (September 2026): the EU hosts about 2 GW of AI compute, about 5% of the global total, against 35 GW (78%) in the US and 5 GW (11%) in China. Planned projects lift the EU only to 5.6% by 2031. The EU's AI gigafactories are about 4% of planned EU compute. Mistral raised €3bn in a Samsung-led round (September 2026) and is the bloc's one significant model developer. The AI Act's high-risk rules slipped to December 2027 and August 2028.
6. **France is now priced like the periphery.** September 2026 averages (ECB): France 4.44%, Italy 4.36%, Greece 4.22%, Spain 3.93%, Germany 3.47%. Daily: OAT 5.05% and Bund 3.33% on 2026-10-23, spread 171.8bp, up from 135.2bp on 10-15. IMF: French deficit 5.4% and debt 118.5% of GDP in 2026, rising to 123.6% by 2031.
7. **The fiscal squeeze is pensions plus defence.** Old-age spending is 10.6% of EU GDP against 10.2% for the whole public payroll (Eurostat COFOG 2024). France 13.4% against 12.4%, Italy 13.9% against 9.0%. The old-age dependency ratio rises from 34.5 (2025) to 48.2 (2045), and in Italy to 60.2. The NATO pledge adds 3.5% of GDP core defence by 2035. NATO-wide core spending averages 2.86% in 2026, and only five allies (Lithuania, Estonia, Latvia, Poland, Greece) exceed 3.5%.
8. **The ECB is tightening into French stress.** Deposit rate 2.00% to 2.25% (17 June 2026) to 2.50% (16 September 2026). HICP inflation 3.8% in September 2026. Polymarket (thin) prices a December hike at 75.5%. The ECB meets 28 to 29 October.
9. **Brexit cost is real and roughly 4 to 8% of GDP.** NBER w34459 (November 2025): GDP per head 6 to 8% lower by 2025, investment 12 to 18% lower, employment and productivity 3 to 4% lower each. OBR: 4% long-run productivity, trade about 15% lower. NIESR (April 2025): 2 to 3% in 2023, 5 to 6% by 2035. CER: 5.5% of GDP, investment 11%, goods trade 7% (2022 to 2024 updates).
10. **The currency regime does not decide convergence.** Since 2004 in PPP relative to the EU average: euro adopters Slovakia +22 points, Lithuania +38, Latvia +21, Croatia +18, Estonia +14, Slovenia +11. Non-euro: Poland +38, Romania +29, Bulgaria +28 (euro since January 2026), Czechia +15, Hungary +12. Finland (euro) grew 6.0% from 2008 to 2026, Sweden (krona) 35.1%, a strong but confounded pair (Nokia, Russia).
11. **Leaving the euro does not fix Italy's debt.** Model: redenomination at 1 to 1 under domestic law, then higher lira rates. The ratio dips from 137.9% to about 132% in year two, then passes the euro path by year six to seven and reaches 150% to 173% in ten years depending on the new rate (9% or 12%), against about 140% if Italy stays (section 3.8). Foreign holders (35.9% of the debt, about €1,140bn) would lose about €342bn at a 30% depreciation, which is why exit triggers runs before it happens.
12. **Euro support is near record highs.** Standard Eurobarometer: 83% in the euro area in spring 2025 (record), 82% in autumn 2025. About three quarters say EU membership benefited their country (spring 2026). Hungary removed Orban on 12 April 2026 (Tisza 141 of 199 seats), which takes the most EU-hostile government out of the club.
13. **Markets and savers.** 2025: STOXX 600 +17.4% in euros, +32.5% in dollars. 2026 to 10-23: STOXX +7.3% in euros, +2.2% in dollars, S&P +11.5% (+17.0% in euros). FTSE 100 +21.5% (2025) and +7.6% (2026), ahead of the euro area this year. Q3 2026: €157.8bn into US equity ETFs, €10.1bn into European ones. EU household saving rate 14.1% (Q1 2026), Germany 19.0%, France 17.4%, Italy 9.5%.

---

## 3. Data tables

### 3.1 GDP per head relative to the US (US = 100)
Sources: World Bank WDI (NY.GDP.PCAP.CD, NY.GDP.PCAP.PP.KD, SL.GDP.PCAP.EM.KD), pulled 2026-10-23. IMF current PPP shows the same pattern (EU 70 in 2000, 72 in 2026).

| Economy | Nominal $ 2000 | Nominal $ 2008 | Nominal $ 2025 | PPP const. 2000 | PPP const. 2025 | Output per worker 2000 | Output per worker 2025 |
|---|---|---|---|---|---|---|---|
| EU27 | 47 | 77 | 52 | 73 | 72 | 88 | 76 |
| Euro area | 54 | 85 | 56 | 81 | 74 | 98 | 79 |
| Germany | 66 | 95 | 67 | 91 | 82 | 101 | 80 |
| France | 61 | 94 | 54 | 83 | 72 | 104 | 82 |
| Italy | 56 | 84 | 48 | 91 | 70 | 125 | 84 |
| Spain | 41 | 73 | 43 | 73 | 64 | 94 | 70 |
| Greece | 32 | 65 | 30 | 57 | 50 | 74 | 59 |
| Poland | 12 | 29 | 32 | 34 | 61 | 44 | 62 |
| UK | 78 | 98 | 64 | 80 | 70 | 85 | 71 |

Outside the EU (IMF current PPP, 2026): Switzerland 112, Norway 122, Denmark 98 (EU, non-euro, pegged), Sweden 82, Ireland 157 (distorted by multinational accounting).

### 3.2 Growth and fiscal position (IMF WEO October 2026, 2026 values are forecasts)

| Economy | Growth 2026 | Cum. growth 2008 to 2026 | Cum. growth 2016 to 2026 | Debt % GDP 2026 | Balance % GDP 2026 | Debt 2031 |
|---|---|---|---|---|---|---|
| US | 2.3 | 45.9 | 28.0 | 126.8 | -8.5 | 145.0 |
| EU | 1.4 | 24.5 | 18.1 | 83.6 | -3.7 | 86.5 |
| Euro area | 1.1 | 18.6 | 14.6 | 88.0 | -3.6 | 90.4 |
| Germany | 1.3 | 18.1 | 7.6 | 64.6 | -4.3 | 75.6 |
| France | 0.4 | 18.7 | 12.6 | 118.5 | -5.4 | 123.6 |
| Italy | 0.8 | 3.6 | 10.1 | 137.9 | -2.9 | 135.6 |
| Spain | 2.5 | 21.0 | 21.4 | 97.6 | -2.4 | 89.4 |
| Netherlands | 1.5 | 24.9 | 19.6 | 45.4 | -2.7 | 48.0 |
| Poland | 3.4 | 82.2 | 43.1 | 66.6 | -7.2 | 82.0 |
| Sweden | 2.5 | 35.1 | 17.7 | 35.1 | -2.5 | 30.7 |
| Czechia | 1.8 | 30.5 | 20.0 | 45.8 | -2.7 | 55.3 |
| Hungary | 1.9 | 35.1 | 26.2 | 78.7 | -7.3 | 87.8 |
| Greece | 1.8 | -12.2 | 19.6 | 136.0 | 0.3 | 111.1 |
| UK | 1.3 | 25.4 | 13.5 | 102.0 | -3.8 | 100.2 |
| Switzerland | 1.9 | 35.7 | 21.1 | 38.3 | -0.2 | 35.9 |
| Norway | 1.5 | 30.2 | 17.6 | 40.0 | 13.5 | 26.0 |

Note the US runs a larger deficit and a higher debt ratio than France. The difference in market treatment comes from owning the reserve currency and the central bank, which France does not.

### 3.3 German industry (Eurostat sts_inpr_m, Germany, 2021 = 100, seasonally and calendar adjusted, updated 2026-10-15)

| Sector | Avg Jun to Aug 2026 | vs 2017 average | vs 2021 average |
|---|---|---|---|
| Total industry (B to D) | 91.0 | -15.5% | -8.4% |
| Chemicals (C20) | 76.3 | -24.3% | -23.5% |
| Basic metals (C24) | 88.2 | -21.0% | -11.4% |
| Motor vehicles (C29) | 98.0 | -28.1% | -0.7% |

### 3.4 Fiscal structure 2024 (Eurostat gov_10a_exp, % of GDP)

| Economy | Total spending | Old-age (GF1002) | Public payroll (D1, all functions) | Defence (GF02, COFOG basis) | Old-age dependency 2045 (Eurostat proj.) |
|---|---|---|---|---|---|
| EU27 | 48.8 | 10.6 | 10.2 | 1.5 | 48.2 |
| Euro area | 49.2 | 10.9 | 9.9 | 1.4 | n/a |
| France | 57.3 | 13.4 | 12.4 | 1.9 | 46.5 |
| Italy | 50.4 | 13.9 | 9.0 | 1.3 | 60.2 |
| Germany | 49.4 | 9.9 | 8.3 | 1.4 | 45.0 |
| Spain | 45.5 | 10.4 | 10.8 | 0.9 | n/a |
| Netherlands | 44.4 | 6.1 | 8.7 | 1.6 | n/a |
| Poland | 49.4 | 10.8 | 11.7 | 2.9 | 43.7 |
| Sweden | 50.0 | 10.9 | 12.6 | 1.9 | n/a |

EU old-age dependency ratio: 26.3 (2010), 34.5 (2025), 38.0 (2030), 48.2 (2045), 50.4 (2050).

### 3.5 Markets (closes 2026-10-23 unless stated)

| Item | Level | 2025 | 2026 YTD | Source |
|---|---|---|---|---|
| STOXX 600 (EUR) | 635.8 | +17.4% | +7.3% | Yahoo ^STOXX |
| STOXX 600 in USD | | +32.5% | +2.2% | computed |
| S&P 500 (USD) | 7,630 | +16.4% | +11.5% | Yahoo ^GSPC |
| S&P 500 in EUR | | +3.1% | +17.0% | computed |
| DAX | 25,182 | +23.0% | +2.8% | Yahoo |
| CAC 40 | 7,783 | +10.4% | -4.5% | Yahoo |
| FTSE MIB | 48,559 | +31.5% | +8.0% | Yahoo |
| FTSE 100 | 10,690 | +21.5% | +7.6% | Yahoo |
| EUR/USD | 1.1193 (ECB ref.) | +12.9% | -4.7% | ECB, Yahoo |
| EUR/PLN | 4.40 | -1.3% | +4.3% (zloty weaker) | Yahoo |
| OAT 10y / Bund 10y / spread | 5.05% / 3.33% / 171.8bp | | spread 135.2bp on 10-15 | ideal-investisseur daily table |
| 10y Sep 2026 avg: FR, IT, GR, ES, DE | 4.44, 4.36, 4.22, 3.93, 3.47 | | | ECB IRS |
| ECB deposit rate | 2.50% since 2026-09-16 | | +50bp in 2026 | ECB FM |
| Euro area HICP | 3.8% (Sep 2026) | | | Eurostat prc_hicp_minr |

Prediction markets (Polymarket Gamma API, 2026-10-23): next French president Le Pen 46.15 ($4.35M on the line, $155.7M event), Philippe 16.5, Lisnard 13.85, Mélenchon 10.5. Lecornu out by 31 December 23.5 ($26.6k). France state of emergency by 31 December 17 ($327k). France passes a budget by 31 December 54 ($19.6k). ECB December hike 75.5 ($37.9k). France default by end 2027: $692 traded, not a price. No market found on any state leaving the EU or the euro.

### 3.6 What "fall" could mean: probabilities by horizon (judgment, cumulative by end of horizon)

| Version of "fall" | Definition used | H0 to 2028 | H1 to 2035 | H2 to 2050 | Main evidence |
|---|---|---|---|---|---|
| Slow relative decline | EU PPP GDP per head below 72% of the US (2025 level) at horizon end | 65 | 70 | 65 | IMF growth gap 0.9pt a year, EU ratio flat since 2000 thanks to the East |
| Absolute decline (mild) | EU real GDP per head below its 2025 level at horizon end | 6 | 6 | 8 | Only 2009 and 2020 type shocks did this, both recovered within 3 years |
| "Dirt poor" | EU real GDP per head below half its 2025 level | <0.5 | <0.5 | <0.5 | No precedent outside war or state collapse |
| Middle income, big member | Germany, France, Italy, Spain, Netherlands or Poland below the World Bank high-income line | 0 | <0.5 | 1 | Needs 4.6% to 6.9% a year relative decline for 20 years (table 3.7) |
| Middle income, any member | Any EU member below the line in any year | 2 | 5 | 10 | Bulgaria 1.24x, Romania 1.40x the line |
| Euro-area sovereign crisis (France or Italy) | ECB TPI, OMT or ESM programme for FR or IT, or 10y spread over 300bp for a month | 15 | 28 | 40 | OAT spread 171.8bp, ECB hiking, Le Pen 46%, France debt path in 3.8 |
| A member leaves the EU | Article 50 notification | 1 | 5 | 10 | Euro support 82 to 83%, Brexit cost visible, Orban gone |
| A member leaves the euro | Legal redenomination by any member | 1 | 3 | 7 | Greece 2015 precedent: even Syriza stayed |
| Euro breakup | A big-four member exits or the euro dissolves | <0.5 | 2 | 4 | Requires the France chain plus a government willing to pay the run |

About 70% of the crisis probability is France-led and 30% Italy-led, judged from current spreads, deficits and the 2027 calendar.

### 3.7 Middle-income test (World Bank FY2027 thresholds, Atlas GNI per head, 2025 data)
Thresholds: low income $1,175 or less, lower middle $1,176 to $4,635, upper middle $4,636 to $14,375, high income above $14,375. Thresholds rise with the SDR deflator, so a country must fall relative to the line.

| Economy | GNI per head 2025 | Multiple of line | Relative decline needed each year to hit the line by 2045 | Worst 5-year USD fall since 2005 |
|---|---|---|---|---|
| Bulgaria | 17,780 | 1.24 | -1.1% | -4% |
| Romania | 20,190 | 1.40 | -1.7% | -5% |
| Hungary | 23,850 | 1.66 | -2.5% | -3% |
| Greece | 25,360 | 1.76 | -2.8% | -27% (2010 to 2015) |
| Poland | 25,520 | 1.78 | -2.8% | -6% |
| Portugal | 29,930 | 2.08 | -3.6% | -12% |
| Spain | 37,120 | 2.58 | -4.6% | -11% |
| Italy | 42,080 | 2.93 | -5.2% | -14% |
| EU | 45,064 | 3.13 | -5.6% | -9% |
| France | 48,630 | 3.38 | -5.9% | -13% |
| Germany | 60,200 | 4.19 | -6.9% | -8% |

Greece's depression plus the euro's fall cost about 6% a year for five years. Italy would need a Greek-size shock repeated four times in a row. Verdict: no big EU economy plausibly becomes middle income by 2045. Bulgaria and Romania could touch the line in a severe currency and growth shock.

### 3.8 Models (python3 -I scripts/models.py, inputs labelled)
**France debt arithmetic.** Inputs: debt 118.5% and overall balance -5.4% (IMF 2026), interest about 2.1% of GDP (assumption), so primary balance about -3.3%. Nominal growth 2.8% (assumption). Debt-stabilising primary balance: -0.5% at an effective rate of 2.4%, +0.8% at 3.5%, +2.6% at today's 5.05% OAT. The gap to today's primary balance is about 2.8 to 5.9 points of GDP. Debt path with no consolidation and the effective rate drifting from 2.0% to 5.05% as one eighth of the debt rolls each year: 121% (2027) to 161% (2036). With consolidation to -1.0% primary: 137% in 2036. If the OAT fell back to 3.5%: 151%.

**Italy redenomination.** Inputs: debt 137.9% (IMF 2026), domestic-law debt converted 1 to 1, nominal lira growth 7%, 6%, then 5% (inflation shock, weak real growth), marginal lira rate 9% or 12% (1990s Italian yields were in that range), one seventh of debt rolling each year. Euro baseline: marginal 4.36%, nominal growth 2.8%, primary surplus 0.9%. Results in ten years: euro 140%, lira at 9% 150%, lira at 12% 173%. The lira path is lower only in years one to five.

### 3.9 Breakaway evidence

| Case | What happened | Read-across |
|---|---|---|
| UK, 10 years after the vote, 6 after leaving | GDP per head 6 to 8% lower by 2025 (NBER w34459), productivity -4% long run (OBR), GDP -5 to 6% by 2035 (NIESR), investment -11% and goods trade -7% (CER). Actual growth 2016 to 2026: UK 13.5%, euro area 14.6%, EU 18.1%. Gains claimed: trade deals with the US (10% tariff), India and CPTPP, regulatory freedom. FTSE 100 +21.5% (2025) | Leaving the EU cost several points of GDP and did not lift the UK above the euro area's slow path |
| Switzerland | 112% of US PPP per head. Inside the single market through bilateral treaties. Council of States approved the Bilaterals III package 29 to 15 on 2026-09-28 | Outside the EU but moving closer, and rich before any EU question |
| Norway | 122% of US PPP per head. EEA member, takes EU rules without a vote, oil fund | Model needs oil wealth and rule-taking. Not available to a big state |
| Poland, Czechia, Hungary, Sweden, Denmark (EU, no euro) | Poland +38 points vs EU since 2004, Czechia +15, Hungary +12. Sweden grew 35.1% 2008 to 2026, Finland (euro) 6.0% | Own currency helps in a shock (Poland 2009, Sweden) but institutions decide the trend (Hungary lagged with its own currency) |
| Greece 2015 | About €41bn of deposits fled from November 2014, capital controls from June 2015 to 2019, third programme of about €86bn, GDP fell 26% from 2007 to 2015. Even Syriza chose to stay | The cost of threatening exit is paid before any exit happens |
| Italy in lira (model) | Debt ratio worse than the euro path after six to seven years. Foreign holders lose about €342bn at a 30% depreciation | Exit shifts losses abroad and triggers runs, and does not fix the debt |

### 3.10 Who could do better outside, and who would do worse (judgment on the evidence above)

| Candidate | Leave the EU | Leave the euro (stay in EU) | Why |
|---|---|---|---|
| Poland | Worse | n/a (not in the euro). Current position is near optimal | Fastest converger, big cohesion and single-market FDI gains, own currency already gives flexibility |
| Netherlands | Worse | Roughly neutral to worse | Very open trade hub, low debt (45%), would gain little from its own currency and lose market access |
| Nordics (Sweden, Denmark, Finland) | Worse | Finland is the only plausible gainer in theory (Sweden comparison), but the exit cost exceeds the gain | Small open economies, Sweden and Denmark already outside the euro |
| Italy | Worse | Worse in the transition, maybe better competitiveness after a decade, debt worse in the model | Chronic stagnation (3.6% growth since 2008) is the case for exit, the debt and run risk the case against |
| Hungary | Much worse | n/a | EU funds and single-market factories. New Tisza government is pro-EU |
| France | Worse | Much worse | Twin deficits, OAT spread already 172bp, a run on French banks would be the first effect |
| Germany | Worse | Worse for exporters (a new mark would revalue), better for savers | The folklore version "Germany leaves" would destroy its own export base |

---

## 4. Say/Do gaps

| Actor | Says | Does | Gap |
|---|---|---|---|
| EU institutions | Draghi agenda is urgent (Draghi: "every challenge has deepened") | 11.2% of 383 recommendations fully done after a year, energy 0 of 83 (EPIC, September 2025) | Large |
| EU on AI | "AI continent", €200bn InvestAI | Gigafactories about 4% of planned EU compute, EU share stays near 5% to 2031, AI Act high-risk rules delayed to 2027 and 2028 | Large |
| European savers | Want European strategic autonomy | €157.8bn into US equity ETFs against €10.1bn into European ones in Q3 2026 | Large |
| NATO Europeans | 5% of GDP by 2035 (3.5% core) | NATO-wide core average 2.86% in 2026, Spain carved out at about 2.1% | Medium, closing on the eastern flank |
| France | Deficit target near 5% | IMF projects -5.4% in 2026, spread at a cycle high | Medium |
| RN (Bardella, Le Pen) | "Not a return to Frexit", wants to "change everything without destroying anything" | Calls the EU "completely obsolete", programme clashes with EU law and fiscal rules (Delors Centre) | Medium, the key 2027 unknown |
| US administration | Will "support our allies in preserving the freedom and security of Europe" | NSS sides with "patriotic" parties, tariffs on EU goods, euro-funded yen intervention in July 2026 (R0 calibration) | Medium |
| UK Leave case | Take back control, higher growth | Growth below the EU since 2016, investment 12 to 18% lower (NBER). Net migration rose to record levels after exit (memory, ONS, verify) | Large |
| ECB | Price stability with a backstop (TPI) | Hiking (2.5%, December hike priced) while the French spread widens, TPI unused | By design: TPI is conditional on EU fiscal compliance |

---

## 5. Anomalies (move 1) and defaults (move 2)

1. **A core country priced through the periphery.** Default: France trades between Germany and Spain. Actual: in September France (4.44%) yielded more than Italy (4.36%) and Greece (4.22%). Markets now treat France as the euro's marginal risk.
2. **The bigger debtor gets the better price.** The US runs a deficit of 8.5% and debt of 126.8% of GDP, France 5.4% and 118.5%. The OAT pays 172bp over the Bund, while US stress shows mainly in term premium. Explanation: France borrows in a currency it cannot print, which is the euro area's design and its fragility.
3. **Investors beat on Europe in 2025 and kept buying America.** STOXX in dollars beat the S&P by about 16 points in 2025, yet European ETF money still flows to US equity by about 16 to 1.
4. **Record euro support while "EU will fall" goes viral.** 83% euro-area support in 2025 and three quarters saying membership helped in 2026. The thread sentiment (R4C) is not the median European view.
5. **The ECB is tightening into fiscal stress.** Default in past crises (2012, 2020): ease and backstop. Now: inflation of 3.8% from an oil shock forces hikes, so the ECB cannot be the first line for France without political conditions.
6. **The fastest converger and the slowest are both outside the euro.** Poland (+38) and Hungary (+12) both kept their own currencies. The regime is not what separates them.

---

## 6. Mechanism chains (move 5)

1. **France chain (H0).** Hormuz oil shock → euro-area HICP 3.8% → ECB hikes (2.5%, December priced) → OAT 5.05% → r minus g turns positive by about 2 points → debt rises toward 140% to 160% in ten years without consolidation (model) → rating cuts (Moody's review 10-23) → 2027 election with Le Pen favourite at 46% → an RN budget that breaks EU fiscal rules → TPI unavailable because it requires compliance → spread 250 to 300bp → either a climbdown (the Meloni 2022 path, the base case) or a crisis that needs an ESM programme. Tests: spread above 200bp for 10 sessions, Moody's to A1, censure motion passing, RN programme on EU fiscal rules.
2. **Exit chain.** Exit talk → deposit flight (Greece: €41bn) → capital controls → redenomination by domestic law → 25% to 35% depreciation → imported inflation → higher local rates → debt ratio back above the euro path within six to seven years (model) → net loss, with foreign creditors taking about €342bn in Italy's case. This is why exit is threatened more than done.
3. **Savings chain (H1).** High saving (EU 14%, Germany 19%) + fragmented capital markets + pay-as-you-go pensions → about €300bn a year abroad, mostly to the US → finances US AI capex → EU has 5% of global compute → EU productivity gap widens in AI-intensive sectors. Break point: Savings and Investments Union, auto-enrolment pensions, deeper equity markets.
4. **Energy-industry chain.** Gas about 4 times the US price → chemicals output -24% vs 2017 → German export model loses volume → German growth 7.6% in ten years → fiscal space goes to defence and energy subsidies instead of investment.
5. **Ageing-defence squeeze (H1 to H2).** Old-age spending already above the public payroll → dependency ratio from 34.5 to 48.2 by 2045 → 3.5% defence pledge adds about 2 points of GDP → taxes, debt or pension cuts → anti-system vote share rises → France and Italy are the pressure points.

---

## 7. Tripwires (with dates)

| Date | Event | What would change our view |
|---|---|---|
| 2026-10-23 after close | Moody's review of France (Aa3 negative) | A cut to A1 aligns all three agencies at A+ level. No cut lowers H0 crisis odds slightly |
| 2026-10-27 onward | French budget, Article 49.3 and a censure motion | A passed censure and no budget by year end: raise H0 crisis to 20 |
| 2026-10-28 to 29 | ECB meeting | A hike with no comment on spreads raises H0 crisis odds. A TPI reference lowers them |
| about 2026-10-30 | Euro-area Q3 GDP flash | Negative print plus 3.8% inflation means stagflation, raise absolute-decline H0 to 10 |
| Daily | OAT-Bund spread 200bp, then 250bp for 10 sessions | 250bp sustained: raise H0 crisis to 25 |
| Before April 2027 | Court of Cassation on Le Pen's eligibility | Ineligibility shifts the RN ticket to Bardella, polls suggest similar odds |
| April and May 2027 | French presidential election | RN win plus budget defiance: raise H1 crisis to 35 and exit-from-euro H1 to 5 |
| Monthly (Destatis, early each month) | German chemicals index below 75 (2021 = 100) | Further deindustrialisation, raise H1 relative-decline to 75 |
| Quarterly (STOXX flow report, about January 2027) | European ETF flows | European equity inflows above US inflows would mean the €300bn outflow is turning |
| 2027 | Swiss National Council vote and likely referendum on Bilaterals III | A Swiss "no" would weaken the "outside but in the market" model |
| 2027 to 2028 | Digital euro holding limit set (about a year before launch) | A limit under €3,000 would feed the "seize savings" narrative without changing its grade |

---

## 8. Decoded intent ledger (PLAN 4.1b)

| Claim | Decoders | Action fit for | Action fit against | Motive and capability | Grade and probability | Tell to watch |
|---|---|---|---|---|---|---|
| "The US wants a weak Europe" (narrow: a weaker EU as regulator and political bloc, a stronger Europe as military buyer) | Freedman, European officials (Costa, Wadephul), America First Policy Institute (approving version) | NSS 2025 text on "civilizational erasure" and EU bodies, siding with patriotic parties, tariffs, euro-funded ESF intervention (R0) | US demands 5% defence spending and buys European stability through NATO, US firms need EU customers | Strong motive (tech regulation, trade surplus), capability through tariffs, security and tech | D2, 60 | US pressure on the AI Act, DMA and digital taxes, and on 2027 French election messaging |
| "The US is engineering Europe's economic collapse" | X thread posters, Mallers (R0) | ESF euro sale in July 2026 | The US leg was $500M (R0), a collapse would hurt US exporters and banks | Weak motive, high self-harm | D3, 10 | Any coordinated US action against euro assets beyond FX |
| "Bessent sold France" | Mallers, yellownutt post (origin case) | Euro funding of the yen operation | Spread flat in August, blew out only from mid-September after the Fed hike and French politics | Covered in R0 | Literal D4, narrow version D2 at 50 (R0) | Next US Treasury FX report (mid-November) |
| "Brussels is preparing to seize savings" | Online commentators, Reclaim The Net, digital euro critics | SIU aims to channel savings, Commission talks of mobilising €10tn of deposits, digital euro holding limits (€3,000 floated) | Steering is by incentive and openly announced. Insured deposits are protected up to €100,000 by law | No legal tool to confiscate insured deposits | Steering: D1 (stated openly), 90. Confiscation of insured deposits: D4, under 2 | Final digital euro limit, any EU-level mandatory allocation rule |
| "Uninsured deposits can be bailed in" | Cyprus 2013 precedent | BRRD bail-in law since 2014 | Applies only in bank resolution | Real, crisis-only | Confirmed as law. Use in a France crisis: 5 by 2030 | Bank-resolution cases in France or Italy |

---

## 9. Open questions and gaps

1. OBR's Brexit page returned 403. The 4% and 15% figures come from search snippets of the OBR page (T4 relay of T2). Verify on the next OBR release.
2. The Bank of England's own Brexit assumption (believed to be about 3.25% lower long-run productivity) was not verified this round. Memory only, not used in claims.
3. No 2025 or 2026 CER doppelganger update found. CER figures are from 2022 to 2024.
4. Moody's decision on France is due after the close today and was not available.
5. No prediction market prices EU or euro exit. Desk odds stand alone.
6. France's interest bill as a share of GDP (2.1%) is an assumption in the model. Check against INSEE.
7. The Savings and Investments Union 2026 status (savings and investment accounts, market integration package of December 2025) was not confirmed with a primary 2026 source.
8. US tariff levels on Switzerland and the EU in 2026 were not re-verified this round.
9. The X thread's specific claims are R4C's task. This lane gives the structural baseline they should be tested against.

---

## 10. Claims table

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R4B-01 | EU GDP per head in current dollars was 47% of the US in 2000, 77% in 2008 and 52% in 2025, so "80% to 50%" holds only from the 2008 peak in nominal terms | T1 | Confirmed | https://data.worldbank.org/indicator/NY.GDP.PCAP.CD | 2026 | 2025 | Revised WDI data moving the 2000 ratio above 70% |
| R4B-02 | In constant PPP the EU was 73% of the US in 2000 and 72% in 2025, the euro area fell from 81% to 74% | T1 | Confirmed | https://data.worldbank.org/indicator/NY.GDP.PCAP.PP.KD | 2026 | 2025 | ICP revision changing the trend by over 3 points |
| R4B-03 | EU output per worker fell from 88% to 76% of the US from 2000 to 2025 (euro area 98% to 79%) | T1 | Confirmed | https://data.worldbank.org/indicator/SL.GDP.PCAP.EM.KD | 2026 | 2025 | Per-hour data showing no widening (hours differ, see open questions) |
| R4B-04 | IMF October 2026 projects 2026 growth of 2.3% US, 1.4% EU, 1.1% euro area, 1.3% Germany, 0.4% France | T2 | Confirmed | https://www.imf.org/external/datamapper/NGDP_RPCH@WEO | 2026-10-13 | 2026-10-23 | Q3 and Q4 outturns far from these |
| R4B-05 | Cumulative real growth 2008 to 2026: US 45.9%, EU 24.5%, euro area 18.6%, Italy 3.6%, Poland 82.2%, Greece -12.2% | T1/T2 | Confirmed | https://www.imf.org/external/datamapper/NGDP_RPCH@WEO | 2026-10-13 | 2026-10-23 | Data revisions |
| R4B-06 | German industrial output (Jun to Aug 2026 average) is 15.5% below its 2017 average, chemicals 24.3%, basic metals 21.0%, motor vehicles 28.1% | T1 | Confirmed | https://ec.europa.eu/eurostat/databrowser/view/sts_inpr_m/default/table | 2026-10-15 | 2026-08 | Recovery of chemicals above 2021 level |
| R4B-07 | German energy-intensive output fell 15.2% from February 2022 to March 2026, against 9.5% for all industry | T1 via T4 | Plausible | https://www.produktion.de/wirtschaft/energieintensive-industrie-produktion-bricht-ein/2664160 | 2026 | 2026-03 | Destatis release with different figures |
| R4B-08 | EU industrial electricity was more than twice US and Chinese prices and gas about four times the US level in H1 2025 | T2 | Confirmed | https://www.euronews.com/2026/03/09/european-commission-plans-energy-price-relief-for-struggling-industries | 2026-03-09 | 2025-H1 | IEA or Eurostat data showing a gap under 1.5x |
| R4B-09 | One year after the Draghi report, 11.2% of 383 recommendations were fully implemented and 0 of 83 in energy | T4 | Plausible | https://euclime.sgh.waw.pl/en/node/280 | 2025-09 | 2025-09 | A 2026 audit above 30% |
| R4B-10 | The EU hosts about 2 GW of AI compute, about 5% of the world, against 78% in the US and 11% in China, and reaches only 5.6% by 2031 on planned projects | T4 | Plausible | https://www.bruegel.org/sites/default/files/2026-09/PB%2018%202026.pdf | 2026-09 | 2026 | Hyperscaler disclosures showing EU above 8% |
| R4B-11 | Mistral raised €3bn in a Samsung-led round and expects over €1bn of annual recurring revenue by end 2026 | T4 | Plausible | https://www.euronews.com/2026/09/08/mistral-ai-raises-record-3-billion-in-samsung-led-funding-round | 2026-09-08 | 2026-09 | Company filings |
| R4B-12 | AI Act high-risk obligations were pushed to December 2027 and August 2028 under the digital omnibus | T1 (provisional) | Plausible | https://www.bhrrc.org/ar/أحدث-الأخبار/eu-commission-proposes-delay-to-ai-act-to-2027-amid-digital-omnibus-proposal/ | 2025-11 | 2026-05 | Final text with other dates |
| R4B-13 | NATO-wide core defence spending averages 2.86% of GDP in 2026, five allies exceed 3.5%, Spain is carved out at about 2.1% | T2 | Confirmed | https://aa.com.tr/en/world/nato-defense-spending-projected-to-top-18t-in-2026/3989627 | 2026-07 | 2026 | NATO final 2026 data |
| R4B-14 | EU old-age spending (10.6% of GDP) exceeds the entire public payroll (10.2%) in 2024. France 13.4 vs 12.4, Italy 13.9 vs 9.0 | T1 | Confirmed | https://ec.europa.eu/eurostat/databrowser/view/gov_10a_exp/default/table | 2026-10-21 | 2024 | COFOG revision |
| R4B-15 | The EU old-age dependency ratio rises from 34.5 (2025) to 48.2 (2045), Italy to 60.2 | T1 (projection) | Confirmed | https://ec.europa.eu/eurostat/databrowser/view/proj_23ndbi/default/table | 2023 | 2026-10 | EUROPOP revision |
| R4B-16 | IMF projects French debt at 118.5% of GDP and a 5.4% deficit in 2026, debt 123.6% by 2031. The US runs 126.8% and 8.5% | T2 | Confirmed | https://www.imf.org/external/datamapper/GGXWDG_NGDP@WEO | 2026-10-13 | 2026 | Budget outturns |
| R4B-17 | The OAT-Bund 10y spread was 171.8bp on 2026-10-23 (OAT 5.05%, Bund 3.33%), up from 135.2bp on 10-15 | T3 via T4 | Confirmed | https://www.ideal-investisseur.fr/en/markets/oat-bund-spread.html | 2026-10-23 | 2026-10-23 | Exchange data showing otherwise |
| R4B-18 | In September 2026 France's 10y yield (4.44%) was above Italy (4.36%), Greece (4.22%) and Spain (3.93%) | T3 | Confirmed | https://data.ecb.europa.eu/data/datasets/IRS | 2026-10 | 2026-09 | October average with France back below Italy |
| R4B-19 | The ECB raised the deposit rate to 2.25% on 2026-06-17 and 2.50% on 2026-09-16, with euro-area HICP at 3.8% in September | T1 | Confirmed | https://data.ecb.europa.eu/data/datasets/FM | 2026-10 | 2026-10-23 | n/a (historical) |
| R4B-20 | Polymarket prices Marine Le Pen as next French president at 46.15% on a $155.7M event, after the 7 July 2026 appeal ruling made her eligible | T3 + T4 | Confirmed (price) | https://polymarket.com/event/next-french-presidential-election | 2026-10-23 | 2026-10-23 | Cassation ruling barring her |
| R4B-21 | STOXX 600 returned +32.5% in dollars in 2025 against +16.4% for the S&P 500, and +2.2% against +11.5% in 2026 to 10-23 | T3 | Confirmed | https://finance.yahoo.com/quote/%5ESTOXX/ | 2026-10-23 | 2026-10-23 | Index provider data differing |
| R4B-22 | European-domiciled ETFs took €157.8bn into US equity funds and €10.1bn into European equity funds in Q3 2026 | T0 via T4 | Plausible | https://stoxx.com/?p=88123 | 2026-10 | 2026-Q3 | EPFR or Morningstar data with reversed flows |
| R4B-23 | EU household saving rate 14.1% (Q1 2026), Germany 19.0% and Italy 9.5% (Q2 2026) | T1 | Confirmed | https://ec.europa.eu/eurostat/databrowser/view/nasq_10_ki/default/table | 2026-10 | 2026-Q2 | Revisions |
| R4B-24 | About €300bn of EU savings flows to non-EU markets each year, EU households save about €1.4tn a year against €800bn in the US | T2 | Plausible | https://www.hellenicshippingnews.com/eu-commission-unveils-plan-to-channel-e10-trillion-of-citizens-savings-into-strategic-investments/ | 2025-03 | 2025 | Balance of payments data showing net inflows |
| R4B-25 | Brexit lowered UK GDP per head by 6 to 8% and investment by 12 to 18% by 2025 | T4 | Plausible | https://www.nber.org/papers/w34459 | 2025-11 | 2025 | Peer review revising below 3% |
| R4B-26 | OBR assumes Brexit lowers UK long-run productivity by 4% and trade intensity by about 15% | T2 via T4 | Plausible | https://obr.uk/forecasts-in-depth/the-economy-forecast/brexit-analysis/ | 2026-03 | 2026-03 | OBR changes the assumption |
| R4B-27 | NIESR estimates Brexit cut UK GDP by 2 to 3% in 2023 and 5 to 6% by 2035 | T4 | Plausible | https://niesr.ac.uk/publications/understanding-effects-brexit-productivity | 2025-04 | 2025 | NIESR revision |
| R4B-28 | UK real growth 2016 to 2026 was 13.5% against 18.1% for the EU and 14.6% for the euro area | T1/T2 | Confirmed | https://www.imf.org/external/datamapper/NGDP_RPCH@WEO | 2026-10-13 | 2026 | Revisions |
| R4B-29 | Since 2004 Poland gained 38 points against the EU average in PPP, Lithuania (euro) 38, Hungary 12, Czechia 15, Slovakia (euro) 22. The currency regime does not separate winners from laggards | T1 + judgment | Plausible | https://www.imf.org/external/datamapper/PPPPC@WEO | 2026-10-13 | 2026 | A regression controlling for institutions showing a strong euro effect |
| R4B-30 | Finland (euro) grew 6.0% from 2008 to 2026 against 35.1% for Sweden (krona) | T1/T2 | Confirmed (data), cause Speculative | https://www.imf.org/external/datamapper/NGDP_RPCH@WEO | 2026-10-13 | 2026 | n/a |
| R4B-31 | Greek deposits fell about €41bn from November 2014 before capital controls, and GDP fell about 26% from 2007 to 2015 | T4 | Plausible | https://www.nbg.gr/en/group/studies-and-economic-analysis/reports/erminevontas-tis-antoches-stous-elenchous-kinisis-kefalaion---oktovrios-2015 | 2015-10 | 2015 | Bank of Greece series differing |
| R4B-32 | Non-residents held 35.9% of Italian public debt (about €1,140bn) in May 2026, up from 25.9% in March 2023 | T1 via T4 | Plausible | https://tg24.sky.it/economia/2026/08/17/debito-pubblico-italia-stranieri | 2026-08-17 | 2026-05 | Bank of Italy release differing |
| R4B-33 | Model: an Italian redenomination leaves debt above the euro path within six to seven years (150% to 173% vs 140% in ten years) | Model | Speculative | scratchpad scripts/models.py | 2026-10-23 | 2026-10-23 | Lira yields staying under 6% after exit |
| R4B-34 | World Bank FY2027 high-income line is $14,375 GNI per head. No big EU economy is within 2.5 times of it. Bulgaria (1.24x) and Romania (1.40x) are closest | T1 | Confirmed | https://ourworldindata.org/grapher/world-bank-income-groups | 2026-07 | 2025 data | n/a |
| R4B-35 | Euro support reached a record 83% in the euro area in spring 2025 | T2 (survey) | Confirmed | https://www.cde.ual.es/en/eurobarometer-record-trust-in-eu-and-strong-support-for-euro-and-defence-policy/ | 2025-05 | 2025 | A 2026 wave below 70% |
| R4B-36 | Tisza won 141 of 199 seats on 12 April 2026 and Péter Magyar became Hungarian prime minister on 9 May 2026 | T1 | Confirmed | https://en.wikipedia.org/wiki/2026_Hungarian_parliamentary_election | 2026 | 2026-05 | n/a |
| R4B-37 | The Swiss Council of States approved the EU Bilaterals III package 29 to 15 on 2026-09-28 | T1 | Confirmed | https://www.bluewin.ch/en/news/after-a-lengthy-debate-the-council-of-states-clearly-endorses-the-eu-treaty-package-li.3616990 | 2026-09-28 | 2026-09-28 | n/a |
| R4B-38 | The December 2025 US National Security Strategy speaks of Europe's "civilizational erasure" and blames EU bodies that "undermine political liberty and sovereignty" | T1 via T4 | Confirmed | https://euro-sd.com/2025/12/major-news/48194/us-national-security-strategy/ | 2025-12-11 | 2025-12-04 | Official text differing |
| R4B-39 | Digital euro holding limits are planned but not yet set, €3,000 was floated, the limit is to be fixed about a year before launch | T2/T4 | Plausible | https://cointelegraph.com/news/eu-finance-ministers-agree-to-limit-digital-euro-holdings | 2025 to 2026 | 2026 | Regulation adopted without limits |
| R4B-40 | Desk odds: euro-area sovereign crisis led by France or Italy 15% by 2028, 28% by 2035. A member leaving the euro 1% and 3%. Euro breakup 2% by 2035 | Judgment | Speculative | this file, table 3.6 | 2026-10-23 | 2026-10-23 | Spread above 300bp for a month, or an exit referendum called |

---

## 11. Proposed changes to scenario odds

Current: H0 62/15/1/22, H1 44/23/3/30, H2 31/28/10/31 (S1 dollar extension, S2 neutral reserve layer, S3 energy or compute standard, S4 disorderly reset).

1. **No change to headline odds.** Europe's evidence cuts both ways. A French-led euro stress raises S4 risk, but its first effect is a flight into dollars and Treasuries (S1-positive, as in 2010 to 2012), and the euro is not a successor reserve candidate while France trades through Italy. The neutral-layer case (S2) gains slowly as European savers and central banks hedge with gold, but no new data this round sizes that.
2. **Add an explicit conditional for H0.** If the OAT-Bund spread stays above 250bp for 10 sessions without TPI activation, move 2 points from S1 to S4 in H0 (to 60/15/1/24). The French stress is local today (R3E: MOVE fell while the spread rose), so the trigger is the spread, not the headlines.
3. **Add an explicit conditional for H1.** If an RN president is elected in May 2027 and the first budget breaks the EU fiscal framework, move 2 points from S1 to S4 and 1 from S1 to S2 in H1 (to 41/24/3/32). The S2 point reflects European savers' move into gold and non-euro assets in a France crisis.
4. **Carry new desk odds on Europe** (table 3.6): relative decline 65 to 70 at all horizons, euro-area sovereign crisis 15/28/40, member leaving the euro 1/3/7, euro breakup under 0.5/2/4, big member falling to middle income 0/under 0.5/1.
5. **Note for R4-4.** Because no EU breakaway case shows gains, the "money of the fallen" question for Europe is about the €300bn a year already leaving (mostly to the US), not about a sudden exodus. That supports the owner's "back to the West, North America" thesis for capital, with the UK, Switzerland and Poland as the European beneficiaries of any intra-European rotation.
