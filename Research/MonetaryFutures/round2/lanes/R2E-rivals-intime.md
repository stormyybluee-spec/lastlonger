# R2E: Rival countermoves, and the "In Time" scenario (Round 2)

Lane: R2E. Written 2026-10-22. As-of for market data: 2026-10-21/22 unless stated.
Owner questions: Q9, Q10. Moderator questions: M16, M17, M18.
Builds on: R1 L5 (reserves, TIC, gold, Gulf), R1 L3 (China as energy mint, solar capacity), R1 L1 (Fed, Treasury, yen op), R1 L7 (debt arithmetic, kWh unit), R1 Db (US strategy, rival boards), R1 Dc (labor share, asset prices gap).
Method: about 24 web searches, direct fetches of primary data (BLS data viewer, BLS CPI and real earnings releases, FHFA HPI master file, Fed Distributional Financial Accounts zip, College Board 2025 report PDF, Cox/KBB, NAR, MOFCOM coverage, Rystad). Models are in python3 -I scripts in the session scratchpad (`r2e/scripts/timeprice.py`, `dfa_calc.py`, `levers.py`). Inputs are tagged [V] verified this session or [M] memory, not re-verified.

---

## Answers

### Q9. What could rivals do to jeopardize the US plan, given that energy is priced in USD?

The rivals' strongest card is not the currency that oil is priced in. It is control of the hardware that makes new energy: magnets, battery cells, polysilicon, wafers and the know-how to build them. Money moves (Treasury selling, yuan oil, mBridge, BRICS) have little bite in 2026. China still holds $590.7B of Treasuries (R1 L5). mBridge has done only about $55B in total. BRICS agreed on no currency in New Delhi (Sept 2026). Hardware moves are already live and getting tighter. The April 2025 rare-earth licensing is still in force. The October 2025 package is suspended only until 10 Nov 2026. On 16 Oct 2026 Beijing proposed export bans and restrictions on 12 solar technologies, including wafers of 70 µm or less and polysilicon reactor processes, and export registration started the same day. A "watt-dollar" only works if the marginal watt is built, financed and owned in dollar jurisdictions. So the single most dangerous countermove has two parts. China selectively denies the US the tools to build its own capacity, while supplying cheap panels and batteries, financed in yuan, to the rest of the world. Then the marginal watt outside the US becomes yuan collateral. The US's counterweights are real: it is a net energy exporter, it gets most transformers and breakers from non-Chinese suppliers, and gas and nuclear for data centers depend little on China. But battery storage is the soft spot: 50% of US lithium-ion imports by value came from China in the 12 months to June 2026.
- Status: **Plausible**. Confidence **65**. Horizon **H0 to H1** (the controls are H0, the "yuan watt" in the Global South is H1).
- Three views: **Governance:** energy hardware policy (magnets, cells, wafers) is now monetary policy for a watt-dollar, and the 10 Nov 2026 truce expiry is the first test. **Business:** expect the prices of Chinese-origin parts to swing with the negotiating calendar, and build non-China supply for storage first. **Ordinary person (wage or UHI):** supply squeezes show up as higher power bills and pricier EVs, motors and home batteries, not as a dollar crash.

### Q10. Does this end like the movie "In Time", where time becomes the currency and the poor run out of it?

Literally, no. Figuratively, partly yes, and the data show exactly where. Since February 2020 the average hourly wage rose 32.5% and CPI rose 30.3%, so real pay is up only 1.7% (4.2% for production and nonsupervisory workers) [V]. Over a similar window US house prices rose 59.3% (22% after inflation) and the S&P 500 rose about 140% [V/T3]. Fed data show who got the gains. From 2019 Q4 to 2026 Q2 household net worth rose about $78T. The top 10% took 67.5% of that, the top 1% took 35.4%, and the bottom 50% took 3.1%. The bottom half's own wealth still roughly doubled, from a tiny base [V, T0]. Measured in hours of work, tradeable goods got much cheaper: food at home is down 24% since 1990, quality-adjusted new cars down 54%, TVs down about 99%. The "In Time" squeeze is in assets and in services that cannot be traded across borders. The monthly payment on a median home went from about 40 hours of a typical wage in early 2020 to about 68 hours now. A family health premium takes twice the hours it did in 1999. Published college tuition takes 37 to 58% more hours than in 1995, although net tuition after aid has fallen [model]. So it is a fair metaphor for newcomers who do not yet own assets (young people, renters, workers whose employers buy their health cover). It is not fair for people who already own a home or shares, or for anyone measured on a basket of goods.
- Status: **Plausible** (split verdict: confirmed for assets and nontradeable services, refuted for goods). Confidence **70**. Horizon **H0 to H1**.
- Three views: **Governance:** the fix is ownership and supply (housing permits, Trump Accounts, cheaper care), not just CPI indexing, because CPI misses the asset gap. **Business:** sell goods that keep getting cheaper in hours, and expect customers squeezed by rent and health costs. **Ordinary person (wage or UHI):** a wage or UHI indexed to CPI keeps up with groceries but not with a first home. Owning even a small slice of assets is what stops the clock.

### M16. Rival countermoves with teeth

Ranked by a judgment model (threat = cost to US × likelihood × (6 − cost to rival) / 25, inputs scored 1 to 5, table in section 2). The top three are all energy hardware: the "system play" (3.2), rare-earth and magnet controls (3.2) and solar technology controls (3.0). Next come other critical minerals (1.9), battery cells and cathodes (1.4) and the EU digital euro plus MiCA (1.3). Financial moves score low: yuan oil and gold (1.0), CIPS (0.8), a gradual Treasury run-down (0.8), mBridge (0.6), a Gulf pivot (0.5), Russia (0.5), a BRICS currency (0.1) and a Treasury fire-sale (0.1). A fire-sale scores lowest because it would cost China the most. One correction to Round 1: Saudi Arabia left mBridge on 13 May 2025 at the end of a proof of concept, according to SAMA as reported by the FT. That was not a 2026 exit under US pressure (this corrects R1 L5-23). The most telling 2026 financial event was the UAE warning in April that it could sell oil in yuan if it could not get dollars, made while asking for a Fed or Treasury swap line (WSJ via secondary reports). The dollar's weak point is how readily dollars are supplied in a crisis, not its price.
- Status: **Plausible**. Confidence **65**. Horizon **H0**.
- Three views: **Governance:** swap lines and FIMA repo are the cheapest defense of the dollar's role, and hardware stockpiles (the MP Materials $110/kg NdPr floor) are the costliest. **Business:** treat Chinese export-control dates (10 Nov and 27 Nov 2026) as supply-chain events. **Ordinary person:** nothing on this list changes the currency you are paid in before 2028.

### M17. The "In Time" test with data

See Q10 and section 3. Cantillon effect: in 2020 to 2021 new money reached households (stimulus checks) as well as asset holders. That is why the bottom 50%'s share of wealth rose from 1.7% to 2.4% by 2021 Q4 [V]. But asset owners captured most of the dollar gains, and they still are: the top 0.1%'s share rose from 12.4% to 15.0% by 2026 Q2 [V]. PPP research (Autor et al. 2022, [M]) found that most of the roughly $800B went to business owners and shareholders, not to saving jobs. Inflation in 2021 to 2023 hit real wages first. Wages caught up only by 2025 to 2026, while assets compounded. On time prices, Mark Perry's AEI chart (Jan 2000 to Dec 2025, written up by Pooley, Jan 2026) finds CPI up 92.6% and wages up 131.1%. Of 14 items, only five got dearer in hours. In prior editions those five were hospital services, tuition, childcare, medical services and textbooks [M for item names].
- Status: **Confirmed** (the split itself, T0 data). Confidence **75**. Horizon **H0**.
- Three views: **Governance:** use time prices for starter homes, care and health cover as the measure of fairness, not headline CPI. **Business:** a tradeable product gets cheaper in hours by default, while a nontradeable service does not. **Ordinary person:** your hour buys more food and electronics than in 1990, and a smaller share of a house than in 2020.

### M18. Can the US export its inflation, and who absorbs it in 2026?

Partly, and only when the dollar is strong. Under Bretton Woods in the 1960s, US payments deficits forced foreign central banks to buy dollars to hold their pegs. That expanded their money supply and imported US inflation, until Germany revalued and the system broke in 1971 (Connally: "our currency, your problem") [M, history]. In 2022 the dollar hit its highest level since 2000. The IMF estimated that a 10% dollar rise passes about 1 point of inflation to other countries on average [V, T4]. In 2026 the shock is oil priced in dollars with Hormuz shut. The countries that absorb it are oil importers with weak currencies: the rupee hit a record of about 96.9 per dollar in May, the peso went past 60, the rupiah hit 17,315 [T3/T4], and Japan spent about $170 to 175B defending the yen at 158 to 164 (R1 L5). But the US cannot fully export it now. US energy CPI is up 20.4% year on year, and real hourly earnings fell 0.7% in the year to September 2026 [V]. Also, the Mar-a-Lago aim of a weaker dollar against Asia would import inflation rather than export it. The US can export inflation or weaken the dollar for industry. It cannot do both at once.
- Status: **Plausible**. Confidence **65**. Horizon **H0**.
- Three views: **Governance:** dollar strength is an export of inflation, and the 2026 allies (Japan, India, the Philippines) are paying it. **Business:** import costs depend on the dollar cycle. A weaker-dollar policy raises US input costs. **Ordinary person:** US workers are not insulated, because energy is up 20% and real pay is slightly down this year.

---

## 1. Key findings

1. **Energy-hardware controls are China's live lever, and they are tightening on a calendar.** April 2025: case-by-case licences for seven medium and heavy rare earths (Sm, Gd, Tb, Dy, Lu, Sc, Y), still in force. May 2025: China's magnet exports to the US fell 93% year on year to about 46.4t (SCMP, customs data), and Ford idled some US output for lack of magnets (SMM). Oct 2025: an extraterritorial package covering rare earths plus lithium-battery, cathode and graphite-anode items, then suspended after the Busan meeting (30 Oct 2025) until **10 Nov 2026**. A separate suspension (Article 2 of Announcement No. 46, the gallium, germanium and antimony items) runs to **27 Nov 2026**. June 2026: ten US firms put on China's export control list, including MP Materials and USA Rare Earth. July 2026: 14 EU entities. As of 16 to 20 Oct 2026 there was no extension notice, only case-by-case flexibility. Washington says the truce runs to 10 Jan 2027, but Beijing has published no matching text. [T1/T2/T4]
2. **Beijing has just moved from controlling goods to controlling know-how in solar.** On 16 Oct 2026 MOFCOM and MOST proposed adding 12 solar PV technologies to the export catalogue. Proposed bans: polysilicon fluidized-bed processes, wafers of 70 µm or less, perovskite and tandem cells. Proposed restrictions: large polysilicon lines, ingot pulling, wafers of 130 µm or less, TOPCon, back-contact and HJT cell processes. Exporters must register with MOFCOM before shipping, effective immediately. Comments close 15 Nov 2026. China holds above 94% of polysilicon capacity and 97% of wafer capacity (CNIA, end 2024), and about 1,100 GW of module capacity (R1 L3). This goes straight at US onshoring plans, including Musk's "200 GW a year", which rests on about 3.2 GW of US cell capacity (R1 L3-05). [T1 proposal / T4]
3. **Battery storage is the US's softest point, not transformers.** Rystad: China supplied 50% of US lithium-ion battery imports by value in the 12 months to June 2026 (Korea 15%, Japan 13%), but only 3% of transformer imports and under 1% of breaker imports. S&P put China at about 80% of imported cell volume in Q3 2025. EO 14421 (26 Aug 2026) names battery storage systems, inverters, transformers, breakers and turbines as covered grid equipment, with rules due 24 Dec 2026. China also phases out battery export VAT rebates (9% to 6% from 1 Apr 2026, zero from 1 Jan 2027) and ended solar rebates on 1 Apr 2026. [T1/T4]
4. **Financial de-dollarization moves have little bite in 2026.** CIPS grew only 2.7% in 2025 (R1 L5-22). mBridge did 4,047 transactions worth $55.49B through Nov 2025, more than 95% in e-CNY (Atlantic Council via PYMNTS). Saudi Arabia left on 13 May 2025 (SAMA to the FT, Sept 2026). The BRICS New Delhi Declaration (12 to 13 Sept 2026) set no currency, only a Payment Task Force mandate. The digital euro is in trilogue, with a €3,000 holding limit discussed, a pilot in H2 2027 and issuance in 2029 at the earliest. [T1/T2/T4]
5. **The yuan-for-passage story is real but tiny.** Lloyd's List and Bloomberg (Mar to Apr 2026) confirmed "at least two vessels" paid Iran's Hormuz toll in yuan. Tolls are also accepted in stablecoins, reportedly from $1 a barrel. There is no settlement-share data. The PBoC says the yuan settles about 30% of China's $6.2T goods trade. That is China's own trade, not world oil. [T4]
6. **Gold settlement infrastructure is being built, but no central-bank customers are confirmed.** The SGE's first offshore vault opened in Hong Kong (26 Jun 2025, run by BOCHK). Hong Kong central gold clearing and "Delivery Connect" began trials on 7 Jul 2026, settling in CNH under Hong Kong law. S&P reports China is considering vaults in Singapore, Kuala Lumpur, Dubai, Riyadh and Moscow. No foreign central bank is confirmed to store gold there. [T4]
7. **The Gulf is a swing actor that bargains with the yuan threat.** April 2026 (WSJ, via secondary reports): UAE officials warned that oil sales could shift to yuan if they could not get dollars, while the central bank governor floated a swap line with Bessent and the Fed. UAE reserves are about $270B. Bahrain got a $5B swap from the UAE. Saudi crude output fell from 10.11 to 6.87 mb/d (Feb to Apr 2026). Saudi and UAE Treasury holdings are stable ($141.2B and $116.1B, R1 L5). [T2/T4/T0]
8. **The Cantillon effect is confirmed for wealth, weak for wages.** Fed DFA (T0): total household net worth was $107.6T (2019 Q4), $141.8T (2021 Q4) and $185.7T (2026 Q2). Of the $78.1T gain, the top 10% took 67.5%, the top 1% 35.4% and the bottom 50% 3.1%. The bottom 50% hold 0.6% of equities, 0.6% of household Treasury and muni holdings and 51.6% of consumer credit (2026 Q2). The top 10% hold 88% of equities and 79% of directly held government and muni securities. So interest on the debt flows mostly to the top decile, while consumer-credit interest flows from the bottom half. [T0]
9. **Real wages are flat over 6.5 years while assets compounded.** Average hourly earnings: $28.54 (Feb 2020) to $37.81 (Sept 2026), +32.5%. CPI-U +30.3%. Real +1.7%. Production and nonsupervisory: $24.03 to $32.60, real +4.2%. Real hourly earnings fell 0.7% in the year to Sept 2026, because energy CPI is +20.4%. FHFA HPI: +59.3% (Jan 2020 to Jul 2026), real +22%. S&P 500: about 3,258 to about 7,810 (+140%). [T0/T3]
10. **Time prices split cleanly between tradeable goods and assets or services** (model, section 3). Since 1990, in hours of the production wage: CPI basket -19%, food at home -24%, quality-adjusted new vehicles -54%, TVs about -99% (since 1993). Medical care services +26%, CPI college tuition +79%. A median existing home: +42% in hours to buy outright. The monthly payment rose only 6% since 1990 because 1990 rates were 10%, but it rose about 69% since early 2020 (about 40 to 68 hours a month). Family health premium: +101% in hours (1999 to 2025). Published tuition: public +58%, private +37% (1995-96 to 2025-26). College Board net public tuition fell 48% from its 2012-13 peak.

---

## 2. Q9 and M16 detail: rival lever matrix

Scores are judgment (model). Cost to US and cost to rival: 1 is trivial, 5 is severe. Likelihood: the chance of use or escalation in H0. Threat = cost to US × likelihood × (6 − cost to rival) / 25.

| Lever | 2025-2026 use (evidence) | Teeth (mechanism) | Cost to US | Cost to rival | Likelihood H0 | Threat |
|---|---|---|---|---|---|---|
| Energy-hardware system play (deny US the tools, supply the Global South cheaply, finance in yuan) | All the parts below are live. Module price fell from CNY 1.802/W (2021) to 0.683/W (2025) (R1 L3) | The marginal watt outside the US is built on Chinese hardware, so energy collateral there is booked in yuan. The watt-dollar shrinks to the US and its allies | 5 | 2 | 4 | **3.20** |
| Rare-earth and magnet controls | Apr 2025 licences live. Oct 2025 package suspended to 10 Nov 2026. Jun 2026 entity listings | Magnets sit in EV motors, wind turbines, robot actuators, drones and missiles. May 2025 showed a one-month 93% cut to the US is possible | 4 | 2 | 5 | **3.20** |
| Solar polysilicon, wafer and cell technology controls | Proposal and registration from 16 Oct 2026 | Blocks the know-how to make thin wafers and next-gen cells outside China, which slows US and Indian onshoring. Costs China almost nothing in goods trade | 3 | 1 | 5 | **3.00** |
| Other critical minerals (Ga, Ge, Sb, graphite) | Dec 2024 ban to the US, suspended to 27 Nov 2026 | Chips, defense, battery anodes | 3 | 2 | 4 | 1.92 |
| Battery cell and cathode controls | Jul 2025 LFP and LMFP cathode tech restricted. Oct 2025 battery items (suspended). VAT rebate phase-out | US storage imports are 50% Chinese by value. Data center backup and grid batteries | 4 | 3 | 3 | 1.44 |
| EU digital euro plus MiCA | MiCA transition ended 2026-07-01 (R1 L2). Digital euro trilogue, €3,000 cap, 2029 | Limits the reach of US dollar stablecoins into euro-area payments. That caps the captive T-bill demand that GENIUS aims to build abroad | 2 | 2 | 4 | 1.28 |
| Yuan oil and gold settlement (INE crude, SGE Hong Kong vault, Hormuz toll) | At least 2 tankers paid in yuan. HK gold clearing trial 7 Jul 2026 | Gradual erosion of petrodollar recycling. Needs Gulf sellers willing to hold yuan | 2 | 2 | 3 | 0.96 |
| CIPS | RMB 180.15T in 2025, +2.7% | A sanctions-resistant rail, but much of its messaging still runs over SWIFT | 1 | 1 | 4 | 0.80 |
| Treasury gradual run-down (China) | $694B (Feb) to $590.7B (Aug 2026) | Marginally higher term premium. Private and custodial buyers replace official ones (R1 Db-12) | 1 | 2 | 5 | 0.80 |
| mBridge and e-CNY cross-border | $55.49B cumulative through Nov 2025. Saudi left May 2025. BIS left Oct 2024 | Wholesale CBDC rail for state-to-state trade | 1 | 1 | 3 | 0.60 |
| Gulf yuan pivot | UAE warning, Apr 2026 | Would remove the 1974 recycling anchor, but the Gulf needs US security and dollar liquidity | 3 | 4 | 2 | 0.48 |
| Russia spoiler rails | 65% of exports in rubles. Sold 22t of gold in Q2. Crypto legalized incl. USDT (R1 L5) | Sanctions-evasion plumbing. Backs Iran's chokepoint leverage | 1 | 3 | 4 | 0.48 |
| BRICS common currency | None in New Delhi Declaration 2026 | No institution, no issuer | 1 | 3 | 1 | 0.12 |
| Treasury fire-sale | Not observed | Self-harming: China would take capital losses and a yuan spike, and would lose a liquid home for a roughly $1.2T a year surplus | 2 | 5 | 1 | 0.08 |

**Why the hardware lever beats the currency lever.** Under the R1 thesis, a watt-dollar has energy and compute assets backing dollar credit (R1 L3, Da). That requires three things. (1) The scarce physical input is built in dollar jurisdictions. (2) It is financed in dollars. (3) Its output is priced in dollars. Money moves by rivals attack (3), where the dollar's network effects are strongest. Hardware controls attack (1), where China has a 90%+ share and the US cannot respond by creating money. Treasury can issue bills, but it cannot issue a magnet or a 70 µm wafer. The R1 L3 "China as energy mint" chain (C) gets its first T1-grade evidence in this round: the 16 Oct 2026 tech proposal.

**Limits on China's lever.** (a) Each use burns credibility and speeds substitution. After the 2010 Senkaku episode Japan cut its rare-earth dependence on China substantially within a decade [M, often cited as from about 90% to about 60%]. (b) China trades the lever for tariffs: at Busan the suspension bought a cut in US tariffs from 57% to 47% (Wikipedia, T4), so it is a bargaining chip more than a doctrine. (c) The US firm-power build (gas turbines, nuclear restarts, transformers from Korea, Mexico and Canada) is mostly outside China's reach. Hyosung disclosed $285.3B of ultra-high-voltage transformer contracts with two US hyperscalers (15 Sept 2026, via Rystad). (d) China needs export markets for overcapacity, so a full embargo hurts its own solar and battery firms (polysilicon fell from CNY 271/kg to 43.8/kg, R1 L3).

---

## 3. Q10, M17 and M18 detail: the "In Time" test

### 3.1 Cantillon: who got the new money first, and who paid (Fed DFA, T0)

| Group (households) | Net worth 2019 Q4 | 2021 Q4 | 2026 Q2 | Share of 2019Q4→2026Q2 gain | Wealth share 2019Q4 → 2026Q2 |
|---|---|---|---|---|---|
| Top 0.1% (137k) | $13.36T | $19.52T | $27.87T | 18.6% | 12.4% → 15.0% |
| Next 0.9% (1.2M) | $19.33T | $24.21T | $32.45T | 16.8% | 18.0% → 17.5% |
| Next 9% (12.2M) | $42.56T | $52.70T | $67.63T | 32.1% | 39.5% → 36.4% |
| Next 40% (54.1M) | $30.54T | $41.92T | $53.43T | 29.3% | 28.4% → 28.8% |
| Bottom 50% (67.6M) | $1.86T | $3.47T | $4.28T | 3.1% | 1.7% → 2.3% |

Source: https://www.federalreserve.gov/releases/z1/dataviz/download/zips/dfa.zip (downloaded 2026-10-22, data to 2026 Q2). Per household: the bottom 50% gained about $34k each (average $29k to $63k). The top 0.1% gained about $102M each (about $102M to $204M). Deflated by CPI (Dec 2019 to Sept 2026, ×1.311), the bottom 50% rose about 75% in real terms, the next 40% about 33% and the top 0.1% about 59%. That is the honest nuance: in percentage terms the bottom half did well because 2020-2021 fiscal transfers went to households directly. In dollars the gains went to owners. Holdings (2026 Q2): the bottom 50% own 0.6% of equities, 0.6% of directly held government and muni securities, 1.1% of money-fund shares, 9.7% of real estate and 51.6% of consumer credit owed.

Reading for the owner's Q10 premise ("bonds and wealth expand at the expense of taxpayers"): net interest is now $1.05T a year, more than defense (R1 L1/L7). The household slice of it goes about 80% to the top decile, because they hold 79% of household-held government securities and 79% of money-fund shares. That is a real upward transfer. A caveat: most Treasuries sit with foreigners, the Fed, banks and funds, so the household slice is only part of the interest bill.

### 3.2 Real wages vs CPI vs asset prices since 2020 (T0/T3)

| Series | Start | Latest | Change | Real (CPI-deflated) |
|---|---|---|---|---|
| Avg hourly earnings, all private (BLS) | $28.54 (Feb 2020) | $37.81 (Sep 2026 p) | +32.5% | +1.7% |
| Avg hourly earnings, production and nonsupervisory | $24.03 (Feb 2020) | $32.60 (Sep 2026 p) | +35.7% | +4.2% |
| CPI-U NSA | 258.678 (Feb 2020) | 336.940 (Sep 2026) | +30.3% | n/a |
| FHFA purchase-only HPI, SA | 278.43 (Jan 2020) | 443.52 (Jul 2026) | +59.3% | +22.0% |
| S&P 500 | about 3,258 (2 Jan 2020) [M] | about 7,810 (6 Oct 2026) | about +140% | about +84% |
| Median existing home (NAR) | n/a | $417,500 (Sep 2026), +1.3% y/y | n/a | n/a |

Sept 2026 CPI detail: all items +3.7% y/y, energy +20.4%, food +2.5%, shelter +3.2%, medical +1.5%, new vehicles +0.6%, core +2.6%. Real hourly earnings -0.7% y/y (BLS release, 14 Oct 2026). So in 2026 the "time tax" is energy-driven, and a "watt-dollar" world would push it the same way unless power supply grows (R1 Dc-10).

### 3.3 Time prices, 1990 vs 2026 (model, hours of production and nonsupervisory wage)

Wage: 1990 average $10.20 [V], Sept 2026 $32.60 [V], ratio ×3.197. Script: `scratchpad/r2e/scripts/timeprice.py`.

| Item | 1990 (or stated) | 2026 (or stated) | Time price change | Tag |
|---|---|---|---|---|
| CPI all-items basket | index 130.7 | 336.9 | **-19%** | [V] |
| Food at home (CPI) | 132.3 | 321.8 | **-24%** | [V] |
| Thanksgiving dinner (AFBF) 1986 to 2025 | $28.74 | $55.18 | **-45%** (price +92%, blue-collar wage +251%, Cato) | [V via Cato] |
| New vehicles, quality-adjusted CPI | 121.4 | 179.9 | **-54%** | [V] |
| Average new car, sticker | about $15,900 [M] | $50,562 (KBB Sep 2026) | **about 0%** (1,559 to 1,551 hours) | [M]/[V] |
| Televisions, CPI (Jan 1993 to Sep 2026) | 7,013 | 95.7 (Dec 2024=100) | **about -99.5%** | [V]/1993 wage [M] |
| Median existing home, price | $92,000 [M] | $417,500 | **+42%** (9,022 to 12,807 hours) | [M]/[V] |
| Same, monthly P&I (20% down, 30y) | $653 at 10.13% [M] | $2,222 at 7.0% | **+6%** (64 to 68 hours a month) | model |
| Same, early 2020 vs now | about $966 (about $270k at 3.47%) [M] | $2,222 | **about +69%** (40 to 68 hours a month) | model |
| Same, 20% down payment | 1,804 hours | 2,561 hours | **+42%** | model |
| Medical care services (CPI) | 162.7 | 655.4 | **+26%** | [V] |
| Family health premium (KFF) 1999 to 2025 | $5,791 [M] | $26,993 | **+101%** (429 to 861 hours) | [M]/[V] |
| College tuition and fees (CPI) | 175.0 | 1,003.7 | **+79%** | [V] |
| Public 4-yr published tuition, 1995-96 to 2025-26 | $2,811 (1995 $) | $11,950 | **+58%** (241 to 381 hours) | [V] College Board |
| Private nonprofit published tuition, same | $12,222 (1995 $) | $45,000 | **+37%** (1,049 to 1,436 hours) | [V] |
| Public 4-yr net tuition (after aid, 2025 $) | $4,450 peak 2012-13 | $2,300 (2025-26) | **-48%** since peak | [V] |

AEI cross-check (Perry chart, Jan 2000 to Dec 2025, Pooley write-up 27 Jan 2026): CPI +92.6%, wages +131.1%, CPI time price -16.7%. 10 of 14 items rose in money prices, but only 5 rose in time prices. Housing (CPI rent and OER), food, new cars, furnishings and clothing all got cheaper in hours. Note: CPI "housing" is rent-based and misses purchase prices and rates, which is why the purchase-payment rows above matter.

**Verdict on "In Time".** The film's mechanism (a literal time balance, prices raised by insiders to cull the poor) does not exist. The measured pattern is milder and more specific. (1) Hours buy far more manufactured goods and food than in 1990, and robots and AI should push this further (R1 Dc). (2) Hours buy less of three things: assets (homes, shares), human services with slow productivity growth (Baumol: care, health, education list prices) and, in 2026, energy. (3) The losers are entrants and non-owners. A 2020 buyer with a 3% mortgage is insulated. A 2026 first-time buyer pays about 69% more hours a month. Bottom-half households own 0.6% of equities, so asset inflation passes them by. (4) Debt growth plus a primary deficit feeds this through interest paid mostly to the top decile and through inflation that runs ahead of wages for a while (2021 to 2023, again in 2026). So "In Time" fits a young non-owner in a high-cost metro, and fails for an owner or for a goods basket.

### 3.4 Exporting inflation (M18)

| Episode | Mechanism | Who absorbed | Tag |
|---|---|---|---|
| 1960s Bretton Woods | US payments deficits. Foreign central banks bought dollars to hold pegs, which expanded their money supply | Germany, France, Japan (DM revaluations 1961 and 1969, French gold conversions, 1971 suspension). Giscard's "exorbitant privilege", Connally's "our currency, your problem" | [M] history |
| 2022 dollar cycle | Fed hikes drove the dollar to its highest since 2000: +22% vs yen, +13% vs euro, +6% vs EM by Oct 2022. Pass-through about 1 pt of inflation per 10% dollar rise | Japan, euro area, emerging markets. IMF advised using reserves "prudently" | [V] IMF blog 2022-10-14 via coverage |
| 2026 oil shock (Hormuz) | Dollar-priced oil plus a firm dollar (DXY 101.7, +2.8% y/y) | Oil importers: INR record about 96.9 (May), PHP past 60, IDR 17,315 record, Japan intervention about $170 to 175B. Asia buys about 80% of Hormuz oil (Reuters, May 2026) | [T3/T4] |
| 2026 US side | US is a net energy exporter, so the oil shock moves income inside the US from consumers to producers and shareholders | US households: energy CPI +20.4%, real wages -0.7% y/y | [V] |

The tension: Mar-a-Lago-style policy (yen support, a stronger yuan, R1 L5 and Db-07) aims for a weaker dollar against Asia. That pulls inflation into the US. A strong dollar pushes it out. The 2026 mix is selective: a strong dollar against the euro and EM, engineered weakness only against the yen and yuan.

---

## 4. Say/Do gaps

| Actor | SAY | DO | Gap reading |
|---|---|---|---|
| China (MOFCOM) | Controls are "non-discriminatory", for non-proliferation | Magnet exports to the US cut 93% in a month (May 2025). Ten named US firms listed (Jun 2026). Solar know-how controls proposed days before the truce expiry | The controls are a negotiating instrument timed to the US calendar |
| China (PBoC) | Promotes yuan internationalization, criticizes dollar hegemony | Holds $590.7B of Treasuries. Yuan settles about 30% of its own trade. Keeps capital controls. Bans private RMB stablecoins (R1 L2) | It wants yuan use without giving up capital-account control, which limits reserve-currency status |
| UAE | Close US security partner | Threatened yuan oil sales while asking for a swap line (Apr 2026) | Uses the yuan as leverage to get dollars |
| Saudi Arabia | Diversified partnerships, joined mBridge 2024 | Quietly left mBridge on 13 May 2025. Treasuries stable | Dollar-aligned in deeds |
| BRICS | De-dollarization, local currencies | No currency, no binding targets, a task-force study (2026) | Rhetoric without an institution |
| EU | "Payment sovereignty" against US stablecoins | Digital euro still in trilogue. Issuance 2029 at the earliest. €3,000 cap shrinks its role | Defensive, slow |
| US (Musk, administration) | "200 GW a year" of US solar, energy dominance | About 3.2 GW of US cells (R1 L3). 50% of battery imports from China. EO 14421 rules not due until Dec 2026 | Onshoring rhetoric runs ahead of the hardware base, which is exactly where China is aiming |
| Pooley and Tupy, AEI | Time prices show abundance | Their own Cato piece (Dec 2025) concedes the pressure from rent, insurance and rates | The method is right for goods and blind to asset purchase and financing costs |

## 5. Anomalies

1. **China targets know-how, not shipments.** Default: restrict exports of finished goods. Observed: 16 Oct 2026, registration plus proposed bans on wafer, polysilicon and cell process technology, while panel exports continue. This keeps the cash flow and denies the capability.
2. **The Saudi mBridge "exit" was 16 months old when reported.** Default reading (R1 L5): a 2026 exit under US pressure. Observed: a SAMA date of 13 May 2025. Lesson: de-dollarization signals are often over-read in both directions.
3. **The Gulf asked for dollars during an oil windfall.** Default: high oil prices mean petro-states flush with dollars. Observed: Hormuz closure cut Gulf volumes (Saudi 10.11 to 6.87 mb/d), so the UAE floated a swap line. A watt-dollar inherits the same weakness: the energy producer cut off from its route needs dollar liquidity.
4. **The bottom 50%'s wealth share rose during the "money printer" years.** Default Cantillon story: the poor lose. Observed: 1.7% to 2.4% (2019 Q4 to 2021 Q4), then down to 2.3%, while the top 0.1% rose to 15.0%. Fiscal transfers reached households, but asset compounding since 2022 favors owners.
5. **Houses take fewer hours a month than in 1990 for buyers with financing, but far more than in 2020.** The rate path dominates the purchase price. The 2020 to 2026 jump is the "In Time" moment for entrants.

## 6. Mechanism chains

**Chain R2E-A (hardware denial to a yuan watt, H0 to H1):** China controls magnets, cells and wafer know-how → US and Indian onshoring slows and costs rise → the Global South keeps buying cheap Chinese panels and batteries, increasingly on Chinese credit → new energy assets in those countries are financed and serviced in yuan → the energy collateral layer splits: dollar watts (US, allies, Gulf gas) and yuan watts (much of Asia, Africa) → the watt-dollar becomes a bloc system, not a global standard. Tests: China's solar and battery exports to the Global South, yuan-denominated project finance, US cell capacity (SEIA) above 20 GW by 2028 (R1 L3 tripwire), the final MOFCOM catalogue text.

**Chain R2E-B (truce calendar, H0):** the 10 Nov 2026 suspension lapses → the October 2025 rare-earth and battery package returns, or is extended for a tariff concession → magnet and NdPr prices spike outside China, MP's $110/kg floor binds less → auto, robot and defense output risk in H1 2027. Tests: a MOFCOM notice before 10 Nov, US tariff action, NdPr price, magnet export data (Dec release).

**Chain R2E-C (asset-price time tax, H0 to H1):** primary deficit plus net interest at $1.05T → bill-heavy issuance and passive inflation above the average coupon (R1 L1) → asset holders earn interest and capital gains, wages track CPI with a lag → hours needed for an entry asset rise (starter-home payment 40 to 68 hours a month since 2020) → the entry route of labor, then savings, then collateral slows for 18-year-olds (links to Q6, R2 other lane) → political demand for UHI and ownership transfers (Trump Accounts). Tests: FHFA HPI vs AHE, first-time buyer share, DFA bottom 50% equity share.

**Chain R2E-D (inflation export valve, H0):** oil shock plus Fed hikes → firm dollar → oil importers' currencies fall (INR, PHP, IDR, JPY) → they import inflation and spend reserves (Japan sells Treasuries, R1 L5) → US yields rise as official holders sell → the US offers swap and FIMA lines, which also deepens dependence on the dollar. Tests: FIMA usage, the next MoF intervention, EM reserve drawdowns.

## 7. Tripwires (dated)

| Date | Trigger | Reading |
|---|---|---|
| 10 Nov 2026 | Lapse or extension of China's suspension of the Oct 2025 rare-earth and battery controls | A lapse confirms chain B, an extension in exchange for tariffs confirms "bargaining chip" |
| 15 Nov 2026 | Comments close on the 12 solar technology controls. Final catalogue after that | A final ban on 70 µm wafer and fluidized-bed polysilicon tech confirms chain A |
| 27 Nov 2026 | Ga, Ge, Sb suspension end | Chip and defense input risk |
| 24 Dec 2026 | EO 14421 rules on grid equipment, including battery storage | How hard the US decouples storage |
| 10 Jan 2027 | US-stated truce end | Gap between US and Chinese legal texts |
| End 2026 | Digital euro trilogue deal, final holding cap | EU wall against dollar stablecoins |
| Monthly | China customs: magnet exports to the US, solar and battery exports by destination | Selective denial vs Global South supply |
| Quarterly | Fed DFA (next release about Dec 2026) | Bottom 50% equity share, top 0.1% share |
| Monthly | BLS real earnings, CPI energy | The "time tax" from energy |
| Monthly | FHFA HPI, NAR median, mortgage rate | Hours per month for a starter home |
| Ad hoc | Gulf swap lines, any yuan-settled Gulf crude cargo | Petrodollar recycling stress |

## 8. Open questions and gaps

1. Official MOFCOM text of the 16 Oct 2026 solar catalogue proposal (read via TaiyangNews and SMM only). Article count: the headline says 12, the article lists 11 distinct items.
2. Polysilicon and wafer shares for 2025 to 2026 from IEA (used CNIA end-2024 figures).
3. Magnet export data for 2026 by destination (only the May 2025 shock was verified).
4. 1990 inputs tagged [M]: NAR 1990 median ($92,000), 1990 Freddie Mac rate (10.13%), 1990 new car average (about $15,900), KFF 1999 premium ($5,791), 1999 and 1993 wages, Feb 2020 median home and rate. FRED was down for maintenance and the BLS API quota was exhausted. The direction of each result is robust to ±10% input errors except the car sticker line.
5. KFF 2026 survey released 22 Oct 2026 (today), not yet read.
6. S&P 500 close for 21 Oct 2026 not found (used about 7,810 on 6 Oct).
7. Japan Sept 2026 CPI and real wages (only July core CPI 1.8% and unverified May real wages -1.4% found).
8. Yuan share of Gulf crude sales: still no data (R1 gap persists).
9. Autor et al. PPP incidence and Autor, Dube and McGrew wage compression are cited from memory.
10. Whether China has extended solar or battery controls specifically to the US vs globally.

## 9. Claims

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R2E-01 | China's Oct 2025 rare-earth and battery export-control package is suspended only until 10 Nov 2026, with no extension notice as of mid Oct 2026 | T1/T4 | Confirmed | https://www.technology.org/2026/10/19/china-rare-earth-export-pause-november-10/ , https://rareearthdirectory.com/policy/china-export-controls-timeline/ | 2026-10-19 | 2026-10-22 | MOFCOM extension notice before 10 Nov |
| R2E-02 | April 2025 licensing for seven medium and heavy rare earths remains in force | T1 | Confirmed | https://en.wikipedia.org/wiki/Rare_earths_trade_dispute | 2026 | 2026-10-22 | MOFCOM revokes the April 2025 list |
| R2E-03 | China's magnet exports to the US fell 93% y/y to about 46.4t in May 2025 | T0 (customs via press) | Confirmed | https://www.scmp.com/economy/china-economy/article/3315251/chinas-magnet-exports-us-slammed-may-beijings-rare-earth-curbs-hit-data | 2025-06 | 2025-05 | Customs revision |
| R2E-04 | DoD-MP Materials deal sets a 10-year $110/kg NdPr price floor | T1 (contract) | Confirmed | https://www.cp24.com/news/world/2025/07/10/mp-materials-shares-surge-on-mega-deal-with-defense-department-to-boost-us-magnet-supply | 2025-07-10 | 2026-10-22 | Contract amended |
| R2E-05 | China added ten US firms, including MP Materials and USA Rare Earth, to its export control list on 22 Jun 2026 | T1 | Confirmed (secondary) | https://en.wikipedia.org/wiki/Rare_earths_trade_dispute | 2026-06-22 | 2026-10-22 | MOFCOM list differs |
| R2E-06 | On 16 Oct 2026 MOFCOM and MOST proposed bans or restrictions on 12 solar PV technologies (polysilicon, wafers of 70 µm or less, TOPCon, xBC, HJT, perovskite) with immediate export registration, comments to 15 Nov 2026 | T1 (proposal) | Confirmed (secondary) | https://taiyangnews.info/markets/china-proposes-export-curbs-12-solar-pv-technologies | 2026-10-17 | 2026-10-22 | Proposal withdrawn |
| R2E-07 | China held above 94% of global polysilicon capacity and 97% of wafer capacity at end 2024 | T4 (industry body) | Plausible | https://www.metal.com/en/newscontent/103403328 | 2025 | 2024-12-31 | IEA data materially lower |
| R2E-08 | China supplied 50% of US lithium-ion battery imports by value (12 months to Jun 2026) but 3% of transformer and under 1% of breaker imports | T0 (trade data via T4) | Confirmed | https://www.rystadenergy.com/news/us-executive-order-targets-chinese-grid-hardware-but-battery-storage-serving-ai-d | 2026-09 | 2026-06-30 | US Census trade data differ |
| R2E-09 | EO 14421 (26 Aug 2026) covers battery storage, inverters, transformers, breakers and turbines, rules due 24 Dec 2026 | T1 | Confirmed (secondary) | same as R2E-08 | 2026-09 | 2026-10-22 | Federal Register text differs |
| R2E-10 | China removed solar export VAT rebates from 1 Apr 2026 and cuts battery rebates 9% to 6%, then to zero from 1 Jan 2027 | T1 | Confirmed | https://www.caixinglobal.com/2026-01-10/china-to-eliminate-export-tax-rebates-for-solar-and-batteries-by-2027-102402312.html | 2026-01-10 | 2026-10-22 | MoF reversal |
| R2E-11 | Saudi Arabia left mBridge on 13 May 2025 (SAMA to FT), not under 2026 US pressure. Corrects R1 L5-23 | T2 | Confirmed | https://www.forbes.com/sites/digital-assets/2026/09/28/saudi-arabia-left-the-worlds-biggest-cbdc-platform-sixteen-months-ago-it-took-the-ft-to-notice/ | 2026-09-28 | 2026-09 | SAMA statement differs |
| R2E-12 | mBridge processed 4,047 transactions worth $55.49B through Nov 2025, more than 95% in e-CNY | T0 via T4 | Confirmed | https://www.pymnts.com/news/cross-border-commerce/cross-border-payments/2026/cross-border-payments-platform-project-mbridge-processed-55-49b-in-transaction-volume/ | 2026-01 | 2025-11 | PBoC or BIS data differ |
| R2E-13 | At least two vessels paid Iran's Hormuz toll in yuan. No settlement share data exist | T4 | Plausible | https://fortune.com/2026/03/26/iran-toll-strait-of-hormuz-oil-paid-in-yuan/ , https://finance.yahoo.com/markets/crypto/articles/iran-reportedly-accepts-crypto-yuan-115038546.html | 2026-03/04 | 2026-04 | Shipping data show large yuan share |
| R2E-14 | SGE Hong Kong vault opened 26 Jun 2025. HK central gold clearing and Delivery Connect trials began 7 Jul 2026, settled in CNH. No foreign central bank depositors confirmed | T4 | Plausible | https://www.bullionstar.com/blogs/ronan-manly/chinas-golden-gateway-how-the-sges-hong-kong-vault-will-shake-up-global-gold-markets/ , https://www.zerohedge.com/news/2026-08-26/china-builds-global-gold-vault-network | 2026-08 | 2026-10-22 | A central bank announces custody at SGE |
| R2E-15 | BRICS New Delhi Declaration (Sept 2026) created no common currency, only a Payment Task Force mandate | T2 | Confirmed | https://www.scmp.com/news/china/diplomacy/article/3367315/under-trumps-shadow-brics-takes-step-towards-de-dollarisation | 2026-09 | 2026-09-14 | Declaration text shows binding mechanism |
| R2E-16 | Digital euro is in trilogue (no deal as of 6 Oct 2026). €3,000 holding limit discussed. Issuance 2029 if law passes in 2026 | T2 | Confirmed | https://lovguiden.dk/en/det-offentlige/den-europaeiske-centralbank/2026-10-06-cipollone-digital-euro-kan-indfoeres-2029-hvis-loven-vedtages-i-aar | 2026-10-06 | 2026-10-22 | Trilogue deal or collapse |
| R2E-17 | UAE officials warned oil sales could shift to yuan without dollar access, while floating a Fed or Treasury swap line (Apr 2026) | T2 via T4 (WSJ) | Plausible | https://www.webpronews.com/uaes-dollar-plea-gulf-ally-seeks-fed-lifeline-as-iran-war-fuels-yuan-temptations/ | 2026-04-21 | 2026-04 | UAE denial, no swap talks |
| R2E-18 | Saudi crude output fell from 10.11 to 6.87 mb/d, Feb to Apr 2026 | T4 | Plausible | https://www.spf.org/iina/en/articles/takahashi_10.html | 2026 | 2026-04 | OPEC MOMR differs |
| R2E-19 | From 2019 Q4 to 2026 Q2 US household net worth rose $78.1T. Top 10% took 67.5%, top 1% 35.4%, bottom 50% 3.1% | T0 | Confirmed | https://www.federalreserve.gov/releases/z1/dataviz/download/zips/dfa.zip | 2026-09 (Q2 release) | 2026-06-30 | DFA revision |
| R2E-20 | Top 0.1% wealth share rose from 12.4% (2019 Q4) to 15.0% (2026 Q2). Bottom 50% from 1.7% to 2.3% | T0 | Confirmed | same as R2E-19 | 2026-09 | 2026-06-30 | DFA revision |
| R2E-21 | Bottom 50% hold 0.6% of equities and 0.6% of household-held government and muni securities, but owe 51.6% of consumer credit (2026 Q2) | T0 | Confirmed | same as R2E-19 | 2026-09 | 2026-06-30 | DFA revision |
| R2E-22 | Average hourly earnings rose 32.5% (Feb 2020 to Sep 2026) vs CPI +30.3%, real +1.7%. Production and nonsupervisory real +4.2% | T0 | Confirmed | https://www.bls.gov/news.release/realer.t01.htm , https://www.bls.gov/news.release/empsit.t24.htm , https://data.bls.gov/timeseries/CES0500000003 | 2026-10-14 | 2026-09 | BLS revision |
| R2E-23 | Sept 2026 CPI: all items +3.7%, energy +20.4%, core +2.6%. Real hourly earnings -0.7% y/y | T0 | Confirmed | https://www.bls.gov/news.release/cpi.nr0.htm , https://www.bls.gov/news.release/realer.nr0.htm | 2026-10-14 | 2026-09 | BLS revision |
| R2E-24 | FHFA purchase-only HPI rose 59.3% from Jan 2020 to Jul 2026 (22% real) | T0 | Confirmed | https://www.fhfa.gov/hpi/download/monthly/hpi_master.csv | 2026-09 | 2026-07 | FHFA revision |
| R2E-25 | Median existing home $417,500 (Sep 2026, +1.3% y/y). New-vehicle ATP $50,562 (Sep 2026) | T3 | Confirmed | https://www.nar.realtor/newsroom/existing-home-sales-increased-1-5-in-september-according-to-nar-report , https://www.coxautoinc.com/insights/sept-2026-atp-report/ | 2026-10-13 | 2026-09 | n/a |
| R2E-26 | Since 1990, in hours of production wage: food at home -24%, quality-adjusted new vehicles -54%, medical services +26%, college tuition CPI +79% | T0 inputs, model | Confirmed (arithmetic) | BLS data viewer CUUR0000SAF11, SETA01, SAM2, SEEB01, CES0500000008 | 2026-10-22 | 2026-09 | Index revisions |
| R2E-27 | A median home's monthly payment rose from about 40 to about 68 hours of production wage between early 2020 and 2026 | model with [M] 2020 inputs | Plausible | NAR, BLS, Freddie Mac (2020 rate from memory) | 2026-10-22 | 2026-09 | Verified 2020 median and rate move result more than ±10% |
| R2E-28 | Published tuition 1995-96 to 2025-26 rose 101% (public) and 74% (private) after inflation. Net public tuition fell 48% from its 2012-13 peak | T0 (survey) | Confirmed | https://research.collegeboard.org/media/pdf/Trends-in-College-Pricing-and-Student-Aid-2025-final_1.pdf , https://research.collegeboard.org/trends/college-pricing/highlights | 2025-10 | 2025-26 | 2026 edition revises |
| R2E-29 | KFF 2025 family premium $26,993, about 861 hours of production wage (vs about 429 in 1999) | T0 survey + [M] 1999 | Plausible | https://files.kff.org/attachment/Employer-Health-Benefits-Survey-2025-Annual-Survey-Summary-of-Findings.pdf | 2025-10 | 2025 | KFF 1999 figure differs |
| R2E-30 | Perry/AEI chart Jan 2000 to Dec 2025: CPI +92.6%, wages +131.1%, CPI time price -16.7%. Only 5 of 14 items rose in time price | T4 | Confirmed | https://humanprogress.org/rethinking-the-cost-of-living-with-mark-perrys-chart-of-the-century/ | 2026-01-27 | 2025-12 | n/a |
| R2E-31 | IMF (Oct 2022): average pass-through of a 10% dollar appreciation is about 1 pt of inflation. Dollar +22% vs yen, +13% vs euro, +6% vs EM YTD | T4 (IMF staff) | Confirmed | https://www.imf.org/en/blogs/articles/2022/10/14/how-countries-should-respond-to-the-strong-dollar | 2022-10-14 | 2022-10 | n/a |
| R2E-32 | 2026 oil-shock absorbers: INR record about 96.9 (May), PHP past 60, IDR record 17,315, plus Japan intervention about $170 to 175B (R1 L5) | T3/T4 | Confirmed (prices) | https://www.investing.com/news/forex-news/indian-rupee-hits-record-low-usdinr-nears-97-amid-oil-price-shock-4700185 , https://tradingeconomics.com/philippines/currency/news/531646 , https://kelo.com/2026/05/21/analysis-asias-currencies-are-flashing-oil-shock-alarm/ | 2026-05 | 2026-05 | n/a |
| R2E-33 | The most dangerous rival countermove to a watt-dollar is control of energy-hardware supply (magnets, cells, wafer know-how) combined with yuan-financed supply to the Global South | T4 inference on T1/T0 inputs | Plausible | levers.py model, R2E-01 to R2E-10 | 2026-10-22 | 2026-10-22 | US cell capacity above 20 GW by 2028 and China's controls lapse without renewal |
| R2E-34 | Financial de-dollarization levers (CIPS, mBridge, BRICS, Treasury fire-sale) have low teeth in H0 | T0/T2 | Plausible | R1 L5-22, R2E-12, R2E-15, TIC | 2026-10-22 | 2026-10-22 | Yuan share of Gulf oil above 10%, or a sharp official Treasury liquidation |
| R2E-35 | "In Time" is a fair metaphor for non-owners and entrants (housing, health, list-price education, energy), unfair for goods and existing owners | T0 inputs, inference | Plausible | R2E-19 to R2E-30 | 2026-10-22 | 2026-10-22 | Time price of starter homes and health premiums falls for 3+ years while real wages rise |
