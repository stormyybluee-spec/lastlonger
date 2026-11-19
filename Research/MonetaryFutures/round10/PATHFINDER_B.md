# Pathfinder B, Round 10 (Unseen mode, PLAN 4.7)

Written 2026-11-12. Holes 2 and 4 from round10/FRAME_R10.md. General education about money, not financial advice. Nothing below is a finding unless it is marked as one. Chain files are in round10/holes/ (H2-*.json and H4-*.json).

## Hole 2. Does the "three kinds of country" lens predict anything?

### 2.0 Pre-registered sort (written before any debt holder or crisis data was pulled this session)

Rules, fixed here and not tuned later:
- Box B (state kept its resources, bargains through a fund): sovereign fund assets above 100% of GDP.
- Box C (state above capital): not Box B, the capital account is mostly closed (Chinn and Ito index in the bottom third) and the state owns most of the largest firms and banks.
- Box A (capital above the state): not B or C, open capital account, mostly private ownership of the largest firms.
- Anything that fits none cleanly is listed as a misfit, never forced.

Sort (19 countries): Box A: United States, United Kingdom, Germany, France, Italy. Box B: Norway, Saudi Arabia, UAE, Qatar, Kuwait, Singapore. Box C: China. Test cases the specimen did not place: Japan, Switzerland, Korea (open, private, no big fund, so the rules put them in A), India and Russia (closed capital account and large state ownership, so the rules put them in C), Brazil (A on ownership, middle on capital controls, so a misfit).

Predictions per box, written before the data:
| Item | Box A | Box B | Box C |
|---|---|---|---|
| Who holds the government's debt | Large foreign share (over 25%) and a large central bank share after QE | Debt small. Held by domestic banks and foreign buyers of dollar bonds | Domestic banks, mostly state owned. Foreign share under 10% |
| Capital controls | Open | Open on the capital account (pegs need open flows) | Closed or managed |
| Sovereign fund size | Small against GDP | Above 100% of GDP (true by the rule, so not a test) | Mid size against GDP |
| 2008 | Bail out banks, central bank buys assets | Fund or central bank props up local banks and markets | State banks told to lend, fiscal push through them |
| 2020 | Central bank buys government bonds on a large scale | Draw on the fund for the budget | State banks lend, tighter capital flows |
| 2022 | Central bank steps in to the bond market when a local accident hits | Windfall saved in the fund | Capital controls and state lending hold the line |

Plain alternative lens, also fixed now: (1) reserve currency issuer or not, (2) net creditor (positive net international investment position) or net debtor, (3) rich or emerging. Its predictions: reserve issuers do large central bank bond buying in a crisis and have foreign holders of their debt. Net creditors with oil money hold big funds and draw them in a crisis. Emerging economies with closed accounts hold debt at home and use controls.

### 2.1 Headline

The lens describes the countries it was built from, but in this small test it predicts nothing a plain lens does not. Two of its four predicted traits (fund size and capital controls) are true by how the boxes are defined, so they cannot test it. On who holds the debt it scored 4 of 5 countries, and a plain net creditor or debtor lens also scored 4 of 5. On crisis behaviour, the actions matched the boxes, but each one is also what the plain lens predicts: reserve currency central banks bought bonds, countries with funds drew on them (24 governments on six continents did so in 2020, not only box B), and a closed, state-banked system used state buyers. Likelihood that the lens adds information over the plain lens: unlikely (about 25%). Confidence: low, because only 6 countries had holder data pulled and the euro area, India and Russia are not scored yet.

### 2.2 Data used (fetched this session unless marked)

| Country | Box by the rules | Capital account (Chinn and Ito ka_open 2023, 0 closed to 1 open) | Foreign share of government debt | Central bank share | Domestic banks |
|---|---|---|---|---|---|
| United States | A | 1.00 | 31% of debt held by the public, end 2025 (SSGA, CRS series) | Fed about 14% of marketable debt, Q1 2025 (BNP Paribas) | not pulled |
| United Kingdom | A | 1.00 | 33.6% overseas, Q1 2026 (DMO) | Bank of England APF 16.6% (DMO table, header possibly mislabelled) | not pulled |
| Japan | A by the rules, not named by the specimen | 1.00 | 12.8%, December 2025 (MoF) | Bank of Japan 43.1% | Banks 16.3% |
| China | C | 0.16 | about 5.9% (Yicai, April 2025) to 6.2% (AsianBondsOnline) | not pulled | Commercial banks 69.2%, end 2025 |
| Saudi Arabia | B | 0.70 | External debt 38% of direct debt (SAR 575.7 bn of 1,519.0 bn), end 2025 (NDMC) | not pulled | Most of the 62% domestic (holder split not pulled) |
| Norway, UAE, Qatar, Singapore | B | 1.00 | not pulled | not pulled | not pulled |
| Kuwait | B | 0.70 | not pulled | | |
| India, Russia, Brazil | C, C, misfit | 0.16 each | not pulled | | |
| Germany, France, Italy, Switzerland, Korea | A | 1.00 each | not pulled | | |

Fund size (estimates from secondary rankings, not each fund's own report): Norway's fund about 1.7 to 2.1 trillion dollars, ADIA 1.18 trillion, PIF 1.15 trillion, CIC about 1.35 trillion (date unclear). Fund size is the Box B rule, so it is not a test.

### 2.3 Scoring against the sealed predictions

| Prediction | Three kinds lens | Plain lens (reserve issuer, net creditor or debtor, rich or emerging) |
|---|---|---|
| Foreign share over 25% in A, under 10% in C | US yes, UK yes, Japan NO (12.8%), China yes, Saudi debt held by banks and foreign buyers yes. 4 of 5 | Net debtors (US, UK) high, net creditors (Japan, China) low: 4 yes. Saudi is a creditor with 38% external debt: no. 4 of 5 |
| Large central bank share after QE | US, UK, Japan yes | Same three, because all three issue reserve currencies. Tie |
| Capital controls | China closed, A and B open. But Brazil, India and Russia sit at the same 0.16 as China, and the rule used this index, so it is circular | Emerging economies closed (all four at 0.16), rich open. Not circular. Plain lens wins |
| Fund size | True by the rule | Net creditors with oil or big surpluses have funds. Same |
| 2008, 2020, 2022 crisis acts | Box A central bank backstop (Bank of England bought 19.3 bn pounds of gilts 28 Sep to 14 Oct 2022). Box B fund draw (Norway and Singapore funds had the largest withdrawals, 37 and 36 bn dollars, Q2 2020). Box C state buyers (China Securities Finance and Central Huijin bought shares from July 2015) | Reserve issuer backstops, a fund is drawn where a fund exists (24 governments, six continents), a closed state-banked system uses state buyers. Same calls |

2008 was not coded this session (budget). That is a gap, not a pass.

### 2.4 Chains

| File | Question | Links and grades | Chain probability | Exit |
|---|---|---|---|---|
| H2-01 | Does the box predict the debt holder mix and crisis acts better than the plain lens? | I0 sort by rules (p 0.95), I0 holder data (0.95), I2 box beats plain lens on holder mix (0.25), I0 crisis acts (0.95), I2 box beats plain lens on crisis acts (0.25), I4 the box shows whom the state answers to (0.15) | about 0.8% | Dated test |
| H2-02 | Does the plain lens account for the same observations? | I0 Chinn and Ito data (0.97), I0 holder data (0.95), I2 net creditor and reserve status explain the holder mix and crisis tools in the sample (0.55) | about 51% | Finding (low confidence, small sample) |

### 2.5 Rival readings (Hole 2)

| Evidence | Official (standard economics: creditor or debtor plus openness) | Coordination (box A states coordinate rescues for capital) | Shared incentives (each state protects whoever holds its debt) | Accident or measurement (custody blurs holder data) |
|---|---|---|---|---|
| Japan: 12.8% foreign, BoJ 43.1% | consistent | neutral | consistent | neutral |
| Brazil, India, Russia share China's capital controls score | consistent | neutral | neutral | neutral |
| Bank of England 2022 buy, timed 13 working days, then sold | consistent | inconsistent (it was a single central bank acting on its own legal tool, announced the same day, with no named partner) | consistent (LDI funds held gilts, the Bank protected the market they held) | neutral |
| 24 governments drew on funds in Q2 2020 | consistent | neutral | consistent | neutral |
| China 2015 state buyers | consistent | neutral | consistent | neutral |
| China line in TIC fell while Belgium rose (frame section 0) | neutral | neutral | neutral | consistent |
| Inconsistent cells | 0 | 1 | 0 | 0 |

Least inconsistent: official and shared incentives tie. Coordination has one inconsistent cell. Accident of measurement is not a rival to the lens so much as a caveat on the foreign share figures.

### 2.6 Coordination level (Hole 2)

Level 0 only. The lens claims no deal between states. Within a box the incentive of each actor is on paper (a central bank's mandate to keep its own bond market working, a fund's rule on budget transfers). Nothing above level 0 is claimed or shown.

### 2.7 Patches for the missing links

Missing link: does the box predict anything beyond the plain lens?
1. Most boring: the lens is a relabelling of creditor or debtor plus emerging or rich. Marks: in a full 19 country sample, the plain lens scores at least as well on every item. Cheapest test: pull the remaining 13 holder mixes from national debt offices.
2. Most likely by base rate: the lens adds a little on one item, the use of state owned buyers in a crisis (China 2015, and perhaps Russia's National Wealth Fund in 2022), which the plain lens only partly covers through "emerging". Marks: state owned buyers appear in C but not in emerging A countries such as Brazil. Test: code 2008, 2020 and 2022 acts for Brazil, India and Russia.
3. Most consequential: the lens predicts who bears losses (the specimen's real claim). Marks: in box A crises, creditors of banks are paid in full while taxpayers carry the cost. In box C, depositors and state banks carry it. Test: compare bail-in versus bailout records (EU bank resolution cases, China's Baoshang Bank 2019). Not run.

### 2.8 Dated tests (Hole 2)

| Test | What is checked | Reveal date |
|---|---|---|
| T2.1 | Pre-registered sort above is scored on the remaining 13 countries' holder mix | Next Pathfinder or Data lane pass. No later than Round 11 |
| T2.2 | Japan MoF and BoJ flow of funds, Q3 2026. Prediction from the plain lens: foreign share stays under 15% and BoJ share keeps falling | About 18 December 2026 (BoJ flow of funds release) |
| T2.3 | US Z.1 Q3 2026: foreign share stays between 28% and 34% of debt held by the public | About 11 December 2026 |
| T2.4 | Next crisis episode: each box's response pre-registered here (A central bank bond buying, B fund draw, C state buyers and tighter controls). Both lenses scored at the time | Open, no date |

### 2.9 Dead ends (Hole 2)

- The IMF sovereign investor base dataset was not reachable as country numbers through search. The SUERF note on a 95 country dataset gives only averages (non-banks hold 46% of sovereign debt). Use the national debt offices instead.
- Fund size as a test of the lens is a dead end: it is the definition of box B.

---

## Hole 4. Test of the method: C3 "aligned behind the scenes" and C4 "pushed trade toward China on purpose"

### 4.1 Headline

Neither claim survives at the level it was made. C3: the documented record shows public bilateral deals (China brokered the Saudi and Iran agreement in March 2023, the White House announced Gulf pledges in May 2025, the US and China met in May 2026 and discussed Iran and Hormuz) and open conflict (the US and Israel struck Iran from 28 February 2026, Hormuz was closed from 2 March, China called the US blockade "irresponsible and dangerous"). The evidence supports coordination level 0, with Hormuz passage as a public cue (level 1). No trilateral channel was found, so the claimed level 2 drops to 0. C4: trade did shift, but away from direct US and China trade and toward third countries, and the documented reaction of finance was against the tariffs (bond selloff before the pause, recession warnings, the business lobby in court). "On purpose by finance" is a dead end with this evidence. One new lead came out of the digging: the Saudi central bank quietly left China's mBridge payment rail on the same day as the US and Saudi package of 13 May 2025, and this stayed unreported for 16 months. That is a documented hidden act, and it points to Saudi Arabia choosing the US side on payment rails, which is inconsistent with a three-way alignment.

### 4.2 The claims rewritten into testable parts

| Part | Named actors and verb | Checkable? | Result |
|---|---|---|---|
| C3a | China's foreign ministry brokered a Saudi and Iran agreement | Yes, documented | True (10 March 2023) |
| C3b | The White House secured Gulf investment pledges | Yes, documented | True as pledges (13 to 15 May 2025). Flows not checked |
| C3c | The White House, the Saudi state and China's State Council share an interest in Gulf oil flowing | Partly, by statements | Level 0 supported, with clear splits on Iran and payment rails |
| C3d | They agreed in secret, and the public conflict is staged | Only if a channel, an enforcement and a secrecy load can be shown | No channel found. Real costs borne. Dropped to level 0 |
| C3e | "Whatever they tell you is what is not happening" | No observation could contradict it | Grade IX. Logged below, not used |
| C4a | China's exports moved to third countries after the 2025 tariffs | Yes, customs data | True: US down 20%, ASEAN up 13.4%, Africa up 25.8%, EU up 8.4% |
| C4b | Some of that is rerouted Chinese content | Partly, mirror data | Plausible (I2): China says exports to US fell 20%, the US says imports from China fell about 30% |
| C4c | Named finance firms pushed the tariffs to get this outcome | Needs LD-2, timing, statements | No mark found, and several inconsistent marks. Dead end |

### 4.3 Chains

| File | Question | Links and grades (p) | Chain probability | Exit |
|---|---|---|---|---|
| H4-01 | C3 as claimed (secret level 2) | I0 Saudi and Iran deal (0.97), I0 Gulf pledges (0.97), I0 2026 war and blockade (0.85), I0 China's objections (0.90), I2 shared interest in Hormuz (0.50), I4 secret level 2 arrangement (0.03) | about 1% | Dead end |
| H4-02 | C3 rewritten to level 0 and 1 | I0 Saudi and Iran deal (0.97), I0 Gulf pledges (0.97), I0 May 2026 summit (0.90), I0 China's objections (0.90), I2 overlap on oil flow, divergence elsewhere (0.55) | about 42% | Finding (likelihood about even, confidence medium) |
| H4-03 | Was SAMA's mBridge exit part of the May 2025 package? | I0 BIS exit from mBridge (0.90), I0 SAMA exit 13 May 2025 reported 20 Sep 2026 (0.80, secondary sources), I0 Gulf pledges (0.97), I4 exit was a term of the package (0.20) | about 14% | Dated test |
| H4-04 | C4 | I0 EO 14257 aim (0.97), I0 China customs 2025 (0.93), I0 US data 2025 (0.93), I2 part rerouted (0.50), I0 finance's reaction (0.90), I0 Supreme Court 20 Feb 2026 (0.95), I4 finance pushed on purpose (0.03) | about 1% | Dead end |

### 4.4 Footprints, written before searching, then found and missing

| Link | Marks expected | Found | Missing |
|---|---|---|---|
| C3 secret level 2 | A named trilateral channel with dated meetings, an enforcement, matched timing, no large real costs | None of the four. Found the opposite: China's public condemnation, months of a closed strait, SAMA leaving China's rail | Saudi statements on the war not searched |
| C3 level 0 and 1 | Each side naming Hormuz passage in public | China (March to August 2026), the US ultimatum of 21 March 2026, the May 2026 summit agenda | Saudi statement |
| mBridge timing | Payment terms in the fact sheet or a Treasury readout, US statements against mBridge, the FT's sourcing | Same-day date, reported US lobbying of the BIS in 2024 | Fact sheet text not checked for payment terms, FT article not opened, no SAMA statement |
| C4 rerouting | Mirror gap, record deficits with transit countries, HS product matches | Mirror gap of about 10 points, record US deficits with Mexico, Vietnam and Taiwan | HS product data |
| C4 on purpose | LD-2 filings by banks for the tariffs, positions ahead of announcements, statements of aim | None. Inconsistent marks: bond selloff before the 9 April 2025 pause, JPMorgan's chief executive calling recession "likely", the Chamber of Commerce brief against the tariffs | Bank-level LD-2 issue filings, CFTC positions |

### 4.5 Rival readings (Hole 4)

C3:
| Evidence | Official | Coordination (secret trilateral) | Shared incentives | Accident |
|---|---|---|---|---|
| China brokered the Saudi and Iran deal, March 2023 | consistent | consistent | consistent | neutral |
| Gulf pledges to the US, May 2025 | consistent | neutral | consistent | neutral |
| SAMA left China's mBridge on 13 May 2025, unannounced | consistent | inconsistent (the Gulf picked the US rail over China's) | consistent | neutral |
| US and Israeli strikes on Iran from 28 Feb 2026, Hormuz closed | consistent | inconsistent (large real costs to China's and the Gulf's oil trade) | neutral | consistent |
| China called the US blockade "irresponsible and dangerous" | consistent | inconsistent (unless read through the inversion rule, which is IX) | consistent | neutral |
| US and China discussed Iran and Hormuz in public at the May 2026 summit | consistent | inconsistent (the topic was on the open agenda, not behind the scenes) | consistent | neutral |
| The ceasefire of 8 April broke down and the blockade followed | consistent | neutral | neutral | inconsistent (the blockade was a deliberate, announced act, not drift) |
| Inconsistent cells | 0 | 4 | 0 | 1 |

C4:
| Evidence | Official (side effect) | Coordination (finance planned it) | Shared incentives (firms adapted) | Accident or measurement (rerouting) |
|---|---|---|---|---|
| EO 14257 names deficits and manufacturing as the aim | consistent | neutral | neutral | neutral |
| China's exports to third countries rose, to the US fell | consistent | consistent | consistent | consistent (worthless, it fits all four) |
| Mirror gap of about 10 points | neutral | neutral | neutral | consistent |
| Bond selloff, then the 90 day pause on 9 April 2025 | consistent | inconsistent | consistent | neutral |
| JPMorgan's chief executive: recession "likely", 9 April 2025 | consistent | inconsistent | consistent | neutral |
| Chamber of Commerce asked the court to strike the tariffs, July 2025 | consistent | inconsistent | consistent | neutral |
| Inconsistent cells | 0 | 3 | 0 | 0 |

Least inconsistent for C3: official and shared incentives tie. For C4: official, shared incentives and measurement tie, and they are not exclusive.

### 4.6 Coordination level

| Claim | Level claimed | Level shown | Gap |
|---|---|---|---|
| C3 trilateral | 2 or 3 | 0, with a level 1 cue (Hormuz passage) | Channel: none found. Enforcement: none, both China and Saudi Arabia took public positions against the other side's interests. Secrecy load: a staged war would need US Central Command, Israeli forces, Iran's IRGC and three governments' staff, thousands of people for over a year. On the Grimes curve (BASE_RATES section C, used as a rough guide only) that is not credible to hold, and there are real costs in the record. Dropped to 0 |
| US and Saudi on mBridge | not claimed by the specimen | 1 (cue: sanctions and compliance risk). Level 2 not shown | If level 2: channel the May 2025 visit, enforcement US arms and chip licences, secrecy load a handful of officials. The exit did stay unreported for 16 months, so a small load can hold that long. Base rate: BASE_RATES row 2 (the 1974 Saudi Treasury add-on, hidden inside a grouping for decades) is the same class: a bilateral financial term kept quiet, not a grand plan |
| C4 finance and the White House | 2 | 0 | No channel, no enforcement, and finance's documented acts point the other way |

### 4.7 Patches

C3, missing link: what explains the cooperation that is seen?
1. Most boring: public bilateral deals, each for its own reasons. Marks: fact sheets and communiques (found).
2. Most likely by base rate: bilateral quiet terms inside public deals (the 1974 add-on class). Marks: an unannounced change on the same date as a public deal (found once: SAMA and mBridge). Test: H4-03.
3. Most consequential: a trilateral understanding on oil flow through Hormuz, for example an agreed passage for China-bound tankers. Marks: tanker tracking showing China-bound ships passing while others wait, a mirror account in Chinese press. Reporting says Iran let ships serving "friendly" countries such as China pass, which is an Iran and China term, not a US one. Not tested further (budget).

C4, missing link: why did trade move to third countries?
1. Most boring: Chinese exporters found other buyers. Marks: rising exports to ASEAN, Africa, EU (found).
2. Most likely by base rate (as in the 2018 to 2019 tariff round): part real diversion, part rerouting. Marks: mirror gap (found), HS product matches (not pulled).
3. Most consequential: a planned shift by named offices. Marks: LD-2, timing, statements. None found.

### 4.8 Dated tests (Hole 4)

| Test | What is checked | Reveal date |
|---|---|---|
| T4.1 | China customs October 2026 exports by destination. Prediction: US share stays below its 2024 level and ASEAN share above | About 20 November 2026 |
| T4.2 | US Census September 2026 trade release: imports from China stay under 10% of US goods imports | Next scheduled Census release (date to confirm) |
| T4.3 | Senate LD-2, Q4 2026 filings: any bank or asset manager lobbying for tariffs. Prediction: none | 20 January 2027 |
| T4.4 | SAMA annual report for 2025, or any SAMA statement, gives a reason for the mBridge exit. If the reason names US terms, H4-03 moves up. If it names the proof of concept ending, it moves down | Open, SAMA annual report timing to confirm |
| T4.5 | The October 2025 US and China truce pause was reported to lift on 10 November 2026. Check whether it was extended | Now due (check in the next round) |
| T4.6 | Any readout or leak of a US, Saudi and China meeting on Iran (class L) | No date |

### 4.9 Dead ends and logged items (Hole 4)

- C3 as a secret level 2 trilateral arrangement: no channel in the documents searched. Dead end at this budget (H4-01).
- C4 "on purpose by finance": no mark, several inconsistent marks. Dead end (H4-04).
- Logged, grade IX, not used: the inversion rule, "whatever they tell you is what is not happening". Applied to C3, it would turn China's public condemnation of the US blockade into proof of alignment. No observation could then count against the claim, so it cannot be graded.
- Source warnings: one press summary said the 10 year yield "surged over 600 basis points" in April 2025. That is wrong by an order of magnitude and was not used. A blog timeline said Iran's Supreme Leader was killed in the strikes. Not confirmed from a reliable source, so not used.

---

## Claims table

| id | claim | tier | status | source URL | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R10Q-01 | In 2023 China, India, Russia and Brazil all score 0.16 on capital openness, Saudi Arabia and Kuwait 0.70, the US, UK, Japan, Norway, UAE, Qatar and Singapore 1.00 | T1 | fetched, read with python3 -I | https://web.pdx.edu/~ito/kaopen_2023.xls | 2026-01-05 | 2023 | A revised file |
| R10Q-02 | Japan's JGBs and T-bills: foreign 12.8%, Bank of Japan 43.1%, banks 16.3%, December 2025 | T0 | search summary of the MoF PDF, not opened | https://www.mof.go.jp/english/policy/jgbs/publication/debt_management_report/2026/esaimu2026-2-3.pdf | 2026 | 2025-12 | The MoF table differs |
| R10Q-03 | Overseas investors held 33.6% of gilts and the APF 16.6%, Q1 2026 | T0 | search summary, header possibly mislabelled | https://dmo.gov.uk/media/r2ejghpr/apr-jun-2026a.pdf | 2026 | 2026-Q1 | The DMO table differs |
| R10Q-04 | Commercial banks held 69.2% of China's Treasury bonds at end 2025 | T2 | search summary | https://asianbondsonline.adb.org/documents/abm/abm_mar_2026_bond_market_developments_4qtr_2025.pdf | 2026-03 | 2025-12 | ChinaBond data differ |
| R10Q-05 | Foreign institutions held about 5.9% of Chinese government bonds | T3 | search summary | https://www.yicaiglobal.com/news/foreign-institutions-raise-chinese-yuan-bonds-holdings | 2025-04 | 2025-03 | ChinaBond data differ |
| R10Q-06 | Saudi direct debt SAR 1,519.0 bn at end 2025, of which external SAR 575.7 bn (38%, computed) | T0 | search summary | https://ndmc.gov.sa/en/reports-and-statistics | 2026 | 2025-12 | NDMC report differs |
| R10Q-07 | Foreign investors held about 31% of US debt held by the public at end 2025 | T3 | search summary | https://www.ssga.com/us/en/individual/insights/mind-on-the-market-05-october-2026 | 2026-10-05 | 2025-12 | Z.1 or Treasury bulletin differs |
| R10Q-08 | The Fed held about 14% of marketable Treasury debt at end Q1 2025 | T3 | search summary | https://economic-research.bnpparibas.com/html/en-US/US-Treasuries-market-idol-feet-clay-safe-haven-test-9/12/2025,51826 | 2025-12-09 | 2025-03 | H.4.1 and MSPD ratio differs |
| R10Q-09 | The Bank of England bought 19.3 bn pounds of gilts from 28 Sep to 14 Oct 2022 | T0 | search summary of BoE page | https://www.bankofengland.co.uk/quarterly-bulletin/2023/2023/financial-stability-buy-sell-tools-a-gilt-market-case-study | 2023 | 2022-10 | None expected |
| R10Q-10 | 24 governments drew on sovereign funds in Q2 2020, Norway and Singapore the largest at 37 and 36 bn dollars | T3 | search summary of Reuters report on Global SWF data | https://investmentnews.co.nz/investment-news/global-governments-smash-sovereign-fund-piggy-banks-for-crisis-money | 2020 | 2020-Q2 | Fund reports differ |
| R10Q-11 | China Securities Finance and Central Huijin bought shares from July 2015 to end 2016 | T2 | search summary | https://cepr.org/voxeu/columns/saving-chinas-stock-market | 2016 | 2016 | None expected |
| R10Q-12 | In the 6 countries with holder data, the three kinds lens and a plain net creditor or debtor lens each predict the foreign share in 4 of 5 cases | Inferred I2 | computed from R10Q-02 to R10Q-07 | round10/holes/H2-02.json | 2026-11-12 | 2026 | The full 19 country table shows the box winning |
| R10Q-13 | Saudi Arabia and Iran agreed in Beijing on 10 March 2023 to resume relations within two months, with China | T0 | search summary of official text | https://www.mfa.gov.cn/eng/gjhdq_665435/2675_665437/2818_663626/2819_663628/202303/t20230311_11039241.html | 2023-03-11 | 2023-03 | None expected |
| R10Q-14 | The White House announced a 600 bn dollar Saudi commitment (13 May 2025), 1.2 trillion dollar Qatar commitment (14 May) and 200 bn dollars of UAE deals plus a 1.4 trillion dollar framework (15 May). Pledges, not flows | T0 | search summary of fact sheets | https://www.whitehouse.gov/fact-sheets/2025/05/fact-sheet-president-donald-j-trump-secures-historic-600-billion-investment-commitment-in-saudi-arabia | 2025-05-13 | 2025-05 | Flows recorded in TIC or BEA fall far short (tests the pledge, not the announcement) |
| R10Q-15 | US and Israel struck Iran from 28 Feb 2026, Hormuz closed from 2 March, US blockade of Iranian ports from 13 April 2026 | T2 | search summary | https://www.goodmorningamerica.com/news/story/4-phases-iran-war-key-moments-start-epic-132703824 | 2026-05-07 | 2026-05 | Official CENTCOM record differs |
| R10Q-16 | China's foreign ministry called the US blockade "irresponsible and dangerous" | T3 | search summary | https://capeargus.co.za/news/world/2026-04-14-dangerous-and-irresponsible-china-condemns-us-blockade-of-iranian-ports/ | 2026-04-14 | 2026-04 | MFA transcript differs |
| R10Q-17 | The May 2026 Trump and Xi summit fact sheet lists farm purchases of at least 17 bn dollars a year to 2028, 200 Boeing aircraft, Boards of Trade and Investment, and talks on Iran and Hormuz | T3 | search summary | https://www.china-briefing.com/news/xi-trump-beijing-summit-what-was-agreed/ | 2026-05 | 2026-05-17 | White House text differs |
| R10Q-18 | SAMA ended mBridge participation on 13 May 2025, reported by the FT on 20 Sep 2026 | T3 | search summary, page 403 | https://www.businesstoday.in/world/story/saudi-arabia-exits-china-backed-mbridge-platform-amid-governance-and-compliance-concerns-556677-2026-09-20 | 2026-09-20 | 2025-05 | SAMA states another date or denies |
| R10Q-19 | SAMA's mBridge exit was a term of the May 2025 US and Saudi package | Inferred I4, p 0.20 | open test | round10/holes/H4-03.json | 2026-11-12 | 2025-05 | SAMA or the FT gives a reason unrelated to the US |
| R10Q-20 | EO 14257 declared an emergency over large and persistent goods trade deficits | T0 | search summary of Federal Register | https://www.federalregister.gov/documents/2025/04/07/2025-06063/regulating-imports-with-a-reciprocal-tariff-to-rectify-trade-practices-that-contribute-to-large-and | 2025-04-07 | 2025-04 | None expected |
| R10Q-21 | China's 2025 exports: US down 20%, ASEAN up 13.4%, Africa up 25.8%, EU up 8.4%, surplus 1.19 trillion dollars | T3 | search summary | https://www.scmp.com/economy/economic-indicators/article/3339811/china-records-us119-trillion-trade-surplus-2025-exports-jump-55 | 2026-01-14 | 2025 | China customs table differs |
| R10Q-22 | US imports from China 308.4 bn dollars in 2025 against 438.7 bn in 2024, record imports from Mexico, Taiwan, Vietnam | T0 | search summary of BEA release | https://www.bea.gov/news/2026/us-international-trade-goods-and-services-december-and-annual-2025 | 2026-02-19 | 2025 | Revision |
| R10Q-23 | Treasury yields sold off before the 9 April 2025 tariff pause and JPMorgan's chief executive called recession "likely" | T2 | search summary | https://www.bloomberg.com/news/articles/2025-04-09/short-term-treasuries-plunge-as-trump-pauses-most-tariffs | 2025-04-09 | 2025-04 | None expected |
| R10Q-24 | The US Chamber of Commerce and the Consumer Technology Association asked the appeals court to strike the IEEPA tariffs, July 2025 | T2 | search summary | https://www.eenews.net/articles/business-groups-urge-court-to-strike-down-trumps-emergency-tariffs/ | 2025-07 | 2025-07 | Court docket differs |
| R10Q-25 | The Supreme Court held 6 to 3 on 20 Feb 2026 in Learning Resources v. Trump that IEEPA does not authorise tariffs. A Section 122 tariff ran from 24 Feb to 24 July 2026 | T2 | search summary | https://www.dlapiper.com/en/insights/publications/2026/02/us-supreme-court-holds-ieepa-does-not-authorize-tariffs | 2026-02-24 | 2026-02 | Opinion text differs |
| R10Q-26 | C3 as a secret trilateral level 2 arrangement: no channel found, level shown is 0 with a level 1 cue | Inferred | dead end | round10/holes/H4-01.json | 2026-11-12 | 2026-11 | A documented trilateral channel with dates |
| R10Q-27 | C4 "finance pushed trade toward China on purpose": no mark found, three inconsistent marks | Inferred | dead end | round10/holes/H4-04.json | 2026-11-12 | 2026-11 | LD-2 filings by banks for the tariffs, or positions ahead of announcements |

Budget used: Hole 2, 14 searches or fetches. Hole 4, 15 (one fetch blocked with 403, one redirected). No email or personal identifier was sent. SEC EDGAR was not used.
