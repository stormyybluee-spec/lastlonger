# Verification report, chapter rb-peasant (round 15)

Files used: DRAFT_R15.md and the two lanes R15A-data.md and R15B-arguments.md. Re-fetches are listed in section 3. Arithmetic was run with python3 -I. Status words: match, mismatch, unsupported, overstated.

## 1. Headline result

Of 106 items traced: 45 match, 30 overstated, 18 unsupported, 13 mismatch.
Most serious: the claim that no account says money mattered (blocks 0, 48, 50) is contradicted by Palma, whom the draft quotes. Block 44 says output per head rose slowly to 1650, but the series fell 16% from 1400.
Dutch "cheapest credit in Europe" and "three times as rich" (14, 17, 43, 52) rest on no verified row or on a trough year. Indiana "reached the building sites" (33) is wrong. Gregory King is misdated and called a count (8).
Source labels in block 57 name lane notes instead of the real papers. Section 4 lists plausible rows printed as fact.

## 2. Main table

| id | block | draft's words (short) | status | what the source says | suggested wording |
|---|---|---|---|---|---|
| VF-01 | 0 | China had paper money eight hundred years before Europe's factories | overstated | State paper money from 1023 (von Glahn, Hoover). First mills about 1771 to 1785. That is about 750 years. | "more than seven centuries before" |
| VF-02 | 0 | Spain got the most silver and fell behind | match | Palma 2019 names Spain as a first order receiver that did not grow. Maddison: Spain 1,372 (1300), 1,118 (1500), 1,318 (1800). | keep |
| VF-03 | 0 | Old states collected only a few percent, most could not read, books rare | match | Karaman and Pamuk: under 5% in the 1500s. Bank of England: England 2.2% and 1.7%. World literacy 12% in 1820. England was 4.1% by 1650 and literacy in England was about 53% in 1650 on the model series, so "most could not read" is a world claim only. | add "in the world as a whole" |
| VF-04 | 0, 31, 37, 52, 54 | first factories built from profits and family savings | overstated | James 1996 says British firms relied "primarily on internal" financing for long term fixed investment. The words "family savings" and "credit from merchants" do not appear in the James text I opened. Mokyr and Chapman (same paper) argue weak capital markets held firms small. | "mostly from the owners' own funds and reinvested profits, say most scholars, though some dispute this" |
| VF-05 | 0, 48, 50 | no leading account says it was money. None of them says the missing piece was money | mismatch | Palma 2019 (opened) says the rise in money supply "generated Smithian growth ... and facilitated the transition into modern economic growth". His 2022 paper finds real effects on output (R15B 1.7, secondary). Rousseau and Sylla say growth "might have been finance-led". Day, Spufford and Munro argue a bullion famine hurt trade. | "most leading accounts name other links, though Palma and Rousseau and Sylla argue money or finance led" |
| VF-06 | 1 | Chapter 02 and 03 findings, rb-02 | unsupported | Cross references to other chapters. No lane row covers them. Not checkable from these files. | verifier of those chapters to confirm |
| VF-07 | 8 | In 1688 ... King sat down to count his whole country, family by family | mismatch | King's table is for 1688 but was written in 1696 (R15B row 1, ledger R15B-32). It is an estimate for England and Wales, not a family by family count. Draft block 57 itself says "estimates". | "In 1696 the English statistician Gregory King estimated the people of England as they stood in 1688" |
| VF-08 | 8 | He was a careful man, and his table is one of the first of its kind | unsupported | No lane row. | cut, or source it |
| VF-09 | 8 | 400,000 families of cottagers and paupers, about 1.3 million people | match | York page: 400,000 families, 3 and a quarter heads each, which is 1.3 million. | keep |
| VF-10 | 8 | Each family lived on about six and a half pounds a year | match | £6.5 per family per year (column "yearly income per family"). Per head it is about £2. | keep, say "per family" (it does) |
| VF-11 | 9 | 849,000 families "decreasing the wealth of the kingdom" | match | King's wording is exact. 849,000 families, 2,825,000 people. The York page scrambles which count sits on which line. Sums fix it: 511,586 plus 849,000 equals 1,360,586. The 849,000 group includes the 400,000 cottagers and paupers. | keep |
| VF-12 | 9 | More than half the families | match | 849,000 of 1,360,586 is 62.4%. | "about three in five" is more exact |
| VF-13 | 9 | They spent more than they earned | match (partly checked) | This is the meaning of King's heading. I did not open King's expense columns. | keep, say "in King's reckoning" |
| VF-14 | 9 | one of the richest countries on earth | unsupported | No lane row. Maddison 1700: Netherlands 3,377, England 2,412, France 1,758. | "a rich country by the standards of its time" or cut |
| VF-15 | 10 | French famines 1693 to 1710 killed over two million | match | Ó Gráda and Chevet abstract (opened): "two massive famines that struck France between 1693 and 1710, killing over two million people". The lane's Wikipedia list sums to only about 1.3 to 1.9 million, so the lanes disagree. | "about two million (estimates differ)" |
| VF-16 | 10 | about 43 of every 100 children born in 1800 died before five. In Britain about 33 | match | OWID Gapminder file: world 42.8, UK 32.9 (1800). These are modelled values and are a death rate in the year, not a cohort. | "an estimated 43 of every 100 children" |
| VF-17 | 10 | And England was lucky | unsupported | No lane row. | cut |
| VF-18 | 13 | History ran that experiment several times | overstated | Four cases with war, resource curse and weak states mixed in. Not a controlled test. | "History gives four cases to look at" |
| VF-19 | 14 | Spain 1,118 in 1500, 1,295 in 1600, 1,009 in 1650 | match | Maddison 2023 file: 1117.995, 1295.085, 1008.988. | keep numbers |
| VF-20 | 14 | "in today's money" | mismatch | Units are 2011 international dollars (prices compared across countries and years). Not today's money and not exchange rate dollars. | "in 2011 international dollars, which allow for price differences" |
| VF-21 | 14 | It rose a little and then fell below where it began | overstated | True for 1500 to 1650. But Maddison has 1,280 (1700) and 1,318 (1800), above 1500. The 1650 point is a trough. | add "it recovered a little by 1700" |
| VF-22 | 14, 15 | England 1600 to 1650 coins per person rose 2.7 times, output fell 14% | match with caveat | Bank of England direct series: 0.85 to 2.26 pounds a head is 2.65 times. Output 1,143 to 978 is minus 14.4% (2013 pounds). The indirect series gives 2.3 times. 1650 coin is 11.99 million then 10.0 million in 1688. It is the Civil War period. | "about 2.3 to 2.7 times" and say "during the Civil War" |
| VF-23 | 14 | China, from 1023, State paper money | match | Hoover (opened): state took over jiaozi in 1023. Private Sichuan notes came earlier. | keep |
| VF-24 | 14 | In 1090 China was richer per person than England | match | Broadberry, Guan and Li table: China 878, England 754 (1990 dollars). One benchmark year. | keep, add "by one estimate" |
| VF-25 | 14 | paper money lost value at about 11% a year from 1260 to 1290 | overstated | Guan, Palma and Wu give 11.0% for 1260 to 1290, but they also say prices only about doubled from 1260 to 1355. 11% a year for 30 years would multiply prices about 23 times. The paper is inconsistent on units. | "prices rose fast under the Mongols (the authors report 11% for 1260 to 1290)" |
| VF-26 | 14 | by 1368 people were back to barter | match | Paper: paper money rejected after 1356, scrapped in 1368, "barter was observed in all prefectures and counties". | keep |
| VF-27 | 14, 17, 52 | Holland, the cheapest credit in Europe | unsupported | No confirmed lane row. R15B Part 4 item 6 asserts it with no source. R15A-31 is unverified. My search found Dutch private rates 4.5% by 1655 but no cross country comparison. | "very cheap credit by the standards of the time" or cut |
| VF-28 | 14 | borrowed at 4% when the English king paid 6% to 30% | overstated | North and Weingast p. 822 (opened): Holland borrowed 5 million long term at 4%. The English Crown "could only borrow small amounts at short term, paying between 6 and 30 percent". Not like for like, and "Holland" is the province. | "Holland borrowed long term at 4%, while the English crown paid 6% to 30% on short loans" |
| VF-29 | 14, 43 | In 1650 about three times as rich as England | overstated | Maddison: 4,316 over 1,446 is 2.98. But England 1650 is a trough. Same file gives 2.5 in 1600 and 1.4 in 1700. Broadberry, Guan and Li: 2,171 over 1,110 is 1.96. | "between two and three times" |
| VF-30 | 14 | Then it stopped growing for 150 years | mismatch | Lane window is 1600 to 1750 (2,372 to 2,440). Draft puts it after 1650. From 1650 to 1800 the sources show a fall (Maddison minus 22% to 1700 then back, BGL 2,171 to 1,752). Block 43 says 1600 to 1750. | use "no growth per person from 1600 to 1750" in both places |
| VF-31 | 15 | four places had more money or cheaper credit than their neighbours | unsupported | No neighbour comparison for England or China in the lanes. | "four places with notable money or credit" |
| VF-32 | 15 | one printed its way to ruin | overstated | Paper: over issue was driven by war and civil war. Inflation was 1.8% a year 1290 to 1340. Collapse came after 1356. | "money lost trust in the last decades of the Mongol rule" |
| VF-33 | 16 | Palma: 40% of households on wages in the 1520s, few outside the cash economy by the 1780s | match | Palma 2019 p. 5: "about 40 percent of households lived mainly on wages in 1524-5 ... by the early 1780s few people were not directly involved in the cash economy". | keep |
| VF-34 | 16 | American silver did help England in a quieter way | overstated (understated) | Palma argues it was large: "generated Smithian growth, supported state-building and facilitated the transition into modern economic growth". | state his claim fully, then the objections |
| VF-35 | 16 | several historians find that trade suffered when silver ran short in the 1400s | overstated | R15B-17 is "plausible", T3. Cipolla and Sussman dispute it (R15B 1.7). | "some historians argue ... others disagree" |
| VF-36 | 17 | Spain, China and Holland each had what the claim says was missing | overstated | China's paper money was gone by about 1400 (Hoover) and China's fall came 1700 to 1820. | "had money or credit earlier than others" |
| VF-37 | 21 | England 1500 about 2.2%, 1600 about 1.7% | match with caveat | Nine year averages: 84.9 over 3,790 is 2.2%, 386.9 over 23,020 is 1.7%. On raw yearly taxes both are about 1.6 to 1.7%. Total raw revenue is 2.4% and 2.7%. The apparent fall is smoothing. | "about 2%" at both dates |
| VF-38 | 21 | Most European states under 5%, Britain and Netherlands over 10% in 1780s | match | Karaman and Pamuk p. 613 to 614, with their warning that GDP estimates are weak. | add "estimates" |
| VF-39 | 21 | Ottoman, per person less than three days of a labourer's pay | overstated | "did not exceed three days of wages of an unskilled construction worker in Istanbul and remained below two days ... for most of this period". Central cash revenue only. | "no more than three days of an Istanbul construction worker's wage" |
| VF-40 | 23 | In 1820 about 12% of the world's people could read | match | OWID 12.05. It is an adult rate from OECD How Was Life. | "12% of adults" |
| VF-41 | 23 | 17% in 1870, 57% in 1950, 72% in 1970 | match | OWID net primary enrolment 16.7, 56.6, 71.9 (Lee and Lee). | keep |
| VF-42 | 23 | about 70% chance since the 1970s, close to the record | unsupported | World series is 78.8 (1980) and 80.8 (2000), so 70% is not near the record. | "the reader's 70% matches 1970 (72%). Later years are near 80%" |
| VF-43 | 23 | Malaysia from about half in 1955 to nearly all by 1960 | overstated | OWID: 52.3 (1955), 96 (1960). Same series has 67.0 in 1950 and 92.4 in 1970, so 1955 is a dip in a noisy model series. | "the series suggests a fast rise but is noisy" |
| VF-44 | 24 | 208,000 and 2.8 million books, thirteen times | match | OWID file: 208,000 and 2,807,000. Ratio 13.5. Copies are estimates (editions times print run). | "about thirteen times" fine |
| VF-45 | 26 | Printing and cheap books, from about 1500 | unsupported (part) | "Cheap" has no lane source. England already printed 208,000 copies in 1450 to 1499. | "printed books, from the late 1400s" |
| VF-46 | 26 | A state that could tax from mid 1600s. Before incomes took off | overstated | Tax 4.1% in 1650 (matches). But the rise in output per head is 1650 to 1700, so tax and take-off are the same years. "Take-off" is never dated. | date the take-off, or say "at the same time" |
| VF-47 | 26 | twice as much tax per person as France by the 1700s | overstated | Dincecco and Katz: revenue per head 7.50 against 3.71 gold grams, average 1700 to 1788, "more than double". | "about twice as much revenue per person, 1700 to 1788" |
| VF-48 | 26, 27 | About 53% could read in 1650 and 54% in 1750 | overstated | OWID values are modelled from book output (lane Section 2). The same series gives 16% in 1550, a tripling in a century. | "estimated at about 53%, from a model built on book output" |
| VF-49 | 26 | 39% in 1870, 98% in 1900 | match | OWID 39 and 97.8. In the same series the Netherlands is 80.1 and Spain 52.5 in 1870, and UK dips to 86.7 in 1960. Noisy. | add "estimates" |
| VF-50 | 27 | first factories built by a people of whom nearly half could not read | overstated | 54% in 1750 on the model, so 46% could not. Also an estimate. | "about half" |
| VF-51 | 30 | debt 1 million to nearly 17 million, 40% | match | North and Weingast p. 822 to 823. | keep |
| VF-52 | 30 | about 180% of output after Napoleon | match with caveat | OBR: "close to 180 per cent". Bank of England series gives 152%. For 1700 OBR says 22%, Bank 5.9%. | "close to 180% on the OBR measure" |
| VF-53 | 30 | almost all of it paid for war | overstated | Lane says "mainly". North and Weingast say the immediate reason was the war with France. No breakdown. | "mostly" |
| VF-54 | 31 | One cost between 1,000 and 3,000 pounds | overstated | James: £1,000 to £2,000 for small works, "more than £3,000" for larger Arkwright mills. | "1,000 to 3,000 or more" |
| VF-55 | 31 | M'Connel and Kennedy began with about 1,700 pounds | match | James: "initial capital outlay totaled approximately £1,700", partnership of 1791. | keep |
| VF-56 | 31 | credit from the merchants they dealt with | unsupported | Not in the James text. R15B calls it "secondary", and says it was working credit for cotton and wages. | "and short term trade credit for stock and wages (secondary)" |
| VF-57 | 31 | From 1714 no lender could charge more than 5% | match (lane said plausible) | Usury Act, 12 Anne (1713), effective after 29 September 1714: 5% (statutes.org.uk via search). | keep, name the act |
| VF-58 | 31 | some historians find war borrowing left less for everyone | match | Temin and Voth, hedged in the draft. I could not open the OUP page. | keep hedge |
| VF-59 | 32 | Canals and railways cost too much for any family | unsupported | No cost figure for railways or canals in the lanes (Erie cost is only "popular sources"). | give a figure or soften |
| VF-60 | 33 | Erie from 1817, salt and auction taxes set aside before it borrowed | match with caveat | Wallis, Sylla and Grinath (opened): "When New York began the Erie Canal in 1817 ... dedicating two revenue sources ... auction duties and a salt tax" and "raise taxes when borrowing began". | "when it began borrowing" |
| VF-61 | 33 | The canal earned well and the debt was repaid easily | match | Same paper: tolls beat forecast and the state "was easily able to service and redeem its debts". In 1824 taxes were 290 thousand against 350 thousand of interest. | keep |
| VF-62 | 33 | Other states copied without the pledged taxes | overstated | Pennsylvania did not raise taxes. Ohio and Indiana changed property taxes. Ohio did not default. | "Pennsylvania and others" |
| VF-63 | 33 | In 1841 and 1842 eight states and Florida stopped paying | match | Paper: "eight states and the Territory of Florida defaulted". | keep |
| VF-64 | 33 | Japan borrowed 1 million pounds in London in 1870 at 9% for its first railway | match (secondary) | A Cambridge article via search: first London loan £1 million at 9% in 1870, financed the Tokyo to Yokohama line, opened 14 October 1872. Another source says £2.4 million. Hedge kept. | keep "is reported" |
| VF-65 | 33 | placed under "A promise that was kept" | unsupported | No lane evidence on repayment. R15B says Japan did not default but flags it as memory. | label "built, and not defaulted on (to check)" |
| VF-66 | 33 | Indiana sold over 10 million of bonds for canals and roads | overstated | Paper: Mammoth bill authorised up to $10 million for canals, one railroad and roads. By 1839 "issued more than $10 million". | "canals, a railroad and roads" |
| VF-67 | 33 | only about 5.5 million reached the building sites | mismatch | Paper: Indiana "received $5.55 million for the Internal Improvement Fund and $1.5 million for the State Bank". About $3 million was bonds sold on credit, mostly to the Morris Canal and Banking Company, which failed in August 1839. Not money lost on the way. | "received 5.5 million in cash, the rest sold on credit to a bank that failed" |
| VF-68 | 34, 36, 54 | a promise worked when something real was pledged | overstated (causal) | Two cases. The paper's own finding is that every repudiation was "connected to state borrowing for bank investments". | "in these cases" |
| VF-69 | 35 | big push description, Rosenstein-Rodan and Murphy, Shleifer and Vishny | match | R15B-18, abstract only. | keep |
| VF-70 | 35 | Gerschenkron argued late countries leaned on big banks or state | match (secondary) | R15B-19 "plausible", review not opened. | keep hedge |
| VF-71 | 35, 36, 54, 55 | Both fit late developers better. Reader's picture closer to the truth | unsupported | No numbers on late developers in either lane. R15B says tests of Gerschenkron are mixed (Burhop, Federico and Toniolo, Crisp). | "tests are mixed" |
| VF-72 | 40 | index 26, 52, 70, 29. Populations 1.9 and 5.3 million | match | Bank of England A48: 26.4, 51.9, 70.5, 28.7. A2: 1.90 and 5.31. Population cells for 1347 and 1350 left blank in the draft (4.78 and 3.20 exist). | fill the cells |
| VF-73 | 41 | pay doubled | match | 26.4 to 51.9 is 1.97 times. | keep |
| VF-74 | 41 | survivors lived better than any peasants before them | unsupported | Series starts 1209 and has 51.8 in 1209, 36 to 38 in 1220 to 1260. Nothing before 1209. | "better than in the century before" |
| VF-75 | 41 | almost three times as many mouths | match with caveat | 5.31 over 1.90 is 2.79 against 1450. Against 1347 (4.78) it is 1.11. Reader may take "three times pre-plague". | "almost three times the low point of 1450" |
| VF-76 | 41 | bought no more than before the plague | overstated | 28.7 against 26.4, which is 9% more. | "about the same as before" |
| VF-77 | 43 | Northern Italy | mismatch | The series is for all Italy (Malanima). Lane gap 5. | "Italy" |
| VF-78 | 43 | richest part of Europe in 1450 | overstated | Compared only with Holland, England and Spain. France and Germany are not in the series. | "richer than England or Holland" |
| VF-79 | 43 | fell by about a quarter by 1600 | match | 1,668 to 1,244 is minus 25.4%. | keep |
| VF-80 | 43 | China fell 43% 1700 to 1820 | match with caveat | 1,543 to 882 is minus 42.8%. The 1700 value is a single benchmark. BGL series has minus 44% from 1700 to 1800. China was higher in 1700 than 1500. | add "estimate" |
| VF-81 | 44 | output per person slowly rising, 1,159 in 1300 and 1,446 in 1650 | mismatch | Maddison: 1,717 (1400), 1,697 (1500), 1,691 (1600), 1,446 (1650). Down 16% from 1400. Bank series (2013 pounds): 784, 1,162, 1,148, 1,143, 978. BGL: 755, 1,090, 1,114, 1,123, 1,110, flat. Also contradicts the "fell 14%" of block 14. | pick endpoints fairly: "roughly flat from 1400 to 1600, then a dip in the Civil War" |
| VF-82 | 44 | people worked more days and more of them in trades | unsupported (part) | "More days" is R15A-34, plausible, secondary. "Trades" has no lane row. | "some scholars think more days were worked" |
| VF-83 | 45 | 1,446, 2,412, 3,343 | match with caveat | Maddison. File labels it "United Kingdom". Pre 1700 England, then Great Britain (Bank workbook A6 and A7). Rise 1650 to 1700: Maddison plus 67%, Bank plus 71%, BGL plus 41% to 47%. 1650 is below 1500. Population fell 5.31 to 4.95 by 1688. | add a note on the break and size, say "estimates differ" |
| VF-84 | 47 | People row (Malthus, Clark) | overstated | Row explains the trap, not the escape. Clark's escape story (habits spreading by fertility) and Wrigley's objection are missing. | add one line each |
| VF-85 | 47 | Rules row, critics: rates stayed high forty years | match | Sussman and Yafeh abstract: "remained high and volatile for four decades". R15A reads three decades. North and Weingast say 3% by the 1730s. | "three to four decades" |
| VF-86 | 47 | Prices row (Allen) | match | R15B 1.3 verified. Humphries objection omitted. | add objection |
| VF-87 | 47 | Knowledge row (Mokyr) | match (secondary) | R15B 1.4 from summaries. | keep |
| VF-88 | 47 | State row: Brewer, Dincecco, "protect trade" | overstated | Brewer not opened (lane gaps). "Protect trade" is not in the lane. | cut "protect trade" |
| VF-89 | 47 | Finance row, Rousseau and Sylla | match (secondary) | R15B-12 "plausible", abstract only. | keep as "argue" |
| VF-90 | 48 | each link leaned on the others: a state needs taxes, taxes need trade ... | unsupported | Stated as fact. No lane evidence. | "the reader argues" |
| VF-91 | 49 | Bentley, 1832, 23, flax mill Leeds at six, 5 to 9 when busy, strapped | match | Victorian Web (opened): age "Twenty-three", began "When I was six years old" at Mr. Busk's, "From 5 in the morning till 9 at night, when they were thronged", late: "Strap us". Usual hours were 6 to 7. She said she was not beaten herself but saw boys beaten. | add "usual hours 6 to 7" and "the committee was pushing a bill" |
| VF-92 | 52 | row 1: Spain, China and Holland had the most money or the cheapest credit | overstated | "Most money" unsupported for China and Holland. See VF-27, VF-36. | "among the first with money or credit" |
| VF-93 | 52 | row 3: cotton mill 1,000 to 3,000, from savings | overstated | See VF-54, VF-04. | "mostly from the owners' own funds" |
| VF-94 | 52, 54 | rows 2 and 4 of verdict | match | About 2% (VF-37). 12% (VF-40). Pay doubled and back by 1650 (VF-73, VF-76, say "about the same"). | keep |
| VF-95 | 54 | Money and credit were not the link most often missing | unsupported | No ranking in the lanes. | cut or flag as judgement |
| VF-96 | 54 | Spain: money raised prices or paid for wars | unsupported (part) | Prices: R15A-33 unverified. Wars: R15B-31 plausible. | "may have" |
| VF-97 | 55 | Malaysia is one of those (late developer) | unsupported | Malaysia appears only in an enrolment series. | cut or source |
| VF-98 | 56 | China and Holland suggest deeper credit did not give faster growth | mismatch | Holland grew 60% from 1500 to 1600 (BGL 1,483 to 2,372) and led Europe on credit. China's credit depth is not in any verified row. | "Holland grew fast while credit deepened, then stalled" |
| VF-99 | 57.0 | Maddison used for Spain, England, Britain and China "after 1700" | mismatch | Draft uses Maddison for 1300 to 1650 too. | "for 1300 to 1800" |
| VF-100 | 57.0 | two dollar bases never mixed in one comparison | mismatch | Block 14 Holland row uses Maddison (three times) and Broadberry (no growth 1600 to 1750). | state which is which |
| VF-101 | 57.0 | French famine source "Historians ... as summarised in the lane notes" | mismatch | Source is Ó Gráda and Chevet 2002, Journal of Economic History 62(3). | name it |
| VF-102 | 57.0 | Paper money "as cited in the lane notes". Erie "as cited" | mismatch | Guan, Palma and Wu (2024), von Glahn (2025). Wallis, Sylla and Grinath (2004). | name them |
| VF-103 | 57.0 | Cotton mill costs from James quoting Crouzet | mismatch (minor) | James cites Honeyman 1982 for costs and Lee and Shapiro for M'Connel and Kennedy. Crouzet is quoted for capital markets. | "James 1996, citing Honeyman" |
| VF-104 | 57.0 | Children dying before five: Our World in Data | overstated | Underlying data is Gapminder, modelled for 1800 (China 1800 and 1850 identical). | add "Gapminder estimates" |
| VF-105 | 58.0 | Kuran and Rubin, both careful to say not a faith | overstated | Lane has this only for Rubin. Not for Kuran. | restrict to Rubin |
| VF-106 | 58.1 | McCloskey: secure property in China, India, much of Europe long before 1800 | match | R15B-06 "plausible", hedged by "argues". | keep |

## 3. Re-fetched items

Pages marked "PDF" were downloaded and read as text with pdftotext. Fetches used: about 28.

1. https://www.york.ac.uk/depts/maths/histstat/king.htm (VF-09 to VF-13). Table headed 1688, England and Wales. Totals 1,360,586 families and 5,500,520 people. Cottagers and paupers 400,000 families, 3 and a quarter heads, £6.5 per family. Two groups: 511,586 families (2,675,520 people, £67 per family, increasing) and 849,000 families (2,825,000 people, £10.5, decreasing). The page layout scrambles which count goes on which line. I fixed it by arithmetic. The "written in 1696" date is from the lane only, since the page shows 1688.
2. https://econpapers.repec.org/RePEc:cup:jechis:v:62:y:2002:i:03:p:706-733_00. Abstract: "two massive famines that struck France between 1693 and 1710, killing over two million people".
3. North and Weingast 1989 (Vanderbilt PDF), pages 822 to 823. Holland £5 million long term at 4%. English Crown "small amounts at short term" at 6 to 30%. Debt £1 million (2 to 3% of GNP) to nearly £17 million in nine years (about 40%). Rates fell to 3% by the 1730s.
4. https://dataverse.nl/api/access/datafile/421302 (Maddison 2023 file, read with python3 -I). All figures in the lane match. The country is labelled "United Kingdom", population only given for some years. Italy has no value before 1820. Sheet Notes says GDP per head is in 2011 dollars.
5. Bank of England workbook (the xlsx on bankofengland.co.uk, 27 MB, read with openpyxl). Sheets A2, A21, A22, A26, A48 checked. Earnings 26.4, 51.9, 70.5, 28.7 match. Population matches. Coin 3.5 (1600) and 11.99 (1650) match. Tax raw and smoothed differ (VF-37). A48 starts in 1209 at 51.8.
6. https://ourworldindata.org/grapher/cross-country-literacy-rates.csv. World 12.05 (1820), 18.7 (1870). UK 53 (1650), 54 (1750), 16 (1550). Malaysia 37.5 (1950).
7. https://ourworldindata.org/grapher/primary-enrollment-selected-countries.csv. World 16.7, 56.6, 71.9. UK 39 (1870), 97.8 (1900). Malaysia 67.0 (1950), 52.3 (1955), 96 (1960), 92.4 (1970).
8. https://ourworldindata.org/grapher/production-printed-books-half-century.csv. Great Britain 208,000 (1475) and 2,807,000 (1525).
9. https://ourworldindata.org/grapher/child-mortality-complete-gapminder.csv. World 42.8 (1800), UK 32.9.
10. https://victorianweb.org/victorian/history/workers1.html. Bentley testimony (VF-91).
11. Palma 2019, Manchester EDP-1903 (PDF). Page 5 on 40% and 1780s. Final section: money supply increase "generated Smithian growth". Iberia explained by "Dutch disease" and resource curse.
12. https://www.nber.org/system/files/working_papers/w10753/w10753.pdf (PDF). Erie, Pennsylvania, Indiana, eight states and Florida, $198 million in 1841. Key finding on banks.
13. Karaman and Pamuk 2010 (PDF). Under 5% to over 10%. Ottoman three days and two days.
14. James 1996 (PDF). £1,000 to £2,000, over £3,000, £1,700 for M'Connel and Kennedy. No family savings or merchant credit text.
15. Guan, Palma and Wu 2024 (PDF). 11.0%, 1.8%, 4.5%, doubling 1260 to 1355, barter 1368.
16. Broadberry, Guan and Li 2017 (PDF) Table 8. China 878 and England 754 (1090). Holland 2,372, 2,171, 2,403, 2,440, 1,752. Italy 1,668 (1450), 1,244 (1600). England 1,110 (1650), 1,563 (1700).
17. Dincecco and Katz MPRA 50042 (PDF). 7.50 against 3.71 gold grams, 1700 to 1788.
18. https://www.hoover.org/node/368899. State took over jiaozi 1023. Ming paper "largely defunct" by early 1400s.
19. https://articles.obr.uk/300-years-of-uk-public-finance-data/. 22% (1700 to 1701), 155% (eve of Napoleonic wars), "close to 180" after Waterloo, taxes 8% in the 1700s.
20. https://ideas.repec.org/a/cup/jechis/v66y2006i04p906-935_00.html. "remained high and volatile for four decades after the Glorious Revolution".
21. https://ideas.repec.org/a/cup/jechis/v64y2004i03p641-672_00.html. Private finance came first in the Dutch Republic. No rates given.
22. Search results on the 1713 Usury Act (statutes.org.uk). Rate 5% after 29 September 1714.
23. Search results on Japan's 1870 loan (Cambridge article on foreign banks). £1 million at 9%, Tokyo to Yokohama line opened 14 October 1872. A second figure of £2.4 million exists.
24. Search results on Dutch yields. Dutch private rates 4.5% by 1655. No cross country comparison found for "cheapest in Europe".
25. Not readable: academic.oup.com/book/7462 (Temin and Voth) gave only menus. Wikipedia Shimbashi Station has nothing on the loan.

## 4. Plausible, unverified or memory rows stated as fact

| block | draft statement | lane row and status | note |
|---|---|---|---|
| 14, 17, 52 | Dutch credit "the cheapest in Europe" | R15B Part 4 item 6 (no ledger row), R15A-31 unverified | printed as fact, must go |
| 16 | silver shortage in the 1400s hurt trade, "several historians find" | R15B-17 plausible, T3 | has a mild hedge, add opponents |
| 31 | credit from merchants | R15B 1.6 "secondary", not in James | printed as fact |
| 31 | 5% limit from 1714 | R15B-13 plausible | I verified it (VF-57), can print |
| 33 | Japan 1870 loan | R15B-25 plausible | hedged "is reported", I found a secondary source |
| 35 | Gerschenkron argument | R15B-19 plausible | printed as a plain attribution |
| 35, 36, 54, 55 | late developers lean on banks and state, reader's picture fits better | no row. R15B says tests are mixed | printed as a finding |
| 43 | Italy fell by a quarter | R15B-28 plausible, R15A-07 confirmed | numbers are fine, label is wrong (Italy, not Northern Italy) |
| 44 | more days worked, more people in trades | R15A-34 plausible | "trades" has no row |
| 47 | Rousseau and Sylla, Knowledge row (Mokyr), State row (Brewer) | R15B-12 plausible, Mokyr and Brewer from summaries | plain attributions, acceptable with "argue" |
| 54 | Spain: money "raised prices or paid for wars" | R15A-33 unverified, R15B-31 plausible | printed as fact |
| 58.0 | Kuran and Rubin "both careful to say" | R15B-30 plausible | the "both" claim is only supported for Rubin |
| 23 | Malaysia 1955 and 1960 | R15A-21 plausible | hedged in 23 and 57, but the rise looks like noise |
| 26, 27 | literacy 53% and 54% | R15A-18 confirmed but modelled | printed as measured |
| 0 | first factories from "family savings" | R15B-14 T3 | see VF-04 |

Rows not printed that should stay out: war share R15A-26, famine list R15A-27, investment share R15A-28, Spain silver tonnes R15A-33, railway mania R15B-23, Egypt R15B-26, bread R15B-36, gold standard R15B-37. I found none of them in the draft.

## 5. One-sided numbers and causal overreach

One-sided numbers
- Test 1 prints only numbers that go against the claim. Lane numbers that favour it are left out: England 1300 to 1400 coin per head up 2.6 times and output up 48% (R15A 4a). Dutch output up 60% from 1500 to 1600 (BGL) while its credit deepened. English government yield falling from 6% to 3% between 1705 and 1750 while output rose (R15A For H1). Palma's own large claim for silver (VF-34).
- Test 1 also leaves out a number against the claim that does not fit the draft's story: coin per head was flat from 1650 to 1700 while output rose 71%. It is a point for the draft, but it shows money did not lead either way.
- The explanations table (block 47) has no Palma or bullion row, so "money appears once" is built by leaving out two money accounts.
- Test 2 prints only the states and books that fit. Left out from R15A and R15B: Italy and Song China had books, schools and rich states and still stalled. Squicciarini and Voigtlander find average literacy did not predict growth. Netherlands and Sweden had high enrolment in 1870 without leading. Qing, Mughal and Ottoman states kept order for long periods without taking off. Block 27 says "Part 2 holds" without these.
- Test 3 gives numbers for failed promises (Indiana, eight states) but none for the claim that late developers fit the reader's chain (blocks 35, 54, 55).
- Test 4 cites a falling wage but prints nothing from Broadberry that output per head rose about 0.2% a year from 1270 to 1700 until block 44, and then with a wrong summary (VF-81).
- Tax table (block 21) gives 2.2% and 1.7% but omits 4.1% for 1650 and the OBR figure of 8% for the 1700s, which makes "few percent" look static.
- Bentley is given without the lane's warning that Sadler's questions were leading and the committee was set up to support a bill.
- Dutch, Spanish and English rows use different dollar bases, which is not said at the point of use.

Causal claims the data cannot carry
- Block 13, 15, 17: "more money did not make more output". Four cases with war (England 1600 to 1650), a resource curse (Spain), weak state capacity (Yuan China). Coin per head series is an estimate. No controlled test.
- Block 14, China row: paper money from 1023 is set beside China's fall from 1700 to 1820. Paper money was gone by about 1400. The link is not shown.
- Block 26 and 27: "Before" and "after" take-off are used as proof that schools or reading were not needed. Timing cannot show a link is unnecessary. The take-off date is never stated, and tax and the output rise fall in the same years.
- Block 34, 36, 54: "a promise worked when something real was pledged" rests on two or three cases. The paper's own conclusion is about bank related borrowing.
- Block 31 and 37: first factories were "not" built on promises. Short term trade credit and the Mokyr and Chapman view are left out, and the data base is a handful of firms.
- Block 41: "Every gain had been eaten" is the Malthus reading. The lane has a counter case (output per head rose) and a disputed wage series (Bouscasse, Nakamura and Steinsson).
- Block 48: "each link leaned on the others" is stated as a finding. It is the reader's thesis.
- Block 50 and 54: "none of them says money" and "not the link most often missing". See VF-05 and VF-95.
- Block 56: "China and Holland suggest" deeper credit did not give growth. See VF-98.
- Block 10: "England was lucky". No evidence.
- Block 44: "Then something changed" invites a reading that the 1650 to 1700 jump is real and large. It is partly a trough, a change from England to Great Britain, and a population drop (VF-83).
