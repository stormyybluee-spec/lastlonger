# Dc: AI, Robots and the Debt (Debate Court, Round 1)

Cluster id prefix: Dc. Written 2026-10-22. Panel run under round1/DEBATE_PROTOCOL.md.

Inputs read in full: round1/BRIEF.md, round0/calibration.md, round1/lanes/L7-quant.md (primary), L4-labor-ai-uhi.md, L6-expert-transcripts.md, L3-energy-money.md, and L1-fed-treasury.md (it appeared in the lanes folder after this session started, so it was read before writing).

Method: no web search (budget exhausted). No WebFetch was needed, because no decisive dispute turned on a fact missing from the lanes. Every number below is from a lane file unless tagged "panel arithmetic" (computed from lane inputs) or "memory, not lane-verified" (historical context from training knowledge, listed as a reloop gap). Panel arithmetic script: `/tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/dc/dc_calc.py`.

---

## 0. Shared fact base (what every role argued from)

| Item | Value | As-of | Tier | Lane |
|---|---|---|---|---|
| Debt held by the public | $32.566T (100% of GDP), gross $40.44T | 2026-10-20 | T0 | L7, L1 |
| FY2026 receipts / outlays / deficit | $5,403.3B / $7,395.8B / $1,992.5B (about 6.2% of GDP) | FY to 2026-09-30 | T0 | L7, L1 |
| FY2026 net interest / defense | $1,051.8B / $965.2B | same | T0 | L7, L1 |
| FY2026 primary deficit | $940.7B = 2.92% of GDP | same | T0 (computed) | L7 |
| Average rate on marketable debt | 3.518% (Sept 2025: 3.406%) | 2026-09-30 | T0 | L7, L1 |
| Blended market refinancing rate | about 4.88% | 2026-10-21 | T3 (computed) | L7 |
| Share of marketable debt repricing in 1 / 3 / 5 years | 35.7% / 56.8% / 70.4% | 2026-09-30 | T0 | L7 |
| Bills outstanding, bill share | $7.118T, 22.36% (21.53% a year earlier) | 2026-09-30 | T0 | L1 |
| 10y nominal / 10y TIPS / breakeven | 5.13% / 2.76% (1.94% on 2026-01-02) / 2.37% | 2026-10-21 | T3 | L7, L1 |
| Real GDP trend (10y CAGR) | 2.50%. Q2 2026 +2.2% SAAR. Q3 nowcast above 4% (Atlanta Fed, via Bessent) | 2026Q2 | T0 / T4 | L7, L1 |
| PCE inflation | Q2 +5.0% SAAR (core 3.3%). 12m about 3.7%, Aug 3.6% headline, 3.2% core | 2026 | T0 / T2 | L7, L1 |
| Fed funds | 3.75 to 4.00% after 12-0 hike on 2026-09-16 (from 3.50 to 3.75%). EFFR 3.88%. IORB 3.90% | 2026-10-20 | T1 / T0 | L1, L6, L7 |
| Fed reserves | $3.02T | 2026-10-14 | T0 | L1 |
| Labor share (nonfarm business) | 52.8%, lowest since 1947. Unit profits +43.0% annualized. Productivity +2.2% y/y | 2026Q2 | T0 | L4 |
| Unemployment | 4.2% (range 4.1 to 4.3% since March) | Sept 2026 | T0 | L4 |
| Corporate income tax receipts | $381.4B in FY2026 vs $452.1B in FY2025 (minus 15.6%) | FY2026 | T0 | L7 (anomaly 3) |
| Humanoids shipped worldwide | about 14,500 in 2025, about 90% Chinese | 2025 | T4 | L4 |
| Industrial robots | 603,307 installed in 2025, 5M operating | 2025 | T0 | L4 |
| Hyperscaler capex 2026 guidance | about $700 to 725B (+77% y/y) | 2026Q2 | T2 via T4 | L3 |
| Data center power (IEA) | 415 TWh (2024), 485 TWh (2025), about 950 TWh (2030) | 2026 | T4 | L3 |
| US wholesale power 2026 | $52/MWh (+11%), PJM +41% | 2026-10-06 | T3/T4 | L3 |

---

## 1. Proponent

Thesis defended: AI and robots are the realistic way out of the US debt trap, and the monetary system will have to adapt to an output boom rather than a debt crisis.

1. **The arithmetic is on Musk's side, and his number is modest.** Musk's "not transformative" tier (superintelligence alone, +20 to 30% of output, about $30T a year worldwide) is the middle of his range. The US share at +25% over 10 years is about $8.1T a year of extra GDP at full effect (L7 1d). At today's receipts ratio of 16.8%, that is about $1.36T a year of new federal revenue, which is larger than the entire $0.94T primary deficit. With non-interest spending held on its pre-AI path, debt held by the public falls from 101% to about 87% of GDP by year 10, against about 130% with no AI (L7, T0 inputs plus model).
2. **The treadmill is a primary-deficit problem, and growth is the cleanest lever on it.** Real r minus g is only about +0.26 pp (10y TIPS 2.76% vs 2.50% trend). So what pushes the ratio up is the 2.9% of GDP primary deficit. Growth shrinks the primary deficit as a share of GDP without anyone voting for a cut. That is why growth works where politics fails.
3. **Politics has already failed.** Musk ran DOGE for four months and the FY2026 deficit still rose $218B (12.2%) in an expansion with unemployment at 4.2% (L6, L1, T0). Bessent's "3-3-3" target (3% deficit by 2028) is nowhere near the 6.2% outturn (L1). Nobody in power is cutting. If the fiscal path is closed, the growth path is the only one left. That is the real content of "only AI and robots".
4. **The monetary escape route is also closing.** Warsh hiked 12-0 against the President, refused SOMA participation in the yen operation and refused to upsize FIMA (L1, T1/T2). The Fed will not inflate the debt away on purpose. Mallers is right that each hike raises the interest bill faster now that bills are 22.4% of the stock. So the remaining exit is real growth.
5. **AI productivity is already visible where it should be first: in profits.** Unit profits rose 43% annualized in Q2 2026 while the labor share fell to a 1947 record low and unemployment stayed flat (L4, T0). Capital is producing more with the same labor. The Q3 nowcast is above 4%.
6. **Disinflation is coming.** Robot-hours at Musk's $20k to $30k target cost about $2 to $5 (L4 arithmetic). Flippy already rents at about $5 per human-equivalent hour against a California fast-food minimum of $20. When the cost of labor-intensive goods falls, the economy can absorb more money without inflation. This is Musk's "MUST issue dollars or there will be massive disinflation" (L4, T2). Under that logic a UHI is the demand side of a supply boom, not a fiscal hole.

## 2. Skeptic

**Attack on the strongest point first (point 1, the $1.36T revenue arithmetic).** L7 itself states the two conditions and both are failing in the data right now.
- *Real rates are rising with the AI boom, not staying flat.* The 10y TIPS yield went from 1.94% on 2026-01-02 to 2.76% on 2026-10-21, an 82 bp rise in the year of a 77% capex surge (L1, T3). Warsh, asked why yields rose, named "economic strength", "competition for capital from hyperscalers" and geopolitics (L1, T2). That is the Ramsey/Euler channel happening on camera. L7 shows that if real rates rise one-for-one with growth, the +2.26 pp AI case ends at about 129% of GDP, the same as no AI.
- *The gains are not showing up as taxable income.* Corporate income tax receipts fell 15.6% in FY2026 ($452.1B to $381.4B, T0) in the same year unit profits surged. The cause is not verified in the lanes. A plausible mechanism is that AI capex is expensed, so a capex boom lowers taxable profit before it raises it (inference, depends on 2025 tax law expensing rules, memory, not lane-verified). Either way, applying the 16.8% average receipts ratio to AI output overstates H0 to H1 revenue.
- *Productivity is not yet unusual.* BLS productivity is +2.2% y/y. The September FOMC minutes describe trend productivity as "about in line with the historical average" (L1, T2). The profit surge came in a quarter with 5.0% annualized PCE inflation, an oil shock (Brent peaked near $126) and tariffs. Margin expansion in an inflationary quarter is a pricing-power signal before it is a productivity signal.

**The rest of the proponent case.**
- *"Only" is false on the same arithmetic.* A primary adjustment of about 2.9% of GDP ($0.93T a year) stabilizes the ratio at market rates and trend growth (L7 1c). The US has closed gaps of that order before (1990s, memory, not lane-verified). Passive inflation is already doing part of the job: with nominal GDP near 6% and an average debt cost of 3.5%, the ratio rises only about 0.4 pp a year (L1 arithmetic). "Only AI" ignores two exits that are operating.
- *Political failure is a weak premise for a technological conclusion.* If Congress cannot hold spending flat, it will not hold spending flat when AI revenue arrives either. The proponent needs Congress to be unable to cut but able to refrain from spending a windfall. Both conditions are political. L7 shows that if spending scales with GDP, the +2.26 pp AI case still ends at 107%.
- *Disinflation is not visible and would hurt the debt math anyway.* H0 shows the opposite: FOMC staff name AI-buildout goods (memory chip prices up about 300% y/y per TBAC) as an inflation driver (L1, T2). PJM wholesale power is up 41% (L3). Blackwell GPU rental rose 48% in two months (L3). And L1 chain 4 shows that disinflation without lower real rates closes the quiet inflation tax, so the debt ratio climbs faster. Musk's "massive disinflation" is bad for the debt unless real growth arrives first.
- *Robots are a rounding error before 2030.* About 14,500 humanoids shipped worldwide in 2025, Tesla about 150 (L4, T4). Tesla external Optimus deliveries are guided for around end-2027 and the 20,000-a-week rate needs "at least a year" (L4, T2). Musk timelines have slipped 1 to 2 years before (L4 say/do). Even 10M humanoids would be about 0.3% of a global labor force of about 3.6B (L4, memory figure).
- *Energy caps the growth dividend.* IEA projects data center demand to about double to 950 TWh by 2030. PJM cleared at its price cap with a 6,623 MW shortfall. US cell capacity is about 3.2 GW against Musk's "200 GW" (L3, L6). If power lags, AI shows up as power-price inflation, not output (L3 chain B).
- *UHI turns a 2.9% treadmill into a 27% one* (see Accountant).

## 3. Accountant

Balance-sheet checks. Every claim has to say where the money comes from and whose asset is whose liability.

**A. The debt identity (Dc-02).** d(t+1) = d(t) x (1 + i) / (1 + g) + pd, with d = 1.011 (debt held by public over FY2026 GDP) and pd = 2.92%.

| Rate vs growth used | Interest-growth term (pp of GDP per year) | Primary deficit (pp) | Total change (pp) | Primary share |
|---|---|---|---|---|
| Real: 10y TIPS 2.76% vs trend 2.50% | +0.26 | +2.92 | +3.18 | 92% |
| Blended market 4.88% vs trend nominal 4.93% | minus 0.05 | +2.92 | +2.87 | 102% |
| 10y nominal 5.13% vs trend nominal 4.93% | +0.19 | +2.92 | +3.11 | 94% |
| Effective 3.23% vs trailing 10y nominal growth 5.70% | minus 2.36 | +2.92 | +0.56 | n/a (the snowball term offsets 81% of the primary deficit) |

Panel arithmetic from L7 inputs. Read: at market rates the primary deficit is 92 to 102% of the drift. The current calm (+0.4 to +0.6 pp a year) exists only because legacy coupons (3.5%) sit below inflated nominal growth (about 6%). That subsidy shrinks as 70% of the debt reprices within 5 years.

Note on a common confusion: interest is 52.8% of the cash deficit ($1,051.8B of $1,992.5B), so "interest is the problem" is true for cash flow. For the debt *ratio*, interest is mostly offset by nominal growth eroding the stock. Both statements are true. They answer different questions.

**B. AI revenue (Dc-01, Dc-03).** $8.1T x 16.8% = $1.36T a year at full effect (L7). That balances only if (1) the extra output lands in taxable income at the average ratio, (2) non-interest spending does not rise with it, and (3) the interest rate on the debt does not rise. Check on (1): corporate taxes fell 15.6% in FY2026 while profits surged (T0). Check on (3): the savings-investment identity says private investment (hyperscaler capex about $700 to 725B, +77%) plus a 6.2% of GDP federal deficit must be funded by domestic saving, foreign saving (current account deficit 3.0% of GDP, L6) or a higher real rate. The real 10y rose 82 bp. The identity is clearing through price.

**C. The September hike (Dc-07).** Direct pass-through of 25 bp:
- Bills plus FRNs: ($7.118T + $0.708T) x 0.25% = $19.6B a year, 1.9% of net interest, 0.06% of GDP, 2.1% of the primary deficit.
- Consolidated with the Fed (reserves $3.02T paid IORB, less the Fed's own $0.566T of bills): about $25.7B a year. The Fed's extra interest on reserves reduces remittances to Treasury, so the consolidated cost is the right one. This ignores ON RRP balances, which are not in the lanes.
- For scale, L7 shows a 100 bp parallel move across the whole curve changes interest by about $113B in year 1 and about $358B by year 5. The market-set long end (10y +45 bp from 2026-07-30 to 2026-10-21, calibration) matters several times more than the hike.

**D. Deficit-financed UHI (Dc-08).** Cost = 262M adults x $30k = $7.86T (L4 rounds to $7.9T, memory figure for adults). Panel arithmetic, L7 model logic (i = 4.88% on all debt, nominal growth 4.93%, starting d = 101%):

| UHI per adult | Annual cost | % of GDP | vs FY2026 outlays | vs FY2026 receipts | New deficit (% GDP) | Debt/GDP yr 1 | yr 5 | yr 10 |
|---|---|---|---|---|---|---|---|---|
| none | 0 | 0 | | | 6.1% | 103.9% | 115.3% | 129.7% |
| $10k | $2.62T | 8.0% | 35% | 48% | 14.2% | 112.0% | 156.0% | 210.8% |
| $20k | $5.24T | 16.1% | 71% | 97% | 22.2% | 120.1% | 196.6% | 291.9% |
| $30k | $7.9T | 24.1% | 106% | 145% | 30.3% | 128.4% | 237.8% | 374.3% |
| $30k, rates +100 bp | | | | | | 129.4% | 245.3% | 396.3% |
| $30k, rates +200 bp | | | | | | 130.3% | 253.1% | 419.9% |

- The treadmill goes from about +2.9 pp of GDP a year to about +27 pp a year.
- Nominal growth needed to stabilize the ratio with a $30k UHI: about 44% a year (g_n = (pd + d x i) / (d minus pd), pd = 27.4%).
- Even with Musk's full $8.1T AI effect, the extra revenue ($1.36T) covers about 17% of a $7.9T UHI. The primary deficit would still be about 18.4% of the larger GDP.
- At year 10 in the $30k case, interest alone would be about 18% of GDP (3.74 x 4.88%), more than total receipts today (16.8% of GDP).
- "Just issue dollars" (Musk) does not escape this. If the Fed creates reserves to fund the checks, those reserves pay IORB (3.90%). $7.9T of new reserves costs about $308B a year in the first year, rising each year. Money finance is the shortest-maturity debt there is. It becomes interest-free only if the Fed sets IORB near zero, which means giving up rate control while inflation is 3.6 to 3.7%.
- Offsets not modeled: a UHI would partly replace Social Security, SSI, SNAP and EITC, and would be partly taxed back. The size of those offsets is not in the lanes (gap). They would lower the net cost, not change the conclusion at $30k.

**E. Whose asset (Dc-06).** Net interest of $1.05T is income to bondholders. AI profits are income to shareholders (top 10% hold about 87% of equities, secondary, L4). So both the fiscal channel (interest) and the AI channel (profits) route new income to existing asset holders. Workers and UHI recipients hold income streams, not those assets. Non-owners can borrow only against income (DTI-capped), while owners borrow against appreciating collateral (L4 chain 2). The balance sheet does balance. It balances by concentrating claims.

**Claims that do not balance:** (1) "UHI is self-financing because output outruns money" has no funding line before output arrives. (2) "AI revenue covers the deficit" assumes a receipts ratio the FY2026 corporate tax data contradicts in the short run. (3) Mallers' "refinance from 2% to 5%" uses the wrong starting rate (3.52%, L6, L1).

## 4. Historian

Dates and magnitudes not found in the lanes are tagged "memory, not lane-verified" and listed as gaps.

| Precedent | What happened | What it predicts for this cluster |
|---|---|---|
| 1946 to 1974 debt reduction | US debt held by the public fell from about 106% of GDP to about 24% (memory, not lane-verified). Drivers: real growth, inflation surprises, and financial repression (the 1942 to 1951 Fed peg of Treasury yields), with roughly balanced primary budgets. No single technology did it | The historical default exit is growth plus inflation plus repression, not technology alone. Supports Dc-09 and refutes the "only" in Dc-01 |
| 1951 Treasury-Fed Accord | The Fed regained the right to set rates against Treasury's wish (memory) | Warsh's 12-0 hike against the President, SOMA staying out of the yen trade and no FIMA upsizing (L1) are an Accord-style assertion. Evidence against strong fiscal dominance today (Dc-07) |
| 1930s Technocracy and "technological unemployment" | Mass unemployment blamed on machines. Technocracy Inc. proposed energy certificates. Keynes (1930) wrote of technological unemployment (memory). Musk's grandfather was a Technocracy member (L3, T4). The price system did not collapse. The New Deal absorbed the demand with transfers and public works | Fears of machine-driven mass unemployment ran decades ahead of outcomes. The political answer was transfers financed by deficits, followed later by wartime inflation. Supports Dc-05 timing skepticism and frames UHI as a New Deal-style response |
| Electrification, 1890s to 1920s | Productivity gains from electric motors arrived decades after the technology, once factories were redesigned (Paul David's "dynamo" argument, memory) | General-purpose technologies hit measured productivity with long lags. Supports Dc-05 and the H1 to H2 timing of Dc-04 disinflation |
| 1971 Nixon shock | Guns-and-butter deficits plus a fixed gold price ended with suspension of convertibility and a decade of inflation (memory) | When fiscal pressure meets a monetary constraint, the constraint usually breaks, not the spending. Supports Dc-09 as the default |
| 1974 and 1979 oil shocks | Energy supply shocks produced inflation and recession despite ongoing technical progress (memory) | 2026 has an oil shock (Brent peak about $126, WTI $98) layered on AI power demand. Energy-driven inflation can dominate any productivity disinflation in the short run (Dc-04 H0) |
| 1979 to 1982 Volcker | High real policy rates for several years while deficits rose. Debt ratio rose through the 1980s (memory) | Mallers' mechanism is real when the real policy rate stays high for years. Today the real policy rate is about 0.2 to 0.7% on 12-month inflation, far from Volcker (Dc-07) |
| 1995 to 2001 IT boom and the 1998 surplus | Productivity accelerated. The budget moved to surplus from 1998 to 2001, helped by capital gains revenue and by deficit rules from 1990, 1993 and 1997 (memory). Real rates were high and the Fed hiked in 1999 to 2000. The boom ended in the 2000 bust and the surplus was gone by 2002 | The one historical case of "tech boom fixes the budget" needed both a boom and spending discipline, and it did not survive the bust. Direct precedent for Dc-03's conditions |
| 2008 to 2021 low-rate era | r was below g for a decade, so debt could rise without a snowball (memory) | That era is over. L7 shows r roughly equal to g at the margin. The free lunch that let deficits run without ratio pain has ended (Dc-02) |
| 2020 to 2022 pandemic transfers | Direct federal checks plus Fed bond buying, followed by the highest inflation in four decades (memory, CPI peaked about 9% in mid 2022) | The nearest real test of "issue dollars to people". Output recovered, and inflation still came. Supports Dc-08 and contradicts Musk's claim that money-financed checks are safe if output grows |
| 1933 to 1934 gold revaluation | Gold price raised from $20.67 to $35, a one-off fiscal windfall (memory) | L7 and L1: revaluing today's gold books about $1.07T, about one year of net interest. One-offs do not fix a recurring 2.9% primary deficit |

Historian's summary: no precedent shows technology alone fixing a sovereign debt. The tech-boom precedent (1990s) needed discipline. The transfer precedents (1930s, 2020) ended in inflation. The default resolution of fiscal pressure is inflation and repression, slowed only when a central bank asserts independence, which Warsh is doing now.

## 5. Incentive mapper

| Actor | Gains if the "AI fixes the debt" story is believed | Loses if | Decides what | Say / do gap |
|---|---|---|---|---|
| Musk (Tesla, SpaceX-xAI, solar) | Robots, compute, solar and launch become the strategic national assets. UHI funds demand for robot output. IPO narrative ($1.25T combined) | Austerity or a debt crisis cuts demand. Energy rationing | Corporate capex, public narrative | Led DOGE cuts, now wants federal checks. "200 GW" in present tense vs about 3.2 GW US cells. "Massive disinflation" while his firms bid up GPUs and power |
| Hyperscalers | Cheap capital, public tolerance for power price rises | Real rates up, power caps, AI tax | $700 to 725B capex | Sell automation while their economists report no material job effect (Anthropic, L4) |
| Utilities, IPPs | Capacity prices at cap, regulated returns | Political caps on bills | Power supply | None material |
| Warsh Fed | Credibility, institutional independence | Inflation persists, or a debt accident forces intervention | Policy rate, balance sheet | Candidate Warsh urged cuts, Chair Warsh hikes (L1). Acts on "independence is a two-way street" |
| Bessent Treasury | Growth story lowers term premium. Captive demand funds bills | Long-end selloff, Japan selling | Issuance mix, buybacks, ESF | "Grow our way out" while buying back long bonds and leaning on bills, the opposite of his pre-office criticism of Yellen (L1, calibration) |
| Trump | Lower rates, growth credit | Fed hikes | Appointments, pressure | Wanted cuts, his appointee hiked 12-0 |
| Congress | Spend now, credit AI later | Visible cuts | Spending, taxes, any UHI | Deficit up 12% in an expansion |
| Mallers (Strike, Bitcoin) | Debt spiral and printing narrative lifts BTC | Fed credibility holds, debt stabilizes | Nothing official | Every branch of his chain ends at "Bitcoin rises" (L6) |
| Alden | Fiscal dominance and debasement support BTC and gold | Disciplined fiscal path | Nothing official | Openly short the dollar. Discloses it |
| ARK (Staudt) | Rate cuts and liquidity lift long-duration tech | Hikes | Nothing official | Forecast 2 to 4 cuts, got a hike (L6) |
| Amodei, Altman | Policy urgency, product demand | Regulation, AI taxes | Product, lobbying | Amodei warns of an underclass while selling automation. Altman moved from UBI to compute and ownership, which routes through his products (L4) |
| Bondholders, money funds | Higher yields on new bills | Inflation tax on legacy coupons | Price of debt | None. Their revealed preference is short duration |
| Workers | Complemented-job premium | Entry-level hiring freeze (22 to 25 year olds 19% below peers in exposed roles) | Little | n/a |
| UHI recipients (future) | A floor | Inflation erodes cash, no asset path | Votes only | n/a |

Who decides: the Fed decides the short rate, the market decides the real long rate, Congress decides spending and any UHI, and corporate capex decides how fast AI capacity arrives. None of the actors who say "AI will fix the debt" decides spending. The actor who decides spending (Congress) has the strongest revealed preference for spending any windfall.

---

## 6. Judge

### 6.1 Rulings table

| id | title | status | confidence | horizon |
|---|---|---|---|---|
| Dc-01 | Musk: only AI and robots can solve the US debt | Refuted | 70 | H1 |
| Dc-02 | The treadmill is the primary deficit, not r minus g | Confirmed | 80 | H0 |
| Dc-03 | AI fixes the debt only if spending and real rates do not rise with growth | Confirmed | 75 | H1 |
| Dc-04 | AI disinflation vs energy and capex inflation, by horizon | Plausible | 65 | H0 |
| Dc-05 | Robots are not a macro labor substitute before 2030 | Plausible | 85 | H0 |
| Dc-06 | Rising capital share is the real AI transmission channel | Plausible | 55 | H1 |
| Dc-07 | Warsh's 2026 hike is "gasoline on the fire" (Mallers) | Refuted | 70 | H0 |
| Dc-08 | Deficit-financed UHI makes the treadmill explosive | Confirmed | 90 | H1 |
| Dc-09 | Default exit is passive inflation and plumbing repression | Plausible | 60 | H1 |
| Dc-10 | The AI debt dividend is an energy-supply bet | Plausible | 55 | H1 |
| Dc-11 | Net interest exceeds defense spending | Confirmed | 95 | H0 |

Dc-09, Dc-10 and Dc-11 were added by the judge because the arguments kept relying on them.

### 6.2 Rulings with reasons

**Dc-01. Refuted (70), H1.** Ruling applies to the word "only". On T0 inputs, a primary adjustment of about 2.9% of GDP stabilizes the ratio (L7 1c). Passive inflation is already holding the drift to about 0.4 to 0.6 pp a year (L1, panel arithmetic). History shows growth, inflation, repression and discipline doing the work, never technology alone. What survives: AI is *a* sufficient path under conditions (Dc-03), and the political version ("no other path will actually be chosen") is Speculative at about 40. Decisive evidence: L7 sections 1c and 1d, FY2026 MTS. Strongest dissent: the proponent's point that DOGE failed and the deficit rose 12% in an expansion. If fiscal adjustment is politically impossible and Warsh blocks the inflation exit, growth may be the only feasible path, even if not the only arithmetic one. Gaps: CBO baseline, verified history of the 1990s and post-1946 adjustments.

**Dc-02. Confirmed (80), H0.** At market rates the primary deficit is 92 to 102% of annual ratio drift. Real r minus g is +0.26 pp. Decisive evidence: Treasury real yield curve (2.76%), BEA trend growth (2.50%), MTS primary deficit ($940.7B). Strongest dissent: the cash interest bill is half the deficit and growing, and if the 10y TIPS moves above 3% while growth slows, r minus g becomes a real second engine. Also the current calm depends on a temporary snowball subsidy. Gap: CBO's projected r and g path, and a check of the trend-growth assumption against the Q3 2026 BEA release (due 2026-10-29).

**Dc-03. Confirmed as arithmetic (75), H1, with a refinement.** L7's model shows the conditional exactly: AI +2.26 pp with spending held gives 87%, with spending scaling 107%, with real rates rising one-for-one 129% (same as no AI). Refinement: the real-rate condition binds at any size. The spending condition binds only below about +3 pp of extra growth (stabilization at market rates needs about 5.5% real growth). A third condition must be added: the gains must land in taxable income. Decisive evidence: L7 1d. In H0, condition two is already failing (real 10y +82 bp in 2026, Warsh citing hyperscaler competition for capital) and condition three looks weak (corporate taxes minus 15.6%). Strongest dissent: the 2026 real-rate rise may reflect the oil shock, Japan selling and term premium rather than AI capital demand, in which case it can reverse. Gaps: empirical elasticity of real rates to growth, FY2026 corporate tax decline decomposition.

**Dc-04. Plausible (65), H0 inflation wins. H1 contested. H2 goods disinflation likely but bounded.** H0 evidence points one way: FOMC staff name AI-buildout goods (memory chips up about 300% y/y) among inflation drivers (T2). PJM power +41%, US wholesale +11% (T3/T4). GPU rents +48% in two months. Capex +77%. PCE 3.6 to 3.7% with Q2 at 5.0% annualized. No AI disinflation is visible in aggregate prices, and margins (unit profits +43%) show gains being kept, not passed on. H1: robot-hours at $2 to $5 could push goods and substitutable services down, while energy and Baumol services push up. Call it even. H2: commodity restaurant prices could fall 10 to 25% real, groceries 5 to 12% (L4), which is disinflation, not "massive". Musk's "massive disinflation that requires issuing dollars" is Speculative (25). Strongest dissent: the H0 inflation is mostly the Hormuz oil shock and tariffs, not AI, so it says little about AI's net sign. Gap: decomposition of PCE into energy, electricity, chips and core goods. Note for the debt: disinflation without lower real rates worsens the ratio (L1 chain 4).

**Dc-05. Plausible (85), H0.** About 14,500 humanoids in 2025, Tesla external deliveries guided for end-2027, a history of 1 to 2 year slips, and a 5M industrial robot stock concentrated in China (59% of 2025 installs) and in manufacturing. L4's own odds put a 1M humanoid fleet by 2028 below 10%. The pre-2030 labor effect is coming from software AI on entry-level hiring, not robots. Strongest dissent: Chinese makers (Unitree, AgiBot) are scaling faster than Western firms, prices are already $5,900 to $16,000 for small units, and narrow robots (Flippy-style, warehouse) can substitute in specific sectors before humanoids. Gaps: audited 2026 humanoid shipments, Optimus unit cost, sector-level robot density in US logistics and food service.

**Dc-06. Plausible (55), H1.** The facts are T0: labor share 52.8% (record low), unit profits +43% annualized, unemployment flat. The channel is coherent: profits and interest income flow to asset holders, owners borrow against rising collateral, non-owners are DTI-capped. What is not established: that AI causes it (the labor share has fallen since about 2000, and Q2 2026 margins coincide with 5% inflation and an oil shock), and the asset-price leg (no equity or house-price data in the lanes). Implication if it holds: asset prices outrun wages, the right UHI design is partly ownership (Trump Accounts, Alaska-style fund units), and a cash-only UHI leaves recipients exposed to inflation. Strongest dissent: the labor share is cyclical and noisy, and record-low readings have reverted before. Gaps: BEA corporate profits by industry, Fed DFA primary data, equity market cap to GDP and house price to income series.

**Dc-07. Refuted (70), H0.** Mallers' "gasoline" claim fails on magnitude and on its own inputs. The direct cost of 25 bp is about $20 to 26B a year (about 2% of net interest). The real policy rate is about +0.2% on 12-month PCE (3.7%), +0.7% on core (3.2%) and minus 1.1% on Q2 annualized PCE (5.0%). That is mild, normal inflation fighting after what Warsh calls 65 months of elevated inflation. His other numbers are overstated: the debt reprices from 3.52% to about 4.9%, not 2% to 5%. Real r minus g is +0.26 pp, not about +1 pp. The long end is rising on real rates set by the market, not on the hike. The hike is also evidence *against* fiscal dominance: classic dominance would have the Fed accommodate. Strongest dissent: with bills at 22.4% of the stock and rising, every further hike passes through within months (L1 chain 3). Two or three more hikes, plus a higher long end, compound into a material cost, and the Volcker era shows that years of positive real policy rates can raise the debt ratio. Gaps: event study of term premium and breakevens around 2026-09-16, Fed remittance and deferred-asset data, MOVE reading.

**Dc-08. Confirmed as arithmetic (90), H1.** A $30k UHI ($7.9T) is 24% of GDP, 106% of all FY2026 outlays and 145% of receipts. Financed by deficits it raises the primary deficit from 2.9% to about 27% of GDP and takes debt from 101% to about 128% in year 1, 238% in year 5 and 374% in year 10 at constant rates (higher if rates rise). Stabilizing it needs about 44% nominal growth. Even Musk's full AI dividend covers about 17% through taxes. Money finance via reserves still pays IORB. Strongest dissent: offsets (replacing existing transfers, taxing UHI back, means testing), a smaller UHI, or an H3-scale output boom change the numbers. A $10k UHI is still 8% of GDP and reaches about 211% of GDP by year 10. Gaps: adult population (262M is a memory figure), size of offsetting programs, any official UHI cost estimate.

**Dc-09 (added). Plausible (60), H1.** The revealed exit is passive inflation plus "repression lite through the plumbing": nominal growth about 6% vs an average debt cost of 3.5%, bill share rising, buybacks of long bonds funded by bills, captive buyers via eSLR, money funds and GENIUS stablecoins (L1, Confirmed as strategy). It is not active Fed repression (Warsh hikes), and the 2.37% breakeven says the market is not pricing an inflation exit. Strongest dissent: as debt reprices and if inflation falls to 2%, the subsidy closes and the ratio climbs faster. Gap: CBO path under 2% vs 3% inflation.

**Dc-10 (added). Plausible (55), H1.** AI output is energy-bound, and energy supply is already short where AI is being built (PJM at its cap, 6,623 MW short, data centers explaining about 5,100 MW of the peak rise). Musk himself said electricity additions grow about 4% a year while chip output grows far faster (L3, T2). Crude panel arithmetic: adding 2.26 pp to 2.5% trend growth with energy intensity improving 1.7% a year needs about 3% a year more energy, against world primary energy growth of 1.4% in 2025 (L7). AI output is more power-intensive than average GDP, so this understates the need. If power lags, the dividend arrives as power-price inflation (Dc-04) and higher real rates (Dc-03), not as revenue. Strongest dissent: efficiency per token improves very fast, US electricity use already grew 4% y/y in 3Q26, and gas, nuclear restarts and solar plus storage can scale. Gaps: US generation growth vs GDP, interconnection queue and turbine lead times, energy share of AI inference cost.

**Dc-11 (added). Confirmed (95), H0.** Net interest exceeded defense for three straight years: FY2024 +$7.6B, FY2025 +$53.7B, FY2026 +$86.6B ($1,051.8B vs $965.2B). Defense plus veterans ($1,381B) is still larger. Net interest is 19.5% of receipts and roughly equal to Medicare ($1,072.6B). Dissent: function 900 net interest nets out some interest income, and gross interest is $1,360B. Using gross makes the claim stronger. Gap: none material.

### 6.3 Reloop gap list (what a reloop must fill)

1. **CBO baseline and Monthly Budget Review** (latest): projected primary deficit, r and g, and how CBO treats AI productivity. Needed for Dc-01, Dc-02, Dc-03, Dc-09.
2. **FY2026 corporate income tax decline (minus 15.6%)**: cause (expensing, refunds, profit mix). Decides whether AI gains reach taxable income (Dc-03).
3. **Real rate to growth elasticity**: empirical evidence, plus a decomposition of the 2026 real 10y rise (82 bp) into AI capital demand, term premium, Japan selling and oil (Dc-03, Dc-10).
4. **Event study around the 2026-09-16 hike**: ACM term premium, breakevens, 2y and 10y moves, MOVE. Decides the residual Mallers argument (Dc-07).
5. **Fed remittances and deferred asset** after the hike, plus ON RRP balances, to finish the consolidated cost of a hike (Dc-07).
6. **PCE and CPI decomposition**: energy, electricity, semiconductors and core goods. The Q3 GDP and PCE release is due 2026-10-29 (Dc-04).
7. **UHI offsets**: adult population (verify 262M), current outlays on Social Security, SSI, SNAP, EITC, and any CBO score of a UHI-type bill (Dc-08).
8. **Asset prices vs wages**: equity market cap to GDP, house price to income, Fed DFA top 1% and top 10% shares from the primary source, BEA profits by industry (Dc-06).
9. **Robots**: audited 2026 humanoid shipments, Optimus unit cost, US robot density in logistics and food service (Dc-05).
10. **Energy**: US generation growth vs GDP, interconnection queue length, gas turbine and transformer lead times, energy share of AI inference cost (Dc-10).
11. **History (memory items)**: post-1946 debt path and its decomposition, the 1990s surplus drivers and real rates, 2021 to 2022 inflation peak, 1980s debt path. All tagged "memory, not lane-verified" above.
12. **Primary transcripts**: the Musk Isaacson interview text for the debt and disinflation lines, and the Mallers "Europe is screwed" video (still only an orchestrator summary).
13. **AI capex share of GDP growth**: how much of the Q3 nowcast (above 4%) is AI investment demand rather than productivity. Decides whether growth is supply (debt-reducing) or demand (rate-raising).

---

## 7. Thesis cards

Full cards with evidence lists are in `round1/debates/Dc-ai-debt.json`. Summary of each card below.

### Dc-01 Musk "only AI and robots" (Refuted, 70, H1)
- **Statement:** Musk's claim that only AI and robots can solve the US debt is false as arithmetic. A primary adjustment of about 2.9% of GDP, or continued inflation above the average debt cost, also stabilizes the ratio. AI is one sufficient path under conditions, not the only one.
- **Mechanism:** primary deficit 2.92% of GDP and r about equal to g, so the ratio rises about 2.9 pp a year. Any lever that closes the 2.9% works: cuts or taxes, AI revenue, or inflation eroding the stock.
- **Falsifier:** CBO or Treasury modeling showing that no fiscal adjustment within historical range can stabilize the ratio, or a 2.9% adjustment proving to raise rates enough to cancel itself.
- **Tripwires:** primary deficit (2.92% of GDP, worse above 3.5%), real GDP 4-quarter growth (2.2%, AI signal above 3.5% for 4+ quarters), FY2027 deficit (FY2026 $1,992.5B).
- **Views:** Governance: AI optimism is not a substitute for a budget rule. Business: do not price a fiscal fix from AI before revenue shows it. UHI or wage earner: a debt plan built only on AI puts your benefits at the mercy of a forecast.

### Dc-02 Treadmill is the primary deficit (Confirmed, 80, H0)
- **Statement:** At market rates the US debt ratio rises about 2.9 to 3.2 pp of GDP a year, and 92 to 102% of that is the primary deficit. Real r minus g adds only about 0.26 pp.
- **Mechanism:** d(t+1) = d x (1+i)/(1+g) + pd. With i about equal to g, the ratio moves by about pd each year.
- **Falsifier:** 10y TIPS above 3.5% with real growth below 2% for a year, making the interest-growth term larger than 1 pp.
- **Tripwires:** 10y TIPS (2.76%, threshold 3.0%), average marketable rate (3.518%, threshold 4.0%), trend real growth (2.50%).
- **Views:** Governance: the controllable variable is the primary balance. Business: debt stress shows up first as higher real yields. UHI or wage earner: interest-rate politics matter less than spending and tax choices.

### Dc-03 AI fixes the debt only under conditions (Confirmed as arithmetic, 75, H1)
- **Statement:** A Musk-scale AI boom (+2.26 pp growth) cuts debt to about 87% of GDP by year 10 only if spending stays on its pre-AI path, real rates do not rise with growth, and the gains land in taxable income. If rates rise one-for-one, the ratio ends near 129%, the same as no AI.
- **Mechanism:** AI output, then receipts, then a smaller primary deficit, unless spending rises with income, or higher investment demand raises real rates, or capex expensing defers taxes.
- **Falsifier:** productivity growth above 2.5% for 4+ quarters with flat real yields and rising corporate tax receipts.
- **Tripwires:** 10y TIPS (2.76%, up 82 bp YTD), nonfarm productivity (+2.2% y/y, threshold 2.5%), corporate tax receipts (FY2026 $381.4B, minus 15.6%), non-interest outlays growth vs nominal GDP.
- **Views:** Governance: pre-commit AI revenue to deficit reduction (a fiscal rule) or it will be spent. Business: an AI boom raises the cost of capital, not just profits. UHI or wage earner: a UHI paid out of AI gains competes directly with the debt fix.

### Dc-04 AI disinflation vs energy and capex inflation (Plausible, 65, H0 focus)
- **Statement:** In H0 the inflationary side (power, chips, capex demand, plus the oil shock) wins. H1 is contested. In H2 robots likely push goods and commodity services down by 5 to 25% in real terms, which is disinflation, not "massive disinflation".
- **Mechanism:** H0: AI capex bids for power, chips and capital faster than supply. H1 to H2: robot-hour cost caps substitutable wages and prices, while energy, land and human services (Baumol) push the other way.
- **Falsifier:** core goods PCE negative for 4+ quarters with electricity CPI flat while AI capex keeps rising.
- **Tripwires:** PJM and US wholesale power prices (+41%, +11%), GPU rental index ($4.08 per hour in April 2026), core goods PCE, 10y breakeven (2.37%).
- **Views:** Governance: do not plan UHI on a disinflation that has not appeared. Business: power contracts and chip supply are the H0 cost risks. UHI or wage earner: electricity and rents rise before robot-made goods get cheaper.

### Dc-05 Robots not a macro labor substitute before 2030 (Plausible, 85, H0)
- **Statement:** Humanoid and service robots will not displace labor at macro scale before 2030. The labor effect before 2030 comes from software AI on entry-level hiring.
- **Mechanism:** about 14,500 humanoids in 2025, Tesla external deliveries end-2027, at least a year to reach 20,000 a week, reliability as the binding constraint.
- **Falsifier:** global humanoid shipments above 500k a year before 2029, or US food-service or warehouse employment falling more than 10% with robot deployment cited.
- **Tripwires:** Optimus external deliveries (target end-2027), global humanoid shipments (about 14,500 in 2025, threshold 100k a year), RaaS price per human-equivalent hour (about $5 for Flippy, threshold below $8 at scale).
- **Views:** Governance: there is time to design UHI and retraining before robots scale. Business: robots-as-a-service lets small firms test automation without capex. UHI or wage earner: entry-level white-collar jobs are the near-term risk, not robots.

### Dc-06 Capital share is the transmission channel (Plausible, 55, H1)
- **Statement:** AI enters the monetary system mainly by shifting income from wages to profits and interest, which lifts asset prices relative to wages. The facts (record-low labor share) are confirmed. AI as the cause is not.
- **Mechanism:** substitution, then labor share down, then profits capitalized, then asset prices outrun incomes, then owners borrow against collateral while non-owners are DTI-capped.
- **Falsifier:** labor share back above 56% within two years while AI adoption rises.
- **Tripwires:** labor share (52.8%, threshold below 52%), unit profits, top 1% wealth share (32.5% secondary, threshold 33%).
- **Views:** Governance: pay part of any transfer in ownership, not only cash. Business: owning AI and power assets beats selling labor-intensive services. UHI or wage earner: a cash income without an equity slice falls behind asset holders.

### Dc-07 Warsh hike as "gasoline" (Refuted, 70, H0)
- **Statement:** The September 2026 hike is mild, normal inflation fighting, not a fiscal accelerant. Its direct cost is about $20 to 26B a year, about 2% of net interest. The long end, not the policy rate, drives the debt cost.
- **Mechanism:** 25 bp on about $7.8T of bills and FRNs (plus reserves on a consolidated basis) passes through within months. Long yields are set by the market and are rising on real rates.
- **Falsifier:** the Fed hiking to 5% or more while core PCE is below 3%, or an event study showing the hike raised the 10y term premium by more than 25 bp.
- **Tripwires:** fed funds (3.75 to 4.00%, Oct 28 and Dec meetings), bill share (22.36%, threshold 25%), net interest to receipts (19.5%, threshold 25%).
- **Views:** Governance: Fed independence is holding, which caps the inflation exit. Business: expect higher-for-longer short rates. UHI or wage earner: mortgage costs (7.40%) come from the long end more than from the Fed's hike.

### Dc-08 Deficit-financed UHI (Confirmed as arithmetic, 90, H1)
- **Statement:** A $30k-per-adult UHI ($7.9T a year, 24% of GDP) financed by deficits raises the annual debt drift from about 2.9 to about 27 pp of GDP, taking debt to about 238% of GDP in 5 years and 374% in 10. Money finance does not escape, because reserves pay interest.
- **Mechanism:** primary deficit 2.92% plus 24.1% of GDP, then compounding at 4.88%, then interest above total receipts by year 10.
- **Falsifier:** an official cost estimate showing offsets above 60% of gross cost, or real growth above 20% a year.
- **Tripwires:** any UHI or AI-dividend bill with a CBO score, IORB (3.90%), 10y breakeven (2.37%, threshold 2.75%).
- **Views:** Governance: a UHI needs a dedicated revenue base (capital or AI rents) or an equity design. Business: a deficit-funded UHI means inflation and higher rates. UHI or wage earner: a cash UHI funded by borrowing would be eroded by the inflation it causes.

### Dc-09 Passive inflation and plumbing repression (Plausible, 60, H1)
- **Statement:** The exit actually operating is passive inflation (nominal growth about 6% vs average debt cost 3.5%) plus steering captive buyers into bills, not AI or austerity.
- **Mechanism:** inflation above the average coupon erodes the ratio, bills are sold to money funds, banks and stablecoins, and long bonds are bought back.
- **Falsifier:** inflation back to 2% with the average rate above nominal growth, or Treasury terming out sharply at the Nov 4 refunding.
- **Tripwires:** bill share (22.36%), 10y breakeven (2.37%), Nov 4 2026 refunding coupon sizes.
- **Views:** Governance: repression lite buys time but transfers wealth from savers. Business: short-duration assets and real assets are favored. UHI or wage earner: cash savings lose quietly.

### Dc-10 AI dividend is an energy-supply bet (Plausible, 55, H1)
- **Statement:** The AI growth dividend reaches the budget only if US power supply grows about as fast as AI output. If power lags, the dividend shows up as higher power prices and real rates, not revenue.
- **Mechanism:** AI demand outruns grid additions, capacity prices hit caps, power costs rise, and output and revenue gains are smaller than the model assumes.
- **Falsifier:** PJM capacity clearing well below its cap with no shortfall while data center load keeps growing.
- **Tripwires:** PJM capacity price ($333.44/MW-day, at cap), US cell capacity (about 3.2 GW, threshold 20 GW by 2028), data center TWh (485 TWh in 2025).
- **Views:** Governance: grid permitting is debt policy. Business: firm power is the scarcest asset of H0 to H1. UHI or wage earner: households pay higher power bills during the build-out.

### Dc-11 Interest exceeds defense (Confirmed, 95, H0)
- **Statement:** US net interest exceeded national defense outlays in FY2024, FY2025 and FY2026 ($1,051.8B vs $965.2B in FY2026), as Musk said.
- **Mechanism:** average rate rose from 3.0% (2023) to 3.5% on a growing stock, and keeps rising as debt reprices.
- **Falsifier:** an MTS revision or reclassification.
- **Tripwires:** net interest to receipts (19.5%, threshold 25%), net interest vs Medicare ($1,072.6B).
- **Views:** Governance: interest now competes with every program. Business: Treasury supply stays heavy. UHI or wage earner: interest is the fastest-growing claim on taxes.
