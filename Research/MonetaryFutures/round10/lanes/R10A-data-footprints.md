# R10A Data lane with footprint duty

Written 2026-11-12. Data lane, round 10. Billions of US dollars unless stated. All figures fetched this session unless marked unverified. Not committed.

## Pass checklist

| Item | Status |
|---|---|
| D1 TIC major foreign holders, monthly 2015-01 to 2026-08, 12 countries plus total and official | Done (two files joined, see section 0) |
| D2 TIC by security type | Partly: annual survey tables A1 to A3 for 2018 to 2025 (equity vs debt) pulled. Monthly Table 1 (slt_table1.txt) downloaded, not tabulated |
| D3 Annual survey | Done for June 2025 final (shl2025r.pdf, April 2026). June 2026 preliminary not out (404 on the guessed URLs) |
| D4 Fed H.4.1 custody | Done, weekly 2002 to 2026-11-04, label checked on the live release |
| D5 FEDS Note on Cayman hedge funds | Done, read from the Fed page |
| D9 SAMA | Secondary only (Arab News, 8 Jul 2026). SAMA bulletin PDF unreachable (404 and connection reset) |
| D10 CBUAE | Done from the August 2026 statistical bulletin |
| D12 13F (PIF and others) | NOT pulled. EDGAR returns 403 unless the client declares contact details, which the rules forbid here |
| D14 SWIFT tracker | NOT pulled from source (403). Search snippets only, marked unverified |
| D15 CIPS, D16 swap lines, D17 China customs, D18 Gulf export destinations, D19 to D30 | NOT pulled. Budget and the usage limit stopped the lane. Listed as open at the end |
| Footprint register | Done for what was searched, with adequacy stated per mark |

Fetch count: about 30 of 35. Two tool rate-limit hits cost the rest.

## 0. Data notes that apply to every hole

1. Use of files. slt_table5.txt holds only 13 months and no Kuwait or Qatar. The long series comes from two files joined: https://ticdata.treasury.gov/Publish/mfhhis01.txt (2015-01 to 2025-12, answers 200 and is current, unlike mfh.txt) and https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table3.txt (country detail 2020-01 to 2026-08, millions). Overlap check: Saudi Arabia Dec 2025 149.5 in both, Japan 1185.5 in both. Label checked: the file titles say "Major Foreign Holders of Treasury Securities, holdings at end of period, billions".
2. REVISION FINDING (matters for the frame section 0). The frame's January 2023 column came from the frozen mfh.txt. The current history says January 2023 differs: United Kingdom 598.0 now against 668.3 then, total 7305.1 against 7402.5, Japan 1102.9 against 1104.4, Belgium 331.1 in both. So the UK rise since January 2023 is +411.5 on current data (the frame implied +341), and the total rise is +2026.6 not about 1900. Always compare like with like vintage. Fetched mfh.txt 2026-11-12 to confirm.
3. Qatar is not a separate line in any monthly TIC file. It is inside "All Other". Only the annual survey names it.
4. Custody bias is stated by Treasury itself in the annual survey: holder country is the custodian's residence for foreign custodians (shl2025r.pdf, section on custodial bias, and Exhibit 7 note that private lines in custody centres may be official money).
5. Foreign official in 2026 comes from slt_table3 "Of Which: Foreign Official" and matches slt_table5 (3755.6 in Aug 2026).

## Hole 1. Where do Gulf oil dollars go now?

### 1.1 Treasuries by Gulf country (D1)

Latest month 2026-08. Source slt_table5.txt (fetched 2026-11-12) and the files above.

| Holder | Jan 2015 | Dec 2019 | Jan 2023 (current vintage) | Aug 2025 | Aug 2026 | Peak month |
|---|---|---|---|---|---|---|
| Saudi Arabia | 100.8 | 179.8 | 111.0 | 133.0 | 141.2 | 184.4 (2020-02) |
| UAE | 77.9 | 40.7 | 64.9 | 108.7 | 116.1 | 120.0 (2026-02) |
| Kuwait | 31.8 | 43.3 | 43.3 | 59.2 | 73.0 | 73.0 (2026-08) |
| Saudi plus UAE | 178.7 | 220.5 | 175.9 | 241.7 | 257.3 | |
| Saudi plus UAE plus Kuwait | 210.5 | 263.8 | 219.2 | 300.9 | 330.3 | |

Computed with python3 -I. Saudi plus UAE was 237.5 to 280.4 in every month from Sep 2025 to Aug 2026 (low 237.5, high 280.4 in Feb 2026). Test T1.1 in the frame (stay above 240, below 220 favours "instead"): the last 12 months had one month under 240 (Sep 2025, 237.5) and none under 220.

Reading: Saudi Arabia is 43.2 below its Feb 2020 peak (184.4 to 141.2). Over 2015 to 2026 Saudi is up 40%, UAE up 49%, Kuwait up 129%. From the 2020 peak Saudi is down 23%. So "Gulf left Treasuries" is false for UAE and Kuwait and weakly true for Saudi Arabia against its 2020 peak.

### 1.2 Equities against debt, annual survey (D2, D3)

Source: https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/shl2025r.pdf tables A1 to A3, A5, A7. June of each year, billions. Label checked in the PDF table titles.

| Holder | Measure | 2018 | 2020 | 2022 | 2024 | 2025 |
|---|---|---|---|---|---|---|
| Saudi Arabia | US equities | 57 | 133 | 181 | 202 | 215 |
| Saudi Arabia | US long-term debt | 121 | 111 | 110 | 131 | 119 |
| UAE | US equities | 89 | 127 | 130 | 214 | 231 |
| UAE | US long-term debt | 57 | 25 | 35 | 66 | 43 |
| Kuwait | US equities | 185 | 211 | 241 | 341 | 377 |
| Kuwait | US long-term debt | 61 | 65 | 62 | 79 | 107 |
| Qatar | US equities | 3 | 17 | 25 | 43 | 58 |
| Qatar | US long-term debt | 2 | 6 | 8 | 28 | 24 |
| Norway (control) | US equities | 277 | 325 | 386 | 689 | 826 |
| Norway (control) | US long-term debt | 93 | 141 | 158 | 224 | 283 |

Computed: Saudi equities up 277% from 2018 to 2025 while Saudi long-term debt is about flat (121 to 119). UAE equities up 160%, debt down 25%. So the equity share rose fast, but debt did not fall much in dollars, except the UAE. This supports "shares grew faster" and fails "Treasuries fell to pay for shares" for Saudi Arabia and Kuwait. Norway, a non-Gulf fund, shows the same shape (equities x3, debt x3), which fits the shared incentives reading. June 2025 Treasury split (table A7): Saudi 130 (LT 103, ST 27), UAE 96 (LT 38, ST 58), Kuwait 58, Qatar 24.
Caveat: equity numbers are by custodian residence and include private holders, so they are not the funds alone.

### 1.3 Gulf central bank reserves (D9, D10)

UAE, from https://centralbank.ae/media/njajo2nc/statistical-bulletin-august-2026.pdf, Table 3 (label "Central Bank Gross International Reserves", millions of AED, checked in the PDF).

| Month | Gross international reserves, AED bn |
|---|---|
| Aug 2025 | 987.8 |
| Dec 2025 | 1073.0 |
| Feb 2026 | 1110.6 (peak) |
| Mar 2026 | 1016.2 |
| Jun 2026 | 945.6 |
| Aug 2026* | 973.1 |

Break: the bulletin footnote says investments in equity are excluded from March 2026. The 8.5% drop Feb to Mar partly or wholly reflects this definition change, not a sale. Not yet verified how much. Fall Feb to Aug 2026 is 12.4% on this series. At the 3.6725 peg that is about 265 billion dollars in Aug 2026 (computed). Another bulletin line (central bank foreign assets) runs 1095.6 (Feb) to 965.4 (Aug), same shape.

Saudi Arabia (secondary, unverified against SAMA): official reserve assets SR1.85 trillion (about 494.55 billion dollars) at end June 2026, up 8.06% on a year, per Arab News 8 Jul 2026 citing SAMA, https://www.arabnews.com/node/2650099/business-economy . Search snippets say foreign securities were SR1,161 billion in Aug 2026 (Argaam, not opened). SAMA bulletin PDF not reachable. So the SAMA currency mix is NOT found.

### 1.4 Footprint register for Hole 1

| Link | Mark expected | Result | Adequate and visible? |
|---|---|---|---|
| L1 China largest buyer, over half | China customs by origin, Gulf export destinations, Comtrade | Not looked at source this session | Not searched. No verdict |
| L2 About 30% of Gulf oil in yuan | SWIFT tracker Gulf split, CIPS Gulf banks, PBoC swap with SAMA and CBUAE, BIS yuan claims, named cargoes | SWIFT PDF 403. Search snippet: global renminbi share about 3.13% by value in Jan 2026 (unverified, swift.com), tracker renamed Global Currency Tracker Feb 2026 (search summary). No Gulf split seen. Nothing else searched | Search NOT adequate. Mark is not shown to be absent. But one hard bound exists: CBUAE reserves FELL after Feb 2026 while Treasuries rose, which is not what a growing yuan stock held at the central bank would show. Does not bound yuan held by banks or converted at once |
| L3 Funds raised shares while Treasuries fell | TIC, annual survey, 13F | TIC found (1.1, 1.2). 13F NOT found: EDGAR blocks undeclared clients | Treasuries part adequate: mark visible, and it fails "instead" for UAE, Kuwait, and mostly Saudi. Equity part measured by custody, not 13F |
| L4 Agreed with US finance | MoUs, FARA, LD-2 | Not searched | No verdict |
| Anchor reserves | SAMA, CBUAE | CBUAE found, SAMA secondary | CBUAE adequate |

## Hole 2. Three kinds of country (holder data)

Official share of total foreign holdings: Foreign official 3755.6 of 9331.7 in Aug 2026 (computed 40.2%), against 4134.7 of 6218.7 in Jan 2015 (66.5%). Official holdings fell 379.1 (9.2%) from 2015 while the total rose 3113 (50%). Source files as above. China fell from 1239.1 (Jan 2015) to 590.7 (down 52%), Japan 1238.6 to 1068.3 (down 14%), Norway 73.6 to 214.0 (up 191%), Saudi 100.8 to 141.2 (up 40%). IMF investor base, Chinn-Ito, OECD state ownership (D27, D28) NOT pulled.

## Hole 3. Who funds the Treasury market

### 3.1 Custody centres (D1, D4)

| Month | Saudi Arabia | UAE | Kuwait | China | Japan | United Kingdom | Belgium | Luxembourg | Cayman Islands | Ireland | Switzerland | Norway | Total | Foreign official | H.4.1 custody |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2015-01 | 100.8 | 77.9 | 31.8 | 1239.1 | 1238.6 | 197.8 | 354.6 | 176.0 | 191.2 | 203.7 | 205.5 | 73.6 | 6218.7 | 4134.7 | 2929.7 |
| 2017-01 | 112.3 | 61.2 | 29.4 | 1051.1 | 1102.5 | 214.1 | 112.2 | 218.9 | 254.3 | 293.7 | 224.0 | 43.1 | 5949.2 | 3784.8 | 2855.0 |
| 2019-01 | 163.3 | 55.9 | 40.7 | 1126.7 | 1064.9 | 290.1 | 191.5 | 226.7 | 209.2 | 270.1 | 226.9 | 90.9 | 6324.6 | 3986.3 | 3028.4 |
| 2020-02 | 184.4 | 37.3 | 43.6 | 1092.3 | 1268.6 | 477.1 | 218.0 | 260.8 | 228.2 | 282.8 | 243.7 | 103.3 | 7226.0 | 4264.9 | 3004.7 |
| 2021-01 | 135.1 | 33.8 | 45.3 | 1095.2 | 1276.9 | 438.7 | 248.2 | 280.9 | 216.8 | 313.6 | 254.0 | 91.4 | 7128.0 | 4224.5 | 3085.9 |
| 2022-01 | 119.4 | 44.9 | 50.6 | 1033.8 | 1299.9 | 610.7 | 243.0 | 313.0 | 272.1 | 308.5 | 295.4 | 115.8 | 7655.7 | 4130.0 | 3046.3 |
| 2023-01 | 111.0 | 64.9 | 43.3 | 859.3 | 1102.9 | 598.0 | 331.1 | 318.2 | 292.3 | 243.1 | 290.5 | 104.4 | 7305.1 | 3703.8 | 2916.1 |
| 2024-01 | 133.5 | 60.1 | 46.0 | 797.7 | 1140.6 | 701.8 | 293.1 | 348.1 | 327.9 | 334.6 | 284.2 | 150.1 | 7953.8 | 3799.1 | 2924.6 |
| 2025-01 | 126.9 | 92.6 | 49.2 | 760.8 | 1079.3 | 740.2 | 377.7 | 409.9 | 406.9 | 329.7 | 301.2 | 173.1 | 8617.8 | 3803.8 | 2899.6 |
| 2025-08 | 133.0 | 108.7 | 59.2 | 699.7 | 1183.9 | 901.3 | 451.1 | 409.9 | 410.5 | 340.0 | 303.0 | 214.9 | 9248.2 | 3919.8 | 2842.5 |
| 2026-01 | 134.8 | 112.4 | 66.3 | 695.3 | 1225.3 | 879.8 | 451.0 | 445.6 | 433.2 | 342.1 | 289.2 | 218.8 | 9289.1 | 3941.8 | 2790.5 |
| 2026-08 | 141.2 | 116.1 | 73.0 | 590.7 | 1068.3 | 1009.5 | 490.5 | 448.2 | 463.0 | 352.1 | 285.8 | 214.0 | 9331.7 | 3755.6 | 2615.2 |

Computed: four centres (UK, Belgium, Cayman, Luxembourg) 2411.2 in Aug 2026 against Japan plus China 1659.0. In Jan 2023 (current vintage) they were 1539.6 against 1962.2, so the crossover happened since then. Country lines add to the total with an "all other" line, so no double count was done here.

### 3.2 Fed H.4.1 custody (D4)

Series: Federal Reserve H.4.1 memorandum item "Securities held in custody for foreign official and international accounts, marketable U.S. Treasury securities", via https://api.db.nomics.world/v22/series/FED/H41/RESH4FG_N.WW (weekly Wednesday level, millions). Label CHECKED against the live release https://www.federalreserve.gov/releases/h41/current/ : Wednesday 4 Nov 2026 value 2,543,700 million, week average 2,550,434, change from a year ago in week average minus 222,921. Total custody including agencies 2,820,004 (week average).

Computed: custody peaked at 3116.0 in Mar 2021 (last Wednesday), was 2916.1 in Jan 2023 and 2543.7 on 4 Nov 2026, down 18.4% from the peak and 12.8% since Jan 2023. TIC foreign official over Jan 2023 to Aug 2026 rose 1.4%. So the two official measures disagree in direction since 2023: Fed custody is down 12.8%, TIC official is flat. The gap is the Fed custody being only what sits at the New York Fed, while TIC official also counts private custodians. This favours the move to other custodians (accident or measurement reading) over a plain sale. Not proved.

### 3.3 Cayman understatement (D5)

Found. Federal Reserve FEDS Note, "The Cross-Border Trail of the Treasury Basis Trade", 15 October 2025, https://www.federalreserve.gov/econres/notes/feds-notes/the-cross-border-trail-of-the-treasury-basis-trade-20251015.html . Text read: TIC data "appear to severely undercount Cayman-domiciled hedge funds' holdings of U.S. Treasuries by around $1.4 trillion as of the end of 2024" and Form PF implies Cayman hedge fund Treasury holdings rose by about 1 trillion since 2022 to 1.85 trillion at end 2024. Against that, the TIC Cayman line was 423.0 in Dec 2024 (computed from files). Leveraged fund short positions began to rise in 2018 (CFTC TFF, cited in the note). The "June 2026 FEDS Note with 2.4 trillion" in a search result is unverified and not opened.

### 3.4 Not pulled

Z.1 holders (D6), auctions (D7), CFTC (D8), Japan MoF (D24, D25), BoJ rate path (D26), BIS GLI and locational data (D21, D22), H.6 (D23). No numbers are given for the 15 trillion offshore dollars. Do not quote one.

### 3.5 Footprint register for Hole 3

| Link | Mark | Result | Adequate? |
|---|---|---|---|
| L1 custody centres exceed Japan and China | TIC | Found, 2411.2 vs 1659.0 | Yes |
| L2 Cayman and UK lines are hedge funds in basis trades | CFTC TFF, FEDS Note, Form PF | FEDS Note found for the Cayman part, Form PF totals cited by the note. UK part and CFTC series NOT pulled | Cayman partly confirmed by Fed itself. UK not searched |
| L3 Japan carry trade | MoF flows, BoJ, CFTC yen | Not pulled | No verdict. Japan TIC line fell 14% since 2015 and 3.1% since Jan 2023, which does not show a build up of Treasuries |
| L4 15 trillion offshore | BIS GLI | Not pulled | No verdict |

## Hole 4. Method test

Not covered by this lane (D19, D20, D29 not pulled). The only related finding is that the PBoC swap, CIPS and customs marks were not reached, so no level above 0 can be graded from this lane.

## Open items for another pass

SAMA bulletin currency mix, 13F via an approved route (EDGAR needs a declared client), SWIFT Global Currency Tracker from source, CIPS, PBoC swaps, China customs crude by origin, Gulf export destinations, BIS locational and GLI, Japan MoF and BoJ, Z.1, CFTC, Census, LD-2 and FARA, 1974 records.

## Claims table

| id | claim | tier | status | source URL | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R10A-01 | Saudi Arabia held 141.2 and UAE 116.1 in Treasuries, Aug 2026 | T0 | fetched, label checked | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/slt_table5.txt | 2026-11-12 | 2026-08 | A later revision of the file |
| R10A-02 | Saudi plus UAE Treasuries 257.3 in Aug 2026 against 175.9 in Jan 2023 (current vintage) | T0 | computed python3 -I | mfhhis01.txt and slt_table3.txt | 2026-11-12 | 2026-08 | Revision of history |
| R10A-03 | Jan 2023 UK was revised from 668.3 to 598.0 and total from 7402.5 to 7305.1 | T0 | fetched both files | https://ticdata.treasury.gov/Publish/mfh.txt and slt_table3.txt | 2026-11-12 | 2023-01 | None, two files disagree on their face |
| R10A-04 | Saudi Treasuries peaked at 184.4 in Feb 2020 and are 23% below that | T0 | computed | slt_table3.txt | 2026-11-12 | 2026-08 | Revision |
| R10A-05 | Four custody centres 2411.2 against Japan plus China 1659.0, Aug 2026 | T0 | computed | slt_table5.txt | 2026-11-12 | 2026-08 | Revision |
| R10A-06 | China fell 1239.1 (Jan 2015) to 590.7 (Aug 2026), down 52% | T0 | computed | mfhhis01.txt, slt_table3.txt | 2026-11-12 | 2026-08 | Revision |
| R10A-07 | Foreign official share of foreign holdings fell from 66.5% to 40.2% | T0 | computed | same | 2026-11-12 | 2026-08 | Revision |
| R10A-08 | Saudi US equities 57 to 215 and long-term debt 121 to 119, June 2018 to June 2025 | T0 | fetched, table checked | https://ticdata.treasury.gov/resource-center/data-chart-center/tic/Documents/shl2025r.pdf | 2026-04 | 2025-06 | June 2026 survey differs |
| R10A-09 | UAE US equities 89 to 231, long-term debt 57 to 43 over the same dates | T0 | as above | same | 2026-04 | 2025-06 | as above |
| R10A-10 | Norway equities 277 to 826 and debt 93 to 283 (control group moved the same way) | T0 | as above | same | 2026-04 | 2025-06 | as above |
| R10A-11 | Fed H.4.1 marketable Treasury custody for foreign official accounts 2,543,700 million on 4 Nov 2026 | T0 | fetched, label checked | https://www.federalreserve.gov/releases/h41/current/ | 2026-11-05 | 2026-11-04 | Next release revises |
| R10A-12 | That custody was 3116.0 billion in Mar 2021, down 18.4% | T0 | computed from DBnomics mirror | https://api.db.nomics.world/v22/series/FED/H41/RESH4FG_N.WW | 2026-11-06 | 2026-11-04 | H.4.1 itself differs |
| R10A-13 | The Fed says TIC undercounts Cayman hedge fund Treasuries by about 1.4 trillion at end 2024 | T1 | fetched, read | https://www.federalreserve.gov/econres/notes/feds-notes/the-cross-border-trail-of-the-treasury-basis-trade-20251015.html | 2025-10-15 | 2024-12 | A Fed correction |
| R10A-14 | CBUAE gross international reserves 973.1 bn AED in Aug 2026, down 12.4% from Feb 2026 peak, with an equity definition break in March 2026 | T0 | fetched, label checked | https://centralbank.ae/media/njajo2nc/statistical-bulletin-august-2026.pdf | 2026-10 (bulletin, exact date not read) | 2026-08 | Later bulletin restates |
| R10A-15 | SAMA reserve assets about SR1.85 trillion end June 2026 | T3 secondary | not checked against SAMA | https://www.arabnews.com/node/2650099/business-economy | 2026-07-08 | 2026-06 | SAMA bulletin |
| R10A-16 | Renminbi about 3.13% of global payments by value, Jan 2026 | unverified | search snippet only, swift.com 403 | https://www.swift.com/sites/default/files/files/global-currency-tracker_september-2026.pdf | unknown | 2026-01 | SWIFT page |
| R10A-17 | Qatar has no monthly TIC line and the annual survey shows Qatar equities 58 and debt 24 in June 2025 | T0 | fetched | shl2025r.pdf | 2026-04 | 2025-06 | None |
| R10A-18 | 13F data for PIF and other Gulf filers were not obtained | gap | EDGAR returned 403 to an undeclared client | https://www.sec.gov | 2026-11-12 | n/a | A declared-client fetch |
