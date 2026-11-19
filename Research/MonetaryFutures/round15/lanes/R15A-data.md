# R15A data lane for H1 to H4 (started 2026-11-16)

Status key: verified = I opened the source and saw it. secondary = reliable summary. Rows marked memory are not printed.

## Section 0. First searches (search snippets only, not yet opened)
- Schmelzing 2020, Bank of England Staff Working Paper 845, real rates 1311 to 2018. https://www.bankofengland.co.uk/working-paper/2020/eight-centuries-of-global-real-interest-rates-r-g-and-the-suprasecular-decline-1311-2018 (secondary until opened)
- Broadberry, Guan, Li 2018, Journal of Economic History 78(4). Northern Song China richer than Domesday Britain about 1090, behind Italy by 1300. https://www.economics.ox.ac.uk/node/1345401 (secondary)
- Karaman and Pamuk 2010 JEH 70(3). https://researchonline.lse.ac.uk/id/eprint/29558 (to open)

## Section 1. GDP per person, Maddison Project Database 2023 (H1, H4)
Source: Maddison Project Database 2023, file downloaded from https://dataverse.nl/api/access/datafile/421302 (sheet "Full data"), read with python3 -I. Status: verified (primary data file opened). Units: 2011 international dollars per person (MPD 2023 units, as I understand the release notes, not re-checked on the Notes sheet). Landing page: https://www.rug.nl/ggdc/historicaldevelopment/maddison/releases/maddison-project-database-2023
Caution: many early cells are blank. Pre-1820 values for England are from Broadberry and co-authors, for China from Broadberry, Guan and Li, for the Netherlands from van Zanden and van Leeuwen. Blank means no estimate, not zero.

| place | 1300 | 1400 | 1500 | 1600 | 1650 | 1700 | 1750 | 1800 | 1820 | 1870 | 1900 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Britain/England (GBR) | 1159 | 1717 | 1697 | 1691 | 1446 | 2412 | 2702 | 3343 | 3306 | 5829 | 7594 |
| Netherlands (NLD) | blank | 1917 | 2332 | 4270 | 4316 | 3377 | 3777 | 4184 | 3006 | 4422 | 5306 |
| Spain (ESP) | 1372 | 1340 | 1118 | 1295 | 1009 | 1280 | 1296 | 1318 | 1558 | 1806 | 2672 |
| France (FRA) | 1268 | 1612 | 1670 | 1576 | 1559 | 1758 | 1743 | 1660 | 1809 | 2990 | 4584 |
| China (CHN) | blank | 1404 | 1207 | 1217 | blank | 1543 | 1061 | 926 | 882 | 945 | 972 |
| India (IND) | blank | blank | blank | 1264 | 1189 | 1162 | 1068 | blank | blank | 850 | 955 |
| Italy (ITA) | no estimate before 1820 in MPD 2023 | | | | | | | | 2523 | 2826 | 3264 |

World GDP per person, MPD 2023 Regional data sheet: about 1128 in 1820 (verified in the file). Western Europe 2171 in 1820, East Asia 911, South and South East Asia 919.

Notes for the chapter:
- England: 1159 in 1300, a dip to 1446 in 1650, 2412 in 1700. Output per head in England did not move up in a straight line before 1650. Growth shows from 1650 to 1700 (+67 percent in the series) which is the period of the Civil War aftermath, the Navigation Acts and the Glorious Revolution.
- Netherlands: 4270 in 1600 and 4316 in 1650, then 3377 in 1700 and 4184 in 1800. The Dutch were the richest place in 1600 by this series and then stalled for about 200 years. In 1650 Dutch output per head was about 3.0 times England's (4316 / 1446, checked below).
- Spain: 1118 in 1500 and 1009 in 1650, 1318 in 1800. The silver-receiving country did not grow. Counter-case for H1 (money was plentiful, output flat).
- China: 1404 in 1400 and 1543 in 1700 then 926 in 1800 and 882 in 1820. A fall of 43 percent from 1700 to 1820 in the series (python3 -I check: 1 - 882/1543 = 0.43). Dutch 1650 over England 1650 = 2.98 (python3 -I). England 1700 over 1300 = 2.08, over 1650 = 1.67 (python3 -I).

## Section 2. Literacy (H2)
Source: Our World in Data, "Literacy rates around the world" grapher, CSV downloaded and read. https://ourworldindata.org/grapher/cross-country-literacy-rates . Status: verified (file opened). Per the OWID notes, 1451 to 1800 European values come from Buringh and van Zanden, indirect (book consumption converted to literacy, so an estimate), 1820 to 1970 world values from OECD "How Was Life?", later from UNESCO Institute for Statistics. Definitions vary by country.

| place | 1475 | 1550 | 1650 | 1750 | 1900-01 | 1950 |
|---|---|---|---|---|---|---|
| Britain | 5 | 16 | 53 | 54 | not in file | 98.5 |
| Netherlands | 17 | 12 | 53 | 85 | not in file | 98.5 |
| France | 6 | 19 | 29 | 29 | 83.5 (1901) | 96.5 |
| Italy | 15 | 18 | 23 | 23 | 51.8 (1901) | 87.5 |
| Spain | 3 | 4 | 5 | 8 | 41.3 (1900) | 82.5 |
| Sweden | 1 | 1 | 23 | 48 | not in file | 98.5 |
| India | | | | | 6.2 (1901) | 17.5 |
| China | | | | | | 47.5 |

World literacy: 12.0 percent in 1820, 18.7 in 1870, 21.4 in 1900, 36.0 in 1950, 41.6 in 1960, 87.7 in 2024 (verified in the file). Malaysia: 37.5 in 1950, 94.9 to 95.8 in 2016 to 2022. No 1957 value in this file, so the independence figure is a gap (use 1950 as nearest, labelled).

What this says for H2:
- Netherlands was ahead on literacy by 1650 (53) and 1750 (85) and was the richest place by income in 1600 to 1650 (Section 1). Literacy came with or before the Dutch income lead. For England, literacy was already 53 in 1650 and was flat at 54 in 1750 while income per head rose (1446 in 1650, 2702 in 1750). So literacy was high before the rise, but it did not rise during the rise. England's literacy gain came before the income take-off, and did not by itself rise with it.
- Spain had 5 to 8 percent literacy in 1650 to 1750 and flat income. Fits H2.
- Sweden 23 in 1650 and 48 in 1750, with income growth late. Fits "schooling first" but is not tested here.
- Caution: Buringh and van Zanden values before 1800 are modelled from book output.

## Section 3. Child deaths and life expectancy (H4)
Source: Our World in Data grapher CSVs, read with awk. Share of children dying before age five (Gapminder for 1800 to 1950, UN IGME after). https://ourworldindata.org/grapher/child-mortality-complete-gapminder and https://ourworldindata.org/child-mortality-global-overview . Status: verified (files opened). Gapminder early values are estimates and for 1800 are modelled in many countries (China 1800 and 1850 are identical, 41.744, which signals a fill value, treat as rough).

| place | 1800 | 1850 | 1900 | 1950 |
|---|---|---|---|---|
| World | 42.8 | 42.0 | 40.9 | 24.7 |
| United Kingdom | 32.9 | 24.7 | 22.5 | 3.7 |
| Netherlands | 32.4 | 29.4 | 22.1 | 3.2 |
| Sweden | 38.1 | 21.8 | 15.5 | 2.7 |
| France | 41.2 | 23.8 | 22.4 | 5.7 |
| Italy | 45.7 | 45.1 | 29.7 | 8.9 |
| Spain | 45.1 | 41.1 | 33.2 | 10.3 |
| China | 41.7 | 41.7 | 41.7 | 31.7 |
| India | 50.9 | 50.9 | 53.6 | 28.3 |
World: 3.8 percent in 2023 (verified).
Reading: in 1800 about 43 children in 100 died before five in the world. Even in the richest place, Britain, about 33 in 100. World share barely moved from 1800 to 1900 (42.8 to 40.9), then fell to 24.7 by 1950.
Life expectancy at birth (OWID/UN, verified): world 46.4 in 1950 and 73.2 in 2023. UK 68.6 in 1950 and 81.3 in 2023. India 41.2 and 72.0. China 43.8 and 78.0. Pre-1950 life expectancy not pulled yet (see Gaps).

## Section 4. England in the Bank of England "Millennium of Macroeconomic Data" (H1, H2, H3, H4)
Source: Bank of England, "A millennium of macroeconomic data for the UK", workbook downloaded and read with python3 -I (sheets A21, A22, A26, A29, A31, A48). https://www.bankofengland.co.uk/-/media/boe/files/statistics/research-datasets/a-millennium-of-macroeconomic-data-for-the-uk.xlsx . Landing page https://www.bankofengland.co.uk/statistics/research-datasets . Status: verified (opened). England 1270 to 1700 and GB after 1700 from Broadberry, Campbell, Klein, Overton and van Leeuwen (2015). Coin from Palma (2017). Tax from O'Brien and Hunt. Interest from Allen (1988) and other BoE sheets.
Units: coin in pounds sterling millions, population millions, GDP per person in 2013 pounds (BoE sheet A21, so a different base from Maddison dollars in Section 1), tax and GDP in 000s of pounds. Arithmetic checked with python3 -I.

### 4a. Coin per head and output per head (H1 test)
| year | coin stock, Palma direct method (pounds m) | population (m) | coin per head (pounds) | real GDP per head (2013 pounds) |
|---|---|---|---|---|
| 1300 | 1.15 | 4.73 | 0.24 | 784 |
| 1400 | 1.31 | 2.08 | 0.63 | 1162 |
| 1500 | 0.60 | 2.20 | 0.27 | 1148 |
| 1600 | 3.50 | 4.11 | 0.85 | 1143 |
| 1650 | 11.99 | 5.31 | 2.26 | 978 |
| 1700 | 10.75 | 5.20 | 2.07 | 1668 |
Reading, with the worst period left in:
- 1300 to 1400: coin per head rose 2.6 times (0.24 to 0.63) after the Black Death cut population by more than half, and output per head rose 48 percent. Here coin per head and output per head moved together, but it is mostly because there were fewer people to share the same coin.
- 1400 to 1500: coin per head fell by more than half (0.63 to 0.27) and output per head was about flat (1162 to 1148). So no strong link.
- 1600 to 1650: coin per head rose 2.7 times (0.85 to 2.26) while output per head FELL 14 percent (1143 to 978). This is the Civil War period. Money per head rose and output per head fell.
- 1650 to 1700: coin per head about flat (2.26 to 2.07) while output per head rose 71 percent (978 to 1668).
- So from 1500 to 1700, coin per head rose about 7.7 times (0.27 to 2.07) while output per head rose 45 percent (1148 to 1668). Money grew much faster than output and the two did not move together period by period. This is evidence against a simple "more money, more output" and for money as a necessary but weak ingredient.
- Caution: Palma's "indirect" series is built from GDP and assumed velocity, so it cannot be used to test the link. The "direct" series (from mint and other records) is what the table uses. The direct and indirect series are close at most dates (for example 1600: 3.50 and 3.50, 1620: 3.95 and 5.79).
- Velocity is not published in this workbook as a series. Gap.

### 4b. Real earnings against population (H4)
| year | population (m) | real consumption earnings, GB index (Clark-type series, preferred full-employment, as published) |
|---|---|---|
| 1300 | 4.73 | 26.5 |
| 1347 | n/a | 26.4 |
| 1350 | 3.20 | 51.9 |
| 1450 | 1.90 | 70.5 |
| 1500 | 2.20 | 62.0 |
| 1600 | 4.11 | 35.1 |
| 1650 | 5.31 | 28.7 |
| 1700 | 5.20 | 35.4 |
| 1750 | 5.89 | 48.6 |
| 1800 | 8.62 | 37.2 |
| 1850 | 16.62 | 60.8 |
Reading: real earnings jumped from 26.4 in 1347 to 51.9 in 1350 (first years after the Black Death) and peaked at 70.5 in 1450 when population was at its low of about 1.9 million. They fell to 28.7 by 1650 as population rose 2.8 times (1.90 to 5.31, python3 -I: 2.79). The earnings level in 1650 was about the same as in 1300 (26.5). That fits the Malthusian pattern (wages up when people fewer, down when more). Counter-evidence: the 1750 value of 48.6 came with population 5.89m, higher than 1650's, and earnings in 1850 (60.8) are well above the 1300 level with population 3.2 times 1700's (16.62 / 5.20 = 3.2, python3 -I). So after about 1700 wages and population stopped moving opposite ways. The 1800 dip to 37.2 is the Napoleonic war years. The index base year is not stated in the rows I read. Treat as a relative index. Sheet A48 reports a 9-year or 10-year average column too, not used.

### 4c. Tax revenue and government debt (H2, H3)
| year | central tax revenue (pounds 000s, 9-year average) | English GDP at factor cost (pounds 000s) | tax as share of GDP |
|---|---|---|---|
| 1300 | 46.7 | 5452 | 0.9 percent |
| 1400 | 72.6 | 4007 | 1.8 percent |
| 1500 | 84.9 | 3828 | 2.2 percent |
| 1600 | 386.9 | 23275 | 1.7 percent |
| 1650 | 1662.7 | 40428 | 4.1 percent |
| 1688 | 1998.5 | 51398 | 3.9 percent |
England's state in 1300 to 1600 took 1 to 2 percent of output in tax. It rose to about 4 percent by 1650 (Civil War) and held. Source: sheet A26 (O'Brien and Hunt, in turn). Note that 1650 is the Commonwealth war state.
Funded national debt (sheet A29, pounds m) against GB nominal GDP (A21): 1700, 4.7 over 79.4 = 5.9 percent. 1750, 72.2 over 97.4 = 74 percent. 1815, 709.3 over 467.3 = 152 percent (python3 -I). Debt first appears 1693/94 at 0.6m.
So the funded debt went from 6 percent of output to 74 percent in 50 years, and to 152 percent by 1815. The first modern state was built on borrowing, as H3 says, at least for the state and war. (Check: the 1700 figure compares end-September debt with calendar-year GDP, a small timing mismatch.)

### 4d. Interest rates after 1688 (H1, counter-evidence to North and Weingast)
| year | private mortgage rate, percent (Allen 1988 series) | government long yield, percent |
|---|---|---|
| 1688 to 1700 | 6 | not in series |
| 1705 | 5.5 | 6.0 |
| 1710 | 5.5 | 8.3 |
| 1720 | 5.0 | 4.0 |
| 1730 | 4.5 | 3.3 |
| 1740 | 4.0 | 3.0 |
| 1750 | 4.25 | 3.0 |
| 1770 | 3.5 | 3.6 |
Reading: the BoE series has no government yield for 1688 to 1702. After the Glorious Revolution the first yield (1705) is 6.0, the same as the private mortgage rate, and in 1710 it is 8.3, higher. Government yield fell below the private rate only from the 1720s. The drop to 3 percent came about 30 to 50 years after 1688, not at once. Both fell, and private rates fell too (6 to 4 by 1735), so this series does not show private rates staying high. But the private rate of 6 percent to 1700 and 5 percent from about 1715 matches the legal ceiling, so the private series may be partly a legal rate, not a market one. I have not yet verified the 1714 usury cut to 5 percent (see Gaps).

## Section 5. China, Holland, Italy, Spain, England in 1990 dollars (Broadberry, Guan and Li) (H1, H4)
Source: Broadberry, Guan and Li (2017), Oxford Discussion Papers in Economic and Social History No. 155, Tables 6 to 8. PDF https://ora.ox.ac.uk/objects/uuid:1aa49524-f613-4668-a34b-8a7fcc485b74/files/scz30pt16x (opened and text extracted with pdftotext). Published version: Journal of Economic History 78(4), 2018, https://www.economics.ox.ac.uk/node/1345401 . Status: verified. Units are 1990 international dollars (a different base from Maddison 2023 in Section 1, so do not mix the two tables). Table 8 pulls England/GB from Broadberry and co-authors (2015), Holland from van Zanden and van Leeuwen (2012), Italy from Malanima (2011), Spain from Alvarez-Nogal and Prados de la Escosura (2013). The Italy series is "Italy" in these tables, the Table 7 note does not say northern. Malanima's series is for Italy as a whole (my reading, not checked).

| year | China | England/GB | Holland/NL | Italy | Spain | India |
|---|---|---|---|---|---|---|
| 980 | 853 | | | | | |
| 1020 | 1006 | | | | | |
| 1090 | 878 | 754 | | | | |
| 1300 | | 755 | | 1482 | 957 | |
| 1400 | 1032 | 1090 | 1245 | 1601 | 885 | |
| 1450 | 990 | 1055 | 1432 | 1668 | 889 | |
| 1500 | 858 | 1114 | 1483 | 1403 | 889 | |
| 1600 | 865 | 1123 | 2372 | 1244 | 944 | 682 |
| 1650 | n/a | 1110 | 2171 | 1271 | 820 | 638 |
| 1700 | 1103 | 1563 (or 1630) | 2403 | 1350 | 880 | 622 |
| 1750 | 727 | 1710 | 2440 | 1403 | 910 | 573 |
| 1800 | 614 | 2080 | 1752 (Table 7 shows 2617 for the older series, see note) | 1244 | 962 | 569 |
| 1850 | 600 | 2997 | 2397 | 1350 | 1144 | 556 |
Note: Table 7 prints two Holland numbers at 1800 and 1820 (2617 and 1752 at 1800, 1953 and a gap at 1820) because the series changes from Holland to the Netherlands. I use the Table 8 figure (1752 at 1800) and flag it as a break in series.

Findings (arithmetic by python3 -I below):
- Song China at 1090 was 878 against England at 754, so 16 percent higher (China/GB 116.4 in the paper). Peak China in the table was 1006 in 1020. England did not match that level until about 1400 (1090) and not clearly until 1700 (1563). So at the time of the first paper money (jiaozi, 1020s) China was richer per head than England by about a third (1006 / 754 using the 1090 England figure, not the same year, flagged).
- China's peak was early: 1006 in 1020, 1032 in 1400, 1103 in 1700, then 727 in 1750 and 614 in 1800. By 1700 China was 70.6 percent of GB, by 1750 42.5 percent, by 1800 29.5 percent (paper's own ratio column).
- Italy led Europe in 1300 to 1450 (1482, 1601, 1668) and then slipped to 1244 in 1600 and stayed 1244 to 1403 until 1850 (1350). Italy in 1450 was 1668 against England 1055 (1.58 times). By 1700 England (1563) had passed Italy (1350).
- Holland 1400 to 1600 rose from 1245 to 2372 (+91 percent), then 2371 to 2440 from 1600 to 1750, flat for 150 years, with the 1800 break.
- Spain flat at 820 to 1144 from 1300 to 1850. At the time of the American silver flows (1500s to 1600) Spain's output per head was 889 (1500) to 944 (1600), up 6 percent in 100 years.
- India 682 (1600) to 556 (1850) falling.
The paper's abstract states: "China led the world in living standards during the Northern Song dynasty, but had fallen behind Italy by 1300" and that "the Great Divergence had already begun before the Industrial Revolution". (Direct quote from the PDF abstract.)

Not in this paper: paper-money detail. For Song China money I need another source (see Section 6).

## Section 6. Paper money in Song and Yuan China (H1)
Primary-ish source (opened): Guan, Palma and Wu, "The Rise and Fall of Paper Money in Yuan China, 1260-1368", Manchester Economics Discussion Paper EDP-2207, updated January 2024, forthcoming Economic History Review. https://hummedia.manchester.ac.uk/schools/soss/economics/discussionpapers/EDP-2207.pdf . Status: verified for the items below.
- Yuan: paper money was the sole legal tender, first on a silver standard (2 guan zhongtongchao to 1 liang silver in 1260), convertible nominally until 1309 and inconvertible fiat from 1310. Inflation rates by period measured with a "respectability" price index: 11.0 percent a year 1260 to 1290, 1.8 percent 1290 to 1340, 4.5 percent 1340 to 1355, and 12.7 percent a year compound in 1346 to 1355 (paper text). The paper says prices roughly doubled from 1260 to 1355 (the paper's own wording, and it seems low against the yearly rates, so treat as unverified arithmetic from their text).
- 1287: a new note (zhiyuanchao) set at five times the old note, giving the old note an 80 percent discount (paper text).
- After 1356 paper money was rejected by the public. When the Yuan fell in 1368 paper money was scrapped and barter was observed in all prefectures and counties (paper text).
- The authors find that military pressure, civil war especially, drove over-issue. Natural disasters and imperial grants did not.
- This is evidence on the second half of H1: paper money is only as good as the state that backs it (von Glahn argues low state capacity, per secondary summary).
Secondary (search summary, not opened): Song state took over jiaozi from private Sichuan merchants about 1023 or 1024. Denominations in strings (guan) of coin. Qianyin replaced jiaozi in 1105 and inflated. Huizi issued in 1161 by Southern Song. https://en.wikipedia.org/wiki/Jiaozi_(currency) . Status: secondary. I have no verified issue volumes for 1024 or the Southern Song, a gap.
Note on the paper's own text: a Song string was 770 wen (Song) and 1000 wen (Yuan) per guan, so "guan" is not the same weight over time.

## Section 7. How small were old states (H2)
Source: Karaman and Pamuk (2010), "Ottoman State Finances in European Perspective, 1500-1914", Journal of Economic History 70(3), 593 to 629. PDF opened: https://psi427.cankaya.edu.tr/uploads/files/Pamuk%2C%20Ott%20State%20Finances%2C%201500-1914%20%282010%29.pdf . Abstract page https://researchonline.lse.ac.uk/id/eprint/29558 . Status: verified for the quoted text. The per-head silver figures are only in Figure 5, which I could not read as numbers. Data base said to be at http://www.ata.boun.edu.tr/sevketpamuk/JEH2010articledatabase (not opened).
- Central revenue as a share of GDP or total income: the paper says it "rose in most of the European countries from less than 5 percent in the sixteenth century to a range between 5 and 10 percent and in a small number of cases that include Britain and the Netherlands to more than 10 percent by the 1780s" (my paraphrase of the printed passage, near pages 613 to 614).
- Ottoman Empire: per head cash revenue of the central administration "did not exceed three days of wages of an unskilled construction worker in Istanbul and remained below two days for most of this period" (paraphrase of the paper). Even with timar soldiers' contributions, rarely above four days.
- Army and navy sizes (thousands, Table 1, from Brecke): England 41 army and 25 navy in 1550, 76 and 115 in 1700, 79 and 109 in 1780. France 43 and 14, 224 and 118, 183 and 85. Spain 145 and 18, 37 and 26, 64 and 62. Ottoman 90 and 50, 130 and 30, 120 and 30.
Cross-check with BoE (Section 4c): England tax over output 2.2 percent in 1500 and 1.7 percent in 1600 (fits "under 5 percent"), 4.1 percent in 1650 and 3.9 percent in 1688. The paper's own cite says O'Brien and Hunt put England above 10 percent before 1800. I have not seen the BoE ratio for 1780s (sheet A26 stops in 1689).
Reading for H2: old states took a few percent of output. Taxes grew mostly through war and mostly in the countries that later grew fastest (England, Netherlands). The Ottoman state stayed low.

## Section 8. Books before and after the press (H2)
Source: Buringh and van Zanden (2009), "Charting the Rise of the West", Journal of Economic History 69(2), 409 to 445, https://econpapers.repec.org/RePEc:cup:jechis:v:69:y:2009:i:02:p:409-445_00 . Data as published by Our World in Data: printed books per half century https://ourworldindata.org/grapher/production-printed-books-half-century and manuscripts per century https://ourworldindata.org/grapher/manuscript-production-century . Status: verified (CSV opened through the fetch tool). Caution: manuscripts are counted as copies and printed books as copies too in the OWID series, but the paper's own notes say units differ (printed counted from editions times print runs, so an estimate). Manuscript regions are not the same as printed countries. Sums below were added by hand because my shell failed during this step, so the python3 -I check is NOT done for this section. Re-check before use.
Printed books per half century, selected countries (copies):
| place | 1475 (1450 to 1499) | 1525 | 1575 | 1625 | 1675 | 1725 | 1775 |
|---|---|---|---|---|---|---|---|
| Great Britain | 208,000 | 2,807,000 | 7,999,000 | 32,912,000 | 89,306,000 | 89,259,000 | 138,355,000 |
| Netherlands | 473,000 | 1,045,000 | 2,842,000 | 15,009,000 | 30,149,000 | 40,950,000 | 53,063,000 |
| Italy | 4,532,000 | 16,719,000 | 41,641,000 | 35,067,000 | 43,293,000 | 37,930,000 | 75,500,000 |
| Spain | 463,000 | 2,205,000 | 2,306,000 | 4,631,000 | 7,088,000 | 9,124,000 | 16,304,000 |
| France | 2,861,000 | 34,736,000 | 39,084,000 | 61,257,000 | 85,163,000 | 73,631,000 | 157,153,000 |
| Germany | 3,227,000 | 15,603,000 | 32,112,000 | 40,553,000 | 57,708,000 | 78,205,000 | 116,814,000 |
Manuscripts per century (copies), 1300s against 1400s: Italy 879,364 then 1,423,668. British Isles 155,513 then 208,729. Germany 293,814 then 515,116. Iberia 344,284 then 390,478. Netherlands 13,179 then 171,974. France 564,624 (1350) then 1,195,783 (1450).
Reading:
- Book supply rose after the press in every country, and fastest in the north. Britain went from 208,000 (1450 to 1499) to 2.8 million (1500 to 1549), a rise of about 13 times (2,807,000 over 208,000, hand check 13.5). Netherlands 1.0 million to 53 million by the 1700s.
- It also rose before the press. Manuscript copies in the 1400s were already well above the 1300s in most places (Italy up 62 percent, Germany up 75 percent by hand check). So rising book demand came before Gutenberg, and the press made books cheaper.
- Italy had 41.6 million printed copies in 1550 to 1599 and was flat at 35 to 43 million until 1700 to 1749. This matches the Italian stall in income (Section 5).
- Spain had 2 million in 1500 to 1549 and 16 million in 1750 to 1799. Britain 138 million and the Netherlands 53 million. This follows the literacy gap in Section 2.
- For H2: books and literacy rose long before income per head rose. In England the big rise in printed books (1575 to 1675: 8 million to 89 million, hand check 11 times) came during the stretch when income per head was flat or falling (Section 4a, 1600 to 1650). The press did not by itself bring output. It is a precondition at best.

## Section 9. The trap: war, famine, death (H4)
### 9a. War
Source: Hoffman, "Why Was It Europeans Who Conquered the World?", Journal of Economic History 2012, quoting Wright's A Study of War and Levy's War in the Modern Great Power System (found in a search summary, not opened). The share of time the principal European powers were at war: 71 percent in 1550 to 1600, 66 percent in 1600 to 1650, 54 percent in 1650 to 1700, 43 percent in 1700 to 1750, 29 percent in 1750 to 1800, 36 percent in 1800 to 1850. Status: secondary. URL https://typeset.io/pdf/why-was-it-europeans-who-conquered-the-world-1vckprfet9.pdf (search result, not opened). Levy's book (https://uknowledge.uky.edu/upk_military_history/12) is said to find the frequency of great power war has fallen over five centuries while severity rose. Status: secondary.
Reading: war was the normal state of the great powers for the whole early modern period. About two years in three were war years in 1550 to 1650. It fell below a third only in 1750 to 1800, after Britain, the Netherlands and others had already got richer. That fits H4 (war as a drag) and also H3 (wars paid for by borrowing).
### 9b. Famines
Source: Wikipedia "List of famines" (secondary, with some entries flagged "citation needed"). https://en.wikipedia.org/wiki/List_of_famines . Our World in Data's own famine dataset starts at 1860 (https://ourworldindata.org/famines) so it cannot supply 1300 to 1800.
| years | famine | place | deaths in the list |
|---|---|---|---|
| 1315 to 1317 | Great Famine | Europe | 7,500,000 (one mirror leaves it blank, so uncertain) |
| 1333 to 1337 | Yuan famine | China | 6,000,000 |
| 1601 to 1603 | Russian famine | Russia | 2,000,000 |
| 1630 to 1632 | Deccan famine | India | 7,400,000 |
| 1670 to 1671 | Kyungshin | Korea | 1,000,000 to 1,500,000 |
| 1693 to 1694 | Great Famine | France | 700,000 to 1,300,000 |
| 1695 to 1697 | Great Famine | Finland and Estonia | 150,000 in Finland, 70,000 to 100,000 in Estonia |
| 1709 to 1710 | Great Frost famine | France | 600,000 |
| 1740 to 1741 | Irish famine | Ireland | 300,000 to 480,000 |
| 1769 to 1773 | Bengal famine | India | 10,000,000 (other accounts say 2 million, and the figure is disputed) |
Status of every row: secondary. The 1315 to 1317 and Bengal numbers are the most uncertain. A sourced count for the whole period is not in hand (Gap).
### 9c. Real wages and population (England)
See Section 4b. Real earnings were highest when population was lowest (70.5 in 1450 against 28.7 in 1650) and about back to the 1300 level when population returned to its 1300 size (26.5 in 1300 at 4.73 million, 28.7 in 1650 at 5.31 million). That is the Malthusian pattern, in the Bank of England dataset (Clark and Broadberry series). Counter-evidence: Broadberry and co-authors find output per head in England rose about 0.20 percent a year from 1270 to 1700 (secondary, search summary of https://www.economics.ox.ac.uk/node/1851746), and doubled, even though daily wages did not. The authors suggest this is because people worked more days. So the "trap" is clear in wages and less clear in output. Also the Bouscasse, Nakamura and Steinsson NBER paper (https://www.nber.org/system/files/working_papers/w28623/w28623.pdf) disputes Clark's productivity series (secondary, not opened).
### 9d. Children and life (see Section 3)
In 1800 about 43 in 100 children in the world died before five, and about 33 in 100 in Britain (verified, OWID/Gapminder).
### 9e. Early leaders that stalled (from Section 5 and Section 1)
- Song China: 1006 (1020) to 1103 (1700) to 614 (1800), in 1990 dollars (Broadberry, Guan and Li).
- Northern Italy and Italy: 1668 (1450) to 1244 (1600) and 1350 (1850).
- Holland: 2372 (1600) to 2440 (1750), flat over 150 years, and then 1752 at 1800 (with a series break).
Each of these cases had a lead in one of money, trade or books and still stalled. That supports the idea of a trap or at least of a lack of a continuing chain. It does not tell what stopped each one. That is a question for the R15B lane.

## Section 10. Financing the first modern things (H3)
### 10a. Government debt
BoE sheet A29 and A21 (Section 4c): funded debt 5.9 percent of GB output in 1700, 74 percent in 1750, 152 percent in 1815. Hand/python check done earlier.
OBR, "300 years of UK public finance data", https://articles.obr.uk/300-years-of-uk-public-finance-data/ (opened): debt started from 22 percent of GDP in 1700 to 1701, was 155 percent on the eve of the Napoleonic wars and close to 180 percent after Waterloo. Taxes averaged 8 percent of GDP in the 1700s. Borrowing peaked between 5 and 11 percent of GDP in each major war. Debt service took close to two fifths of annual revenue around 1815. Status: verified (opened) for these numbers.
Mismatch to note: BoE funded debt 1700 is 5.9 percent against OBR 22 percent. The OBR figure includes unfunded and other debt. The two 1815 figures also differ (152 and about 180). The chapter should quote one source and name it.
### 10b. Investment share and early factories
- Investment share of national income: about 9 percent in the 1760s and almost 14 percent in the 1850s, citing Feinstein (secondary, from a search summary, https://www.taylorfrancis.com/books/9781136588952/chapters/10.4324%2F9781315019383-17, not opened). Broadberry and de Pleijt (2021) say the domestic investment rate barely reached 10 percent by the 1830s (secondary, https://cepr.org/voxeu/columns/capital-and-economic-growth-britain-1270-1870-preliminary-findings, could not open it, 403). These two sources differ for the 1830s to 1850s window (14 percent against about 10 percent). Status: secondary and conflicting.
- Capital stock grew about 1.0 percent a year in 1761 to 1800 and 1.7 percent a year in 1801 to 1840 (same secondary source).
- Robert Allen argues that from 1800 to 1840 GDP per worker rose 37 percent, real wages stagnated and the profit rate doubled, and that rising profits financed capital accumulation (Oxford working paper, https://ora.ox.ac.uk/objects/uuid:ee5e13de-74db-44ce-adca-9f760e5fe266/files/mc00b987cc3c72f88eb4042337e871c18 , secondary summary). So early factories leaned on retained profit, not mainly banks or stock markets. No share number found, a gap.
### 10c. Railways
Wikipedia "Railway Mania" (opened): 263 Acts passed in 1846 for new railway companies, with proposed lines of 9,500 miles. About one third of lines authorised 1844 to 1847 were never built (cited to Casson 2009). 6,220 miles built from projects authorised 1844 to 1846 (section flagged as unsourced). https://en.wikipedia.org/wiki/Railway_Mania . Status: secondary.
A history page quoted in a search summary gave railway spending as under 4 million pounds a year in the early 1840s and over 30 million in 1847, about 45 percent of domestic capital investment (secondary, unverified, https://en.wikipedia.org/wiki/Railway_Mania was not the source). A blog guess of 10 to 20 percent of GDP in peak years is not usable. Share of GDP is a gap. Check: 1847 GB nominal GDP is not in my extract, so I could not compute 30 million over GDP.
### 10d. Schooling
- England: 1870 Act created school boards (not free or compulsory itself). Net primary enrolment in OWID (Lee and Lee 2016, adjusted ratio): United Kingdom 39 percent in 1870 and 97.8 percent in 1900 (verified in the CSV, https://ourworldindata.org/grapher/primary-enrollment-selected-countries). Compulsory in 1880 and fees abolished in 1891 and 1888 per secondary references, https://www.wikipedia.com/wiki/Mass_education (search summary). The search summary wrongly said the 1870 act made schooling free and compulsory, I corrected it from the other sources, mark unverified.
- Prussia: General-Landschul-Reglement of 1763, compulsory schooling decree, mostly paid by municipalities (secondary, https://www.Wikipedia.com/wiki/Prussian_education_system).
- Share of output spent on schooling: not found (Gap). The BoE sheet A28a has education spending from 1855 but I did not read it (shell failure).

## Section 11. Enrolment and Malaysia (H2)
OWID net primary enrolment (Lee and Lee 2016), percent: 
| place | 1870 | 1900 | 1950 | 1960 | 1970 | 1980 | 2000 |
|---|---|---|---|---|---|---|---|
| World | 16.7 | 27.3 | 56.6 | 68.6 | 71.9 | 78.8 | 80.8 |
| United Kingdom | 39 | 97.8 | 100 | 86.7 | 98 | 96 | 99.9 |
| Netherlands | 80.1 | 83.5 | 88.6 | 95.7 | 93 | 93 | n/a |
| Spain | 52.5 | 48.7 | 63.5 | 81.3 | 94 | 100 | n/a |
| Italy | 49.8 | 68.3 | 98.6 | 100 | 100 | 96.7 | n/a |
| Sweden | 100 | 100 | 100 | 94 | 92.7 | 96.4 | n/a |
| China | 0.08 | 1.4 | 32.9 | 68.2 | 68.2 | 80.4 | 93.3 (1997) |
| India | 1.5 | 7.0 | 32.7 | 47.6 | 57 | 63.3 | 87.9 |
| Malaysia | 1.1 | 7.4 | 67.0 | 96 | 92.4 | 95 | 97.2 |
Source and status: verified (CSV opened in parts through the fetch tool). The series is modelled in places, for example Malaysia 67.0 in 1950 then 52.3 in 1955 then 96 in 1960 and UK 100 in 1950 then 86.7 in 1960, so single-year values carry noise and early years are estimates. The World value of about 72 percent in 1970 matches the owner's "roughly 70 percent chance that a child goes to school" (net enrolment, 1970). Malaysia: no 1957 value in the series. Nearest 1955 52.3 percent and 1960 96 percent. Adult literacy about 52 percent around 1957 is from an unattributed secondary document, unverified.
Cross-check of two data sets for Malaysia in 1950: OWID literacy 37.5 percent (Section 2) against net enrolment 67 percent. These measure different things. Do not mix them.

## Section 12. Interest rates, Dutch finance, Spanish silver (H1)
- Schmelzing (2020), Bank of England Staff Working Paper 845, https://www.bankofengland.co.uk/working-paper/2020/eight-centuries-of-global-real-interest-rates-r-g-and-the-suprasecular-decline-1311-2018 . Opened the abstract page. Verified: coverage 1311 to 2018, about 78 percent of advanced economy GDP, a trend decline of 0.6 to 1.6 basis points a year. Bank Underground summary (https://bankunderground.co.uk/2020/07/07/global-real-rates-1311-2018/, opened): higher-rate periods around 1320 to 1480 and 1520 to 1650, private safe real rate trend of -0.6 basis points a year, average R minus G spread over the past 500 years just under 2.5 percent. Level of real rates by century: NOT obtained (the numbers sit in charts and in the PDF, which my fetch tool could not read, and the file is saved at /root/.claude/projects/-home-user-lastlonger/41b7d58e-bedc-5a4f-859e-bd3e52b76ed8/tool-results/webfetch-1794814567669-jxdcyz.pdf for a later read with pdftotext). Note a basis point is one hundredth of a percent, so 0.6 to 1.6 basis points a year is 0.006 to 0.016 percentage points a year, about 5 to 13 points over 800 years if it ran the whole time (hand check: 0.006 x 800 = 4.8, 0.016 x 800 = 12.8).
- Same paper, as a caution from a secondary summary: a Rothschild note says real rates in the distant past look much higher than today's, and Schmelzing does not argue cause. Status: secondary.
- Dutch yields: Global Financial Data says its Dutch government bond series runs 1606 to 1699 and yields settled around 4 percent from the mid 1600s (search summary, page failed to load when I tried to open it). Another search summary says Holland borrowed at 3 to 4 percent when the Bank of England borrowed at 8 percent in 1694 and that Venice and Genoa paid 6 to 10 percent in the medieval period against 10 to 15 percent for other rulers. Both secondary, unverified. https://globalfinancialdata.com/7-centuries-of-government-bond-yields
- English comparison from the BoE workbook (Section 4d): government long yield 6.0 percent in 1705, 4.0 in 1720, 3.0 in 1740 and 1750. So England reached the Dutch level about 50 years later.
- Bank of Amsterdam: opened 31 January 1609 (secondary, search summary, https://en.wikipedia.com/wiki/Wisselbank). Gelderblom and Jonker (2004) JEH say private finance came before public finance in the Republic and the Amsterdam market by 1609 was strong enough to dictate terms on new public debt (secondary, https://ideas.repec.org/a/cup/jechis/v64y2004i03p641-672_00.html). So the sequence ran from market to state, the opposite of the usual "state credit then growth" order. That cuts against a simple reading of North and Weingast.
- Counter-evidence to North and Weingast (1989): Clark (1996) found no break in private returns to land and capital around 1688. Sussman and Yafeh (2006) found interest rates rose for about three decades after 1688. A study of London Corporation borrowing shows rates diverging between 1688 and the 1730s (all secondary, from the search summary of https://voxeu.org/article/historical-view-government-defaults-lessons-17th-century and https://people.bu.edu/chamley/HSFref/PincusRobinson11.pdf , not opened). My own BoE reading (Section 4d) is consistent with that: the first government yield I have is 6.0 percent in 1705, equal to the private mortgage rate, and 8.3 percent in 1710.
- Spain's silver (secondary, https://en.wikipedia.org/wiki/Price_revolution): Hamilton's totals give about 3,915 tonnes of silver and about 210 million pesos of specie in the 16th century recorded at Seville (undercount). Combined with the data in Section 5, Spain's output per head was 889 in 1500 and 944 in 1600 (1990 dollars) and prices rose. Money arrived in volume and output per head did not. The Crown went bankrupt in 1575 and 1579 per one summary, other dates unverified. Status: secondary. This is the strongest single case against "more money means more output" in the lane.

## Evidence for and against H1 to H4

### H1. Money, credit and output
For:
- Netherlands, the richest place in 1600 to 1650 (4270 and 4316 in 2011 dollars, Section 1), had an early deep credit market (Bank of Amsterdam 1609, public yields near 3 to 4 percent) and had the highest output per head in Europe (Sections 1, 5, 12).
- England's debt rose from 6 percent to 74 percent of output between 1700 and 1750 and government yields fell from 6 to 3 percent, in the same decades that output per head rose from 1446 (1650) to 2412 (1700) to 2702 (1750) (Sections 1, 4).
- Yuan China shows that when paper money is overissued, the money system collapses to barter by 1368 (Section 6). Money needs a state behind it.
Against:
- Spain: silver poured in and output per head was 1118 (1500) and 1295 (1600) in 2011 dollars, flat over 150 years (Sections 1, 5, 12).
- England 1600 to 1650: coin per head rose 2.7 times while output per head fell 14 percent (Section 4a). From 1500 to 1700 coin per head rose about 7.7 times and output per head 45 percent.
- Song China had paper money by the 1020s and was about a third richer than England per head at the time of the Domesday survey (878 against 754 in 1090), and still fell back to 614 by 1800 (Section 5). Early money did not lock in growth.
- The Dutch Republic had the best credit of its day and stalled from 1600 to 1750 (Section 5).
- England 1688: private rates did not clearly fall right away (Section 4d, Section 12), so the link from credit rights to cheaper credit is weaker than the textbook story.
- Output per head did not start moving until about 1650 to 1700 in England, long after coin and credit had grown. Direction of cause is not shown by these series.

### H2. State, schooling, knowledge
For:
- Old states took under 5 percent of output in the 1500s (Karaman and Pamuk). England 2.2 percent in 1500 (BoE). The richest states (England, Netherlands) later took more than 10 percent (Section 7).
- Literacy was 53 percent in Britain and the Netherlands in 1650, against 5 percent in Spain. Spain's income was flat (Sections 2, 5).
- Book supply rose 13 times in Britain in the half century after the press and far faster in the north than in Spain (Section 8).
- World net primary enrolment was about 17 percent in 1870 and about 72 percent in 1970 (Section 11).
Against:
- English literacy was flat at 53 and 54 percent from 1650 to 1750 while output per head rose from 1446 to 2702 (Sections 1, 2). So rising literacy did not run with the rise.
- Italy and Song China had books, schools, and rich states and still stalled (Sections 5, 8).
- England's mass schooling came late: net enrolment was 39 percent in 1870 and 97.8 percent in 1900, well after income per head had doubled since 1700 (Sections 1, 11). In England, income came first, and mass schooling after it. Elite and grammar literacy came earlier.
- The Netherlands had enrolment of about 80 percent in 1870 and Sweden 100 percent, yet Sweden was not richer than Britain then. (Sweden income not pulled, a gap.)

### H3. Borrowing for the first big projects
For:
- GB funded debt moved from 6 percent of output (1700) to 74 percent (1750) to 152 percent (1815) in BoE data, and OBR gives 22, 155 and about 180 percent (Section 10a). War borrowing peaked at 5 to 11 percent of GDP in major wars.
- Railways were a very large borrowed project. Parliament passed 263 railway Acts in 1846 for 9,500 miles (Section 10c). One third of lines authorised in 1844 to 1847 never got built.
- A schooling decree in Prussia (1763) was paid by municipalities and the English 1870 Act created tax-paid school boards (Section 10d).
Against:
- Early factories were financed mostly by profits and local credit, per Allen and others, not by new borrowing (Section 10b, secondary).
- The investment share was only about 9 percent in the 1760s and perhaps 10 to 14 percent by the 1830s to 1850s (Section 10b). Industrial take-off in Britain was not a huge borrowed leap.
- Old states took a few percent of output in tax, so the "very large threshold of promises" for armies may have been met by war borrowing and not by the other links (schools, roads). I have no sourced number for schooling as a share of output.

### H4. The trap
For:
- English real earnings fell from 70.5 (1450) to 28.7 (1650) while population rose 2.8 times, back to the level of 1300 (Section 4b).
- About 43 in 100 children died before five in 1800 (world), 33 in Britain, and the figure was almost unchanged to 1900 for the world (42.8 to 40.9) (Section 3).
- The great powers were at war about 71 percent of the time in 1550 to 1600 and 66 percent in 1600 to 1650 (Section 9a, secondary).
- Famine lists show millions dead in single events (Section 9b, secondary).
- Early leaders stalled: Italy 1668 (1450) to 1244 (1600), Holland flat 1600 to 1750, China 1103 (1700) to 614 (1800) (Sections 5, 9e).
Against:
- Output per head in England rose about 0.20 percent a year from 1270 to 1700 and doubled, even though daily wages did not (Broadberry and co-authors, secondary), so the trap in output is looser than in wages. The BoE/Maddison England series is 1159 in 1300 and 2412 in 1700 (Section 1).
- Real earnings after 1700 stopped following population down: 48.6 in 1750 with population 5.89 million, compared with 28.7 in 1650 at 5.31 million (Section 4b).
- The trap evidence is about England. For China the Maddison series shows 1543 in 1700, higher than 1207 in 1500, so the Qing fall after 1700 is the core of that case.
- War frequency fell to 29 percent by 1750 to 1800 before the take-off, so it may have been a condition that eased, not a cause that persisted.

## Gaps
1. Velocity of money for England 1300 to 1700 is not in the BoE workbook as a series. Palma's indirect coin series uses assumed velocity, so it cannot test H1. Only the direct series was used.
2. Level of real interest rates by century from Schmelzing (1300s, 1500s, 1700s, today) not read. Saved PDF needs pdftotext. Homer and Sylla not opened.
3. Dutch Republic government bond yields (3 to 4 percent) rest on secondary summaries only. No Gelderblom and Jonker table opened.
4. Song China issue volumes of jiaozi (1024) and Southern Song output not found. Song output per head vs England at the same year only for 1090.
5. Northern Italy alone is not separated. The Italy series (Malanima) is for all Italy. Maddison 2023 has no Italy value before 1820.
6. Share of the British budget spent on war (Brewer, O'Brien) not found as a number. BoE sheets A27, A28 were not read.
7. Railway capital as a share of GDP not found. Retained profit share of early factory finance not found. Education spending as a share of output not found.
8. Karaman and Pamuk per head silver figures are in Figure 5 only. Dincecco's per head table not opened.
9. Famine counts are from a Wikipedia list only. Hoffman's war share table was seen in a search summary only. Levy's own counts not seen.
10. Malaysia literacy at 1957 not found. Nearest are enrolment in 1955 (52.3 percent) and 1960 (96 percent) in a noisy series.
11. Life expectancy before 1800 for England not pulled (BoE or OWID has UK life expectancy 33.9 in 1543 and 42.8 in 1850 in the OWID life-expectancy file, I saw the numbers but did not use them above, so treat as noted, not a result).
12. My shell failed during the last third of the work, so the python3 -I check is done for Sections 1, 4 and 5 (and the percentages shown there) and NOT for Sections 8 to 12 (hand arithmetic only, marked).
13. Colonial American paper money (named in the frame) was outside my lane list and not searched.
14. Dating: the OBR debt ratio (22 percent in 1700) and BoE funded debt (5.9 percent) differ. Needs a decision on which one the chapter will use.

## Ledger
| id | claim | tier | status | source URL | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R15A-01 | England/GB GDP per person (2011 dollars) 1159 in 1300, 1446 in 1650, 2412 in 1700, 3343 in 1800 | T1 | confirmed | https://dataverse.nl/api/access/datafile/421302 | 2023 | 2026-11-16 | A newer Maddison release or Broadberry revision that changes the 1650 to 1700 values |
| R15A-02 | Netherlands output per head 4316 in 1650 was 2.98 times England's 1446 | T1 | confirmed | https://dataverse.nl/api/access/datafile/421302 | 2023 | 2026-11-16 | Revised Dutch or English 1650 estimate |
| R15A-03 | Spain output per head 1118 (1500) to 1295 (1600) to 1009 (1650) | T1 | confirmed | https://dataverse.nl/api/access/datafile/421302 | 2023 | 2026-11-16 | Revised Alvarez-Nogal and Prados de la Escosura series |
| R15A-04 | China output per head fell 43 percent from 1543 in 1700 to 882 in 1820 | T1 | confirmed | https://dataverse.nl/api/access/datafile/421302 | 2023 | 2026-11-16 | Revised China series (the 1700 point is a single benchmark) |
| R15A-05 | World output per head about 1128 in 1820 (2011 dollars) | T1 | confirmed | https://dataverse.nl/api/access/datafile/421302 | 2023 | 2026-11-16 | Revised regional weights |
| R15A-06 | Northern Song China 878 versus England 754 in 1090 (1990 dollars), China peak 1006 in 1020 | T1 | confirmed | https://ora.ox.ac.uk/objects/uuid:1aa49524-f613-4668-a34b-8a7fcc485b74/files/scz30pt16x | 2017 | 2026-11-16 | Critique of the Song benchmark (for example a different grain wage or population base) |
| R15A-07 | Italy 1668 in 1450 fell to 1244 in 1600 and 1350 in 1850 (1990 dollars) | T1 | confirmed | https://ora.ox.ac.uk/objects/uuid:1aa49524-f613-4668-a34b-8a7fcc485b74/files/scz30pt16x | 2017 | 2026-11-16 | Regional split showing northern Italy rising |
| R15A-08 | Holland output per head 2372 (1600) and 2440 (1750), flat 150 years | T1 | confirmed | https://ora.ox.ac.uk/objects/uuid:1aa49524-f613-4668-a34b-8a7fcc485b74/files/scz30pt16x | 2017 | 2026-11-16 | Revised van Zanden and van Leeuwen series |
| R15A-09 | English coin per head 0.27 pounds (1500), 0.85 (1600), 2.26 (1650), 2.07 (1700), direct method | T1 | confirmed | https://www.bankofengland.co.uk/-/media/boe/files/statistics/research-datasets/a-millennium-of-macroeconomic-data-for-the-uk.xlsx | 2017 data, workbook v3.1 | 2026-11-16 | New direct coin estimates by Palma or Mayhew |
| R15A-10 | 1600 to 1650 coin per head rose 2.7 times while real GDP per head fell 14 percent | T1 | confirmed | same BoE workbook | same | 2026-11-16 | Revision to 1650 GDP (the Civil War dip is a thin point) |
| R15A-11 | English real earnings index 26.4 (1347), 51.9 (1350), 70.5 (1450), 28.7 (1650) with population 1.90 million (1450) and 5.31 million (1650) | T1 | confirmed | same BoE workbook | same | 2026-11-16 | Different wage series (for example adjusting for days worked) |
| R15A-12 | English tax revenue about 2.2 percent of output in 1500, 1.7 percent in 1600, 4.1 percent in 1650 | T1 | confirmed | same BoE workbook (O'Brien and Hunt) | same | 2026-11-16 | New revenue or GDP estimates for the 1500s |
| R15A-13 | GB funded debt 5.9 percent of output in 1700, 74 percent in 1750, 152 percent in 1815 | T1 | plausible | same BoE workbook | same | 2026-11-16 | OBR figures of 22 percent (1700) and about 180 percent (1815) differ because of definitions |
| R15A-14 | UK debt 22 percent of GDP in 1700, 155 percent before Napoleonic wars, about 180 percent after Waterloo, taxes 8 percent of GDP in 1700s | T2 | confirmed | https://articles.obr.uk/300-years-of-uk-public-finance-data/ | undated | 2026-11-16 | OBR revision |
| R15A-15 | Private mortgage rate 6 percent (1688 to 1700) to 4 percent (1735), government yield 6.0 (1705), 8.3 (1710), 4.0 (1720), 3.0 (1750) | T1 | plausible | same BoE workbook (Allen 1988 for mortgage rate) | same | 2026-11-16 | Evidence the private series is a legal ceiling and not a market rate |
| R15A-16 | Central revenue under 5 percent of GDP in the 1500s in most European states and over 10 percent in Britain and the Netherlands by the 1780s | T2 | confirmed | https://psi427.cankaya.edu.tr/uploads/files/Pamuk%2C%20Ott%20State%20Finances%2C%201500-1914%20%282010%29.pdf | 2010 | 2026-11-16 | Karaman and Pamuk data base revision |
| R15A-17 | Ottoman per head cash revenue under three days of an unskilled wage | T2 | confirmed | same Karaman and Pamuk PDF | 2010 | 2026-11-16 | Other Ottoman budget series |
| R15A-18 | Literacy 53 percent in Britain and Netherlands in 1650, 5 percent in Spain, 85 in Netherlands and 54 in Britain in 1750 | T2 | confirmed | https://ourworldindata.org/grapher/cross-country-literacy-rates | undated | 2026-11-16 | Revision of the Buringh and van Zanden model (values are modelled from books) |
| R15A-19 | World literacy 12.0 percent in 1820, 21.4 in 1900, 36.0 in 1950, 87.7 in 2024 | T2 | confirmed | https://ourworldindata.org/grapher/cross-country-literacy-rates | undated | 2026-11-16 | Revision of OECD How Was Life or UNESCO |
| R15A-20 | World net primary enrolment 16.7 percent (1870), 56.6 (1950), 71.9 (1970), UK 39 (1870) and 97.8 (1900) | T2 | confirmed | https://ourworldindata.org/grapher/primary-enrollment-selected-countries | undated | 2026-11-16 | Revision of Lee and Lee 2016 (values are noisy, see Malaysia 1950 to 1960) |
| R15A-21 | Malaysia net primary enrolment 52.3 percent (1955), 96 (1960) | T2 | plausible | same | undated | 2026-11-16 | National census data for 1957 |
| R15A-22 | Britain printed books 208,000 (1450 to 1499) to 2,807,000 (1500 to 1549), about 13 times | T2 | confirmed | https://ourworldindata.org/grapher/production-printed-books-half-century | undated | 2026-11-16 | Revised print run assumptions |
| R15A-23 | Manuscripts in Italy rose 62 percent from 879,364 (1300s) to 1,423,668 (1400s) | T2 | plausible | https://ourworldindata.org/grapher/manuscript-production-century | undated | 2026-11-16 | Different counting of lost manuscripts |
| R15A-24 | World share of children dying before five 42.8 percent in 1800, 40.9 in 1900, 24.7 in 1950, 3.8 in 2023. Britain 32.9 in 1800 | T2 | confirmed | https://ourworldindata.org/grapher/child-mortality-complete-gapminder | undated | 2026-11-16 | New demographic estimates for 1800 (modelled values) |
| R15A-25 | Yuan paper money: 80 percent discount on old notes in 1287, inflation 11.0 percent a year 1260 to 1290, barter by 1368 | T1 | confirmed | https://hummedia.manchester.ac.uk/schools/soss/economics/discussionpapers/EDP-2207.pdf | 2024 | 2026-11-16 | Final published version of the paper changes the figures |
| R15A-26 | Great powers at war 71 percent of time in 1550 to 1600, 66 in 1600 to 1650, 29 in 1750 to 1800 | T3 | unverified | https://typeset.io/pdf/why-was-it-europeans-who-conquered-the-world-1vckprfet9.pdf | 2012 | 2026-11-16 | Levy or Wright tables show different shares |
| R15A-27 | Famines: 1315 to 1317 Europe 7.5 million, 1693 to 1694 France 0.7 to 1.3 million, Bengal 1770 disputed 2 to 10 million | T3 | unverified | https://en.wikipedia.org/wiki/List_of_famines | undated | 2026-11-16 | Scholarly demographic estimates below those listed |
| R15A-28 | Investment about 9 percent of national income in the 1760s and almost 14 percent in the 1850s (Feinstein), against about 10 percent by 1830s (Broadberry and de Pleijt) | T3 | unverified | https://www.taylorfrancis.com/books/9781136588952/chapters/10.4324%2F9781315019383-17 | undated | 2026-11-16 | Feinstein tables read directly |
| R15A-29 | Railway Mania: 263 Acts in 1846 for 9,500 miles, one third of lines authorised 1844 to 1847 never built | T3 | plausible | https://en.wikipedia.org/wiki/Railway_Mania | undated | 2026-11-16 | Casson or Campbell primary counts |
| R15A-30 | Schmelzing: real rates fell 0.6 to 1.6 basis points a year since the late medieval upheavals, 78 percent of advanced economy GDP covered | T2 | confirmed | https://www.bankofengland.co.uk/working-paper/2020/eight-centuries-of-global-real-interest-rates-r-g-and-the-suprasecular-decline-1311-2018 | 2020 | 2026-11-16 | Alternative reconstructions (for example a critique of the private safe asset series) |
| R15A-31 | Dutch government yields near 3 to 4 percent in the 1600s and Bank of Amsterdam opened 1609 | T3 | unverified | https://globalfinancialdata.com/7-centuries-of-government-bond-yields | undated | 2026-11-16 | Gelderblom and Jonker annuity yield tables |
| R15A-32 | Clark found no break in private returns around 1688 and Sussman and Yafeh found rates rose for three decades after | T3 | plausible | https://voxeu.org/article/historical-view-government-defaults-lessons-17th-century | undated | 2026-11-16 | Original papers contradict the summary |
| R15A-33 | Spain silver: about 3,915 tonnes recorded at Seville in the 1500s (Hamilton) | T3 | unverified | https://en.wikipedia.org/wiki/Price_revolution | undated | 2026-11-16 | Later archive totals such as TePaste |
| R15A-34 | Output per head England grew about 0.20 percent a year 1270 to 1700 and doubled while daily real wages did not rise | T3 | plausible | https://www.economics.ox.ac.uk/node/1851746 | 2015 | 2026-11-16 | The book tables read directly |
| R15A-35 | Prussia 1763 school decree funded mostly by municipalities, England 1870 school boards, 1880 compulsory, 1891 free | T3 | unverified | https://www.Wikipedia.com/wiki/Prussian_education_system | undated | 2026-11-16 | Statute texts |
