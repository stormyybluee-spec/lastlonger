# R14A data lane: H1 and H4 (started 2026-11-16)

Status key: verified = I opened the source and saw it. secondary = reliable summary seen only via search. Nothing marked memory is printed.
Owner points are treated as hypotheses, not facts.

## 1. Crises by era (H4)

Source: Bordo, Eichengreen, Klingebiel, Martinez-Peria, "Is the crisis problem growing more severe?", Economic Policy 16(32), 2001. Opened the full text (NBER-hosted copy via typeset.io) https://typeset.io/pdf/is-the-crisis-problem-growing-more-severe-52qyneo06w.pdf . Status verified.

| era | crises as % of country-years (21 country sample, counting successive events separately) | note |
|---|---|---|
| 1880 to 1913 (gold standard) | 6.4 | |
| 1919 to 1939 | 13.4 | |
| 1945 to 1971 (Bretton Woods) | 7.9 | |
| 1973 to 1997 | 10.7 | |

Headline measure (first year of each crisis only, excluding recovery years): 1880 to 1913 is 4.9 percent, post-1972 is 12.2 percent for 56 countries and 8.8 percent for the 21 country sample. The authors say post-1973 frequency is "double" Bretton Woods and the gold standard on the headline measure, and that the contrast "is less pronounced" on the alternative count (7.9 to 10.7, a rise of about a third). They flag that the 56 country sample adds emerging markets after 1971, which biases the later figure up. Currency crises explain most of the post-1973 rise, and banking and twin crises rose between sub-periods. The authors also find little evidence that crises grew longer or output losses grew larger.
Against H4 framing: the "after 1971" era is more crisis prone than the gold era or Bretton Woods, on either count. For: nothing here shows a benefit, only the cost side.

## 2. Credit and money under gold and after: JST Macrohistory Database (H1, H4)

Source: Jorda-Schularick-Taylor Macrohistory Database, Release 6, 18 advanced economies, 1870 to 2020, https://www.macrohistory.net/database/ . I downloaded the file and computed the figures below with python3 -I (my own calculation, not a published table). Status verified for the raw data, and the averages are my arithmetic.
Variables: tloans (total bank loans), money (broad money), gdp, cpi, crisisJST. Averages are simple means across countries of the figure for that year (unweighted). "Mean" means the 18-country average (17 in 1913 and 2020 where one is missing).

Bank loans to GDP, percent

| year | US | 18-country mean | era |
|---|---|---|---|
| 1900 | 33.7 | 42.5 | classical gold |
| 1913 | 43.3 | 58.1 | classical gold |
| 1929 | 47.6 | 51.8 | interwar |
| 1950 | 24.0 | 34.6 | start of Bretton Woods |
| 1960 | 37.9 | 43.4 | |
| 1970 | 47.7 | 53.4 | end of Bretton Woods |
| 1980 | 53.4 | 61.4 | |
| 1990 | 54.6 | 78.8 | |
| 2000 | 50.4 | 85.6 | |
| 2007 | 62.0 | 110.9 | |
| 2020 | 69.5 | 111.9 | |

Broad money to GDP, percent: US 60.0 (1950), 56.0 (1970), 53.9 (1980), 46.7 (2000), 84.6 (2020). Mean of countries 55.8 (1950), 55.5 (1970), 67.3 (2000), 113.0 (2020).

Reading for H1: under the gold link and then Bretton Woods, bank credit did grow fast, but from a low postwar base. Loans to GDP in 1970 (mean 53.4) was still BELOW its 1913 level (58.1). Credit to GDP only passed its 1913 level in the 1980s (mean 61.4 in 1980, 78.8 in 1990). After 1971 it roughly doubled again by 2007. So gold and capital controls coincided with a lid on the credit to GDP ratio, but growth of loans in the Bretton Woods years was not slow. A US-only reading is weaker evidence for the lid: US loans to GDP in 1970 (47.7) already exceeded 1913 (43.3).

Growth of money and loans, percent per year, mean across countries and years (nominal)

| era | broad money | bank loans | US money | US loans |
|---|---|---|---|---|
| 1880 to 1913 | 4.85 | 6.13 | 6.33 | 6.87 |
| 1950 to 1970 | 9.66 | 12.79 | 6.09 | 10.96 |
| 1971 to 1990 | 12.84 | 14.15 | 8.79 | 9.79 |
| 1991 to 2019 | 5.58 | 5.24 | 5.43 | 5.09 |

Real (minus CPI inflation) loan growth: 5.5 (1880 to 1913), 9.0 (1950 to 1970), 5.8 (1971 to 1990), 3.3 (1991 to 2019). US real loans 6.95, 8.58, 3.79, 2.84.
Against H1 and for a contrary reading: the fastest real credit growth in the sample was under Bretton Woods (1950 to 1970), not after 1971. Caveat: the 1950 start is a postwar low after wartime controls and debt, so a rebound is built in. Credit to GDP growth after 1990 was slower in per-year terms but from a higher base (the ratio kept rising because GDP growth was slower).

Inflation, percent per year, from JST cpi (mean of yearly changes)

| era | 18-country mean | median | US |
|---|---|---|---|
| 1880 to 1913 | 0.49 | 0.30 | -0.00 |
| 1950 to 1970 | 3.77 | 3.11 | 2.38 |
| 1971 to 1982 | 10.37 | 9.37 | 7.50 |
| 1983 to 2019 | 2.69 | 2.17 | 2.57 |
| 2020 only (JST ends here) | 0.40 | 0.41 | 1.25 |

For 2021 to 2025 see the World Bank/IMF rows below. Note prices were roughly flat over the gold standard (US 0.0 per year) and the post-1983 period is higher than gold but lower than the 1970s.

JST systemic banking crisis flag (country-years flagged out of country-years): 1880 to 1913 26 of 612 (4.2 percent), 1919 to 1939 27 of 378 (7.1), 1945 to 1971 0 of 486 (0.0), 1973 to 2017 25 of 810 (3.1). JST's banking crisis list is narrower than BEKM's (no banking crisis in these 18 rich countries between 1945 and 1971 in JST, consistent with BEKM's finding that Bretton Woods suppressed banking crises). The BEKM figure of 7.9 percent for Bretton Woods is mostly currency crises.

Real GDP per person growth, JST (Maddison-based series), percent per year, mean across 18 countries: 1880 to 1913 1.55 (US 1.90), 1950 to 1973 3.96 (US 2.67), 1974 to 1990 2.13 (US 1.98), 1991 to 2019 1.47 (US 1.44).
Reading for H4: the rich world grew fastest during Bretton Woods, which includes postwar catch-up, and slower after 1971. That cuts against "the world after 1971 exists to let productivity advance" for rich countries, though catch-up can explain much of it.

## 3. US gold stock against foreign dollar claims (H1, Triffin problem)

Gold stock source: Economic Report of the President 1972, Table B-92 "U.S. reserve assets, 1946-71" (Treasury and Federal Reserve data), https://fraser.stlouisfed.org/docs/publications/ERP/1972/ERP_1972.pdf . Opened and read. Status verified. Values are end of year, millions of dollars at $35 per ounce (from Jan 1934, $35 an ounce, so tonnes = dollars / 35 x 31.1035 / 1000, checked below).
Foreign claims source: Annual Report of the Secretary of the Treasury 1971, Table 95 "U.S. liquid liabilities to foreigners, fiscal years 1958-71", https://fraser.stlouisfed.org/files/docs/publications/treasar/AR_TREASURY_1971_2.pdf . Opened and read. Status verified. These are at the END OF JUNE (fiscal year), so they do not line up exactly with year-end gold.

| date | US gold stock, $ million (ERP 1972) | liquid claims of foreign official institutions, $ million (Treasury, June) | all foreign liquid claims, $ million (June) |
|---|---|---|---|
| 1949 | 24,563 | not found | not found |
| 1960 | 17,804 | 10,482 | 20,472 |
| 1964 | 15,471 | 14,168 | 26,478 |
| 1965 | 13,806 | 14,456 (June 1965 row, see note) | 28,086 or 28,819 (table has two 1965 rows, one on a changed basis) |
| 1967 | 12,065 | 14,093 | 29,820 |
| 1968 | 10,892 | 12,101 | 32,514 |
| 1970 | 11,072 | 15,297 | 43,375 |
| June 1971 | 10,507 (July 10,453, Dec 10,206) | 30,840 | 61,393 |

Reading. Total liquid claims of all foreigners passed the gold stock by 1960 to 1961 (20.5 against 17.8, then 21.3 against 16.9 at end 1961). Official claims alone passed gold at about 1965 to 1967 (June 1967 official 14.1 against Dec 1967 gold 12.1, and the Feb 1968 Congressional hearing cites foreign official dollar holdings of $15 billion at end September 1967). By June 1971 official claims were about three times the gold stock. The official series dipped in 1968 to 1969 because the Treasury moved some claims into "banks and other foreigners" (Eurodollar related changes), so do not read the dip as relief.
Caveat for the story: in 1961 President Kennedy's message (quoted in the 1968 hearing) said the $17.5 billion gold reserve was "more than 1 1/2 times foreign official dollar holdings", so for the first half of the 1960s the US was still covered on the official measure.
Gold in tonnes (python3 -I check, 1 troy oz = 31.1035 g, $35 per oz): see arithmetic line at the end of this section.

### Gold cover for US domestic money
Source: hearing "Removal of gold cover", House Banking and Currency Committee, Feb 1968, testimony of Chairman William McChesney Martin, https://fraser.stlouisfed.org/title/removal-gold-cover-1015/fulltext . Opened, status verified.
- Federal Reserve banks had to hold gold certificates of at least 25 percent against Federal Reserve notes in circulation until the law of 18 March 1968 (Public Law 90-269, search summary of the statute, status secondary for the date, verified for the 25 percent rule in the hearing).
- On the same hearing: US gold stock about $12 billion in early 1968, cover required about $10.7 billion, so free gold about $1.3 billion, and notes growth would absorb about $700 million of free gold a year, leaving "2 years' grace at most". This is the clearest piece of evidence that gold bound domestic money supply formally: the gold cover would have forced a choice by 1970.
- The deposit cover requirement (25 percent gold certificates against Fed bank deposits) was removed by Public Law 89-3, 1965 (search summary, secondary). A newspaper summary in the same hearing (Sylvia Porter, Evening Star, 24 Jan 1968) says the cover was "substantially loosened" in 1945 and again in 1964. I did not open the statutes. The 1945 loosening (cut from 40 percent on notes and 35 percent on deposits to 25 percent on both) is a claim I did not verify, status unverified.
- Before 1968 the Fed could suspend the requirement for 30 days and renew by 15 day periods (secondary).
Against H1: the cover was a legal rule that was waived or repealed whenever it pinched (1945, 1965, 1968). It did not stop credit growth. Gold backed the exchange rate promise, not each dollar of credit. For H1: Martin and Johnson told Congress that without repeal the free gold would be gone in about two years.

### London Gold Pool and two-tier market
Source: Federal Reserve History, "Gold convertibility ends", https://www.federalreservehistory.org/essays/gold-convertibility-ends . Opened. Status verified.
- Gold price run in London reached $40 an ounce on 20 October 1960.
- London Gold Pool: eight central banks pooled gold from 1 November 1961 to hold the London price at $35. Lasted about six years.
- Collapse in March 1968 after sterling devalued (Nov 1967), another gold run, and France withdrawing. The seven remaining members adopted a two-tier system: central banks settle among themselves at $35 and do not sell monetary gold to the private market, whose price floats. Lasted to the Aug 1971 closing of the gold window.
- Bordo (NBER chapter, opened) says from December 1967 to March 1968 the Gold Pool lost $3 billion in gold, of which the US share was $2.2 billion. https://www.nber.org/chapters/c6867.pdf status verified. The date of the London close (14 or 15 March 1968, about two weeks) is from search summaries, secondary.

Arithmetic line (python3 -I, dollars divided by $35 per ounce, times 31.1035 grams): gold stock 1949 about 21,800 tonnes, 1960 about 15,800, 1968 about 9,700, 1971 about 9,100 (total includes small IMF related gold, so true Treasury tonnes are a little lower). June 1971 official claims divided by gold stock is 2.94. Tonnes are my conversion, not a published figure.

## 4. Real GDP per person growth by era: Maddison Project Database 2023 (H4)

Source: Maddison Project Database 2023 (Bolt and van Zanden), dataset downloaded from the Groningen Growth and Development Centre dataverse, https://dataverse.nl/api/access/datafile/421302 (page: https://www.rug.nl/ggdc/historicaldevelopment/maddison/). Series gdppc is real GDP per person in 2011 dollars. I computed compound annual growth rates with python3 -I (my arithmetic). Status verified for data, computed for rates. Data end 2022.

Percent per year, compound

| economy | 1880 to 1913 | 1950 to 1973 | 1973 to 1990 | 1990 to 2019 |
|---|---|---|---|---|
| United States | 1.46 | 2.45 | 1.96 | 1.47 |
| United Kingdom | 0.96 | 2.42 | 1.85 | 1.39 |
| France | 1.52 | 4.01 | 1.90 | 1.14 |
| Germany | 1.85 | 5.02 | 1.70 | 2.13 |
| Japan | no series | 8.06 | 2.96 | 0.85 |
| South Korea | no series | 6.01 | 7.88 | 3.62 |
| Malaysia | no series | 2.18 | 4.17 | 4.07 |
| China | no series | 2.81 | 4.07 | 6.16 |
| India | no series | 1.40 | 2.55 | 4.41 |
| 19 advanced economies, population weighted | n/a | 3.68 | 2.17 | 1.52 |
| World, population weighted, countries with data at both ends (146 to 169 countries) | n/a | 3.03 | 1.31 | 2.31 |

Reading. For H4: the world average growth was fastest in 1950 to 1973 (3.0 percent), slowed sharply in 1973 to 1990 (1.3), and recovered to 2.3 in 1990 to 2019 but only because of China and India. Rich countries slowed after 1973 and again after 1990. Late developers did very well after 1971: Korea 7.9 in 1973 to 1990, China 6.2 in 1990 to 2019, India 4.4, Malaysia about 4 in both periods. This supports "after 1971 favoured late developers" but not "after 1971 sped up rich countries". Many of these late developers grew inside capital controlled, managed exchange rate regimes (Korea, China, Malaysia after 1998), so crediting the post-1971 system for their growth is not safe. The growth slowdown in 1973 coincides with the oil shocks and the end of postwar catch-up, so the data cannot separate the money system from other causes.

Malaysia GDP per person growth by decade (Maddison 2023, percent per year, python3 -I): 1960 to 1970 3.11, 1970 to 1980 5.81, 1980 to 1990 3.45, 1990 to 2000 5.12, 2000 to 2010 3.26, 2010 to 2019 3.80, 2019 to 2022 0.82. Levels: 2,439 (1960), 8,179 (1990), 25,986 (2019) in 2011 dollars.

## 5. Inflation by era, US, OECD, world, Malaysia (H4)

Sources: World Bank CPI inflation series FP.CPI.TOTL.ZG for USA, Malaysia, OECD members and World, read through FRED (St. Louis Fed) CSV downloads, e.g. https://fred.stlouisfed.org/series/FPCPITOTLZGMYS , FPCPITOTLZGUSA , FPCPITOTLZGOED , FPCPITOTLZGWLD . US consumer price index (not seasonally adjusted, BLS) https://fred.stlouisfed.org/series/CPIAUCNS . Means of annual percent changes computed with python3 -I. Status verified (data opened), averages are my arithmetic. The World Bank series ends 2024 for USA (2025 not yet posted there) and 2025 for the others. World series starts 1981, so no world figure for 1960 to 1980. The 1880 to 1913 era comes from JST (section 2) because FRED's US CPI starts in 1913.

Percent per year, mean of annual rates

| era | US | OECD members | World | Malaysia |
|---|---|---|---|---|
| 1960 to 1970 | 2.65 | 3.64 | n/a | 0.86 |
| 1971 to 1982 | 7.92 | 11.00 | n/a | 6.28 |
| 1980 to 1990 | 5.54 | 8.25 | 7.98 | 3.56 |
| 1983 to 2019 | 2.67 | 3.44 | 5.11 | 2.55 |
| 1990 to 2000 | 3.04 | 3.89 | 6.80 | 3.47 |
| 2000 to 2010 | 2.48 | 2.52 | 4.09 | 2.14 |
| 2010 to 2019 | 1.77 | 1.61 | 2.68 | 2.13 |
| 2020 to 2024 | 4.20 | 4.05 | 4.43 | 1.81 |
| 2020 to 2025 | n/a | 3.84 | 4.20 | 1.74 |

US December to December from the BLS index (python3 -I): 1949 to 1970 2.52 percent a year, 1970 to 1982 7.76, 1982 to 2019 2.65, 2019 to 2025 3.94. Year on year: 2020 1.36, 2021 7.04, 2022 6.45, 2023 3.35, 2024 2.89, 2025 2.68.
JST 18 country means (section 2): 1880 to 1913 0.49 percent a year (US 0.0), 1950 to 1970 3.77, 1971 to 1982 10.37, 1983 to 2019 2.69.
Malaysia inflation 1998 was 5.27 (peak of the Asian crisis, ringgit fell), 1997 was 2.66, 1999 was 2.74.

Against H1 and H4: prices were flat in the gold era (US about 0 to 0.5 percent a year before 1913) but US prices rose 3.93 times between 1913 and 1970 (annual averages 9.88 to 38.82, 2.43 percent a year) and the gold link under Bretton Woods did not prevent steady inflation of 2.5 to 3.8 percent a year. After 1983 the US average (2.7) is about the same as under Bretton Woods (2.5 to 2.7). The big departure is 1971 to 1982. So 1971 did bring a decade of high inflation, but the long run post-1983 pattern resembles 1950 to 1970 rather than the gold standard.
Malaysia: lower inflation than the US in every era except 1990 to 2000 and 2010 to 2019, because of its peg and its commodity and administered price structure. Check with Bank Negara before use.

## 6. Triffin timing and how little gold backed money even in the classical era (H1)

Source: Bordo and McCauley, "Triffin: dilemma or myth?", NBER Working Paper 24195 (2017), IMF Economic Review 2019, https://www.nber.org/papers/w24195 (full text PDF opened, https://www.nber.org/system/files/working_papers/w24195/w24195.pdf). Status verified.
- Total US external liabilities reached the value of US monetary gold in 1958 (their Graph 1). US liabilities to officials reached it in 1964. Nixon broke the peg in 1971, "just seven years later". This matches my Treasury table (official claims about equal to gold at 1964 to 1965).
- The authors show the US gold position after WWII was "no worse than the UK position in 1900", and that "it took WWI to break sterling's gold link". They argue the Bretton Woods collapse was not forced by a gold shortage as such, and "better and feasible US policies could have kept Bretton Woods going". This is a direct challenge to the idea that gold scarcity alone ended the system.
- The Bank of England held very low gold reserves, "less than 5% of its liabilities" (the "thin film of gold", Clapham via Sayers 1976). Footnote: Hardy (1936) reports the Bank of England held just 3.4 percent of official world gold in 1913, and Triffin (1960) reports the US share of global gold reserves (outside international institutions) was 51 percent in June 1959.
- The classical gold standard was already a gold exchange standard in which sterling, and other currencies, substituted for gold in reserves (Lindert 1969).

Gold coin against bank money in Britain, mid-1914
Source: UK House of Commons written answer, 4 March 1920, https://api.parliament.uk/historic-hansard/written_answers/1920/mar/04/gold-production-wholesale-prices (opened). Status verified for the figures, my ratio is arithmetic (python3 -I).
- Gold coin held by banks and in public circulation, excluding the Bank of England Issue Department, 30 June 1914: about 123 million pounds (the Treasury said reliable year by year estimates cannot be supplied).
- Same table: UK bank deposits including the Bank of England 1,322 million pounds, total paper currency 74.6 million (the table's date is end 1914 after the war began, so the mix is rough), Bank of England gold 69.0 million, silver and bronze about 35 million.
- Gold coin as a share of gold coin plus bank deposits: 8.5 percent. Against the JST broad money series for the UK in 1913 (money to GDP 1.075 times GDP of 2,402 million pounds, about 2,583 million): gold coin is about 4.8 percent. So in Britain around 1914, gold coin was roughly 5 to 9 percent of broad money. Over 90 percent was bank deposits and notes. I did not find the US figure (Friedman and Schwartz table). US status: unverified.
For H1: even in the classical gold standard, credit rested on bank deposits that were a large multiple of gold. Gold limited credit by the convertibility promise of the central bank and by the pound or dollar price, not by physical coin supply. The restriction was real in the sense that countries lost gold and had to raise interest rates, but the "limited gold" is a looser ceiling than the owner implies.

## 7. Gold price, world trade, global debt, ringgit timeline

### Dollar price of gold (H4)
- Official price $35 an ounce fixed from 1934 (Fed History essay, verified above). The two-tier market after March 1968 let the private price float (Fed History).
- LBMA annual average 1971 about $41, 1980 annual average $615, 1980 intraday peak $850 on 21 January 1980 (January 1980 monthly LBMA PM average $675), 2000 annual average about $279. Source: search summaries of the World Bank Pink Sheet (LBMA PM fix), https://eco3min.fr/en/gold-real-price-1980-peak-broken/ and https://metalcharts.org/gold-all-time-high . Status secondary. I opened both pages. They confirm the $850 and $675 and the record, not the annual averages (which came from search snippets), so annual averages are secondary.
- Record: about $5,590 intraday spot on 28 January 2026 (LBMA PM fix peak near $5,405). Latest page value $3,883 on 16 November 2026, about 30.5 percent below the record. Status secondary (market data sites, one day old). Treat the latest price as a number that changes daily.
- Reading: $35 to about $3,900 is 111 times. US CPI rose 8.3 times from 1970 to 2025 (annual averages, BLS via FRED, python3 -I), so in real terms gold rose about 13 times. Gold since 1971 has been a poor guide to "sound money": its dollar price swung from $850 (1980) to about $279 (2000) and back.

### World trade as share of world GDP (H4)
Source: World Bank indicator NE.TRD.GNFS.ZS (trade, percent of GDP) world aggregate, via Our World in Data download https://ourworldindata.org/grapher/trade-as-share-of-gdp . Opened CSV. Status verified.

| year | world exports plus imports, percent of world GDP |
|---|---|
| 1970 | 25.8 |
| 1980 | 38.6 |
| 1990 | 38.1 |
| 2000 | 50.1 |
| 2008 | 60.3 |
| 2019 | 55.8 |
| 2022 | 62.1 |
| 2024 | 56.7 |

2024 is 2.2 times 1970 (python3 -I). Trade has plateaued since 2008, so the "globalisation" rise is concentrated in 1970 to 2008. Data begin 1970, so no gold standard comparison here (Maddison-linked sources put 1913 trade shares in a similar range to 1970s, I did not verify, status unverified).

### Global debt to GDP (H1, H4)
Source: IMF Global Debt Monitor, September 2025, Tables 1 to 3, IMF Global Debt Database (data back to 1950), https://www.imf.org/external/datamapper/GDD/2025%20Global%20Debt%20Monitor.pdf . Opened, read the table image. Status verified. GDP weighted averages, percent of GDP. Decade columns are decade averages.

| period | world total debt | advanced economies | emerging and developing |
|---|---|---|---|
| 1950s average | 96.9 | 110.2 | 26.5 |
| 1960s average | 101.9 | 115.9 | 28.9 |
| 1968 | 107.0 | 119.5 | 33.4 |
| 1970s average | 115.7 | 134.7 | 35.7 |
| 1980s average | 144.8 | 166.5 | 61.4 |
| 1990s average | 181.3 | 203.8 | 85.6 |
| 2000s average | 198.3 | 231.9 | 98.2 |
| 2010s average | 220.4 | 270.0 | 141.8 |
| 2020 (peak) | 258.3 | 303.5 | 191.0 |
| 2024 | 235.5 | 266.6 | 191.8 |

(I read the table from a rendered image, so check the advanced economy and emerging columns by eye before print. World total row is the one to quote.) Also from the same report: since 1974 the ratio of private to public debt has nearly halved, from 2.8 to 1.5 in 2024. Public debt 2024 about 93 percent of world GDP and private about 143 percent (IMF blog 17 Sep 2025, https://www.imf.org/en/blogs/articles/2025/09/17/global-debt-remains-above-235-of-world-gdp status verified). Total debt is $251 trillion in 2024.
Reading for H1: total world debt to GDP was already about 100 percent in the 1950s and 1960s, under the gold link, and rose about 2.4 times from the 1950s to 2024 (python3 -I: 235.5 over 96.9). Debt after 1971 grew far faster, so the 1971 break coincides with a lasting rise in debt, but debt was not tiny before. A caveat: the 1950s level includes wartime public debt.
IMF DataMapper API (https://www.imf.org/external/datamapper/api/v1/GG_DEBT_GDP) for US general government debt: 83 percent of GDP (1950), 61 (1960), 46 (1970), 41 (1980), 62 (1990), 95 (2010), 132 (2020), 121 (2024). US private debt, all instruments: 76 (1950), 147 (1960), 145 (1970), 157 (1980), 175 (1990), 196 (2000), 226 (2010), 238 (2020), 217 (2024). Status verified (API output read). Note the US private debt to GDP ratio was flat from 1960 to 1971 at about 145 to 160 percent, and the US government debt ratio fell by almost half under Bretton Woods, so the US was not leveraging up in the gold link years.

### Ringgit regime timeline (H4, Malaysia)
Source: Bank Negara Malaysia, "Significant milestones in the Malaysian foreign exchange market", https://www.bnm.gov.my/significant-milestones-in-the-malaysian-foreign-exchange-market . Opened. Status verified.

| date | event |
|---|---|
| to June 1967 | Malayan dollar fixed at 2s 4d by the Currency Board |
| 12 June 1967 | BNM quotes ringgit against sterling |
| Nov 1967 | sterling devalued 14.3 percent, ringgit parity moved because it was set in gold terms |
| Dec 1971 | Smithsonian: sterling parity unchanged, US dollar parity moved from M$3.06122 to M$2.81955 per US dollar |
| 24 June 1972 | USD adopted as intervention currency after the UK dismantled the Sterling Area |
| 21 Feb 1973 | parity moved to M$2.5376 per US dollar after the second US devaluation |
| 21 June 1973 | ringgit allowed to float |
| 27 Sept 1975 | value set against a basket of major trading partners' currencies |
| 1 to 2 Sept 1998 | selective exchange controls and ringgit fixed at RM3.80 per US dollar (the fixing date, 2 Sept, is inferred by the page) |
| 21 July 2005 | peg replaced with a managed float |

FRED monthly average ringgit per US dollar (https://fred.stlouisfed.org/series/EXMAUS, computed annual averages, python3 -I): 3.03 (1971), 2.45 (1973), 2.18 (1980), 2.71 (1990), 2.82 (1997), 3.93 (1998), 3.80 (2000), 3.79 (2005), 3.22 (2010), 4.20 (2020), 4.28 (2025). So the ringgit has lost about 29 percent against the dollar since 1971 (3.03 to 4.28) and lost nearly half of its dollar value in the 1997 to 1998 crisis (2.82 to 4.2 at the trough, not shown in the annual means above).
Observation for H4 and H2: a country like Malaysia lived through the gold-sterling link, the dollar link, a float, a basket, a hard peg with capital controls, and a managed float. Its growth per person (section 4) was high through all of these, so the regime label alone explains little.

## 8. Research and development, and venture capital (H4, rough check on the "technology" claim)

Source: NSF National Center for Science and Engineering Statistics, "U.S. R&D-to-GDP Ratio Reached 3.43% in 2022, Driven by Experimental Development", https://ncses.nsf.gov/pubs/nsf25335 . Opened. Status verified.

| year | US total R&D as percent of GDP |
|---|---|
| 1953 | 1.33 |
| 1964 | 2.79 (earlier peak) |
| 1967 | 2.71 |
| 1978 | 2.07 (lowest in the table, 1959 to 2023) |
| 2000 | 2.61 |
| 2009 | 2.78 |
| 2010 | 2.70 |
| 2019 | 3.09 |
| 2020 | 3.36 |
| 2022 | 3.43 (highest) |
| 2023 | 3.39 (estimate) |

An older NSF brief (1999 vintage) put the 1964 peak at 2.87 percent, so levels are revised between editions. Use the 2025 edition numbers.
Reading for H4: US R&D intensity peaked in 1964, in the gold link era, fell to a low in 1978 (just after 1971), and only passed the 1964 peak in the late 2010s. The rise from 2.07 to 3.43 percent over 1978 to 2022 is real but 1971 itself did not cause an immediate rise. So the data do not show that the post-1971 monetary system sped up research spending. Much of the 1960s spending was federal (space and defence), the later rise is largely business funded, but I did not pull the funder split (gap).

Venture capital (status secondary, search summaries only, not opened as primary): the US VC industry was small in the 1970s (no more than about 30 firms of substance by mid-1970s). Funds raised about 750 million dollars in 1978 (one source) and the Poterba NBER paper gives net commitments in 1987 dollars of about 380 million a year in 1976 to 1978, 1.01 billion in 1979 to 1981, 3.93 billion in 1982 to 1984. The rise followed the 1978 cut of the top capital gains rate from 49.5 to 28 percent and the 1978 to 1979 Labor Department clarification of pension "prudent man" rules, which are tax and regulatory changes, not changes to money. No clean long series was opened. I make no claim from this.

## Evidence for and against H1 and H4

H1 (before 1971, credit rested on something limited because money was tied to scarce gold)

For H1:
- Gold cover was a legal limit on the Federal Reserve until 1968. In February 1968 the Fed chairman told Congress the US had $12 billion of gold, $10.7 billion of it needed as 25 percent cover, leaving $1.3 billion of free gold and about two years before the limit bound (hearing, FRASER).
- Foreign claims on the US passed the gold stock: all foreign liquid claims by about 1960 and official claims by about 1964 to 1965 (Treasury, Bordo and McCauley). By June 1971 official claims were 2.9 times the gold stock. A fixed gold price with growing claims was a real constraint on the US.
- Bank credit to GDP in 1970 (18 country mean 53.4) was still below its 1913 level (58.1), and then roughly doubled by 2007 (110.9). Total world debt to GDP rose from about 100 percent (1950s and 1960s) to 235 percent (2024). Credit was higher after 1971.
- The two-tier gold market (March 1968) and the London Gold Pool (1961 to 1968) show governments spent heavily to hold the gold price.

Against H1:
- The gold cover rule was waived or repealed whenever it pinched, in 1945, 1965 and 1968. It limited the promise of convertibility to foreigners, not domestic credit.
- Real bank loan growth was fastest in 1950 to 1970 (9.0 percent a year, 18 country mean), faster than after 1971 (5.8, then 3.3). The ratio was low because it started low after the war.
- Even in the classical gold standard, gold coin was about 5 to 9 percent of British broad money (1914 estimate) and the Bank of England held under 5 percent gold against its liabilities. Credit was mostly bank money resting on trust and central bank action, so "scarce gold" was a loose cap.
- Bordo and McCauley: the 1960s US gold position was no worse than Britain in 1900, and better US policies could have saved Bretton Woods. The end was a policy and politics choice, not a physical shortage of gold.
- US private debt to GDP was flat at about 145 percent from 1960 to 1971 and US government debt to GDP fell from 83 to 46 percent (1950 to 1970), so the US was not leveraging fast under gold.

H4 (the post-1971 world's purpose is to let productivity and technology advance)

For H4:
- Late developers grew fast after 1973: Korea 7.9 percent a year (1973 to 1990), China 6.2 (1990 to 2019), India 4.4, Malaysia about 4 (Maddison 2023).
- US R&D to GDP rose from 2.07 percent (1978) to 3.43 (2022). World trade to world GDP rose from 25.8 percent (1970) to a peak of about 60 (2008).
- World GDP per person growth recovered from 1.3 (1973 to 1990) to 2.3 (1990 to 2019) as China and India grew.

Against H4:
- Rich countries grew most under Bretton Woods (19 economy average 3.7 percent a year, 1950 to 1973) and slower after (2.2 then 1.5). Catch-up after the war explains much of this, so the data neither prove nor disprove causes.
- Crisis frequency since 1973 is higher than under the gold standard or Bretton Woods: 10.7 against 7.9 and 6.4 percent of country years (BEKM alternative count), or double on the headline count (12.2 against about 5 to 6). Currency crises account for most of the rise.
- Inflation: about 0 to 0.5 percent a year before 1913, 2.5 to 3.8 under Bretton Woods, 7.5 to 10 in 1971 to 1982, about 2.7 since 1983. High inflation for a decade followed 1971.
- World growth fell in 1973 to 1990 and total debt to GDP rose much faster than output after 1971.
- US R&D intensity peaked in 1964, hit a low in 1978, and VC grew because of 1978 tax and pension rule changes. Nothing here shows the monetary regime caused the technology gains.
- Korea, China and Malaysia grew under controls and managed rates (Malaysia fixed the ringgit at 3.80 with capital controls in 1998), not a free floating system.

## Gaps
- 1949 foreign official dollar claims not found (Treasury table starts 1958). 
- US gold coin and certificate share of the money stock c.1900 (Friedman and Schwartz) not found. Only the British 1914 estimate.
- The 1945 reduction in the gold reserve ratio (from 40 and 35 percent to 25 percent) and the exact 1965 and 1968 statute text were not opened. Dates come from a hearing and search summaries.
- Gold annual averages for 1971, 1980 and 2000 and the latest price are from secondary sites, not LBMA directly. The "latest" will change.
- BEKM exact counts of crises by era (numbers, not percentages) and the 1945 to 1971 headline percentage were not found. I give the alternative count only.
- Inflation 1880 to 1913 for the US alone is JST (rated verified data) not BLS. 2021 to 2025 US World Bank data for 2025 not posted. World Bank API was blocked, so I read it through FRED.
- Maddison "world" and "advanced" figures are my aggregation of country data, not a published Maddison world series.
- IMF debt table was read from an image, advanced and emerging columns need an eye check. No global debt before 1950. Debt ratios from different vintages differ.
- R&D funder split (federal against business) and a clean long equity issuance or venture series not obtained.
- Malaysia inflation by decade from the World Bank only for 1960 onwards. Not cross-checked with Bank Negara. Malaysia GDP per person growth is Maddison only (World Bank not checked).
- No first-hand human accounts collected, this lane was data only.

## Ledger

| id | claim | tier | status | source URL | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R14A-01 | US gold stock was $24,563 million at end 1949, $17,804 million 1960, $10,892 million 1968, $10,206 million 1971 | T1 | confirmed | https://fraser.stlouisfed.org/docs/publications/ERP/1972/ERP_1972.pdf | 1972 | end 1949, 1960, 1968, 1971 | A later Treasury or Fed series with different stock values |
| R14A-02 | Foreign official liquid claims on the US were $10.5bn (June 1960), $14.2bn (1964), $14.1bn (1967), $12.1bn (1968), $30.8bn (June 1971) | T1 | confirmed | https://fraser.stlouisfed.org/files/docs/publications/treasar/AR_TREASURY_1971_2.pdf | 1971 | fiscal years to June 1971 | A revised Treasury series that reclassifies the 1968 dip |
| R14A-03 | All foreign liquid claims passed the US gold stock about 1958 to 1960 and official claims about 1964 to 1965 | T2 | confirmed | https://www.nber.org/papers/w24195 | 2017 | 1958 to 1971 | A series showing official claims below gold until after 1967 |
| R14A-04 | By June 1971 official claims were about 2.9 times the gold stock | T1 | confirmed | https://fraser.stlouisfed.org/files/docs/publications/treasar/AR_TREASURY_1971_2.pdf | 1971 | June 1971 | Different June 1971 values for either series |
| R14A-05 | The Fed had to hold 25 percent gold certificate cover on Federal Reserve notes until the March 1968 repeal, with free gold of $1.3bn in early 1968 | T1 | confirmed | https://fraser.stlouisfed.org/title/removal-gold-cover-1015/fulltext | 1968 | Feb 1968 | A statute showing the cover removed earlier or a different free gold figure |
| R14A-06 | Public Law 90-269 of 18 March 1968 eliminated the note reserve requirement, and Public Law 89-3 of 1965 removed the deposit requirement | T2 | plausible | https://www.govinfo.gov/link/statute/82/50 | 1968 | 1965 and 1968 | The statute text giving other dates |
| R14A-07 | The cover was loosened in 1945 (to 25 percent) | T3 | unverified | https://fraser.stlouisfed.org/title/removal-gold-cover-1015/fulltext | 1968 | 1945 | The 1945 Act showing a different ratio |
| R14A-08 | The London Gold Pool ran from 1 Nov 1961 to March 1968, followed by a two-tier market until Aug 1971 | T2 | confirmed | https://www.federalreservehistory.org/essays/gold-convertibility-ends | 2013 | 1961 to 1971 | Archival Fed or BIS records with different dates |
| R14A-09 | Gold Pool lost $3bn Dec 1967 to Mar 1968, US share $2.2bn | T3 | confirmed | https://www.nber.org/chapters/c6867.pdf | 1993 | Dec 1967 to Mar 1968 | Solomon (1976) or Fed minutes with other totals |
| R14A-10 | US bank loans to GDP: 24.0 (1950), 37.9 (1960), 47.7 (1970), 53.4 (1980), 50.4 (2000), 69.5 (2020) percent | T1 | confirmed | https://www.macrohistory.net/database/ | 2022 | 1950 to 2020 | A later JST release that revises tloans or gdp |
| R14A-11 | 18 country mean bank loans to GDP was 58.1 (1913), 53.4 (1970), 78.8 (1990), 110.9 (2007) | T1 | confirmed | https://www.macrohistory.net/database/ | 2022 | 1913 to 2007 | A different country set or release |
| R14A-12 | Real bank loan growth averaged 5.5 (1880 to 1913), 9.0 (1950 to 1970), 5.8 (1971 to 1990), 3.3 (1991 to 2019) percent a year | T3 | confirmed | https://www.macrohistory.net/database/ | 2022 | 1880 to 2019 | Weighted rather than simple means giving a different ordering |
| R14A-13 | British gold coin was about 123m pounds in mid 1914 against bank deposits of 1,322m, roughly 5 to 9 percent of broad money | T2 | plausible | https://api.parliament.uk/historic-hansard/written_answers/1920/mar/04/gold-production-wholesale-prices | 1920 | mid 1914 | A better estimate of coin or a different deposit definition |
| R14A-14 | The Bank of England held under 5 percent gold against liabilities and 3.4 percent of official world gold in 1913 | T3 | plausible | https://www.nber.org/papers/w24195 | 2017 | 1900 to 1913 | Hardy (1936) or Sayers giving other ratios |
| R14A-15 | Crisis frequency, alternative count: 6.4 (1880 to 1913), 13.4 (1919 to 1939), 7.9 (1945 to 1971), 10.7 (1973 to 1997) percent of country years | T3 | confirmed | https://typeset.io/pdf/is-the-crisis-problem-growing-more-severe-52qyneo06w.pdf | 2001 | 1880 to 1997 | Replication with other crisis dating, or the published Economic Policy version |
| R14A-16 | Headline crisis frequency post 1972 is 12.2 percent (56 countries) against 4.9 percent for 1880 to 1913 | T3 | confirmed | https://typeset.io/pdf/is-the-crisis-problem-growing-more-severe-52qyneo06w.pdf | 2001 | 1972 to 1998 | The 21 country figure of 8.8 percent is the like for like check |
| R14A-17 | No systemic banking crisis flagged in the 18 JST economies between 1945 and 1971 | T1 | confirmed | https://www.macrohistory.net/database/ | 2022 | 1945 to 1971 | JST later adding crises to the list |
| R14A-18 | US CPI inflation averaged 2.5 percent a year 1949 to 1970, 7.8 percent 1970 to 1982, 2.7 percent 1982 to 2019, 3.9 percent 2019 to 2025 | T1 | confirmed | https://fred.stlouisfed.org/series/CPIAUCNS | 2026 | Oct 2026 | A BLS rebasing or use of CPI-U SA instead |
| R14A-19 | 18 country mean inflation: 0.49 (1880 to 1913), 3.77 (1950 to 1970), 10.37 (1971 to 1982), 2.69 (1983 to 2019) percent | T1 | confirmed | https://www.macrohistory.net/database/ | 2022 | 1880 to 2019 | Median or weighted measure with a different ordering |
| R14A-20 | OECD inflation averaged 3.6 (1960s), 11.0 (1971 to 1982), 3.4 (1983 to 2019), 3.8 (2020 to 2025) percent, and world inflation 4.2 (2020 to 2025) | T2 | confirmed | https://fred.stlouisfed.org/series/FPCPITOTLZGOED | 2026 | 2025 | World Bank revisions |
| R14A-21 | Real GDP per person growth 1950 to 1973, 1973 to 1990, 1990 to 2019: US 2.45, 1.96, 1.47 and Korea 6.01, 7.88, 3.62 and Malaysia 2.18, 4.17, 4.07 and China 2.81, 4.07, 6.16 and India 1.40, 2.55, 4.41 percent | T1 | confirmed | https://dataverse.nl/api/access/datafile/421302 | 2023 | 2019 | Maddison 2020 or World Bank PPP series giving other rates |
| R14A-22 | World GDP per person (population weighted) grew 3.0 (1950 to 1973), 1.3 (1973 to 1990), 2.3 (1990 to 2019) percent a year and 19 advanced economies 3.7, 2.2, 1.5 | T3 | plausible | https://dataverse.nl/api/access/datafile/421302 | 2023 | 2019 | Published Maddison regional aggregates or a different country mix |
| R14A-23 | The ringgit timeline: sterling link June 1967, USD intervention 24 June 1972, float 21 June 1973, basket 27 Sept 1975, RM3.80 peg 1 to 2 Sept 1998, managed float 21 July 2005 | T2 | confirmed | https://www.bnm.gov.my/significant-milestones-in-the-malaysian-foreign-exchange-market | 2024 | 2005 | A BNM annual report with other dates |
| R14A-24 | Malaysia inflation averaged 0.9 (1960s), 6.3 (1971 to 1982), 2.6 (1983 to 2019), 1.7 (2020 to 2025) percent, and GDP per person grew 5.8 (1970s), 3.5 (1980s), 5.1 (1990s), 3.3 (2000s) | T2 | plausible | https://fred.stlouisfed.org/series/FPCPITOTLZGMYS | 2026 | 2025 | Department of Statistics Malaysia series |
| R14A-25 | World trade rose from 25.8 percent of world GDP (1970) to 56.7 percent (2024), peak 62.1 in 2022 | T2 | confirmed | https://ourworldindata.org/grapher/trade-as-share-of-gdp | 2025 | 2024 | World Bank revision |
| R14A-26 | World total debt to GDP: 96.9 (1950s), 107.0 (1968), 115.7 (1970s), 258.3 (2020 peak), 235.5 (2024) percent | T2 | confirmed | https://www.imf.org/external/datamapper/GDD/2025%20Global%20Debt%20Monitor.pdf | 2025 | 2024 | A later GDD vintage |
| R14A-27 | US private debt to GDP was flat at about 145 to 160 percent between 1960 and 1980 and US government debt fell from 83 to 46 percent (1950 to 1970) | T2 | confirmed | https://www.imf.org/external/datamapper/api/v1/GG_DEBT_GDP | 2025 | 2024 | A later GDD vintage |
| R14A-28 | Gold: $35 official, record about $5,590 on 28 Jan 2026, about $3,883 on 16 Nov 2026, $850 peak 21 Jan 1980, 2000 average about $279 | T3 | plausible | https://metalcharts.org/gold-all-time-high | 2026 | 16 Nov 2026 | LBMA price history |
| R14A-29 | US R&D to GDP: 2.79 percent (1964), 2.07 (1978), 2.61 (2000), 3.43 (2022) | T2 | confirmed | https://ncses.nsf.gov/pubs/nsf25335 | 2025 | 2022 | A later NSF revision of the series |
| R14A-30 | US venture capital funds raised about $750m in 1978 after the 1978 capital gains cut | T3 | unverified | https://www.richmondfed.org/publications/research/econ_focus/2019/q4/book_review | 2019 | 1978 | NVCA Yearbook table |
