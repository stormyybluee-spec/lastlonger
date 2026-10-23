# R5B: Dollar access, the Gulf and Asia

Lane R5B, Round 5. Written 2026-10-23. As-of date for all data: 2026-10-23 unless a row says otherwise.
Questions: R5-1 (who holds dollar stablecoins), R5-5 (Japan's next yen defense), R5-6 (Gulf dollar lines), R5-7 (conditional dollar access and central bank gold), R5-9 (China's solar know-how ban and yuan finance), the Round 4 open item (SWIFT yuan shares for August and September 2026, PBoC swap lines and drawings), and this lane's part of R5-16 (pre-registration for the China truce cliff, COFER Q3, TIC September and WGC Q3).
Builds on, not repeated: R3 R3A (FIMA unused, $254B official selling, UAE ask, stablecoin growth model), R3 R3C (Announcement 70 cliff, MOFCOM No. 48, Kenya yuan refinancing), R4 R4A (COFER Q2 2026, gold about 26% of reserves, PBoC gold, SWIFT gap), R1 L5 (Japan interventions and reserves, TIC table).
Method: 25 WebSearch calls plus direct primary pulls: Fed H.4.1 for the week ended 2026-10-21, the Treasury ESF financial statement for August 2026 (PDF), Japan MOF official reserve pages for December 2025 to September 2026 (ten months), the IMF GFSR April 2026 (Box 2.2, PDF), the WGC 2026 central bank survey press release (PDF), WGC Gold Demand Trends Q2 2026 and the July 2026 Gold Focus, the 1997 White House fact sheet on Mexico's repayment, DefiLlama stablecoin supply by chain, Yahoo quarter-end FX and yield closes, the Polymarket Gamma API and the Kalshi series list. SWIFT tracker PDFs and IMF working-paper PDFs returned 403 to scripts.
Scripts (run with python3 -I): `/tmp/claude-0/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/scratchpad/scripts/r5b_mof.py` (Japan reserves parser), `.../scripts/r5b_holders.py` (stablecoin holder model), `.../scripts/r5b_prereg.py` (COFER and TIC models). Everything labelled "model" is arithmetic on stated inputs, not data. "[memory]" marks a figure from background knowledge that was not re-verified this session.

---

## Answers

### R5-1. Who actually holds dollar stablecoins, country by country?

Nobody publishes a country table, so the honest answer is a range by region, not a country list. The best new evidence is an IMF working paper of 2 October 2026 (188 countries, $21.4T of gross flows from 2018 to 2025), which finds that emerging and developing economies hold about three quarters of stablecoins, and that holdings rise about 75% within a year of a currency crisis and stay up. Chainalysis (year to June 2026) puts stablecoin balances in personal wallets at only $98B to $109B, about a third of the $304.5B supply, and ranks the US first in balances but 11th in cross-border flows. The chain data point the same way: $92.6B of USDT, 30% of all dollar stablecoins, sits on Tron, the cheap chain used for payments in emerging markets. This lane's model puts about 68% of supply with non-US holders (range 59% to 78%), about $208B, and about $96B with US holders (range $66B to $126B). The IMF's three-quarters figure sits at the top of that range, because it attributes exchange balances by web traffic and misses US institutional holdings. By region, central estimates are Asia-Pacific about $94B (Korea, Vietnam, India, the Philippines, Indonesia, Thailand), Europe including Turkey, Russia and Ukraine about $46B, Latin America about $33B (Brazil, Argentina, Venezuela) and Africa and the Middle East about $35B (Nigeria, South Africa, Kenya, Egypt). Country names inside each region are an ordinal judgment from Chainalysis ranks (Brazil 1st, the US 2nd, Nigeria 3rd overall, Nigeria 1st in P2P and cross-border) and the IMF flow data, not measured holdings. No regulator publishes resident holdings. Brazil's central bank comes closest, because it books stablecoin trades as foreign exchange and reports that stablecoins are above 90% of crypto flows.
- Status: plausible (supply and chain data T0, the IMF share T4 from official staff, the split a model). Confidence: 60. Horizon: H0.
- Three views. Governance: stablecoins are already a dollarization channel in weak-currency countries, which is why GENIUS reserves in US bills matter abroad more than at home. Business: the paying customer is the saver or importer in Lagos, Istanbul, Buenos Aires or Manila, not the US household. Ordinary person: if you live in a country whose currency has lost value, a dollar token is a cheap way to hold dollars. In the US it adds little over a bank account.

### R5-5. Next time Japan defends the yen, will it borrow through FIMA or sell Treasuries again?

It will most likely sell dollar securities again. The 2026 record is clear in Japan's own reserve data: the April to May intervention (¥11.73T, about $75B) matched a $75.6B fall in foreign securities with deposits unchanged, and the July to August intervention (¥15.40T, about $97B) matched an $87.8B fall in securities plus $6.9B of deposits. Japan still holds $821.7B of foreign securities and $154.8B of deposits with foreign central banks and the BIS (September 2026). The Fed's FIMA repo line was zero for 35 straight weeks from 18 February to 21 October, even though Japan said on 3 August it "plans to utilize" it. FIMA is capped at $60B, below the size of either 2026 episode, and it charges a backstop rate. The 2026 total of ¥27.1T is the largest calendar year of yen buying on record ([memory] for the prior records of about ¥9.2T in 2022 and about ¥15.3T in 2024). USD/JPY is 156.8 today, below the 160 line where Japan acted twice, so the next test is not imminent. The desk gives about 80% that the next intervention is funded mainly by selling securities (bills first), and about 20% that FIMA is drawn above $1B during it. That second number rises only if the Fed raises the cap and cuts the rate, or if Treasury market stress makes selling dearer than borrowing.
- Status: plausible (T0 reserves, intervention and H.4.1 data, the forecast a judgment). Confidence: 75. Horizon: H0.
- Three views. Governance: FIMA is a signal, not a funding tool, unless the Fed resizes it. Each yen defense adds supply to the Treasury market. Business: expect long US yields to rise when Japan defends the yen, and treat a FIMA draw as the surprise. Ordinary person: a weak yen and a Japanese sale of US bonds both feed into US mortgage rates, slowly.

### R5-6. Do Gulf states get dollar lines from the Treasury, and on what conditions?

Not yet. Six months after the UAE raised a swap line with Bessent and Fed officials in April 2026, no line has been announced. The Treasury's own ESF statement for August 2026 lists only two agreements: Mexico ($9B, nothing drawn) and Argentina ($20B, $2.5B drawn in October 2025 and repaid in December 2025). The Fed's swap lines stay with the five standing partners, with $170M outstanding on 21 October. Bessent's words go further than his actions: he called permanent swap lines "a major first step" toward "new dollar funding centers in the Gulf and Asia". The ESF is also smaller than its $219B headline: $173B of that is SDRs, matched by SDR allocation liabilities, so its net position is $44.3B and its dollar securities are $24.9B. A Gulf line of real size would need SDR certificates sold to the Fed or Fed participation. The conditions on past ESF lending were hard. Mexico in 1995 got up to $20B, backed by its oil export proceeds, tied to an IMF programme with spending cuts, a small fiscal surplus, credit limits and regular data publication, and it repaid more than three years early with a net gain to the US of nearly $580M. Argentina's 2025 line was openly political, timed before its midterm elections. For the Gulf, the stated aim is "to prevent the sale of the US assets in a disorderly way", so the likely collateral is the Gulf's own Treasuries. The unstated conditions (dollar oil pricing, limits on Chinese technology) are decoded intent, graded D2 at about 55%. Desk odds of a public US dollar line with any Gulf state: 7% by end 2026, 20% by end 2028.
- Status: plausible (absence and ESF data T0, conditions T1 for history, T2 and D2 for the Gulf). Confidence: 70. Horizon: H0.
- Three views. Governance: crisis dollars for non-core states are moving from technical Fed lines to political Treasury lines, but the Treasury has neither the balance sheet nor a signed Gulf deal. Business: the Gulf finances itself in markets ($102.7B of GCC bonds and sukuk in H1 2026, R3 R3A) and that will continue. Ordinary person in the Gulf: the dollar peg stays. A US line would be insurance for the central bank, not a change in your money.

### R5-7. Does conditional dollar access show up in central bank gold buying?

Partly, yes. The cleanest pattern is who buys. In 2026 the reported net buyers are central banks without a standing Fed swap line: China (about 101t from January to September, 23 straight months), Poland (98t to August, 648t held), Uzbekistan, Kazakhstan, the Czech Republic, Jordan, Malaysia, Ghana and the UAE. The five central banks with standing Fed lines bought nothing (Japan's gold has been flat at 27.20M oz all year, the Bundesbank sold 1t in Q2). The sellers are the states most cut off from dollars or short of them: Russia (50t sold to July, reserves frozen since 2022) and Turkey (85t sold to July, using gold swaps for liquidity). The WGC's 2026 survey of 76 central banks adds motive and action: a record 90% cite gold's performance in crises, 85% of emerging-market respondents cite it as a geopolitical hedge, 74% expect the dollar's reserve share to be lower in five years, and 9% raised domestic storage in the past year (5% a year earlier) while 10% diversified overseas vaults (2% a year earlier). Moving gold home only makes sense if you fear that a foreign custodian could freeze it. The survey does not ask about sanctions by name, and other motives matter (Poland is a NATO ally with full market access). So conditional dollar access is one strong motive among several, not the whole story.
- Status: plausible (T0 buying and storage data, T2 survey, causation inferred). Confidence: 60. Horizon: H0 to H1.
- Three views. Governance: each time dollar access becomes political (frozen reserves, ESF lines with conditions), the self-insurance demand for gold rises, and that shows up first in where gold is stored. Business: central bank demand is a durable bid, but it slows when prices are high (H1 2026 was the weakest first half since 2022). Ordinary person: central banks buying gold is a sign of distrust between governments, not a signal to swap your savings for bars.

### R5-9. Will China pair its solar know-how ban with yuan finance for the Global South?

Not explicitly, and so far only thinly. MOFCOM Announcement 2026 No. 48 (16 October) would ban or restrict 12 solar technologies and their core equipment, with comments due 15 November and no effective date. Unlike its AI items, which get facilitation for World AI Cooperation Organization members, the solar part has no Global South clause. The yuan side is growing, but through refinancing and bonds rather than new solar loans. Chinese loan commitments to Africa were only $2.1B in 2024, down more than 90% from 2016, with a single energy loan, but all of Kenya's 2024 infrastructure loans were in yuan, and Mozambique, Ethiopia and Zambia are discussing conversions. Panda bond issuance rose about 60% in H1 2026 to above RMB 160B, with first sovereign deals from Pakistan (May) and Indonesia (RMB 7B, July) and a Brazilian filing in June. PBoC swap drawings reached RMB 132.8B at end June 2026, up from RMB 79.3B in September 2025. The pattern is "sell the panels for cash, keep the factory know-how, and grow the yuan through debt management". The desk gives 20% that the final No. 48 includes a solar facilitation clause for Global South partners, and 30% that China announces a named yuan credit line tied to solar or green manufacturing exports by end 2027.
- Status: plausible. Confidence: 65. Horizon: H0 for the controls, H1 for any yuan-watt bloc.
- Three views. Governance: Beijing keeps the technology lever and the currency lever separate, which lets it sell goods widely without giving away factories. Business: expect cheap Chinese panels to keep flowing and Chinese line equipment and know-how to need licences. Yuan finance will be offered mainly on refinancing and bond deals. Ordinary person: solar keeps getting cheaper where you buy Chinese panels for cash. A yuan loan for your country's railway changes little for you unless your government struggles to earn yuan to repay it.

### Round 4 open item: SWIFT yuan shares and PBoC swap lines

SWIFT's tracker PDFs are blocked to scripts, so the shares come from secondary sources. The yuan was 3.13% of SWIFT payments in January 2026 (5th, official PDF), about 3.1% in July and 3.26% in August 2026 (5th, secondary). Chart-extracted figures of about 2.2% for May and 2.4% for June conflict with those and are low confidence. The September 2026 edition was not found. PBoC Governor Pan said on 19 October that the yuan holds 6% to 7% of payments if CIPS and in-house bank transfers are counted (3rd), against 3% to 4% on SWIFT (5th). PBoC swap lines: 32 agreements, about RMB 4.5T ($672B), with RMB 132.8B (about $19.8B) drawn at end June 2026. Compare the Fed's swap lines at $170M and FIMA at zero on 21 October.

---

## 1. Key findings

1. **The IMF now puts three quarters of stablecoins in emerging and developing economies.** WP 2026/211 (2 October 2026), 188 countries, $21.4T of gross flows from 2018 to 2025. Holdings rise about 75% within a year of a currency crisis and persist. Capital outflow restrictions raise stablecoin activity about 30% within six months. [R5B-01]
2. **The GFSR confirms the direction.** IMF GFSR April 2026, Box 2.2: gross cross-border USDT and USDC flows rose from about $12B (Q1 2020) to $316B (Q1 2025), a large share went to emerging markets, gross flows reached double digits of GDP in Ukraine, Vietnam and Belarus, net flows just under 1% of GDP in the largest recipients. Inflows are larger where inflation and FX volatility are high and money market funds are absent. Country attribution uses web traffic to exchanges. [R5B-02]
3. **Chain data: 30% of dollar stablecoins sit on Tron.** DefiLlama 2026-10-23: USD-pegged supply $304.5B, USDT $182.6B (Tron $92.6B, Ethereum $72.7B), USDC $71.8B (Ethereum $44.4B). Supply is flat on the year ($304.9B a year ago, R3 R3A). [R5B-03]
4. **Model: about 68% of supply is held outside the US (59% to 78%).** About $208B non-US, $96B US. Regional central estimates in Table 1. [R5B-04]
5. **Japan funded both 2026 interventions by selling securities, not deposits.** Securities fell $75.6B (April to May) and $87.8B (July to August), deposits $0.0B and $6.9B. September securities fell a further $17.9B with no intervention (price effect of higher yields plus possible sales). [R5B-06, R5B-07]
6. **FIMA is still zero.** H.4.1 for the week ended 2026-10-21: foreign official repo 0 (35 straight weeks since 18 February), central bank swaps $170M, foreign official reverse repo pool $326.9B, foreign official marketable Treasuries in custody $2,567.7B (up $18.5B on the week, down $176.0B on the year). Official selling paused in October. [R5B-08]
7. **The ESF has about $25B of dollar securities, not $219B of firepower.** August 2026 statement: total assets $218.8B, of which SDR holdings $173.2B, nonmarketable Treasuries $24.9B, fund balance $1.2B, euro and yen assets $19.1B. Liabilities $174.5B (mostly SDR allocations). Net position $44.3B. Agreements: Mexico $9B and Argentina $20B, nothing drawn. No Gulf agreement. [R5B-10, R5B-11]
8. **Mexico 1995 set the template for hard conditions.** Up to $50B international package with up to $20B of ESF loans, signed 21 February 1995, backed by oil export proceeds, conditional on an IMF-style adjustment programme (spending cuts, small fiscal surplus, strict credit limits, data publication). Mexico prepaid and closed it in January 1997, more than three years early, with a net gain to US taxpayers of nearly $580M. Peak use $13.5B per Clinton (PIIE gives $11.5B of medium-term loans at peak). [R5B-12]
9. **Argentina 2025 was a political line with a small draw.** ESA of $20B signed 18 October 2025, one $2.5B swap executed in October, fully repaid in December 2025, agreement still in force with nothing drawn. [R5B-11]
10. **Bessent's words outrun delivery.** April 2026: permanent swap lines are "a major first step" toward "new dollar funding centers in the Gulf and Asia". Reuters noted expansion might wait for Warsh, who wants "deeper cooperation" with Treasury on international finance. Six months later, no new Fed or ESF line. [R5B-13]
11. **Gold buyers are central banks without standing Fed lines.** WGC data to July and August 2026: China, Poland, Uzbekistan, Kazakhstan, Czech Republic, Malaysia, Jordan, Ghana and the UAE buy. Russia and Turkey sell. Standing-line holders do not buy. Q2 2026 central bank demand 289t (record for a second quarter), H1 345t (weakest first half since 2022), reported purchases 170t to August. [R5B-15 to R5B-17]
12. **The 2026 WGC survey shows storage moving home.** 76 respondents: 89% expect official gold to rise, a record 45% plan to add, 83% expect gold's share to be higher in five years, 74% expect the dollar's share lower, 93% hold gold, 90% cite crisis performance, 85% of EMDE respondents cite geopolitical hedging, 9% raised domestic storage (5% in 2025), 10% diversified overseas vaults (2%). [R5B-18]
13. **PBoC swap drawings are 117 times Fed swap balances.** RMB 132.8B (about $19.8B) drawn at end June 2026 against $170M on Fed lines on 21 October. The purposes differ (yuan trade settlement vs dollar funding). [R5B-21]
14. **The yuan advances by bond and refinancing, not new loans.** Africa loan commitments $2.1B in 2024 with one energy loan. Panda bonds above RMB 160B in H1 2026 (+60%), Indonesia RMB 7B (3-year RMB 5.6B, 5-year RMB 1.4B, 2.4 times covered), Pakistan in May, Brazil filed in June and had not priced by 29 September. The yuan is about a quarter of Pakistan-China trade settlement. [R5B-24 to R5B-26]
15. **No liquid market prices any of this lane's events.** No Polymarket or Kalshi market above $1M on the China cliff, COFER, TIC, WGC, FIMA, Gulf lines or Japan intervention. The most traded related market is "stablecoins hit $500B before 2027" at 2.6% on $605k. [R5B-29]

---

## 2. Say/Do gaps

| Actor | Says | Does | Gap |
|---|---|---|---|
| Bessent | Permanent swap lines for Gulf and Asia, "new dollar funding centers" (April 2026) | No new ESF or Fed line in six months. ESF August statement lists only Mexico and Argentina | Words build loyalty and leverage. The balance sheet ($24.9B of dollar securities) limits delivery |
| Japan MOF | "Plans to utilize" FIMA (3 August) | Zero FIMA for 35 weeks. Both 2026 interventions funded by selling securities | A pledge for US consumption |
| UAE | "Not about bailing out" (May) | Asked for a line, borrowed record amounts in markets, added gold in Q2 2026 (WGC, unquantified) | Uses the request as insurance and bargaining, hedges in gold too |
| Fed (FOMC) | Swap lines are "key liquidity backstops" | Five standing partners only, $170M drawn | Technocratic line held under a chair who promised more Treasury cooperation |
| PBoC | Yuan is "third" in payments on a broad measure | 5th on SWIFT at about 3.3%, drawings on swap lines up 67% in nine months | Real growth inside China's orbit, small outside it |
| MOFCOM | Technology controls are routine and support "green technology sharing" | No Global South facilitation for solar items, while AI items get one | Keeps the solar factory lever for bargaining |
| Central banks (survey) | Gold for "crisis performance" and diversification | 9% moved more gold home, 10% diversified vaults | The storage move says what the survey wording does not: custody risk |

---

## 3. Anomalies

1. **The ESF is mostly SDRs.** Default reading of "$219B": a large dollar war chest. Observed: $173B is SDRs offset by $170B or more of SDR allocation liabilities, dollar securities $24.9B. A UAE-sized line would need SDR certificates sold to the Fed, which the SDR Act permits only "for financing exchange stabilization operations".
2. **Japan sold securities and left deposits alone.** Default: draw cash first. Observed: deposits with central banks and the BIS held at $155B to $162B while securities fell $186B from April to September. Japan keeps its cash buffer and sells bills and notes.
3. **The yuan share on SWIFT jumps between editions.** January 3.13%, chart readings of about 2.2% (May) and 2.4% (June), then 3.1% (July) and 3.26% (August) in secondary reports. Either the chart reads are wrong or the series is volatile. Unresolved.
4. **The IMF's EMDE share is above any model that includes US institutions.** Three quarters for EMDEs implies a US share near or below 20%, while Chainalysis ranks the US first in balances. Different attribution methods, not a contradiction to resolve by averaging.
5. **Record central bank gold buying in Q2 with prices near record highs, then a weak first half.** Q1 was revised from 244t to 57t, Q2 was 289t. Unreported buying is about two thirds of the total, so the headline can swing by more than 100t on revision.
6. **The 10-year yield rose 53bp in September 2026 (4.76% to 5.29%).** That alone cuts the market value of foreign official Treasuries by about $60B to $85B (model), which will dominate the September TIC print whatever official holders did.

---

## 4. Mechanism chains

**Chain A: conditional access to gold at home (plausible, H0 to H1).** Dollar liquidity for non-core states moves from the Fed (technical, five partners) to the Treasury (political, case by case) → access depends on alignment and on an ESF with about $25B of dollar securities → states without a standing line self-insure → they buy gold and move it home (9% raised domestic storage) → central bank demand stays near 1,000t a year in tonnes even at high prices → gold's reserve share holds near 26% unless prices fall. Tests: 2027 WGC survey storage answers, WGC buying by non-line countries, any ESF line with published political conditions.

**Chain B: yen defense to Treasury supply (plausible, H0).** BoJ lags the Fed → USD/JPY above 160 → MOF sells dollars → it sells securities (2026 pattern) rather than draw FIMA (cap $60B, backstop rate) → foreign official holdings fall → term premium rises. Break point: the Fed raises the FIMA cap and prices it near market, or Treasury liquidity breaks so that selling costs more than borrowing.

**Chain C: currency crisis to stablecoin dollarization (plausible, H0 to H1).** Local currency crisis or capital controls → stablecoin holdings rise about 75% within a year (IMF) → reserves of GENIUS-type issuers sit in US bills → a private foreign bill buyer appears without any central bank decision → host countries answer with FX rules (Brazil treats stablecoin trades as FX from February 2026). Tests: country FX statistics, Tron USDT supply, IMF follow-ups.

**Chain D: yuan by debt management (plausible, H1).** High US rates → Chinese creditors offer yuan refinancing and panda bonds → borrowers carry yuan debt → they draw PBoC swaps and seek yuan export receipts → a yuan settlement layer grows in China-built infrastructure countries. Reverses if Fed cuts narrow the gap. Tests: PBoC swap drawings, panda sovereign issuance, Kenya and Zambia debt currency data.

**Chain E: know-how denial without finance (plausible, H0 to H1).** No. 48 finalized → line equipment and process know-how need licences → importers keep buying Chinese panels for cash → no yuan finance is needed to sell the product → the "pairing" is unnecessary unless China wants to place factories abroad on its own terms.

---

## 5. Tripwires (with dates)

| Date | Event | What would move the call |
|---|---|---|
| Every Thursday | H.4.1: FIMA, swaps, custody | FIMA above $1B, swaps above $5B, or a new counterparty |
| 2026-10-28 | FOMC | Any change to FIMA cap or rate, or a new swap partner |
| About 2026-10-29 to 10-30 | WGC Gold Demand Trends Q3 2026 | Central banks above 250t supports Chain A |
| 2026-10-30 | MOF intervention release (29 Sep to 28 Oct) | Any non-zero figure |
| About 2026-10-31 | Tether Q3 attestation | USDT size, any regional user data |
| 2026-11-07 | PBoC October reserves and gold | 24th month of gold additions |
| 2026-11-07 | Japan October reserves (MOF) | Securities and deposit split |
| 2026-11-10 | China Announcement 70 legal cliff | See pre-registration |
| 2026-11-15 | No. 48 comments close | Any Global South clause for solar |
| 2026-11-27 | End of No. 72 suspension (gallium, germanium, antimony to the US) | Second cliff |
| About 2026-11-18 | TIC September | Foreign official and Japan holdings |
| Mid November 2026 | NY Fed Q3 FX report, ESF September statement | Any Gulf or Asian swap, ESF use beyond the yen operation |
| Late December 2026 | IMF COFER Q3 2026 | Dollar below 56%, yuan above 2.5% |
| 2027-01-10 | Political truce end | Next China cliff |
| April 2027 | FOMC swap-line renewal | Terms beyond one year or new partners |
| June 2027 | WGC 2027 central bank survey | Domestic storage share above 12% strengthens Chain A |

---

## 6. Open questions and gaps

1. No regulator anywhere publishes resident stablecoin holdings. Brazil's central bank FX data are the closest. The IMF paper's regional table was not readable (PDF blocked).
2. SWIFT September 2026 edition not found. The May and June chart readings conflict with the July and August secondary figures.
3. ESF September 2026 statement not yet posted (404 on 2026-10-23).
4. PBoC swap drawings for Q3 2026 not published. The 2026 per-country line sizes for Saudi Arabia (RMB 50B), the UAE and Qatar (RMB 35B each) come from a PBoC table whose page date is unclear.
5. WGC September 2026 country data (published early November) not yet out. PBoC September purchase of 21t is from Kitco. Kitco's quoted total of 2,196t conflicts with WGC's 2,346t at end June plus later buying (about 2,410t), so the total is not used.
6. IMF IFS gold series not pulled (IMF blocked to scripts).
7. Whether the UAE request is still active. No reporting after May 2026 was found.

---

## 7. Data tables

### Table 1. Who holds dollar stablecoins: best estimate, 2026-10-23 (model)

Supply is data (DefiLlama). Non-US shares by token are assumptions: USDT on Tron 85%/90%/95%, USDT elsewhere 70%/80%/90%, USDC 30%/42%/55%, other dollar coins 30%/45%/60%. Regional weights of the non-US total are judgment from IMF WP/25/141 flows and Chainalysis ranks.

| Holder group | Central | Range | Countries named (ordinal judgment, not measured) |
|---|---|---|---|
| United States | $96B (32%) | $66B to $126B | n/a |
| Asia-Pacific | $94B | $68B to $124B | Korea, Vietnam, India, the Philippines, Indonesia, Thailand, Japan, China (grey market) |
| Europe incl. Turkey, Russia, Ukraine | $46B | $30B to $64B | Turkey, Russia, Ukraine, UK, Germany |
| Latin America | $33B | $21B to $48B | Brazil, Argentina, Venezuela, Mexico, Colombia |
| Africa and Middle East | $35B | $21B to $52B | Nigeria, South Africa, Kenya, Egypt, Gulf |
| Total non-US | $208B (68%) | $178B to $239B (59% to 78%) | IMF: EMDEs hold about 75% |

### Table 2. Evidence on holder geography

| Source | What it measures | Finding | Date |
|---|---|---|---|
| IMF WP 2026/211 | Country panel of estimated flows, 188 countries | EMDEs hold about three quarters. Crisis: holdings +75% in a year | 2026-10-02 |
| IMF GFSR April 2026, Box 2.2 | Cross-border USDT and USDC flows | $12B (Q1 2020) to $316B (Q1 2025), large EM share | 2026-04 |
| IMF WP/25/141 | 2024 regional flows | North America $633B, Asia-Pacific $519B. LatAm 7.7% and Africa and Middle East 6.7% of GDP. North America net exporter of $54B (R3 R3A) | 2025-07 |
| Chainalysis 2026 | On-chain activity, year to June 2026 | Balances $98B to $109B, cross-border $220.3B (+77.5%), P2P 96% stablecoins. Rank: Brazil, US, Nigeria, Japan, Korea, India, Ukraine, Thailand, South Africa, Canada | 2026-09 |
| DefiLlama | Supply by chain | $304.5B, USDT on Tron $92.6B | 2026-10-23 |
| Brazil central bank | Crypto FX flows | Stablecoins above 90% of flows (secondary), stablecoin trades treated as FX since 2026-02-02 | 2026 |
| Tether | Users | Over 650M users, no country split (R3 R3A) | 2026-06 |

### Table 3. Japan official reserves, $M (MOF)

| Month-end | Total | FX securities | Deposits | of which central banks and BIS | Gold | Intervention in month |
|---|---|---|---|---|---|---|
| Dec 2025 | 1,369,775 | 1,003,757 | 160,439 | 159,971 | 117,172 | 0 |
| Feb 2026 | 1,410,699 | 1,018,350 | 161,550 | 161,113 | 142,042 | 0 |
| Apr 2026 | 1,382,994 | 1,007,241 | 162,197 | 161,761 | 125,425 | ¥6.279T (30 Apr) |
| May 2026 | 1,305,874 | 931,678 | 162,235 | 161,800 | 123,646 | ¥5.456T (4 and 6 May) |
| Jun 2026 | 1,287,476 | 928,581 | 161,934 | 161,504 | 109,505 | 0 |
| Jul 2026 | 1,287,099 | 927,332 | 162,285 | 161,853 | 109,520 | part of ¥15.399T (30 Jul to 26 Aug) |
| Aug 2026 | 1,207,524 | 839,559 | 155,417 | 154,983 | 124,103 | rest of ¥15.399T |
| Sep 2026 | 1,178,396 | 821,691 | 155,222 | 154,794 | 113,592 | 0 |

Sources: https://www.mof.go.jp/english/policy/international_policy/reference/official_reserve_assets/e0712.html to e0809.html, intervention from R1 L5. Gold volume 27.20M oz throughout. A standing $20B long forward position appears every month and is unrelated to the interventions.

### Table 4. Treasury ESF balance sheet, 31 August 2026

| Item | $B |
|---|---|
| Fund balance with Treasury | 1.23 |
| Nonmarketable US Treasury securities | 24.87 |
| Euro and yen deposits and uninvested cash | 4.94 |
| Euro and yen securities | 14.19 |
| SDR holdings and interest | 173.16 |
| Total assets | 218.79 |
| Total liabilities (mostly SDR allocations) | 174.47 |
| Net position | 44.32 |
| Exchange Stabilization Agreements | Mexico $9B (none drawn), Argentina $20B (none drawn, $2.5B drawn and repaid in 2025) |

Source: https://home.treasury.gov/system/files/206/ESF-August-2026-FS-Trunc-Notes.pdf

### Table 5. US emergency dollar lines compared

| Case | Size | Drawn | Collateral | Conditions | Outcome |
|---|---|---|---|---|---|
| Mexico 1995 (ESF) | Up to $20B within a $50B package | $13.5B per Clinton (PIIE: $11.5B medium-term peak) | Oil export proceeds | IMF-style programme: spending cuts, small fiscal surplus, credit limits, data publication | Repaid January 1997, three years early, net US gain nearly $580M |
| Argentina 2025 (ESF) | $20B | $2.5B (October 2025) | Pesos (swap) | Political timing before midterms, Treasury peso purchases | Repaid December 2025, agreement still open |
| Fed standing lines (ECB, BoJ, BoE, SNB, BoC) | Unlimited in practice | $170M (2026-10-21) | Partner currency | Technical, renewed 2026-04-29 | Barely used in 2026 |
| FIMA repo (any FIMA account) | $60B cap | 0 since 2026-02-18 | Own Treasuries | Backstop pricing | Unused through the 2026 shock |
| UAE ask (April 2026) | Not stated | n/a | Likely own Treasuries | Stated aim: stop "disorderly" sales. Unstated (D2): dollar oil pricing, China technology limits | No line by 2026-10-23 |

### Table 6. Central bank gold in 2026 against dollar access (WGC reported data, tonnes)

| Central bank | 2026 to date | Period | Standing Fed swap line | Note |
|---|---|---|---|---|
| China (PBoC) | about +101 | Jan to Sep | No | 23 straight months, 21t in September (Kitco), about 2,410t held |
| Poland (NBP) | +98 | Jan to Aug | No (2020 temporary list excluded Poland) | 648t held, 700t target |
| Uzbekistan | +40 | Jan to Jul | No | Producer, buys and sells |
| Kazakhstan | +29 | Jan to Jul | No | Producer |
| Czech Republic | +12 | Jan to Jul | No | |
| Jordan, Malaysia, Ghana, UAE, Singapore, Kyrgyzstan | small additions | Q2 or July | Singapore had a 2020 temporary line, others none | UAE asked for a US line in April |
| Japan, ECB system, BoE, SNB, BoC | about 0 (Bundesbank -1 in Q2) | 2026 | Yes | Japan flat at 27.20M oz all year |
| Russia | -50 | Jan to Jul | No, reserves frozen | Sells for budget |
| Turkey | -85 | Jan to Jul | No | Uses gold swaps for liquidity |
| Total, all central banks | Q2 289t, H1 345t, reported 170t to August | | | About two thirds unreported |

Sources: https://www.gold.org/goldhub/gold-focus/2026/09/central-bank-gold-statistics-central-banks-make-positive-headlines-gold , https://www.gold.org/goldhub/research/gold-demand-trends/gold-demand-trends-q2-2026/central-banks , https://www.kitco.com/news/article/2026-10-07/chinas-central-bank-buys-21-tonnes-gold-september-largest-monthly-purchase

### Table 7. Yuan reach: swaps, payments and bonds

| Item | Value | Date | Source |
|---|---|---|---|
| PBoC swap agreements | 32, about RMB 4.5T ($672B) | end June 2026 | Caixin citing PBoC |
| PBoC swap drawings | RMB 132.8B (about $19.8B) | end June 2026 | Caixin citing PBoC |
| PBoC swap drawings, earlier | RMB 79.3B | 2025-09-30 | PBoC table |
| Selected PBoC lines | Hong Kong RMB 800B, Indonesia 400B, Brazil 190B, Argentina 130B, Thailand 70B, Saudi Arabia 50B, UAE 35B, Qatar 35B, Turkey 35B | latest PBoC table | PBoC |
| Fed swap lines outstanding | $170M | 2026-10-21 | H.4.1 |
| Yuan share of SWIFT payments | 3.13% (Jan, 5th), about 3.1% (Jul), 3.26% (Aug, 5th), Sep not found | 2026 | SWIFT PDF, Gate.com |
| Yuan share, broad PBoC measure | 6% to 7% (3rd) | 2026-10-19 | Pan Gongsheng via Caixin |
| Panda bonds | above RMB 160B in H1 2026 (+60%) | H1 2026 | PBoC via Global Times |
| Sovereign panda deals | Pakistan (May), Indonesia RMB 7B (July), Kazakhstan, Slovenia, Hungary. Brazil filed (up to RMB 5B) | 2026 | Pakistan Today, Global Times, Econosur |
| Chinese loans to Africa | $2.1B (2024), one energy loan, $180B since 2000 | 2024 | BU via Semafor |

### Table 8. Pre-registration (R5-16, this lane's events)

Market rule check: no market above $1M traded prices any row. Where a thin market exists it is shown.

| Event | Date | Desk prediction (number) | Resolution rule | Market odds if any |
|---|---|---|---|---|
| China Announcement 70 cliff | 2026-11-10 | Numbered extension of all six suspended measures 72%, partial (some measures or general licences only) 16%, full legal lapse 12% (R3 R3C, kept: no notice found by 10-23) | MOFCOM or GAC numbered announcement dated on or before 2026-11-10 (Beijing) extending suspension of Nos. 55 to 58, 61 and 62. None by 2026-11-11 00:00 Beijing = lapse | None (Kalshi KXCHINARARE was a September one-off. No Polymarket market) |
| No. 72 suspension (gallium, germanium, antimony to the US) | 2026-11-27 | Extended 80% | Numbered notice extending No. 72 by 2026-11-27 | None |
| WGC Gold Demand Trends Q3 2026, central banks | About 2026-10-29 to 10-30 | 240t (80% band 160t to 330t). Above 250t: 45%. Above Q2's 289t: 25% | Headline central bank net demand for Q3 2026 in the first GDT release | None. Gold price markets only (Polymarket October XAUUSD, $413k) |
| TIC September, foreign official Treasury holdings | About 2026-11-18 | $3,675B (80% band $3,620B to $3,740B). Below August's $3,755.6B: 90%. Japan below $1,068.3B: 85% | TIC Table 5 "of which foreign official" and Japan rows, September 2026, first print | None |
| IMF COFER Q3 2026, dollar share of allocated reserves | Late December 2026 | 56.2% (80% band 55.7% to 56.7%). Below Q2's 56.70%: 80%. Below 56.0%: 30%. Yuan 2.16%, above 2.5%: 3% | USD share of allocated reserves for 2026 Q3 in the first IMF COFER release | None (Polymarket's Q2 market settled, under $200 traded) |
| MOF monthly intervention, 29 Sep to 28 Oct | 2026-10-30 | Zero: 95% | MOF monthly release total | None |
| Any Japan yen-buying intervention | By 2026-12-31 | 20% | MOF releases covering dates to 2026-12-31 | Polymarket "USD/JPY hits 165 in 2026" 29% ($11k, thin). Kalshi KXJPYINT no open market |
| FIMA repo used | By 2026-12-31 | Weekly average above $1B in any H.4.1 week: 8%. If Japan intervenes, above $1B in an intervention week: 20% | H.4.1 table 1 "Foreign official" repo, weekly average | None |
| FOMC changes FIMA or adds a swap partner | 2026-10-28 | 4% | FOMC statement or implementation note | None |
| Public US dollar line (ESF or Fed) with a GCC state | By 2026-12-31 and 2028-12-31 | 7% and 20% | Treasury or Fed announcement, or an ESF statement note naming the agreement | None |
| USDT circulation $200B by 2026-12-31 | 2026-12-31 | 15% | DefiLlama or Tether figure at or above $200B on any day | Polymarket 42% ($150k). Gap 27 points, market below $1M. Reason: USDT flat for a year ($182.1B to $182.6B), needs +$17B in ten weeks without a crypto rally |
| Stablecoins $500B before 2027 | 2026-12-31 | 1% | Total USD stablecoins at or above $500B | Polymarket 2.6% ($605k). Agree |
| SWIFT yuan share, September 2026 edition | October to November 2026 | At or above 3.0%: 55% | Headline yuan share of global payments by value in the SWIFT Global Currency Tracker | None |
| PBoC gold, October | 2026-11-07 | 24th straight monthly addition: 90% | PBoC or SAFE reserve data, gold ounces above September | None |

Model inputs. COFER: allocated reserves $12.41T (R4A), Q2 shares from R4X-11, FX moves 30 June to 30 September 2026 (EUR 1.1413 to 1.1327, USD/JPY 162.63 to 157.56, USD/CNY 6.794 to 6.705, USD/CHF 0.809 to 0.836, GBP flat), US bond price effect -1.2% (central), other -0.6%, net dollar sales of about $100B (Japan's securities fell $106.9B in Q3). TIC: August $3,755.6B, flow -$7.1B (Fed custody 26 August to 30 September, face value), valuation duration 3.5 times the average rise in the 5-year (+58bp) and 10-year (+54bp) yields. Scripts: r5b_prereg.py.

---

## 8. Claims table

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R5B-01 | IMF WP 2026/211: EMDEs hold about three quarters of stablecoins. 188 countries, $21.4T gross flows 2018 to 2025. Holdings +75% within a year of a currency crisis and persist. Outflow restrictions raise activity about 30% within six months | T4 (IMF staff) | plausible | https://www.imf.org/en/publications/wp/issues/2026/10/02/international-stablecoin-flows-capital-controls-and-currency-crises-579853 | 2026-10-02 | 2025-12-31 | Issuer or regulator data with a US share above 50% |
| R5B-02 | IMF GFSR April 2026: USDT and USDC cross-border flows rose from about $12B (Q1 2020) to $316B (Q1 2025), large EM share, gross flows double digits of GDP in Ukraine, Vietnam, Belarus. Attribution by web traffic | T4 (IMF staff) | confirmed (document) | https://www.imf.org/-/media/files/publications/gfsr/2026/april/english/text.pdf | 2026-04 | 2025-03-31 | n/a (document) |
| R5B-03 | USD stablecoin supply $304.5B, USDT $182.6B (Tron $92.6B, Ethereum $72.7B), USDC $71.8B | T0 (aggregator) | confirmed | https://stablecoins.llama.fi/stablecoins?includePrices=false | 2026-10-23 | 2026-10-23 | Issuer attestations differ by more than 3% |
| R5B-04 | About 68% of dollar stablecoins are held outside the US (59% to 78%), about $96B in the US | model on T0 and T4 | speculative | r5b_holders.py | 2026-10-23 | 2026-10-23 | Holder-geography data from issuers or regulators outside the range |
| R5B-05 | Chainalysis 2026: balances $98B to $109B, cross-border stablecoin value +77.5% to $220.3B, P2P 96% stablecoins, adoption ranks Brazil 1, US 2, Nigeria 3 | T4 | plausible | https://www.chainalysis.com/blog/2026-global-crypto-adoption-index/ | 2026-09 | 2026-06-30 | Full report differs |
| R5B-06 | Japan's FX securities fell $75.6B (April to May) and $87.8B (July to August 2026) while deposits fell $0.0B and $6.9B, matching interventions of ¥11.73T and ¥15.40T | T0 | confirmed | https://www.mof.go.jp/english/policy/international_policy/reference/official_reserve_assets/e0809.html | 2026-10-07 | 2026-09-30 | MOF revision |
| R5B-07 | Japan held $821.7B of FX securities and $154.8B of deposits with foreign central banks and the BIS at end September 2026, gold 27.20M oz | T0 | confirmed | same as R5B-06 | 2026-10-07 | 2026-09-30 | n/a |
| R5B-08 | H.4.1 week ended 2026-10-21: FIMA repo 0, swaps $170M, foreign official RRP $326.9B, custody of marketable Treasuries $2,567.7B (+$18.5B on the week, -$176.0B on the year), Fed bills $566.6B | T0 | confirmed | https://www.federalreserve.gov/releases/h41/20261022/ | 2026-10-22 | 2026-10-21 | n/a (data) |
| R5B-09 | FIMA was zero for 35 straight weeks (18 February to 21 October 2026) | T0 | confirmed | R3A-11 plus R5B-08 | 2026-10-22 | 2026-10-21 | Any H.4.1 week with use |
| R5B-10 | ESF at 31 August 2026: total assets $218.8B, SDRs $173.2B, nonmarketable Treasuries $24.9B, euro and yen $19.1B, liabilities $174.5B, net position $44.3B | T0 | confirmed | https://home.treasury.gov/system/files/206/ESF-August-2026-FS-Trunc-Notes.pdf | 2026-09 | 2026-08-31 | September statement differs materially |
| R5B-11 | ESF agreements at 31 August 2026: Mexico $9B and Argentina $20B, nothing drawn. Argentina drew $2.5B in October 2025 and repaid in December 2025. No Gulf agreement listed | T0 | confirmed | same as R5B-10 | 2026-09 | 2026-08-31 | An ESF note naming a Gulf agreement |
| R5B-12 | Mexico 1995: up to $20B ESF within a $50B package, signed 21 February 1995, backed by oil export proceeds, tied to spending cuts, a small surplus, credit limits and data publication, repaid January 1997 more than three years early, net US gain nearly $580M | T0/T2 | confirmed | https://clintonwhitehouse6.archives.gov/1997/01/1997-01-15-fact-sheet-on-mexico-debt-repayment.html , https://www.piie.com/publications/chapters_preview/43/6iie2717.pdf | 1997-01-15 | 1997-01 | n/a (historical) |
| R5B-13 | Bessent (April 2026): permanent swap lines "a major first step" toward new dollar funding centers in the Gulf and Asia. Reuters: expansion may wait for Warsh | T2 via T4 | confirmed (words) | https://www.investing.com/news/forex-news/us-discussing-dollar-swap-lines-with-gulf-and-asian-partners-treasurys-bessent-says-4637621 | 2026-04-27 | 2026-04-24 | Transcript differs |
| R5B-14 | No US dollar line with the UAE or another Gulf state was announced by 2026-10-23 | T0 (ESF to August, H.4.1 to October) plus T4 (absence in news) | plausible | R5B-08, R5B-11 | 2026-10-22 | 2026-10-23 | Announcement or ESF note dated before 10-23 |
| R5B-15 | WGC: Q2 2026 central bank demand 289t (+62% y/y), Q1 revised to 57t, H1 345t (lowest first half since 2022). Q2 buyers Poland 51t, China 33t, Uzbekistan 16t, Kazakhstan 15t. Sellers Russia 22t, Turkey 4t | T0 | confirmed | https://www.gold.org/goldhub/research/gold-demand-trends/gold-demand-trends-q2-2026/central-banks | 2026-07-30 | 2026-06-30 | WGC revision |
| R5B-16 | WGC July 2026 data: net +23t. YTD China +60, Poland +90, Uzbekistan +40, Kazakhstan +29, Czech +12, Turkey -85, Russia -50 | T0 | confirmed | https://www.gold.org/goldhub/gold-focus/2026/09/central-bank-gold-statistics-central-banks-make-positive-headlines-gold | 2026-09-03 | 2026-07-31 | WGC revision |
| R5B-17 | August 2026 net central bank buying 39t, 170t reported YTD. PBoC bought 21t in September, its 23rd straight month | T0 via T4 | plausible | https://www.kitco.com/news/article/2026-10-07/chinas-central-bank-buys-21-tonnes-gold-september-largest-monthly-purchase | 2026-10-07 | 2026-09-30 | WGC or PBoC data differ |
| R5B-18 | WGC 2026 survey (76 central banks): 89% expect official gold to rise, record 45% plan to add, 83% expect gold's share higher in five years, 74% expect the dollar's share lower, 90% cite crisis performance, 85% of EMDE respondents cite geopolitical hedging, 9% raised domestic storage (5%), 10% diversified vaults (2%) | T2 (survey) | confirmed | https://www.gold.org/download/file/20916/Central%20Banks%20Survey%20Press%20Release%202026 | 2026-06-16 | 2026-05-19 | n/a (survey) |
| R5B-19 | In 2026 the reported net gold buyers are central banks without standing Fed swap lines, and the five standing-line central banks added none | T0 plus classification | plausible | R5B-15, R5B-16, R3A-12 | 2026-10-23 | 2026-09-30 | A standing-line central bank reports purchases |
| R5B-20 | Conditional dollar access is one strong motive for central bank gold buying, shown by who buys and by storage moving home, but not the only one | inference on T0 and T2 | plausible | R5B-18, R5B-19 | 2026-10-23 | 2026-10-23 | 2027 survey shows storage moving back abroad while buying continues |
| R5B-21 | PBoC: 32 swap agreements, about RMB 4.5T, RMB 132.8B drawn at end June 2026 (RMB 79.3B at end September 2025) | T0 via T4 | plausible | https://www.caixinglobal.com/2026-10-19/yuan-ranks-third-in-global-payments-under-broader-measure-pboc-chief-says-102495028.html , https://camlmac.pbc.gov.cn/en/3688241/3688636/3688657/5920618/index.html | 2026-10-19 | 2026-06-30 | PBoC report differs |
| R5B-22 | Pan Gongsheng (19 October 2026): yuan 6% to 7% of payments on a broad measure (3rd), 3% to 4% on SWIFT (5th) | T2 via T4 | confirmed (words) | same as R5B-21 | 2026-10-19 | 2026-10-19 | Transcript differs |
| R5B-23 | Yuan share of SWIFT payments 3.26% in August 2026 (5th), up from about 3.1% in July. September edition not found | T0 via T4 | plausible | https://www.gate.com/news/detail/chinas-yuan-hits-326-of-global-payments-in-august-up-from-31-24330579 | 2026-09-17 | 2026-08-31 | SWIFT PDF differs |
| R5B-24 | Chinese loan commitments to Africa were $2.1B in 2024, down more than 90% from 2016, with one energy loan. All Kenya's 2024 infrastructure loans were in yuan | T0 via T4 (BU) | plausible | https://www.semafor.com/article/01/23/2026/china-pulls-back-on-funding-african-projects | 2026-01-23 | 2024-12-31 | BU database shows otherwise |
| R5B-25 | Panda bonds above RMB 160B in H1 2026 (+60%). Indonesia RMB 7B (July 2026), Pakistan debut (May 2026), Brazil filed in June and had not priced by 29 September | T0 via T4 | plausible | https://www.pakistantoday.com.pk/2026/07/26/global-rush-into-chinas-panda-bonds-signals-yuans-rising-role-in-sovereign-finance , https://www.globaltimes.cn/page/202607/1365180.shtml , https://econosur.org/insights/brazil/brazil-panda-bond/ | 2026-07 to 2026-09 | 2026-09-29 | Issuance data differ |
| R5B-26 | MOFCOM No. 48 solar items carry no Global South facilitation clause, unlike its AI items. Comments close 2026-11-15, no effective date, interim registration live since 2026-10-16 | T1 (proposal) | confirmed | https://www.news.cn/fortune/20261016/b8cffe569f4b4842872221cc25458136/c.html , https://taiyangnews.info/markets/china-proposes-export-curbs-12-solar-pv-technologies | 2026-10-16 | 2026-10-23 | Final text adds a clause |
| R5B-27 | No MOFCOM notice extending Announcement 70 beyond 2026-11-10 was found by 2026-10-23 | T4 (absence) | plausible | https://clarkhill.com/news-events/news/china-hits-pause-on-rare-earth-export-controls-and-what-it-means-for-supply-chains | 2025-11 | 2026-10-23 | A notice dated before 10-23 |
| R5B-28 | USD/JPY 156.8 (2026-10-23), 3-month high about 164.0 (2026-07-22). 10-year Treasury 4.76% (2026-08-31) to 5.29% (2026-09-30) to 4.99% (2026-10-23) | T3 | confirmed | https://query1.finance.yahoo.com/v8/finance/chart/JPY%3DX | 2026-10-23 | 2026-10-23 | n/a (prices) |
| R5B-29 | No Polymarket or Kalshi market above $1M prices this lane's events. Polymarket: stablecoins $500B before 2027 at 2.6% ($605k), USDT $200B by year end 42% ($150k), USD/JPY 165 in 2026 29% ($11k) | T3 | confirmed (snapshot) | https://gamma-api.polymarket.com/public-search?q=stablecoin , https://api.elections.kalshi.com/trade-api/v2/series | 2026-10-23 | 2026-10-23 | n/a |
| R5B-30 | COFER Q3 2026 dollar share 56.2% (55.7% to 56.7%), TIC September foreign official $3,675B ($3,620B to $3,740B) | model | speculative | r5b_prereg.py | 2026-10-23 | 2026-10-23 | The prints |
| R5B-31 | Japan's next intervention is funded mainly by securities sales (80%). FIMA above $1B during it 20% | judgment on T0 | speculative | R5B-06 to R5B-09 | 2026-10-23 | 2026-10-23 | A FIMA draw above $10B during the next intervention |
| R5B-32 | A public US dollar line with a GCC state: 7% by end 2026, 20% by end 2028. Unstated conditions (dollar oil pricing, China technology limits) D2, about 55% | judgment | speculative | R5B-10 to R5B-14 | 2026-10-23 | 2026-10-23 | A line is announced, or its terms are published without such conditions |

---

## 9. Proposed changes

**Scenario odds: no headline change.** H0 62/15/1/22, H1 44/23/3/30, H2 31/28/10/31 stay. The round's evidence pulls both ways and roughly cancels. For S1: the IMF now finds that emerging economies hold three quarters of stablecoins and that crises raise holdings 75%, so the dollar is spreading on new rails abroad (R5B-01). For S2a: central banks without dollar backstops keep buying gold and moving it home (R5B-18, R5B-19), and the ESF's real dollar capacity is about $25B (R5B-10), so political lines cannot replace self-insurance. For S2b: PBoC swap drawings rose 67% in nine months and panda bonds grew 60% (R5B-21, R5B-25), still small.

**Proposed conditionals (new).**
- C7: if a US dollar line with a GCC state is announced with published non-monetary conditions (technology, China, oil pricing), move 1 point in H1 from S1 to S2a, because conditional access raises the gold motive more than the line extends the dollar.
- C8: if Japan draws FIMA above $10B during an intervention, move 1 point in H0 from S4 to S1 (the Treasury-protection chain works).
- C9: if the 2027 WGC survey shows more than 12% of central banks raising domestic storage, move 1 point in H1 from S1 to S2a.

**Corrections to earlier rulings.**
1. R3 R3A (R3-9, R3A-17, R3A-18) and the R3 court wording "ESF about $219B": add "of which $173B are SDRs matched by SDR allocations. Net position $44.3B, dollar securities $24.9B (August 2026)". Evidence R5B-10.
2. R3A-20 ("RMB 3.84T across 42 central banks", single secondary): replace with "32 agreements, about RMB 4.5T, RMB 132.8B drawn at end June 2026" (R5B-21). R4A's "more than 40 swap lines" (RBA) can stay as a count of all arrangements, but the PBoC's own count of agreements in force is 32.
3. R3 R3A R3-1 and R3A-05: raise status from speculative to plausible and confidence from 55 to 60, because an IMF country panel now supports a non-US majority (R5B-01).
4. R3A-14 and REPORT.md "foreign governments sold $254B": add that custody rose $18.5B in the week to 21 October to $2,567.7B (R5B-08), so official selling paused in October.
5. R4 open item 7 (SWIFT and PBoC swaps): close it with R5B-21 to R5B-23 and mark the May and June chart readings (about 2.2% and 2.4%) as low confidence.
6. R3 R3C chain D ("yuan by refinance"): widen to "yuan by refinancing and panda bonds" (R5B-24, R5B-25). Keep the "thin yuan layer" verdict and 70 confidence.
7. R4A-08 / R4-12: the PBoC September purchase is 21t (Kitco), not the 23t aggregator figure. The 23-month streak stands.
