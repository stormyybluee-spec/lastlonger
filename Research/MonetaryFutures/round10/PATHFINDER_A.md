# Pathfinder A, Round 10 (Unseen mode, PLAN 4.7)

Written 2026-11-12. Holes 1 and 3. General education about money, not financial advice. Nothing here is a finding unless it says so. Every inferred link shows its grade, its probability and the date that would settle it.

Read: engine/ROLES.md (Pathfinder card), PLAN 4.7 and 8.4, round10/FRAME_R10.md (sections 0, 5, 6, Holes 1 and 3), round10/lanes/R10A-data-footprints.md and R10A-tables.json, engine/BASE_RATES.md, round10/EXAM_T9.md. Not read: REPORT.md, the site, the ledger, earlier verdicts, the other Pathfinder's holes.

No request sent any email or personal identifier. SEC EDGAR was not used.

## Hole 1. Where do Gulf oil dollars go now?

### 1.0 Footprints written before searching

| Link | Claim to test | Marks it must leave | Where to look |
|---|---|---|---|
| H1 L1 | Gulf oil goes mostly to China | China customs crude imports by origin (Saudi Arabia, Iraq, UAE, Oman, Kuwait, Qatar) for 2025. Each Gulf state's crude exports in total. Tanker tracker splits by destination | Press reports of China customs data, EIA country briefs, Kpler or Vortexa summaries |
| H1 L2 | About 30% of Gulf oil is settled in yuan | A yuan share in SWIFT data that is large for the Gulf. CIPS volumes big enough to carry it. Named yuan cargoes. PBoC swap lines with SAMA and CBUAE drawn. Yuan stock on Gulf bank or central bank books | SWIFT tracker via press, CIPS annual figures, PBoC swap announcements, press on yuan cargoes |
| H1 L3 | Gulf funds buy US shares instead of Treasuries | Treasuries falling while US equities rise in TIC. 13F values rising. Fund reports showing a shift out of bonds | Data lane tables (already pulled), secondary pages citing 13F |
| H1 L4 | The 1974 deal and what remains | Documents of the add-on and secrecy terms. Any present day agreement tying security to dollar holdings | EXAM_T9 (sourced), May 2025 US Saudi agreements |

### 1.1 Headline

Gulf oil still earns dollars, and much of it still goes into Treasuries. China is the largest single buyer of Gulf crude, but it takes roughly a third of it, not most of it. No source shows 30% of Gulf oil settled in yuan. The number most likely comes from China's own trade, where 28% was settled in yuan in the first half of 2025. Gulf Treasury holdings rose, they did not fall, while Gulf US share holdings grew faster. So "shares instead of Treasuries" fails as a swap. It reads better as "shares on top of Treasuries", the same shape Norway's fund shows. The 1974 secret part (a quiet buying window and hidden data) ended in stages by 2016. What remains is a public trade of US security for Saudi investment pledges (November 2025), aimed at real assets and arms, not Treasuries. A big new fact for 2026: the war with Iran and the Hormuz crisis cut Gulf flows to China from the spring, so 2026 numbers carry a shock on top of any trend.

Likelihood and confidence: "China takes most Gulf oil" is unlikely (15 to 40%), medium confidence. "About 30% in yuan" for all Gulf oil is remote (under 15%), medium confidence. As a share of Gulf sales to China only, it is unlikely, low confidence. "Instead of" as a swap is unlikely, high confidence on the Treasury side.

### 1.2 Chains

| Chain | Links and grades | Chain probability | Exit |
|---|---|---|---|
| H1-01 China's share of Gulf crude | L1 I0 EIA, 84% of Hormuz crude to Asia, four buyers 69% (0.95). L2 I0 China customs and Kpler via press, record 11.6 mb/d, about 5.4 mb/d from the Middle East (0.90). L3 I1 China takes about a third, largest but not a majority (0.70). L4 I0 2026 Hormuz crisis cuts China's Middle East share to about 31% in May 2026 (0.85) | 51% | Finding |
| H1-02 The 30% yuan claim | L1 I0 yuan 2.75 to 3.1% of SWIFT payments, 28% of China's goods trade in yuan (0.90). L2 I2 the 30% is China's own trade share relabelled (0.45). L3 I2 accounting rules out 30% of all Gulf oil, not 30% of sales to China (0.55). L4 I0 SAMA left mBridge after May 2025 (0.75) | 17% | Dated test |
| H1-03 Shares instead of Treasuries | L1 I0 Gulf Treasuries 219.2 to 330.3 billion, January 2023 to August 2026 (0.97). L2 I0 annual survey, Saudi equities 57 to 215, debt flat near 120, Norway the same shape (0.95). L3 I0 via secondary 13F, PIF's filed US book 56.7 billion at end 2021, about 12 billion in March 2026 (0.80). L4 I2 no swap. Equity growth is prices plus holders other than PIF's filed book (0.55) | 41% | Finding (on the Treasury side) |
| H1-04 The 1974 deal now | L1 I0 GAO 1979 add-on window and secrecy (0.95). L2 I0 secrecy ended May 2016 (0.98). L3 I0 November 2025 Strategic Defense Agreement and nearly 1 trillion dollar pledge (0.95). L4 I2 what remains is an open security-for-investment trade, not a Treasury duty (0.55) | 49% | Finding |

Chain H1-02 is under 20%, so its conclusion is published as an open question with a test, not a finding.

Scale check (computed, from the sources above): Hormuz crude was about 14.5 million barrels a day in 2024. China's Middle East intake of about 5.4 million a day, Iran included, is about 36% of that. Saudi crude to China was about 1.6 to 1.7 million a day in 2025, under 30% of Saudi crude exports of about 6 million a day.

Yuan bound (computed, rough, at about 70 dollars a barrel): all Gulf crude exports are near 400 billion dollars a year, so 30% would be over 100 billion a year in yuan. The CBUAE swap line with the PBoC is 35 billion yuan, about 5 billion dollars. Gulf sales to China are near 115 billion a year, so 30% of those would be about 35 billion. That smaller figure could pass unseen if the yuan were spent on Chinese imports at once.

### 1.3 Rival readings (whole hole)

| Evidence | Official | Coordination | Shared incentives | Accident or measurement |
|---|---|---|---|---|
| Gulf Treasuries up 51% since January 2023 | Consistent | Inconsistent (with a swap to shares) | Consistent | Neutral |
| Saudi and UAE US equities up fast since 2018, Norway the same shape | Consistent | Inconsistent (Norway had no Gulf deal) | Consistent | Consistent (prices and custody) |
| PIF's filed US book fell from 56.7 to about 12 billion while the Saudi survey equity line rose | Neutral | Inconsistent (a deal to buy US shares should show in PIF) | Consistent | Consistent (other holders, other managers) |
| China about a third of Gulf crude, not a majority | Consistent | Inconsistent (with a China deal for most oil) | Consistent | Neutral |
| No Gulf yuan share published. SWIFT yuan share near 3% | Consistent | Inconsistent (with a 30% yuan deal) | Consistent | Consistent (28% China trade figure misread) |
| SAMA left mBridge in 2025 | Consistent | Inconsistent (with a yuan push agreed with China) | Consistent | Neutral |
| November 2025 public security-for-investment deal | Consistent | Consistent (but public, so not deniable) | Consistent | Neutral |
| Saudi Treasuries fell in 2020 and in the 2026 Hormuz months | Consistent | Inconsistent (with a holding floor) | Consistent | Neutral |
| Count of inconsistent cells | 0 | 6 | 0 | 0 |

Least inconsistent: official and shared incentives tie, with measurement as a live helper on the equity side. The coordination reading collects the most inconsistent cells.

### 1.4 Coordination level

- Treasuries to shares shift: level 0. Each fund's incentive (returns on shares after 2009, the same as Norway's) explains it. No channel found.
- Yuan settlement: level 0. Some sellers may take yuan where they buy Chinese goods. No agreed 30% found.
- 1974 to 2016: level 2 on documents (from EXAM_T9). Channel: US Treasury, the New York Fed and SAMA through the add-on window and TIC reporting. Enforcement: Saudi money would not come without the secrecy pledge, US security on the other side. Secrecy load: a handful of Treasury and New York Fed officials for 41 years, with GAO and Congress partly aware from 1979.
- Today: an open state-to-state exchange (White House fact sheet, November 2025). It is coordination in the plain sense, but it is public, so it is not a "deal with deniability". It names real assets and arms, not Treasuries.

### 1.5 Patches for the missing links

| Gap | Boring patch | Base rate patch | Consequential patch | Cheapest test |
|---|---|---|---|---|
| Who holds the Saudi US equities that PIF's 13F does not show | Price gains on older holdings (US shares roughly doubled from mid 2018 to mid 2025) | SAMA and other Saudi entities hold US equity through external managers, whose 13F carry the shares under the manager's name | Saudi state money sits in US shares through custody centres at a size far above what TIC can attribute | Annual survey as of June 2026 (about end of February 2027): does Saudi equity rise faster than US prices |
| Gulf Treasuries held offshore | None hidden. TIC country lines are about right | Some sits with custodians in the UK, Belgium or Luxembourg, as Treasury itself warns | Real Gulf holdings are double the TIC lines, as a former official told Bloomberg in 2016 | TIC monthly: do Belgium or Luxembourg rise in the months the Gulf lines fall (EXAM_T9 test T-c) |
| Where the 30% figure came from | Misread of China's 28% trade figure | A private estimate for China's whole crude bill, lifted by Russian and Iranian barrels paid in yuan | A real Gulf share kept quiet by both sides | Ask the specimen's author for the source. Then Aramco's 2026 annual report, March 2027 |

### 1.6 Dated tests

| id | Test | Confirms | Kills | Reveal date |
|---|---|---|---|---|
| T1-A | PIF 13F for 30 September 2026 | PIF's filed US book stays far below its 2021 peak while Gulf Treasuries stay above 300 billion | PIF's filed book jumps while Gulf Treasuries fall below 280 billion together | 16 November 2026 (filing deadline). TIC September data about 18 November 2026 |
| T1-B | China customs October 2026 by origin | Gulf states together stay under half of China's crude imports, and China under half of Gulf crude exports | Any month where China takes over half of the Gulf's crude | About 20 November 2026 |
| T1-C | SWIFT tracker yuan share | Stays under 5% | Over 6% for three months in a row, with a Gulf split that shows yuan near 30% | Monthly, through June 2027 |
| T1-D | Aramco annual report for 2026 | No yuan share disclosed, or a share under 10% | A disclosed yuan share near 30% | March 2027 |
| T1-E | TIC annual survey as of June 2026 | Saudi equity grows about as fast as US prices, debt stable | Saudi debt falls by more than 20% while equity jumps | About end of February 2027 |

### 1.7 Dead ends (Hole 1)

- China customs full-year 2025 tables for UAE, Oman, Kuwait and Qatar: not reached through press in three searches. Next agent: go to a Reuters or Argus table in January 2027 for 2026, not 2025.
- A PBoC swap line with SAMA: not found in one search. The CBUAE line (35 billion yuan, November 2023) is the only Gulf line confirmed.
- SEC EDGAR for 13F: not used, by rule. Secondary pages only.

## Hole 3. Who really funds the US Treasury market?

### 3.0 Footprints written before searching

| Link | Claim to test | Marks it must leave | Where to look |
|---|---|---|---|
| H3 L1 | Custody centres (Cayman, Belgium, Luxembourg, UK) hold more than Japan and China | TIC country lines | Data lane (already pulled) |
| H3 L2 | The Cayman line is understated and is mostly hedge funds in basis trades | Form PF totals above TIC, CFTC leveraged fund shorts rising with them, Fed notes saying so | FEDS Notes (Data lane has the October 2025 note), any 2026 update, OFR |
| H3 L3 | The yen carry trade funds US assets and BoJ hikes end it | BoJ rate rises, Japan MoF net sales of foreign bonds after hikes, Japan TIC line falling, a stress episode such as August 2024 | BoJ releases, MoF weekly flows via press, BIS notes |
| H3 L4 | About 15 trillion offshore dollars, more than double M2 | BIS global liquidity indicators: dollar credit to nonbanks outside the US, with its definition. Fed H.6 M2 | BIS GLI release, Fed H.6 |
| H3 L5 | Who funds the holders at the margin | Repo lending by money funds, sponsored repo, Fed standing repo use. Auction allotments by investor class | OFR, Treasury allotments, press |

### 3.1 Headline

Foreign states no longer fund the growth of the Treasury market. Since 2019 the new money came mostly from US money market funds, the Fed, leveraged private holders such as hedge funds, and private foreign buyers booked through custody centres. The custody centres (UK, Belgium, Caymans, Luxembourg) now hold more than Japan and China together, and the Fed's own staff say the Cayman line undercounts hedge fund holdings by about 1.4 trillion. Much of the cash behind those hedge fund bonds is lent by US money funds through repo, so "offshore" holders are partly funded onshore. Japan's Treasury holdings fell about 171 billion from February to August 2026. The timing and size match Japan's record yen-buying intervention (about 170 billion dollars), not a carry trade unwind. The yen carry trade looks alive, with a rate gap of about 2 points. The "15 trillion offshore dollars" is a real BIS number, but it is dollar debt owed by borrowers abroad, and it is about 0.63 times M2, not double.

Likelihood and confidence: "custody centres and hedge funds carry more of the market than states" is likely (65 to 90%), high confidence. "Japan's 2026 fall is intervention, not carry" is likely, medium confidence. "15 trillion offshore dollars is more than double M2" is remote, high confidence.

### 3.2 Chains

| Chain | Links and grades | Chain probability | Exit |
|---|---|---|---|
| H3-01 Custody centres and their cash | L1 I0 four centres 2411.2 against Japan plus China 1659.0 (0.97). L2 I0 FEDS Note October 2025, Cayman undercount about 1.4 trillion (0.95). L3 I0 FEDS Note June 2026, hedge funds 2.4 trillion long, 8.5% of privately held, basis 830 billion, repo borrowing 3.0 trillion (0.95). L4 I2 the repo cash is mostly US money funds, whose repo assets rose to 3.07 trillion (0.55) | 48% | Finding |
| H3-02 Japan and the carry trade | L1 I0 BoJ near 1.25%, US to Japan 10-year gap about 2.1 points (0.90). L2 I0 MoF sold dollars, 11.7 trillion yen (April to May) plus 15.4 trillion yen (July to August), about 170 billion dollars (0.97). L3 I1 Japan's Treasury fall of 171 billion is mostly this intervention, Fed custody fell 160 billion over the same months (0.70). L4 I2 the carry trade has not unwound at scale (0.50) | 31% | Dated test |
| H3-03 Offshore dollars | L1 I0 BIS dollar credit to non-banks outside the US 14.7 trillion, end-March 2026 (0.95). L2 I0 M2 23.4 trillion, M1 20.1 trillion, September 2026 (0.97). L3 I2 the 15 trillion is debt, 0.63 times M2, not double (0.60) | 55% | Finding |
| H3-04 Who grew since 2019 | L1 I0 Z.1, rest of the world about 32% of Treasuries in mid 2026 against about 41% at end 2019, money funds 1.12 to 3.28 trillion, household residual 1.39 to 2.83 (0.90). L2 I0 official share of foreign holdings 66.5% to 40.2% (0.95). L3 I2 states no longer fund the growth (0.55) | 47% | Finding |

Month-by-month check for H3-02 (billions, from the Data lane tables): Japan TIC line 1239.3 (Feb 2026), 1209.9 (Apr), 1143.1 (May, after the April to May intervention), 1116.7 (Jun), 1103.9 (Jul), 1068.3 (Aug, after the 30 July to 3 August intervention). Fed custody for foreign official accounts 2775.6 (Feb) to 2615.2 (Aug). Over the same months the UK line rose from 897.3 to 1009.5, so private custody lines took up the slack.

A note on 2026 coordination: press reports say Japan's Finance Minister and the US Treasury Secretary confirmed joint action on the yen in late July 2026, the first since 1998 (search summaries, and investinglive on 2 August 2026 citing Reuters). Japan's MoF also said the Fed's repo facility for foreign official accounts was among its tools. That is public coordination on the currency. It points the opposite way to "Japan buys Treasuries on US request": Japan sold dollar assets, with US approval.

### 3.3 Rival readings (whole hole)

| Evidence | Official | Coordination | Shared incentives | Accident or measurement |
|---|---|---|---|---|
| Custody centres 2411 against Japan plus China 1659 | Consistent | Neutral | Consistent | Consistent (custody bias) |
| Fed staff: Cayman undercount about 1.4 trillion, from repo collateral moves | Consistent | Neutral | Consistent | Consistent |
| Hedge fund basis trade 830 billion, repo borrowing 3.0 trillion | Consistent | Inconsistent (a return trade, not a policy) | Consistent | Neutral |
| Money fund repo assets 1.24 to 3.07 trillion | Consistent | Neutral | Consistent | Neutral |
| Foreign official share 66.5% to 40.2% of foreign holdings | Consistent | Inconsistent (states are not stepping up) | Consistent | Consistent (some official money in private lines) |
| Japan sold about 170 billion dollars defending the yen, Japan line down 171 | Consistent | Inconsistent (with Japan funding the US on request) | Neutral | Consistent (price effects too) |
| BIS 14.7 trillion is debt, 0.63 times M2 | Consistent | Inconsistent (no hidden money stock) | Neutral | Consistent (a credit figure compared with money) |
| Count of inconsistent cells | 0 | 4 | 0 | 0 |

Least inconsistent: official, shared incentives and measurement tie. They are not rivals here so much as layers: the official base is real, return-seeking leveraged money is the growth, and custody bias decides where it shows up.

### 3.4 Coordination level

Level 0 for the funding of the Treasury market. Each holder follows its own return: money funds lend repo for yield, hedge funds run the basis for spread, private foreigners buy for yield. No channel, enforcement or secrecy load found for any state agreeing to fund the deficit. The one documented joint act in 2026, the US and Japan on the yen, is public and ran against Treasury holdings.

### 3.5 Patches for the missing links

| Gap | Boring patch | Base rate patch | Consequential patch | Cheapest test |
|---|---|---|---|---|
| Why the UK line rose 411 billion since January 2023 | London dealers and asset managers booking for clients worldwide | Hedge funds and repo collateral booked in London, the same mechanism the Fed found for the Caymans | Official holders (Gulf, China) moved custody to London to hide sales or purchases | TIC annual survey as of June 2026, end of February 2027: does the UK private line shrink once custody is traced |
| How much of Japan's 171 billion fall is price, not sales | Most of it is price, since yields rose toward 5% | About half price, half official sales or repo | Japan quietly cut its long-run Treasury stock beyond the intervention | Japan's official reserves for 2026 and MoF weekly flows, next release in early December 2026 |
| Who lends the hedge funds repo cash at the margin | Money funds through sponsored and cleared repo | Money funds plus foreign banks in London | The Fed's standing repo facility becomes the lender of first resort at stress dates | OFR money fund monitor monthly. Fed standing repo use on 31 December 2026 |

### 3.6 Dated tests

| id | Test | Confirms | Kills | Reveal date |
|---|---|---|---|---|
| T3-A | TIC September 2026 | Four custody centres stay above Japan plus China | Japan plus China above the four centres | About 18 November 2026 |
| T3-B | Fed H.4.1 custody for foreign official accounts | Stays under 2.6 trillion through December, with no new intervention | Rises above 2.7 trillion | Weekly, 19 November to 31 December 2026 |
| T3-C | BoJ meeting | If the rate rises to 1.5%, the yen gains under 5% in the following month and CFTC short-yen positions fall less than in August 2024 | A yen jump over 8% in a month and a fall in US asset prices, the 2024 pattern | 17 to 18 December 2026 |
| T3-D | Fed Z.1 third quarter 2026 | Money funds and the household residual keep growing, rest of the world share under 33% | Rest of the world share back above 35% | About 11 December 2026 |
| T3-E | MoF intervention data, October to December 2026 | No further intervention and the Japan TIC line stops falling | A further intervention matched by another custody fall | About 2 February 2027 |
| T3-F | BIS GLI at end-September 2026 | Dollar credit outside the US 14 to 16 trillion | Over 20 trillion, which would need a new definition | Late January 2027 |

### 3.7 Dead ends (Hole 3)

- A 2026 Fed update of the Cayman undercount: not found. The October 2025 note is the latest Cayman estimate. The June 2026 note gives totals, not a Cayman split.
- FRED series ids for Z.1 rest of the world and household Treasury holdings at face value did not answer. The market-value ids did. Shares in H3-04 mix face and market value and are approximate.
- Japan MoF weekly portfolio flows and CFTC yen positions: not reached in budget.

## Budget

Hole 1: 14 searches or fetches of 15. Hole 3: 13 of 15 (two of them FRED data pulls). No request carried any email or personal identifier. SEC EDGAR was not used.

## Claims table

| id | claim | tier | status | source URL | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R10P-01 | 84% of Hormuz crude went to Asia in 2024. China, India, Japan and South Korea took 69% together. Saudi shipped 5.5 mb/d, 38% | T0 | fetched | https://www.eia.gov/todayinenergy/detail.php?id=65504 | 2025-06-16 | 2024 | An EIA revision |
| R10P-02 | China imported a record 11.6 mb/d of crude in 2025 | T2 | fetched | https://www.energypolicy.columbia.edu/where-china-gets-its-oil-crude-imports-in-2025-reveal-stockpiling-and-changing-fortunes-of-certain-suppliers-including-those-sanctioned/ | 2026-01-29 | 2025 | China customs annual table |
| R10P-03 | China customs: 80.75 Mt from Saudi Arabia and 64.62 Mt from Iraq in 2025 | T3 | search summary, page not opened | https://tass.com/economy/2074135 | 2026-01 | 2025 | China customs annual table |
| R10P-04 | About half of China's seaborne crude, about 5.4 mb/d, came from the Middle East in 2025 (Kpler) | T3 | search summary | https://www.bairdmaritime.com/shipping/tankers/opinion-how-chinas-massive-oil-and-gas-stockpile-acts-as-a-buffer-against-war | 2026 | 2025 | Kpler data |
| R10P-05 | China takes roughly a third of Gulf crude exports (about 30 to 40% with Iran), the largest buyer but not a majority | Inferred I1 | computed from R10P-01 and R10P-04 | https://www.eia.gov/todayinenergy/detail.php?id=65504 | 2026-11-12 | 2025 | A tracker or customs total showing China over half of Gulf crude |
| R10P-06 | Saudi crude was 1.72 mb/d, 21% of China's imports in 2025 | T3 | fetched | https://weekend.argaam.com/97/en/Petroyuan_Balancing_Act | 2026-05 | 2025 | China customs |
| R10P-07 | The 2026 Iran war and Hormuz crisis cut China's crude imports to the lowest since July 2022 in April 2026. Brent largely above 100 dollars | T2 | fetched | https://www.thestar.com.my/business/business-news/2026/05/29/chinas-declining-appetite-for-oil-laid-bare-by-iran-war | 2026-05-29 | 2026-04 | China customs April 2026 |
| R10P-08 | Yuan share of SWIFT payments peaked at 4.7% in July 2024 and fell back to 2.75% | T2 | fetched | https://www.piie.com/blogs/realtime-economics/2026/has-chinese-yuans-rise-global-usage-hit-wall | 2026-09-02 | 2026 | SWIFT tracker |
| R10P-09 | 28% of China's goods trade was settled in yuan in the first half of 2025 (official data) | T2 | fetched | https://www.piie.com/blogs/realtime-economics/2026/has-chinese-yuans-rise-global-usage-hit-wall | 2026-09-02 | 2025-H1 | PBoC RMB report |
| R10P-10 | No source found for "about 30% of Gulf oil settled in yuan". The figure most likely comes from R10P-09 | Inferred I2 | three searches, none found | https://www.spglobal.com/content/dam/spglobal/global-assets/en/special-reports/Corp_0327_Saudi%20China%20ties%20and%20RMB%20based%20oil%20trade.pdf | 2026-11-12 | 2026 | A Gulf exporter or tracker figure near 30% |
| R10P-11 | CBUAE and PBoC renewed a 35 billion yuan (18 billion dirham) swap in November 2023 for five years | T0 | search result, central bank PDF named | https://www.centralbank.ae/media/uqmntf04/cbuae-and-peoples-bank-of-china-renew-bilateral-currency-swap-agreement-and-sign-a-memorandum-of-understanding-on-digital-currency-development-en.pdf | 2023-11 | 2023-11 | A new swap announcement |
| R10P-12 | 30% of all Gulf crude sales in yuan would be over 100 billion dollars a year, far above the visible Gulf yuan plumbing | Inferred I2 | computed, rough | https://www.eia.gov/todayinenergy/detail.php?id=65504 | 2026-11-12 | 2026 | BIS data showing large Gulf yuan claims |
| R10P-13 | PIF's 13F US equity book peaked at 56.7 billion at end 2021 and was about 12 billion in March 2026. Mubadala's was 20.5 billion | T3 | fetched, secondary citing 13F | https://enterpriseam.com/menaplus/2026/05/18/tale-of-two-funds-pif-trims-us-equities-as-mubadala-ramps-up/ | 2026-05-18 | 2026-03 | 13F filings |
| R10P-14 | An aggregator shows PIF's 13F at about 37.9 billion in 5 positions at 30 June 2026 | T4 | search summary, not checked | https://arkolith.com/fund/public-investment-fund-1767640 | 2026-08 | 2026-06 | 13F filing |
| R10P-15 | Gulf Treasuries rose while Gulf US equities grew faster, the same shape as Norway, so "instead of" fails as a swap | Inferred I2 | from R10A-02, R10A-08, R10A-10 and R10P-13 | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/shl2025r.pdf | 2026-04 | 2025-06 | June 2026 survey with Gulf debt down over 20% |
| R10P-16 | In November 2025 the US and Saudi Arabia signed a Strategic Defense Agreement and Saudi investment commitments rose to nearly 1 trillion dollars, into infrastructure, technology and industry | T1 | search result of the White House fact sheet | https://www.whitehouse.gov/fact-sheets/2025/11/fact-sheet-president-donald-j-trump-solidifies-economic-and-defense-partnership-with-the-kingdom-of-saudi-arabia | 2025-11 | 2025-11 | None for the fact. Delivery is open |
| R10P-17 | Hedge funds held about 2.4 trillion long in Treasuries in September 2025, 8.5% of privately held. Basis trade about 830 billion. Repo borrowing 3.0 trillion | T1 | fetched | https://www.federalreserve.gov/econres/notes/feds-notes/decomposing-hedge-funds-u-s-treasury-exposures-20260622.html | 2026-06-22 | 2025-09 | A Fed correction |
| R10P-18 | US money market fund repo assets rose from 1.24 trillion (end 2019) to 3.07 trillion (second quarter 2026) | T0 | fetched FRED csv | https://fred.stlouisfed.org/series/BOGZ1FL632051000Q | 2026-09 | 2026-Q2 | Z.1 revision |
| R10P-19 | The repo cash behind hedge fund Treasury holdings is mostly US money funds | Inferred I2 | from R10P-17 and R10P-18 | https://fred.stlouisfed.org/series/BOGZ1FL632051000Q | 2026-11-12 | 2026-Q2 | OFR data showing foreign banks lend most of it |
| R10P-20 | BoJ policy rate near 1.25%, held 30 October 2026 by 8 to 1. US 10-year 4.98% and Japan 10-year 2.876% on 29 October | T2 | fetched | https://www.universalassetowners.com/newsroom/bank-of-japan-holds-1-25-gpif-insurers-yen-carry/ | 2026-10-30 | 2026-10-30 | BoJ statement |
| R10P-21 | Japan's MoF sold dollars for yen: 15,399.3 billion yen on 30 July, 31 July and 3 August 2026 | T0 | fetched | https://www.mof.go.jp/english/policy/international_policy/reference/feio/quarter/2026_3Qe.html | 2026-11-09 | 2026-Q3 | None |
| R10P-22 | Japan's MoF sold 11,734.9 billion yen of dollars from 28 April to 27 May 2026 | T2 | search summary of MoF data | https://english.adnkronos.com/2026/05/29/japan-spends-record-11-7-t-yen-in-april-may-forex-interventions/ | 2026-05-29 | 2026-05 | MoF monthly page |
| R10P-23 | Japan's Treasury fall of 171 billion (February to August 2026) is mostly the intervention, not a carry unwind | Inferred I1 | TIC and H.4.1 match in timing and size | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table3.txt | 2026-11-12 | 2026-08 | Japan reserves stable while the line fell |
| R10P-24 | Press reported joint US and Japan action on the yen in late July 2026, the first since 1998 | T3 | fetched, reported not confirmed in that article | https://investinglive.com/forex/japan-s-finance-minister-will-confirm-joint-with-us-conducted-yen-intervention-on-monday/ | 2026-08-02 | 2026-07 | US Treasury quarterly FX operations report |
| R10P-25 | Dollar credit to non-banks outside the US was 14.7 trillion at end-March 2026 | T0 | fetched | https://www.bis.org/statistics/gli2607.htm | 2026-07-31 | 2026-03 | BIS revision |
| R10P-26 | M2 was 23,413.9 billion and M1 20,061.2 billion in September 2026 | T0 | fetched FRED csv | https://fred.stlouisfed.org/series/M2SL | 2026-10 | 2026-09 | H.6 revision |
| R10P-27 | "15 trillion offshore dollars, more than double M2" fails: the BIS figure is debt, about 0.63 times M2 | Inferred I2 | computed | https://www.bis.org/statistics/gli2607.htm | 2026-11-12 | 2026-09 | A BIS measure of about 15 trillion that is a money stock |
| R10P-28 | Rest of the world held about 32% of Treasury securities in mid 2026 against about 41% at end 2019. Money funds 1.12 to 3.28 trillion | T0 | fetched FRED csv, mixed face and market value | https://fred.stlouisfed.org/series/BOGZ1LM263061105Q | 2026-09 | 2026-Q2 | Z.1 revision |
