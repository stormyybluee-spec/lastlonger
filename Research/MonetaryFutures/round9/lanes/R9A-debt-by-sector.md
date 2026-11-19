# R9A Data lane: debt by sector as % of GDP, and Vietnam versus Malaysia

Lane R9A, written 2026-11-11. General education, not financial advice. All figures are percent of GDP unless stated. Calculations were run with python3 -I.

## Pass checklist

- [x] BIS total credit pulled for 19 of the 25 countries (DBnomics mirror, latest quarter in the mirror is 2024-Q4). Household, non-financial corporate and general government.
- [x] IMF Global Debt Database and World Economic Outlook pulled (DataMapper API, GDD Sep 2025 vintage). Gives government debt for all six countries BIS lacks, and household plus corporate for Jordan only.
- [ ] Household and corporate debt for Vietnam, Bahrain, Grenada, Maldives and Senegal: NOT FOUND in BIS or IMF GDD. These cells cannot be verified.
- [x] Infographic dataset and date: no single dataset or date. See "Does the infographic match one dataset".
- [x] Vietnam household debt: 18 versus 23 not resolved. No official Vietnam household debt statistic exists. See the Vietnam section.
- [x] Four "why" lines, each with a source.
- [x] Money creation split (which debt creates deposits and which only moves money) added at the orchestrator's request.
- [ ] Appliance ownership: skipped, not easy to find.
- [ ] Orchestrator note says BIS 2025 matches the image for Malaysia (69.8 and 88.6). The DBnomics mirror stops at 2024-Q4, so this lane could not confirm a 2025 quarter. The Malaysia figures here (69.5 and 87.5 in 2024-Q4, 69.1 and 88.6 in 2024-Q2) agree within 1 point.
- Not committed.

## Verification table

Format in each cell: household / corporate / government / total. Gap is infographic minus verified. Government is general government at nominal value where BIS publishes it (Korea is market value only). BIS household includes non-profit institutions serving households. Total here is the simple sum of the three sectors.

| Country | Infographic h/c/g/total | Verified h/c/g/total | Source and date | Gap h/c/g/total |
|---|---|---|---|---|
| Hong Kong | 86/227/67/380 | 88.1/240.2/80.6/408.9 | BIS 2024-Q4, gov nominal | -2.1/-13.2/-13.6/-28.9 |
| Japan | 60/113/199/372 | 65.1/116.3/212.5/393.9 | BIS 2024-Q4, gov nominal | -5.1/-3.3/-13.5/-21.9 |
| Singapore | 45/130/172/347 | 44.3/122.8/173.1/340.2 | BIS 2024-Q4, gov nominal | +0.7/+7.2/-1.1/+6.8 |
| France | 59/156/110/326 | 60.5/155.0/113.1/328.6 | BIS 2024-Q4, gov nominal | -1.5/+1.0/-3.1/-2.6 |
| Canada | 100/118/97/315 | 100.0/117.9/97.9/315.8 | BIS 2024-Q4, gov nominal | +0.0/+0.1/-0.9/-0.8 |
| China | 60/142/97/298 | 60.0/138.1/88.4/286.5 | BIS 2024-Q4, gov nominal | +0.0/+3.9/+8.6/+11.5 |
| United States | 68/73/123/264 | 69.2/73.8/114.1/257.1 | BIS 2024-Q4, gov nominal | -1.2/-0.8/+8.9/+6.9 |
| South Korea | 89/111/49/249 | 90.1/110.5/43.8/244.4 | BIS 2024-Q4, gov market | -1.1/+0.5/+5.2/+4.6 |
| Italy | 36/59/141/236 | 36.1/58.2/135.5/229.8 | BIS 2024-Q4, gov nominal | -0.1/+0.8/+5.5/+6.2 |
| Malaysia | 70/88/66/224 | 69.5/87.5/64.6/221.6 | BIS 2024-Q4, gov nominal | +0.5/+0.5/+1.4/+2.4 |
| Thailand | 88/76/60/223 | 89.2/82.1/56.6/227.9 | BIS 2024-Q4, gov nominal | -1.2/-6.1/+3.4/-4.9 |
| Bahrain | 24/56/143/223 | n/a/n/a/133.7/n/a | IMF 2024 (g only) | n/a/n/a/+9.3/n/a |
| United Kingdom | 74/59/81/214 | 76.3/61.2/101.4/238.9 | BIS 2024-Q4, gov nominal | -2.3/-2.2/-20.4/-24.9 |
| Germany | 49/89/63/200 | 49.9/89.4/62.4/201.7 | BIS 2024-Q4, gov nominal | -0.9/-0.4/+0.6/-1.7 |
| Israel | 43/71/70/184 | 42.3/69.6/67.4/179.3 | BIS 2024-Q4, gov nominal | +0.7/+1.4/+2.6/+4.7 |
| Brazil | 36/50/92/178 | 36.4/57.1/87.3/180.8 | BIS 2024-Q4, gov nominal | -0.4/-7.1/+4.7/-2.8 |
| Jordan | 27/56/90/172 | 36.9/39.0/82.1/158.0 | IMF 2023 (h,c), 2024 (g) | -9.9/+17.0/+7.9/n/a |
| Grenada | 37/64/68/168 | n/a/n/a/72.8/n/a | IMF 2024 (g only) | n/a/n/a/-4.8/n/a |
| Maldives | 18/17/132/167 | n/a/n/a/133.4/n/a | IMF 2024 (g only) | n/a/n/a/-1.4/n/a |
| India | 39/49/74/163 | 41.9/51.1/82.1/175.1 | BIS 2024-Q4, gov nominal | -2.9/-2.1/-8.1/-12.1 |
| Vietnam | 23/107/32/161 | n/a/n/a/32.9/n/a | IMF 2024 (g only) | n/a/n/a/-0.9/n/a |
| Hungary | 18/70/73/161 | 17.0/72.8/73.6/163.4 | BIS 2024-Q4, gov nominal | +1.0/-2.8/-0.6/-2.4 |
| Chile | 41/86/31/158 | 44.8/94.2/41.7/180.7 | BIS 2024-Q4, gov nominal | -3.8/-8.2/-10.7/-22.7 |
| Senegal | 5/29/123/156 | n/a/n/a/136.1/n/a | IMF 2024 (g only) | n/a/n/a/-13.1/n/a |
| South Africa | 34/35/79/149 | 33.7/33.1/77.9/144.7 | BIS 2024-Q4, gov nominal | +0.3/+1.9/+1.1/+4.3 |

Source URLs. BIS rows: https://api.db.nomics.world/v22/series/BIS/WS_TC/Q.<country code>.<H, N or G>.A.<M or N>.770.A (dataset WS_TC, BIS long series on total credit, all lenders, unit 770 = percent of GDP, adjusted for breaks). IMF rows: https://www.imf.org/external/datamapper/api/v1/HH_LS, /NFC_LS, /GG_DEBT_GDP and /GGXWDG_NGDP. The IMF household and corporate series for countries BIS covers repeat the BIS numbers (for example Japan household 65.1), so they are not independent.

Gaps worth noting. Differences of 3 points or less on every sector: Canada, France, Germany, Malaysia, Singapore (corporate +7.2 is the exception), Hungary, Israel, South Africa. Large differences: Hong Kong (corporate -13.2, government -13.6), Japan (government -13.5 against nominal, -6.6 against market value 205.6), United Kingdom (government -20.4 against nominal 101.4, -6.3 against market 87.3), Chile (all three, total -22.7), India (government -8.1), Jordan (corporate +17.0, household -9.9), Senegal (government -13.1), China (government +8.6), United States (government +8.9).

### Does the infographic match one dataset and date

No. A best-fit search of every BIS quarter against each row (this lane's own test, so a weak signal since a search over many quarters can match by chance) gives different vintages for different rows:
- Close to 2024: Canada (within 0.1 per sector in 2024-Q3), Germany, Malaysia, Singapore, South Africa, France, Korea, Italy.
- Close to older quarters: Israel (best match 2021-Q3, within 1 point), Brazil (2021-Q2), Hungary (2020-Q3), India (2019-Q4), Chile (about 2023-Q1 and still 15 points off in total).
- Hong Kong household 86 and Japan, UK, US government figures do not match any single quarter well. Hong Kong corporate 227 matches 2015 corporate but not 2015 household, so that is probably coincidence.
The image looks like a mix of vintages, consistent with a compiled ranking (the IIF Global Debt Monitor draws on BIS, national and IIF estimates, unverified here since the IIF data is behind a subscription). The six countries BIS does not cover must come from another source. Vietnam corporate 107 plus household 23 equals 130, close to Vietnam total bank credit (IMF: 136.4 percent of GDP in 2024, World Bank private credit by banks 125.0 in 2022), so the Vietnam row looks like a split of bank credit. That is an inference.

## Definitions that move the numbers

- BIS credit is credit to the sector from all lenders (banks, other financial firms, bond buyers, foreign lenders), measured at the borrower, as loans plus debt securities. IIF debt is a similar concept but uses IIF's own sources and revisions. Neither is a guaranteed match.
- Market versus nominal value. Nominal is the face value owed. Market value marks bonds to today's price, so it moves with interest rates. For government debt the BIS shows both. Japan: 205.6 market, 212.5 nominal. UK: 87.3 market, 101.4 nominal. A gap of 14 points from the choice alone.
- BIS government debt is general government, gross, and does not net off assets. Singapore and Japan hold large assets against it.
- Intra-sector debt. BIS says its non-financial corporate series is consolidated where the country reports consolidated data and unconsolidated otherwise. Whether each country consolidates was not checked, so cross-country comparison of corporate debt is uncertain. Luxembourg and Ireland corporate figures (381 and 120.5) hint at intra-group debt of multinationals.
- Hong Kong government: BIS 80.6 nominal. IMF WEO general government gross debt for Hong Kong is only 9.2 (2024). The two differ because they cover different instruments (unverified which, possibly Exchange Fund paper). The infographic's 67 is closer to neither.
- Malaysia household: BIS 69.5 (2024-Q4) equals Bank Negara's banking-system-only measure (69.5, December 2024). Bank Negara's total household debt (adding development finance institutions and selected non-bank lenders) is 84.1 in December 2024 and 84.8 in June 2025. So the "70" is the narrower measure.
- GDP in the denominator is a whole-economy income measure. It is not household income.

## Vietnam versus Malaysia: "who is more financially wealthy?"

Short answer from the evidence: the post compares one side of a balance sheet, and the figure for Vietnam is poorly measured. Malaysia has higher income per head and large, documented financial assets. Vietnam has less debt in the official bank data but also much less documented wealth. No source found gives net worth per adult for both, so a verdict on "more wealthy" is only partial. Confidence in the direction (Malaysia richer per head on documented financial assets) is medium. Confidence in the size of any gap is low.

| Item | Vietnam | Malaysia | Source and date |
|---|---|---|---|
| Household debt, post says | 18 | 70 | The post (31 Oct 2026). Image says 23 and 70 |
| Household debt, BIS | not covered | 69.5 (2024-Q4) | BIS via DBnomics |
| Household debt, national measure | No official statistic. SEACEN study using SBV individual loans: 47.0 in 2016, includes business households | 84.8 (June 2025) total, 70.0 banking system only | SEACEN 2018 chapter 8 and Bank Negara FSR 1H2025 |
| Total bank credit to the economy | 136.4 (2024) | World Bank private credit by banks 116.1 (2024) | IMF Article IV 2025 Table 5 and World Bank FS.AST.PRVT.GD.ZS |
| World Bank private credit by banks 2022 | 125.0 | 113.1 | World Bank API, checked this lane |
| Share of loans that is real estate | 21 percent of bank loans (July 2024, developers about 8 of that). 25.5 percent (2025) | Housing plus cars about 75 percent of household debt (June 2025) | AMRO 2025, World Bank Viet Nam Economic Update May 2026, Bank Negara FSR |
| Household financial assets | Not found | RM3.45 trillion at end-March 2025, 177.1 percent of GDP in June 2025, 2.1 times household debt | Bank Negara FSR 1H2025 |
| Deposits and pension | Household deposits about VND8 quadrillion (Oct 2025) and 11.2 quadrillion (July 2026), per State Bank of Vietnam via press. Roughly 63 percent of 2025 GDP (derived, using IMF-projected GDP, so rough) | Deposits plus EPF savings are 68.4 percent of household financial assets, so about 121 percent of GDP (derived) | SGGP, vietnam.vn, Bank Negara FSR |
| GDP per capita, current US$ 2025 | 5,066 | 13,125 | World Bank API |
| GDP per capita, PPP 2025 | 18,088 | 41,498 | World Bank API |
| Ratio, Malaysia over Vietnam | 2.6 nominal, 2.3 PPP | | Derived |
| Home ownership | About 88 percent of households (2019 census, secondary source only) | About 76 percent (2022), 78 percent (2024) | DOSM via The Edge Malaysia and The Star. Vietnam figure unverified at primary level |
| Appliance ownership | Skipped | Skipped | |

### Why 18 versus 23, and why Vietnam looks cheap

18 versus 23 is not resolved. Neither number matched a source this lane could open. Likely reasons, all unverified: different year, different provider, or rounding of a model estimate. The post and image may simply come from two different posts.

Why Vietnam household debt is hard to measure and probably understated in a 23 percent figure:
1. There is no official household debt statistic. The SEACEN study says so directly and builds a proxy from State Bank of Vietnam outstanding credit to "individuals".
2. That proxy includes household businesses (farm, trade and small production households) and gave 47.0 percent in 2016. A clean consumer plus housing loan definition would be lower, and a definition that moves household business loans into the corporate column (as an IIF-style split may) would be lower still. The image's corporate figure of 107 is high next to Malaysia's 88, which fits business-household loans sitting in the corporate column. This is an inference.
3. Rough size check using the AMRO and IMF numbers (derived, not a published figure): total credit 136.4 percent of GDP, real estate 21 percent of loans, developers 8 percent. That leaves about 13 percent of loans, or about 17.7 percent of GDP, in real estate lending that is not to developers. That is mostly households buying homes. Consumer loans outside property (cars, cards, finance companies) would add to it. So 18 to 23 may be a mortgage-only figure and the true household figure is probably higher. It is not 47 now, since credit has grown, but this lane has no current number.
4. Informal credit (family loans, rotating savings groups, pawn shops) is not in any bank statistic and is not counted in either country's figure.

Resolving the World Bank anomaly. World Bank private credit by banks is higher for Vietnam (125.0 in 2022) than Malaysia (113.1 in 2022). That is credit to all private borrowers (firms and households) from banks only. For Malaysia, households are about 70 of 113 and firms the rest. For Vietnam the same total is split 23 and 107 in the image, which looks lopsided against Malaysia. Vietnam's banks lend a large share to firms, real estate developers and household businesses. The anomaly is a classification issue as well as a real difference, and it argues that Vietnam's household figure is a floor.

### What debt creates money and what only moves it

The chart mixes both. Rules from PLAN section 2B (from memory of the plan, not re-read here, so unverified): a bank loan creates a deposit at the moment it is made, so bank credit is a footprint of money created. A bond bought by a pension fund or other non-bank, a loan from abroad, or a loan from a non-bank lender moves existing money and creates none. Government debt bought by the central bank or by banks creates money, bought by non-banks it only moves money.

Applied to the numbers found:
- Malaysia household: 70.0 of 84.8 (82.5 percent) is banking-system lending, which creates deposits. The other 14.8 points come from development finance institutions and non-bank lenders. Whether development finance institutions create deposits was not checked.
- Vietnam: nearly all private debt is bank credit (IMF: credit 136.4 percent of GDP, loan-to-deposit ratio above 100 percent), so Vietnam's table is more bank-credit-heavy than most. Corporate bonds are growing (IMF notes limited investor base, mostly financial institutions). Vietnam government debt 32.9 is small.
- Hong Kong, Singapore, Japan: government debt creates money only when banks or the central bank buy it. Japan's central bank holds about 48 percent of JGBs and FILP bonds (secondary source, late 2025), so a large part of Japan's 199 to 212 was matched by reserves created by the Bank of Japan. Singapore's CPF bonds are bought by a pension board using members' savings, which moves existing money.
- Debt owed abroad (Hong Kong firms borrowing offshore, Thai or Brazilian foreign-currency bonds) moves existing money across borders and creates deposits only if the proceeds are deposited at a local bank.
- Stock versus flow: the chart is a stock. A high ratio does not tell you how much money was created this year.

## Four "why" lines

1. Japan: the government's gross debt (199 to 212) is large because the central bank holds roughly 48 percent of bonds and domestic institutions hold most of the rest, with foreigners holding about 6.6 percent (late 2025, secondary sources, check against Ministry of Finance data). Debt owed mostly to residents, in yen, is not the same risk as debt owed abroad. Sources: https://japan.co.jp/e/reports/japan-government-bonds-foreign-investors-2026.html and the Nikkei report https://asia.nikkei.com/business/markets/bonds/bank-of-japan-s-share-of-jgb-holdings-dips-below-50 (as found in search, not opened in full).
2. Singapore: its government borrows through two routes that are not deficit funding. Singapore government securities (market development) and Treasury bills are issued to build a bond market yield curve, and the proceeds are invested into the reserves and cannot be spent. Special bonds (SSGS) are issued to the CPF Board, which invests members' savings in them. Source: Ministry of Finance https://www.mof.gov.sg/policies/reserves/our-assets-and-liabilities/ and CPF https://www.cpf.gov.sg/member/infohub/cpf-clarifies/policy-faqs/how-are-cpf-monies-invested (both as summarised by search, not opened in full). So the 173 is gross debt with assets behind it.
3. Hong Kong: corporate debt of 240 (BIS 2024-Q4, IMF country report cites 268 at a recent point, peak in 2021-Q2, down 37 points since) is high because Hong Kong is an offshore fund-raising platform for mainland Chinese firms, and because of the financial centre role (firms booked there may not do business there). The share owed by mainland firms was not found. Source: IMF Country Report 25/16 https://www.imf.org/-/media/files/publications/cr/2025/english/1hkgea2025002-print-pdf.pdf (as found in search).
4. Malaysia: household debt is mostly housing and cars. Housing and car loans together are 75 percent of household debt (June 2025, 74.6 percent December 2024). Credit cards, personal financing and similar consumption borrowing are about 15.2 percent. Household financial assets are 2.1 times household debt. Source: Bank Negara Financial Stability Review 1H2025 https://www.bnm.gov.my/documents/20124/19635466/fsr25h1_en_ch1b.pdf (opened and read).

## Data caveats

- The DBnomics BIS mirror ends at 2024-Q4. BIS itself may have 2025 quarters. The orchestrator reports a 2025 match for Malaysia. A direct BIS API call from this lane returned 404, so the mirror was the only route.
- The IMF Global Debt Database vintage is September 2025. Where it covers BIS countries it copies BIS.
- The orchestrator or reader should not treat the six countries without BIS data as checked. Only government debt (IMF WEO, 2024) was found, and for Bahrain, Senegal and Jordan it differs by 8 to 13 points from the image.
- Vietnam household figures: no primary source. The 47 percent (2016) is old and uses a wide definition.
- Press reports of State Bank of Vietnam deposit data were used, not SBV pages.
- Vietnam home ownership of 88 percent is from a secondary search summary, not the census report.
- Vietnam GDP in dong for the deposit ratio is implied from IMF projected credit-to-GDP, so the 63 percent is rough.
- Japan holder shares come from secondary sources.
- Hong Kong, Singapore and Japan sources were read as search summaries, apart from Bank Negara, the IMF Vietnam report, AMRO, SEACEN and World Bank documents which were opened.
- The post is on X and was not re-fetched here. Its wording is taken from OWNER_R9.md.

## Claims table

| id | claim | tier | status | source URL | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R9A-01 | BIS shows Malaysia household debt 69.5, corporate 87.5, government 64.6 percent of GDP | T0 | verified | https://api.db.nomics.world/v22/series/BIS/WS_TC/Q.MY.H.A.M.770.A | mirror to 2024-Q4 | 2024-Q4 | BIS direct download shows different values |
| R9A-02 | BIS shows Hong Kong corporate debt 240.2 percent of GDP | T0 | verified | https://api.db.nomics.world/v22/series/BIS/WS_TC/Q.HK.N.A.M.770.A | mirror to 2024-Q4 | 2024-Q4 | BIS direct download |
| R9A-03 | BIS shows Japan government debt 212.5 nominal and 205.6 market value | T0 | verified | https://api.db.nomics.world/v22/series/BIS/WS_TC/Q.JP.G.A.N.770.A | mirror to 2024-Q4 | 2024-Q4 | BIS direct download |
| R9A-04 | BIS shows Singapore household 44.3, corporate 122.8, government 173.1 | T0 | verified | https://api.db.nomics.world/v22/series/BIS/WS_TC/Q.SG.G.A.N.770.A | mirror to 2024-Q4 | 2024-Q4 | BIS direct download |
| R9A-05 | The infographic mixes vintages (some rows match 2024, some 2019 to 2021) | T0 | inference from best-fit test | same BIS series | n/a | 2024-Q4 | A single dated IIF release that reproduces all rows |
| R9A-06 | IMF WEO government debt: Vietnam 31.2 (2024 per WEO) and 32.9 (GDD), Bahrain 133.7, Senegal 136.1, Maldives 133.4, Grenada 72.8, Jordan 82.1 | T0 | verified | https://www.imf.org/external/datamapper/api/v1/GGXWDG_NGDP | 2025 vintage | 2024 | A later WEO revision |
| R9A-07 | Household and corporate debt for Vietnam, Bahrain, Grenada, Maldives, Senegal not found in BIS or IMF GDD | T0 | not found | https://www.imf.org/external/datamapper/api/v1/HH_LS | Sep 2025 | 2026-11-11 | A source publishing these series |
| R9A-08 | Bank Negara: household debt 84.8 percent of GDP total, 70.0 banking system only (June 2025) | T0 | verified | https://www.bnm.gov.my/documents/20124/19635466/fsr25h1_en_ch1b.pdf | 2025-10 | 2025-06 | Later revision of the series |
| R9A-09 | Malaysia household financial assets are 2.1 times debt, 177.1 percent of GDP, deposits plus EPF 68.4 percent of them | T0 | verified | same BNM PDF | 2025-10 | 2025-06 | Later revision |
| R9A-10 | Malaysia housing and car loans are 75 percent of household debt | T0 | verified | same BNM PDF | 2025-10 | 2025-06 | Later revision |
| R9A-11 | Vietnam has no official household debt statistic and an SBV-based proxy gave 47 percent in 2016 including business households | T4 | verified (study text) | https://www.seacen.org/publications/RStudies/2018/RP102/8-VietnamHouseholddebt.pdf | 2018 | 2016 | An official SBV household series |
| R9A-12 | Vietnam credit to the economy 136.4 percent of GDP in 2024 (IMF Table 5) | T1 | verified | https://www.imf.org/-/media/files/publications/cr/2025/english/1vnmea2025001-source-pdf.pdf | 2025-09 | 2024 | Revised national accounts |
| R9A-13 | World Bank private credit by banks: Vietnam 125.0, Malaysia 113.1 (2022) | T0 | verified | https://api.worldbank.org/v2/country/VNM%3BMYS/indicator/FS.AST.PRVT.GD.ZS | 2025 | 2022 | Revised series |
| R9A-14 | Real estate lending is 21 percent of Vietnamese bank loans (July 2024) and 25.5 percent in 2025 | T2 | verified (document text) | https://www.amro-asia.org/wp-content/uploads/2025/03/2024-Vietnam-ACR_publication_21Feb2025.pdf and https://documents1.worldbank.org/curated/en/099740005122628080/pdf/IDU-2ee874ce-e0c0-462b-9571-99e553ef83c9.pdf | 2025-02 and 2026-05 | 2024 and 2025 | SBV breakdown |
| R9A-15 | Vietnam mortgage-like household credit is roughly 18 percent of GDP | T4 | derived estimate, unverified | derived from R9A-12 and R9A-14 | n/a | 2024 | An SBV breakdown of lending to individuals |
| R9A-16 | Vietnam household deposits about VND8 quadrillion (Oct 2025) and 11.2 quadrillion (July 2026) | T5 | press report of SBV data | https://en.sggp.org.vn/vietnamese-households-hold-nearly-vnd8-quadrillion-in-bank-savings-post121393.html and https://www.vietnam.vn/en/tien-gui-dan-cu-vuot-11-2-trieu-ty-dong-lap-dinh-moi | 2025-10-30 and 2026-09-18 | 2025-10 and 2026-07 | SBV statistical release |
| R9A-17 | GDP per capita 2025: Vietnam 5,066 and Malaysia 13,125 US$, PPP 18,088 and 41,498 | T0 | verified | https://api.worldbank.org/v2/country/VNM%3BMYS/indicator/NY.GDP.PCAP.CD | 2025 | 2025 | Revision |
| R9A-18 | Home ownership: Malaysia 76 to 78 percent, Vietnam about 88 percent | T5 | secondary only | https://theedgemalaysia.com/node/787122 | 2024 | 2022 to 2024, 2019 | Census or DOSM primary table |
| R9A-19 | Singapore government securities (market development) proceeds are invested in reserves and not spent, SSGS go to CPF | T2 | read via search summary | https://www.mof.gov.sg/policies/reserves/our-assets-and-liabilities/ | undated | 2026-11 | MOF page says otherwise |
| R9A-20 | Hong Kong is an offshore fund-raising platform for mainland firms and corporate debt peaked in 2021-Q2 | T2 | read via search summary | https://www.imf.org/-/media/files/publications/cr/2025/english/1hkgea2025002-print-pdf.pdf | 2025 | 2025 | IMF text differs |
| R9A-21 | Bank of Japan holds about 48 percent of JGBs and FILP bonds, foreigners about 6.6 percent | T4 | secondary, unverified | https://japan.co.jp/e/reports/japan-government-bonds-foreign-investors-2026.html | 2026 | late 2025 | Ministry of Finance holder table |
| R9A-22 | The post's Vietnam household figure (18) and the image's (23) differ and neither was matched to a source | T5 | unresolved | OWNER_R9.md | 2026-10-31 | 2026-11-11 | The source of either number |
