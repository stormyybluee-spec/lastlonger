# R11A History and data lane (round 11, 2026-11-15)

Lane: numbers and history for the chapter on whether printing money is a scam or a Ponzi. General education, not financial advice. Tier key: T0 money moved, T1 law, T2 officials, T3 prices, T4 specialists, T5 commentary. Every number below was fetched on 2026-11-15 unless a row says "memory" or "unverified". Calculations were run with python3 -I from the fetched files.

## Pass checklist

| Item | Done | Main gap |
|---|---|---|
| 1. Gold 1945 to 1950 | yes, Fed Bulletin table, shares 59.5% to 69.9% | World Gold Council and IMF pages not readable here. Peak month unverified |
| 2. Post-war rebuilding | yes | Grants against loans split and Japan aid total from search summaries only. Germany and Japan industrial output crossing years only roughly |
| 3. Hard money record | partly | 1930s country output table not retrieved. Unemployment 1873 to 1896 and 1933 not retrieved. Post-1934 panic count not tabulated |
| 4. Other tail | yes | Hanke and Krus table itself blocked. Rates by country are secondary |
| 5. Inflation tax in dollars | yes | Pre-2022 Fed remittances from memory. Current deposit rates not fetched |
| 6. Growth after 1971 | yes | World poverty 1971 not available. Malaysia currency in circulation not retrieved |
| Orchestrator C1 ringgit | no | Bank Negara data not reachable. Deposit rate against inflation given |
| Orchestrator C3 interest against growth | yes (2001 to 2025 exact, earlier by proxy) | 1946 to 1961 not covered |
| Orchestrator C4 wealth shares, crisis counts | no | WID and JST not reachable as data |

Anomaly checks from the frame. (1) US gold share: the frame said 60% to 75%, the data say 59.5% to 69.9%, so 75% fails. (2) CPI rates in the frame were right to within 0.1 point. (3) Cash is small against deposits (about $2.3 trillion against $19.6 trillion of other M2) and about half of banknotes are abroad, as the frame suspected. (4) Europe passed its 1938 output level in 1949 under a dollar-anchored, gold-redeemable system with capital controls and the EPU. Marshall aid was at most 2.5% of recipient GNP. (5) Interest above growth for US debt was rare in 2001 to 2025 and clustered in 1980 to 1997.
## 1. Gold in 1945 to 1950: did America hold 75% of the world's gold?

Verdict: not supported. The official record gives 59.5% at the end of 1945, a peak of about 70% at the end of 1948, and 63.7% at the end of 1950. Gold is valued at the fixed $35 an ounce. "Three quarters" is a round-up. "Roughly two thirds to 70% at the peak" is what the data say.

Source: Federal Reserve Bulletin, December 1951, table "Reported gold reserves of central banks and governments" (T2, official Fed publication of country reports). The world total excludes the USSR (its gold was not reported) and includes the IMF, BIS and estimates for countries that did not report. The share is therefore a share of reported non-Soviet official gold. If Soviet gold were counted, the US share would be slightly lower. How big Soviet reserves were in 1945 is not in this source.

| Year-end | US total gold (Treasury plus Exchange Stabilization Fund), $ million | World total excl. USSR, $ million | US share, % | US tonnes (own conversion) | World tonnes (own conversion) |
|---|---|---|---|---|---|
| 1945 | 20,083 | 33,770 | 59.5 | 17,847 | 30,010 |
| 1946 | 20,706 | 34,120 | 60.7 | 18,401 | 30,321 |
| 1947 | 22,868 | 34,550 | 66.2 | 20,322 | 30,704 |
| 1948 | 24,399 | 34,930 | 69.9 | 21,683 | 31,041 |
| 1949 | 24,563 | 35,410 | 69.4 | 21,828 | 31,468 |
| 1950 | 22,820 | 35,820 | 63.7 | 20,279 | 31,832 |

Conversion: dollars divided by $35 per ounce, divided by 32,150.7 troy ounces per tonne. Cross-checks: 1949 gives 701.8 million ounces, matching the figure widely quoted as the US peak. 1950 gives 20,279 tonnes, matching the World Gold Council series quoted by a secondary site. A cross-check on Treasury and Fed Banks gold only (FRED, series M1437BUSM144NNBR, monthly to May 1949): December 1945 $20,014 million, 1948 $24,199 million, May 1949 $24,299 million. The FRED series stops in May 1949, so it does not show the peak month.

Peak. In dollar terms the US total of $24,563 million at December 1949 is the highest year-end in this table. The common statement that US holdings peaked at about 700 million ounces (about 21,800 tonnes) in 1949 fits. I did not check monthly peaks, so a month inside 1948 to 1950 may be slightly higher. Mark the exact peak month as unverified.

Why it matters. US gold rose from 17,575 (1939) to a high in 1949 because of war-time gold flowing to America to pay for supplies, and fell after 1949 as Europe rebuilt reserves and the dollar gap closed (see section 2). Secondary reports that the peak was "70% of the free world's gold" are consistent with this table.

Gaps. I could not open the World Gold Council or IMF reserve tables from this environment (JavaScript pages). The Fed Bulletin is the stronger T2 source for the period anyway.
## 2. Post-war rebuilding: what paid for it, and was it gold-backed?

Short answer. Europe and Japan rebuilt in about 5 to 8 years, not 50. The money came from four streams: US grants and loans (about $13 billion to Europe and about $1.9 billion to Japan), domestic reforms that stopped inflation and restored trade (currency reforms, the Dodge line, the European Payments Union), debt write-downs (Germany 1948 and 1953), and exports including American war-time purchases (Korea). The aid was small next to the economies it went to. The conditions mattered more than the size, on the DeLong and Eichengreen reading.

| Item | Number | Source and tier | Status |
|---|---|---|---|
| Marshall Plan (European Recovery Programme) total | about $13 billion, April 1948 to mid-1951 | EH.net encyclopedia (T4) https://eh.net/encyclopedia/the-marshall-plan-1948-1951/ and NBER WP 3899 abstract (T4) https://nber.org/papers/w3899 | verified, two sources |
| State Department wording | "over $12 billion" rising from Economic Cooperation Act of March 1948 | https://history.state.gov/milestones/1945-1952/marshall-plan (T2) | verified. Totals differ by what is counted ($12 bn to $13.3 bn) |
| Grants against loans | Most was grants, loans kept small. A search summary gave $11.8 bn grants and $1.5 bn loans | EH.net says "most aid was grants". The split numbers came from a search summary only | split unverified |
| Share of recipients' GNP | "hardly exceeded 2.5% of GNP of the recipient countries" and under 20% of capital formation | EH.net (T4) | verified |
| Share of US GDP | about 5% of one year's 1948 US GDP in total, so roughly 1% a year over four years (own arithmetic) | Galofre-Vila et al, NBER WP 22557 citing Eichengreen 2010 (T4) https://www.nber.org/papers/w22557.pdf and the "about 1% a year" is my arithmetic, 1948 US GDP not fetched | total share verified, annual split unverified |
| Germany's share | $1.4 bn, small against the UK and France | same NBER paper | verified |
| Marshall Plan effect | DeLong and Eichengreen: too small to speed recovery by financing investment or relieving shortages, but its conditions pushed Europe to more market and fewer controls | https://nber.org/papers/w3899 (T4) | verified |
| West German currency reform, June 1948 | New Deutschmark. Most savings converted at 6.5 DM per 100 Reichsmarks. Domestic public debt wiped out. Industrial index on the day was about 51% of 1936 | NBER WP 22557 (T4) and US bulletin quoted in search results (T2, not opened) | conversion rate verified, 51% index unverified |
| West German output after reform | Federal index 124% of 1936 by September 1950, only coal, iron and steel, shoes, leather and shipbuilding below 1936 | US Economic Review bulletin as quoted in search results https://search.library.wisc.edu/digital/AWTJZ3HSBFEKTL84/text/AWQLBED4QQFNCR9E (T2) | quoted, page not opened |
| European Payments Union | 1950 to 1958. Multilateral clearing with credit. Overdraft and drawing rights backed with ECA funds. It let Europe trade without dollars | EH.net (T4) and NBER WP 22557 (T4) | verified |
| London Agreement on German External Debts, 1953 | Pre-war and post-war debt cut from DM 29.7 bn to DM 14.5 bn (a cut of about 51%). Service capped at 3% of annual export earnings. Equal to about 22% of 1952 German GDP (Sinn), or 10% of 1953 GDP (Kaiser) | NBER WP 22557 (T4) https://www.nber.org/papers/w22557.pdf | verified. The percent of GDP is contested between two estimates |
| Western Europe industrial output (OEEC index, 1950 = 100) | 1938: 82. 1948: 80. 1949: 90. 1950: 100. 1951: 109. 1952: 110. 1953: 116 | FRUS 1952 to 1954, volume VI, document 219 (T2) https://history.state.gov/historicaldocuments/frus1952-54v06p1/d219 | verified. Western Europe passed its 1938 level in 1949 |
| Japan aid | GARIOA about $1,577 m and EROA about $285 m by US fiscal 1951, total about $1.86 bn | search result citing Japan Ministry of Finance (T2), not opened | unverified |
| Japan stabilisation | Nine-Point Programme December 1948. Dodge Plan in fiscal 1949: sharp tightening of the money supply, balanced budget (initial budget 414.4 bn yen in FY1948 to 704.9 bn in FY1949), fixed 360 yen per dollar from April 1949 | Japan Ministry of Finance, Part 1 Chapter 2 (T2) https://www.mof.go.jp/english/pri/publication/policy_1945-1971/Part1-Chapter2.pdf | verified |
| Japan regained pre-war output | Real gross national expenditure at 1934-36 prices rose from 14,211 m yen (1948) to 18,207 m yen (1951), exceeding 1934-36 base years. Korean War special procurement was 25% of exports in 1951 and 35% in 1952 | same Japan MoF chapter (T2) | verified for 1951. This is expenditure, not industrial output. Industrial output date unverified |
| Germany regained pre-war industry | around 1950 (see above) | US bulletin in search results | roughly, exact crossing year unverified |

Was the system gold-backed? Yes in a limited sense. Bretton Woods (July 1944) fixed the dollar to gold at $35 an ounce and other currencies to the dollar, with a 1% band. Only the US Treasury redeemed dollars for gold, and only to foreign central banks. Source: Federal Reserve History, https://www.federalreservehistory.org/essays/bretton-woods-created (T2). The IMF started December 1945 with 29 members. Currencies became convertible in 1958. So rebuilding ran on a dollar peg backed by US gold, with European currencies not freely convertible until 1958. That is why the EPU existed.

The dollar shortage. Europe needed American machines and food but earned few dollars. US gold rose from about $20.1 bn (1945) to $24.6 bn (1949) as the world paid dollars for goods (section 1). Aid, EPU credit and Korean War spending then moved gold and dollars back to Europe. Western Europe's gold and dollar reserves rose about $2.5 bn in 1953, half from US aid and half from US military purchases (FRUS doc 219). The US share of world gold fell from 69.4% (1949) to 63.7% (1950), so the dollar gap was already closing.

What financed it, in order of size as far as the sources show: domestic saving and output (aid was under 20% of capital formation), trade credit via the EPU, debt relief, and US aid. Exports of gold are not a source because the gold flowed the other way until 1950.

Test of the owner's premise. "War-torn countries had no money" is wrong in two ways. They created their own money and credit (national currencies, central bank and public bank lending, counterpart funds from aid), and the dollar was the scarce outside currency. The 50 year worry is also wrong, since Europe passed pre-war output in 1949 and Japan in 1951 on these measures.

## 3. The hard money record: panics, deflation and leaving gold

Verdict in one line: gold-era money was not panic-free and was not growth-free, and the 1930s data favour leaving gold early. But the record does not show that "hard money" caused the Depression alone (the Fed's own errors were large) and the 1873 to 1896 deflation came with strong output growth.

### 3.1 Banking panics by era

| Era | What the sources say | Source and tier | Status |
|---|---|---|---|
| National banking era 1863 to 1913 (gold, no central bank until 1914) | Wicker lists three major panics (1873, 1893, 1907) and two incipient ones (1884, 1890). Sprague lists crises in 1873, 1893, 1907, a panic in 1884. Jalil's new chronology marks seven nationwide panics in 1825 to 1929: 1833, 1837, 1839, 1857, 1873, 1893, 1907, so 1884 and 1890 fall out | search summary of Jalil (2015, AEJ Macroeconomics) https://econpapers.repec.org/RePEc:aea:aejmac:v:7y2015:i:3:p:295-330 (T4) | counts depend on the chronology. Paper abstracts only, not opened |
| 1929 to 1933 | A US banking collapse and a national bank holiday in March 1933 | Federal Reserve History https://www.federalreservehistory.org/essays/great-depression (T2) | verified. Count of failed banks not on the page, memory says about 9,000 (unverified) |
| After 1934 (FDIC deposit insurance enacted in response to the early 1930s crisis) | No systematic count was fetched. Insured depositors stopped running, and later episodes (savings and loan 1980s, 2008, 2023) were handled as fiscal rescues rather than classic panics | VoxEU summary of Schularick and co-authors, via search (T4) | qualitative only. Number of nationwide runs after 1934 unverified. The JST database (macrohistory.net) can give a clean count and I did not download it |

Confound to state: the United States had no central bank before 1914, so panics under gold in the national banking era mix gold constraints with a missing lender of last resort.

### 3.2 The 1873 to 1896 deflation

| Measure | Number | Source | Status |
|---|---|---|---|
| Price change | Prices fell about 2% a year from 1866 to 1897 | Beckworth (2007) as summarised on a Substack blog (T5 summary of T4) https://menghu.substack.com/p/an-account-of-the-good-deflation-in-the-american-economy-of-1870s-1890s | secondary, original not opened |
| Real output | Real GNP grew almost 4% a year, 1866 to 1897 | same | secondary |
| Friedman and Schwartz decade | 1869 to 1879 prices fell 3.8% a year, real national product grew 6.8% a year | Mises Institute wiki summarising Friedman and Schwartz (T5 summary of T4) https://wiki.mises.org/wiki/Long_Depression | secondary, advocacy outlet |
| Bordo and Redish | Prices fell from a mix of negative money shocks and positive supply shocks. Money shocks explain very little of output growth or volatility | NBER WP 9520 https://www.nber.org/papers/w9520 (T4) | abstract verified |
| Unemployment in these years | Not fetched. No official series before 1890s. Romer's estimates are the usual source. Memory puts it in the teens in the worst years (1894), unverified | none | gap |
| BLS CPI | Starts 1913. I could not use it for 1873 to 1896 | | gap |

Reading: a falling price level and fast real growth did coexist for decades (good deflation from supply growth). Panics, debt distress for farmers and the 1890s depression also happened (see the Rulebook on debt deflation and Bryan). Both statements hold.

### 3.3 1929 to 1933 and the order of leaving gold

| Item | Number | Source | Status |
|---|---|---|---|
| Money supply | Fell by nearly 30% from fall 1930 to winter 1933 | Federal Reserve History, Great Depression https://www.federalreservehistory.org/essays/great-depression (T2) | verified |
| Prices, Fed reading | Fell by an equivalent amount (about 30% on the page's wording) | same | verified as wording |
| Prices, own calculation | CPI-U annual average 1929: 17.16. 1933: 12.93. Change: minus 24.6%. December to December 1929 to 1933: minus 23.3% | FRED series CPIAUCNS (BLS source, T0/T3) https://fred.stlouisfed.org/series/CPIAUCNS fetched 2026-11-15 | verified |
| Unemployment peak | About 25% in 1933 | Not fetched. FRED UNRATE starts in 1948. Memory, unverified | gap |
| Gold standard link | Fed rate rises of 1928 to 1929 were transmitted abroad because the gold standard linked interest rates and policies | Federal Reserve History | verified |
| Gold and recovery | Eichengreen and Sachs: devaluation helped the countries that did it. Spillovers on others were negative, and a joint devaluation would have sped recovery for all | NBER WP 1498, Nov 1984, published J. Economic History Dec 1985 https://www.nber.org/papers/w1498 (T4) | abstract verified |
| Delay in leaving gold | Bordo: countries that delayed going off gold had weaker output growth, lower exports and lower investment | NBER paper via search summary (T4) | secondary |
| Key numbers (industrial output 1935 against 1929 for Britain, US, France, gold bloc) | Not retrieved. VoxEU column returned HTTP 403 | https://cepr.org/index.php/voxeu/columns/end-gold-standard-and-beginning-recovery-great-depression | gap. Do not quote figures from memory |
| Dates of leaving gold | Britain September 1931, US April 1933, France 1936 | memory | unverified |

What is established: money fell by close to a third, prices fell by about a quarter on the CPI, and the literature ties earlier exits from gold to earlier recovery. What is not in this file: the country-by-country output table. A verifier should get Eichengreen and Sachs (1985) Table 1 or Bernanke (1995) before the chapter prints numbers.

## 4. The other tail: hyperinflation, US inflation by decade, purchasing power and what savers earned

### 4.1 Hyperinflations

| Item | Number | Source | Status |
|---|---|---|---|
| Count in Hanke and Krus table | 56 episodes (Cato Working Paper 8, 2012). Venezuela added in late 2016 as the 57th | Cato working paper page via search results https://www.cato.org/working-paper/world-hyperinflations and the marketmonetarist.com summary https://marketmonetarist.com/2012/10/09/hanke-and-krus-on-world-hyperinflations (T4) | count verified in the summary. The Cato table itself returned HTTP 403 |
| Definition | Cagan rule, price level rising 50% or more in a month | search result, secondary | unverified. Hanke and Krus text not opened |
| Worst: Hungary, July 1946 | Peak about 4.19 x 10^16 percent a month, prices doubling about every 15 hours | planetbanknote.com and other secondary pages restating Hanke and Krus | secondary, matches memory |
| Zimbabwe, November 2008 | About 7.96 x 10^10 percent a month (79.6 billion) | Steve Hanke quoted in search results | secondary |
| Germany, October 1923 | About 29,500% a month. Fifth worst on the table | search result | secondary |
| Yugoslavia, 1993 to 1994 | Hundreds of millions of percent a month. The commonly quoted 313 million was not confirmed | search result | unverified |
| Common cause | Not a clue from these sources. Standard accounts tie them to war, lost output and money-financed deficits. Not tested here | | not tested |

Scale point for the chapter: the best known US-style "mild" inflation (below 10% a year) is a different animal from episodes above 50% a month. Both belong in the chapter, and neither should be used to hide the other.

### 4.2 US inflation by decade

Source: BLS CPI-U not seasonally adjusted, as published on FRED series CPIAUCNS, fetched 2026-11-15 (T3). Latest value used: September 2026 index 336.94. October 2025 is missing from the series (federal shutdown gap), so the year-on-year for September 2026 is used. Calculation by python3 -I from the fetched file, December to December.

| Decade | Average inflation a year | Price level multiple over the decade |
|---|---|---|
| 1913 (annual average) to Dec 1920 | 10.1% | 1.96 |
| 1920s | minus 1.85% | 0.83 |
| 1930s | minus 1.32% | 0.88 |
| 1940s | 5.89% | 1.77 |
| 1950s | 1.77% | 1.19 |
| 1960s | 2.94% | 1.34 |
| 1970s | 8.05% | 2.17 |
| 1980s | 4.48% | 1.55 |
| 1990s | 2.66% | 1.30 |
| 2000s | 2.34% | 1.26 |
| 2010s | 1.74% | 1.19 |
| 2020 to 2025 | 4.46% | 1.24 |

Recent single years, December to December: 2021 7.04%, 2022 6.45%, 2023 3.35%, 2024 2.89%, 2025 2.68%. Twelve months to September 2026: 3.74%. These replace the rounded memory figures in the frame (7.0, 6.5, 3.4, 2.9), which turn out to be right to within 0.1.

Cross-check from a second source: Damodaran's annual series (CPI-based) gives 2021 7.04%, 2022 6.45%, 2023 3.35%, 2024 2.89%, 2025 2.74%. The 2025 value differs by 0.06 point because it is calendar-year rather than December to December.

### 4.3 The dollar's purchasing power

| Window | Price multiple | Purchasing power left | Loss | Average a year |
|---|---|---|---|---|
| 1913 average to Sep 2026 | 34.1 | 2.9 cents per dollar | 97.1% | about 3.2% |
| 1971 average to Sep 2026 | 8.3 | 12.0 cents | 88.0% | about 3.9% |

So the "dollar lost 97%" claim is arithmetically true for 1913 to 2026 on CPI (and "lost about 88% since 1971" is the like claim). It is a statement about cash earning nothing.

### 4.4 What a saver earned: Treasury bills after inflation

Source: Damodaran, "Historical Returns on Stocks, Bonds and Bills", updated 2026-01-01, sheet "Returns by year" (3-month T-bill return, series from FRED) and his CPI inflation sheet. https://pages.stern.nyu.edu/~adamodar/pc/datasets/histretSP.xls (T4 compilation of T3 data). Pre-tax, rolled bills. The series starts in 1928, so a 1913 window is not available here. Calculation by python3 -I.

| Window | Bills, nominal, $1 grows to | CPI multiple | Real multiple | Real return a year |
|---|---|---|---|---|
| 1928 to 2025 | 25.78 | 18.74 | 1.38 | 0.33% |
| 1971 to 2025 | 10.95 | 8.15 | 1.34 | 0.54% |
| 1971 to 1980 | 1.92 | 2.17 | 0.89 | minus 1.18% |
| 1980 to 2025 | 6.34 | 4.23 | 1.50 | 0.88% |
| 2009 to 2021 | 1.06 | 1.33 | 0.80 | minus 1.67% |
| 2022 to 2025 | 1.18 | 1.16 | 1.01 | 0.32% |

Years with a negative real bill return: 40 of 98 from 1928 to 2025. Since 1971 the list is 1973 to 1975, 1977 to 1980, 2002 to 2005, 2009 to 2017, 2019 to 2022.

Reading: a saver who rolled Treasury bills since 1971 roughly kept pace with prices and gained about a third in real terms before tax, with two long stretches of loss (the 1970s and 2009 to 2021). A saver holding cash or zero-rate deposits lost the whole 88%. "The dollar lost 97%" is true of the unit and misleading about a saver who earned interest. Tax on the interest would pull the bill result lower and is not modelled here.

## 5. The inflation tax in dollars

Inputs, all fetched 2026-11-15. Currency in circulation: Federal Reserve H.6 series MCU.M, monthly, via DBnomics mirror https://api.db.nomics.world/v22/series/FED/H6_H6_M2/MCU.M (T0). M2: FRED M2SL https://fred.stlouisfed.org/series/M2SL (T0). Inflation: December to December CPI-U (section 4). Estimate method, python3 -I: tax on cash in a year equals average currency stock times that year's inflation rate. It is the purchasing power lost by holders of non-interest-bearing currency, not money that the state received.

| Year | Average US currency, $ bn | Inflation Dec to Dec | Loss to holders of cash, $ bn | Average M2, $ bn | M2 less currency, $ bn |
|---|---|---|---|---|---|
| 2019 | 1,666 | 2.29% | 38 | 14,864 | 13,198 |
| 2020 | 1,854 | 1.36% | 25 | 17,697 | 15,843 |
| 2021 | 2,069 | 7.04% | 146 | 20,546 | 18,477 |
| 2022 | 2,177 | 6.45% | 141 | 21,588 | 19,411 |
| 2023 | 2,235 | 3.35% | 75 | 20,851 | 18,616 |
| 2024 | 2,262 | 2.89% | 65 | 21,109 | 18,847 |
| 2025 | 2,307 | 2.68% | 62 | 21,937 | 19,630 |

2021 to 2025 total: about $488 billion on cash alone. This agrees with the frame's first pass (about $425 billion over 2021 to 2024, then 2025 adds $62 billion).

Latest currency: $2,397 billion in September 2026 (H.6 via DBnomics, latest in the series).

Share held abroad. Federal Reserve Board staff estimate that over $1 trillion of US banknotes were held by foreigners in the first quarter of 2025, roughly half of banknotes outstanding. The note says the true amount is unknown and the estimate is probably conservative, citing Judson (2017). Source: FEDS Notes, July 18, 2025 https://www.federalreserve.gov/econres/notes/feds-notes/the-international-role-of-the-u-s-dollar-2025-edition-20250718.html (T2). So about half of the cash inflation loss in the table lands on foreign holders. For 2021 to 2025 that is roughly $240 billion of the $488 billion (own arithmetic, rough).

Bank reserves. Reserve balances with Federal Reserve Banks: $2,961 billion on 2026-11-11, with annual averages of about $1,555 billion in 2019, $3,884 billion in 2021, $3,367 billion in 2024 and $3,195 billion in 2025 (FRED WRESBAL, weekly, T0) https://fred.stlouisfed.org/series/WRESBAL. Reserves are paid interest by the Fed, so they are not a non-interest holding. They matter for the Fed's own accounts below.

Seigniorage and the Fed's remittances.

| Year | Reserve Bank net result from operations | Remittance to Treasury | Source |
|---|---|---|---|
| 2025 | loss of $18.7 bn | none paid. Deferred asset rose by $21.2 bn | Combined Federal Reserve Banks financial statements 2025 https://www.federalreserve.gov/aboutthefed/files/combinedfinstmt2025.pdf (T0/T2), verified from the file |
| 2024 | loss of $77.6 bn | none paid. Deferred asset rose by $79.1 bn | same |
| Deferred asset, end 2025 and end 2024 | $243.5 bn and $216.0 bn | the amount the Fed must earn before remittances resume | same |
| 2022 to 2023 | losses began in September 2022 | | Fed statements, not opened here. Gap |
| 2019 to 2021 | remittances of roughly $55 bn to $110 bn a year | | memory, unverified |

Interest income 2025 was $155.3 billion against interest expense of about $167.4 billion (Bloomberg Law summary via search, T4). Reading: for most of the 2010s and 2020 to 2021 the Fed's holdings of Treasuries and mortgage bonds produced a profit that went to the Treasury, which is the old meaning of seigniorage. Since 2022 interest paid on reserves exceeds what the portfolio earns, so seigniorage to the Treasury is nil. The inflation tax on cash holders did not stop, but the Treasury has not received a Fed remittance since 2022. The holder of cash lost, and the Treasury did not collect it through the Fed. Banks that held reserves were paid.

A simple estimate of what 3% inflation costs.

| Holder | Base, 2025 average | Cost at 3% a year | Note |
|---|---|---|---|
| Currency | $2,307 bn | $69 bn | about half held abroad, so about $35 bn falls on US holders |
| Checkable deposits (FRED DEMDEPSL, demand deposits and other checkable) | $5,733 bn | $172 bn if they pay nothing | many pay a little, so this is a ceiling |
| Currency plus checkable deposits | $8,040 bn | $241 bn | upper bound for non-interest money |
| All M2 less currency | $19,630 bn | $589 bn if they paid nothing | not realistic, since savings and money funds pay interest. The same year bills paid about 4.2% on average (FRED TB3MS) |

Honest read. The cash and zero-interest loss is real and measured in the tens to low hundreds of billions a year. It falls on holders of non-interest money, about half of whom are abroad for banknotes. Most of the large deposit base earns something. The gap between deposit rate and policy rate, kept by banks, is a second collector that is not state money. Mid-2019 data for the own rate on M2 (FRED M2OWN, discontinued after June 2019) was 0.54%. I did not fetch current average deposit rates (FDIC national rates). Treat the deposit tax as an upper bound until that is done.

## 6. Growth before and after 1971 and Malaysia

### 6.1 World

Source: World Bank WDI via API, fetched 2026-11-15 (T3/T4): GDP per person in constant 2015 US dollars (NY.GDP.PCAP.KD) and population (SP.POP.TOTL). Poverty from Our World in Data using World Bank Poverty and Inequality Platform, $3.00 a day at 2021 prices (T4) https://ourworldindata.org/grapher/share-of-population-in-extreme-poverty.

| Year | World GDP per person, 2015 US$ | World population | Share in extreme poverty |
|---|---|---|---|
| 1950 | n/a in WDI | 2.49 bn (OWID/UN series) | about half (OWID text, older Bourguignon and Morrisson basis, not the same line as later years) |
| 1960 | 3,667 | n/a | n/a |
| 1971 | 5,061 | 3.76 bn | not available. OWID's World Bank line starts in 1981 and the earlier series uses a different method. The 1970 value was not retrieved |
| 1990 | 6,804 | 5.30 bn | 43.4% |
| 2000 | n/a | 6.17 bn | 36.2% |
| 2010 | n/a | 7.02 bn | 21.0% |
| 2020 | n/a | 7.89 bn | 11.4% |
| 2024 | 11,894 | 8.14 bn | 10.1% |
| 2025 | 12,131 | 8.22 bn | n/a |

Growth of world GDP per person: 1960 to 1971, 2.97% a year. 1971 to 2024, 1.63% a year. 1971 to 2000, 1.54% a year. Own calculation from the WDI series. Caution: the 1960s rate is faster than any later period. Post-1971 growth is not faster than the Bretton Woods period on this measure. The poverty fall is the strong result after 1990. Population doubled from 3.76 billion to 8.14 billion (2.2 times) between 1971 and 2024.

### 6.2 United States incomes against productivity

Sources: FRED MEFAINUSA672N real median family income (Census, 2025 dollars, C-CPI-U), and OPHNFB real output per hour, nonfarm business (BLS index), annual averages. https://fred.stlouisfed.org/series/MEFAINUSA672N and https://fred.stlouisfed.org/series/OPHNFB (T0/T3).
| Measure | 1971 | 2025 | Change | Average a year |
|---|---|---|---|---|
| Real median family income, 2025 dollars | $68,320 | $110,500 | plus 61.7% | 0.89% |
| Real output per hour, nonfarm business (index 2017 = 100, annual average) | 43.1 | 118.6 | plus 175% | 1.89% |

Peak to peak check: family income was $75,760 in 1979, $88,880 in 2000, $91,370 in 2007, $106,800 in 2019. Productivity grew about twice as fast as median family income since 1971. Caveats: income is deflated with the C-CPI-U and productivity uses the BLS output price measure, so some of the gap is deflator choice. Median family income is pre-tax cash income and excludes employer health benefits. Household income (series MEHOINUSA672N) starts only in 1984 (1990: $67,050, 2025: $87,460), so it cannot be used for 1971. The gap is real, but its size depends on measure.

### 6.3 Malaysia

Source: World Bank WDI via API, fetched 2026-11-15: GDP per person constant 2015 US$ (NY.GDP.PCAP.KD), CPI inflation (FP.CPI.TOTL.ZG), deposit interest rate (FR.INR.DPST), broad money in ringgit (FM.LBL.BMNY.CN).

| Year | GDP per person, 2015 US$ |
|---|---|
| 1971 | 1,993 |
| 1980 | 3,216 |
| 1990 | 4,185 |
| 1997 | 6,481 |
| 1998 | 5,858 |
| 2010 | 8,119 |
| 2019 | 10,903 |
| 2020 | 10,171 |
| 2024 | 11,884 |
| 2025 | 12,352 |

GDP per person grew 6.2 times from 1971 to 2025, which is 3.44% a year. The 1998 crisis year cost 9.6% (6,481 to 5,858). The 2020 year cost 6.7%.

Inflation. Ringgit prices rose 5.67 times from 1971 to 2025 (chained from yearly CPI, own calculation), so a ringgit kept 17.6% of its 1971 purchasing power. Peak annual inflation 17.3% in 1974, trough minus 1.1% in 2020. 1973 was 10.6%. 1998 was 5.3%. 2022 was 3.4%. 2024 was 1.8%.

| Period | Average CPI inflation | Average deposit rate | Average real deposit rate |
|---|---|---|---|
| 1971 to 1980 | 5.98% | 5.55% | minus 0.44% |
| 1981 to 1990 | 3.25% | 6.94% | 3.69% |
| 1991 to 2000 | 3.55% | 6.38% | 2.82% |
| 2001 to 2010 | 2.20% | 2.97% | 0.77% |
| 2011 to 2020 | 1.86% | 2.91% | 1.05% |
| 2021 to 2025 | 2.31% | 2.25% | minus 0.07% |

Broad money (M2) grew from RM5.5 billion in 1971 to RM2,441 billion in 2025, a 441 times increase. This is a raw multiple and says nothing without output (GDP per person up 6.2 times, population growth, prices up 5.67 times, and much of money growth is the economy becoming monetised and bank-intermediated). Malaysian currency in circulation was not retrieved. Bank Negara Malaysia statistics did not load in this session. This is a gap for the ringgit inflation tax (frame C1). A rough ringgit tax on currency cannot be computed from what was fetched. Treat the deposit rows above as the saver view: in 1971 to 1980 and 2021 to 2025 the average deposit was slightly behind inflation, and in 1981 to 2000 it beat inflation by about 3 points. The deposit series is the IMF/WDI deposit rate and its definition (12-month fixed or savings) was not checked.

Malaysia's GDP per person grew faster than the world average (3.44% a year against 1.63% from 1971 to 2024 or 2025, own calculation), and the weak real deposit returns came in the 1970s and again in 2021 to 2025.

## 7. Orchestrator additions: interest against growth, wealth shares, banking crises by regime

### 7.1 C3: did US federal interest exceed growth? (the Ponzi test)

Sources: average interest rate on total US interest-bearing debt, Treasury FiscalData API, rate at the end of each fiscal year in September (T0) https://fiscaldata.treasury.gov/datasets/average-interest-rates-treasury-securities/ . Nominal GDP: World Bank WDI, current US$ (T3, 1960 on). 10-year Treasury yield: Federal Reserve H.15 via DBnomics (T0, from 1962). The Treasury average-rate file starts in 2001, so for 1946 to 2000 I used the 10-year yield as a proxy. The proxy is not the same as the average rate on the debt stock, which lags market rates. Calculation by python3 -I.

Average rate on all US interest-bearing debt against growth of nominal GDP (calendar year):

| Year | Average rate on debt | Nominal GDP growth | Rate above growth? |
|---|---|---|---|
| 2001 | 6.06% | 3.23% | yes |
| 2002 | 5.30% | 3.28% | yes |
| 2003 | 4.65% | 4.83% | no |
| 2004 to 2007 | 4.52% to 5.01% | 4.77% to 6.73% | no |
| 2008 | 4.19% | 2.04% | yes |
| 2009 | 3.35% | minus 1.98% | yes |
| 2010 to 2019 | 2.23% to 3.05% | 2.79% to 5.33% | no |
| 2020 | 1.77% | minus 0.76% | yes |
| 2021 | 1.61% | 11.0% | no |
| 2022 | 2.07% | 9.82% | no |
| 2023 | 2.97% | 6.74% | no |
| 2024 | 3.32% | 5.34% | no |
| 2025 | 3.36% | 5.02% | no |
| Sep 2026 | 3.53% | not yet published | n/a |

Result: in 2001 to 2025 the average rate was above nominal growth in 5 years of 25 (2001, 2002, 2008, 2009, 2020). In every other year growth was above the rate.

Long record by proxy (10-year yield above nominal GDP growth, 1962 to 2025, 64 years): above in 24 years and below in 40. The 24 years are 1970, 1980 to 1997, 2001, 2002, 2008, 2009, 2020. So the interest-above-growth years cluster in 1980 to 1997 (the post-Volcker high real rates), not in the 1946 to 1979 period. Years 1946 to 1961 were not computed because the sources used here start in 1960 (GDP) and 1962 (yield), so I cannot confirm the common statement that interest was below growth in most years from 1946 to 1979. The 1962 to 1979 data fit it (only 1970 was above).

Caveats. The 10-year yield is a market rate on new borrowing and not the cost of the old stock. Nominal growth includes inflation, which is itself the inflation tax at work: inflation lowers the real burden of fixed-rate debt. The test says the debt does not need ever-growing real income to roll when r is below g. It does not say that r stays below g, and 1980 to 1997 shows the opposite.

### 7.2 C4: wealth shares and banking crises by regime

Not retrieved. The World Inequality Database (wid.world) loaded as a JavaScript application with no data in the page, and the JST Macrohistory site (macrohistory.net) returned a page without a direct data link. Banking crisis counts by regime were therefore not tabulated. What the search did return: the JST database covers 17 advanced economies since 1870, and a VoxEU summary says banking crises were neither as frequent (at least before 1980) nor as dramatic after 1945 as before. Both are T4 secondary statements. The verifier should download the JST file and WID top 1% and top 10% wealth series directly. Frame claim "inequality fell under Bretton Woods and rose after 1980" is not confirmed or denied here.

### 7.3 C1 in ringgit

Not computed. See section 6.3. Malaysian currency in circulation was not retrieved. The deposit rate against inflation by period is in 6.3.

## Claims table

| id | claim | tier | status | source URL | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R11A-01 | US held 59.5% of reported non-USSR official gold at end-1945 ($20,083m of $33,770m) | T2 | verified | https://fraser.stlouisfed.org/files/docs/publications/FRB/1950s/frb_121951.pdf | 1951-12 | 1945-12 | A different official table with a world total including Soviet gold or other definitions |
| R11A-02 | US share peaked near 70% (69.9% end-1948, 69.4% end-1949), not 75% | T2 | verified | https://fraser.stlouisfed.org/files/docs/publications/FRB/1950s/frb_121951.pdf | 1951-12 | 1949-12 | An official series that gives a 75% share on a stated basis, for example gold held by Western countries only |
| R11A-03 | US gold peaked at about 701.8 million oz (21,828 t) at end-1949, falling to 20,279 t at end-1950 | T2 | verified (peak month unverified) | https://fraser.stlouisfed.org/files/docs/publications/FRB/1950s/frb_121951.pdf | 1951-12 | 1950-12 | Monthly data showing a higher month |
| R11A-04 | US Treasury and Fed Banks gold was $20,014m at Dec 1945 and $24,299m at May 1949 | T0 | verified | https://fred.stlouisfed.org/data/M1437BUSM144NNBR | NBER series, fetched 2026-11-15 | 1949-05 | A revision of the NBER series |
| R11A-05 | Marshall Plan gave about $13 bn to Western Europe 1948 to 1951, most of it grants | T4 | verified | https://eh.net/encyclopedia/the-marshall-plan-1948-1951/ | undated page, fetched 2026-11-15 | 1951 | An official ECA total far from $12 bn to $13.3 bn |
| R11A-06 | Marshall aid was at most 2.5% of recipients' GNP and under 20% of their capital formation | T4 | verified | https://eh.net/encyclopedia/the-marshall-plan-1948-1951/ | undated | 1948 to 1951 | National accounts showing a higher share |
| R11A-07 | Marshall total was about 5% of one year's 1948 US GDP | T4 | verified (secondary) | https://www.nber.org/papers/w22557.pdf | 2016 | 1948 | 1948 US GDP from BEA giving a different ratio |
| R11A-08 | London Debt Agreement 1953 cut German pre- and post-war debt from DM 29.7 bn to DM 14.5 bn, service capped at 3% of exports | T4 | verified | https://www.nber.org/papers/w22557.pdf | 2016 | 1953 | Bundesbank 1959 report with different totals |
| R11A-09 | 1948 West German currency reform converted most savings at 6.5 DM per 100 Reichsmarks and wiped out domestic public debt | T4 | verified | https://www.nber.org/papers/w22557.pdf | 2016 | 1948 | Primary text of the currency reform laws |
| R11A-10 | OEEC industrial output passed its 1938 level in 1949 (index 82 in 1938, 90 in 1949, 1950 = 100) | T2 | verified | https://history.state.gov/historicaldocuments/frus1952-54v06p1/d219 | 1954 | 1949 | OEEC original series with a different base |
| R11A-11 | Japan's real expenditure passed its 1934-36 level by 1951, after the Dodge Plan | T2 | verified (expenditure measure) | https://www.mof.go.jp/english/pri/publication/policy_1945-1971/Part1-Chapter2.pdf | undated MoF history | 1951 | Japan industrial production index showing a later date |
| R11A-12 | Bretton Woods fixed the dollar to gold at $35 and other currencies to the dollar | T2 | verified | https://www.federalreservehistory.org/essays/bretton-woods-created | undated | 1944 to 1971 | IMF Articles text |
| R11A-13 | DeLong and Eichengreen: Marshall aid was too small to speed recovery by funding investment, conditions mattered | T4 | verified | https://nber.org/papers/w3899 | 1991-11 | 1948 to 1951 | Studies finding large investment effects |
| R11A-14 | US GARIOA and EROA aid to Japan was about $1.86 bn by FY1951 | T2 | unverified (search summary) | https://www.mof.go.jp/english/pri/publication/policy_1945-1971/Part1-Chapter1.pdf | undated | 1951 | MoF table with a different total |
| R11A-15 | Fed: money supply fell nearly 30% from fall 1930 to winter 1933 | T2 | verified | https://www.federalreservehistory.org/essays/great-depression | undated | 1933 | M2 or M1 series showing a much smaller fall |
| R11A-16 | US CPI fell 24.6% 1929 to 1933 on annual averages (17.16 to 12.93) | T3 | verified | https://fred.stlouisfed.org/series/CPIAUCNS | fetched 2026-11-15 | 1933 | BLS table with different base values |
| R11A-17 | Eichengreen and Sachs: devaluation helped the countries that did it, joint devaluation would have helped all | T4 | verified (abstract) | https://www.nber.org/papers/w1498 | 1984-11 | 1930s | Later work showing no timing effect |
| R11A-18 | Country output numbers for early versus late leavers of gold | T4 | gap, not retrieved | https://cepr.org/index.php/voxeu/columns/end-gold-standard-and-beginning-recovery-great-depression | n/a | n/a | n/a |
| R11A-19 | National banking era panics: three major (1873, 1893, 1907) and two incipient (1884, 1890) on Wicker's list, seven nationwide panics 1825 to 1929 on Jalil's | T4 | verified (abstract level) | https://econpapers.repec.org/RePEc:aea:aejmac:v:7y2015:i:3:p:295-330 | 2015 | 1873 to 1907 | A count that differs under a stated definition |
| R11A-20 | Prices fell about 2% a year and real GNP grew almost 4% a year 1866 to 1897 | T4 | secondary | https://menghu.substack.com/p/an-account-of-the-good-deflation-in-the-american-economy-of-1870s-1890s | undated | 1866 to 1897 | Beckworth (2007) original or Balke and Gordon real GNP series |
| R11A-21 | Bordo and Redish: money shocks explain little of output growth in 1870 to 1913 | T4 | verified (abstract) | https://www.nber.org/papers/w9520 | 2003 | 1870 to 1913 | Studies with larger money effects |
| R11A-22 | Hanke and Krus count 56 hyperinflations, 57 with Venezuela | T4 | verified (summary) | https://marketmonetarist.com/2012/10/09/hanke-and-krus-on-world-hyperinflations | 2012-10 | 2016 | The Cato table text |
| R11A-23 | Hungary 1946 peak about 4.19 x 10^16 percent a month | T4 | secondary | https://learn.planetbanknote.com/hyperinflation-hungary/ | undated | 1946-07 | Cato table |
| R11A-24 | US CPI decade inflation: 1970s 8.05%, 1980s 4.48%, 1990s 2.66%, 2010s 1.74% a year | T3 | verified | https://fred.stlouisfed.org/series/CPIAUCNS | fetched 2026-11-15 | 2025-12 | BLS CPI-U table December to December differing by more than 0.05 point |
| R11A-25 | US CPI Dec to Dec: 2021 7.04%, 2022 6.45%, 2023 3.35%, 2024 2.89%, 2025 2.68% | T3 | verified | https://fred.stlouisfed.org/series/CPIAUCNS | fetched 2026-11-15 | 2025-12 | BLS release |
| R11A-26 | Dollar kept 2.9% of its 1913 purchasing power and 12.0% of its 1971 power by Sep 2026 | T3 | verified | https://fred.stlouisfed.org/series/CPIAUCNS | fetched 2026-11-15 | 2026-09 | CPI series revision |
| R11A-27 | Rolled 3-month T-bills grew 10.95x from 1971 to 2025 against CPI 8.15x, real 1.34x or 0.54% a year, pre-tax | T4 | verified | https://pages.stern.nyu.edu/~adamodar/pc/datasets/histretSP.xls | 2026-01-01 | 2025 | Fed H.15 bill series compounded differently |
| R11A-28 | Bills had negative real returns in 40 of 98 years 1928 to 2025 and fell 11% in real terms in 1971 to 1980 | T4 | verified | https://pages.stern.nyu.edu/~adamodar/pc/datasets/histretSP.xls | 2026-01-01 | 2025 | As above |
| R11A-29 | Cash inflation loss was about $146 bn (2021), $141 bn (2022), $75 bn (2023), $65 bn (2024), $62 bn (2025) | T3 | verified (own estimate) | https://api.db.nomics.world/v22/series/FED/H6_H6_M2/MCU.M | fetched 2026-11-15 | 2025-12 | Different averaging of the currency stock changes figures by about 2% |
| R11A-30 | Foreigners held over $1 trillion of US banknotes, about half of those outstanding, in 2025 Q1 | T2 | verified | https://www.federalreserve.gov/econres/notes/feds-notes/the-international-role-of-the-u-s-dollar-2025-edition-20250718.html | 2025-07-18 | 2025-Q1 | Fed note with a different estimate |
| R11A-31 | Federal Reserve Banks lost $18.7 bn from operations in 2025 and $77.6 bn in 2024, and the deferred asset was $243.5 bn at end 2025 | T0 | verified | https://www.federalreserve.gov/aboutthefed/files/combinedfinstmt2025.pdf | 2026-03 | 2025-12 | Revised statements |
| R11A-32 | Fed remittances to Treasury were about $55 bn to $110 bn a year in 2019 to 2021 | T2 | unverified memory | https://www.federalreserve.gov/aboutthefed/audited-annual-financial-statements.htm | n/a | 2019 to 2021 | Fed annual statements for those years |
| R11A-33 | Reserve balances were $2.96 trillion on 2026-11-11 | T0 | verified | https://fred.stlouisfed.org/series/WRESBAL | 2026-11-11 | 2026-11-11 | H.4.1 release |
| R11A-34 | 3% inflation costs about $69 bn a year on US currency and up to $241 bn on currency plus checkable deposits, if they pay nothing | T3 | verified (own estimate, upper bound) | https://fred.stlouisfed.org/series/DEMDEPSL | fetched 2026-11-15 | 2025 | Average rates paid on checking deposits showing meaningful interest |
| R11A-35 | World GDP per person grew 2.97% a year 1960 to 1971 and 1.63% a year 1971 to 2024 | T3 | verified | https://data.worldbank.org/indicator/NY.GDP.PCAP.KD | fetched 2026-11-15 | 2024 | World Bank series revision |
| R11A-36 | World extreme poverty share (3 dollars a day, 2021 prices) 43.4% in 1990 and 10.1% in 2024 | T4 | verified | https://ourworldindata.org/grapher/share-of-population-in-extreme-poverty | fetched 2026-11-15 | 2024 | New World Bank price base |
| R11A-37 | Extreme poverty about half of world in 1950 | T4 | secondary | https://ourworldindata.org/a-history-of-global-living-conditions | undated | 1950 | Bourguignon and Morrisson direct table |
| R11A-38 | World population 3.76 bn (1971) and 8.14 bn (2024) | T3 | verified | https://data.worldbank.org/indicator/SP.POP.TOTL | fetched 2026-11-15 | 2024 | UN WPP |
| R11A-39 | US real median family income rose 61.7% from 1971 to 2025 while nonfarm productivity rose 175% | T3 | verified | https://fred.stlouisfed.org/series/MEFAINUSA672N | fetched 2026-11-15 | 2025 | Different deflator closing the gap |
| R11A-40 | Malaysia GDP per person rose 6.2 times 1971 to 2025 (1,993 to 12,352 in 2015 US dollars) | T3 | verified | https://data.worldbank.org/indicator/NY.GDP.PCAP.KD?locations=MY | fetched 2026-11-15 | 2025 | DOSM national accounts |
| R11A-41 | Malaysia CPI inflation peaked at 17.3% in 1974 and ringgit prices rose 5.67 times 1971 to 2025 | T3 | verified | https://data.worldbank.org/indicator/FP.CPI.TOTL.ZG?locations=MY | fetched 2026-11-15 | 2025 | DOSM CPI |
| R11A-42 | US average interest rate on debt was above nominal GDP growth in 5 of 25 years 2001 to 2025 | T0 | verified | https://fiscaldata.treasury.gov/datasets/average-interest-rates-treasury-securities/ | fetched 2026-11-15 | 2025 | BEA nominal GDP annual growth with different timing |
| R11A-43 | The 10-year yield was above nominal GDP growth in 24 of 64 years 1962 to 2025, clustered in 1980 to 1997 (proxy) | T0 | verified (proxy) | https://api.db.nomics.world/v22/series/FED/H15/RIFLGFCY10_N.A | fetched 2026-11-15 | 2025 | Average rate on the debt stock for those years |
| R11A-44 | Top 1% and 10% wealth shares and crisis counts by regime | T4 | gap, not retrieved | https://wid.world | n/a | n/a | n/a |
| R11A-45 | Malaysia currency in circulation and ringgit inflation tax | T0 | gap, not retrieved | https://www.bnm.gov.my | n/a | n/a | n/a |
