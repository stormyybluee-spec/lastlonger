# VERIFY R17: chapter rb-future

Verifier report. Draft checked against lanes R17A and R17B and against re-fetched sources on 2026-11-19. General education, not advice.

## 1. Headline result
- 100 rows: 49 match, 9 mismatch, 23 unsupported, 19 overstated
- Most serious: fed funds range for 1995 to 2000 is wrong (4.63 to 6.54 on FRED, draft says 4.6 to 5.9). This feeds blocks 30, 36 and 58.
- The Perez quotation drops a word ("of"), and the same Perez paper also calls bubbles "massive episodes of credit creation", which the chapter leaves out (blocks 31, 32).
- The rocket cost comparison (block 41, 58) sets $396M, which paid for the capsule as well, against a rocket-only NASA estimate, and NASA's own deck says partners funded over 50%.
- Several causal sentences have no lane support (Korea "largely created money", Penang "little borrowing", "skills stayed", Taiwan "small next to Korea", Brontë "bought near the top").

## 2. Main table
Status key: match, mismatch (wrong), unsupported (no lane row or source), overstated (source weaker or narrower).

| id | block | the draft's words (short) | status | what the source says | suggested wording |
|---|---|---|---|---|---|
| VF-01 | 8 | each received about 300 pounds from an aunt in 1842 | unsupported | annebronte.org: Anne, Emily, Charlotte and cousin Eliza Kingston "were each left around £300". No aunt named. Lane says "left about £300". | "were each left about 300 pounds in 1842" |
| VF-02 | 8 | all three would publish novels | unsupported | No lane row. Common knowledge, not sourced. | Keep only if a source is added |
| VF-03 | 9 | Emily looked after the money, York and North Midland shares | match | annebronte.org: "let Emily manage their joint funds", invested in Hudson's railway stock. 1849 letter says "My shares are in the York & North Midland Railway". | none |
| VF-04 | 9 | 516 bills considered in 1846, 246 passed | match | Campbell 2014: "Of the 516 Bills which were considered in this year, 81 were thrown out..., 83 withdrawn, 106 rejected... 246 received Royal Assent." | none |
| VF-05 | 9 | people of every kind, from lords to clergymen's daughters | unsupported | No lane row. | Cut, or source it |
| VF-06 | 10, 11 | 30 January 1846 letter, to "a friend", quote | match | Page: letter to Margaret Wooler, text "I have been most anxious for us to sell our shares ere it be too late". Words match. Source is a secondary website, originals not opened. | Say "to her friend Margaret Wooler" and "as quoted" |
| VF-07 | 12 | could not persuade her sisters | match | Page: "I cannot, however, persuade my sisters to regard the affair precisely from my point of view". | none |
| VF-08 | 12 | September 1849, to her publisher, issued at 50, top 120, 10% for some years, "down at 20" | match | Page: recipient George Smith, 27 Sept (date implied, not printed). "The original price of shares... £50 at one time they rose to 120", "for some years gave a dividend of 10 percent", "they are now down at 20". Lane rates these plausible (T3). | Hedge in body: "as she described them in a letter" |
| VF-09 | 12 | "after Emily and Anne had both died" | unsupported | Neither lane nor the page states death dates. The page says shares prospered "during the lifetimes of Anne and Emily". Emily died December 1848 and Anne May 1849 is standard history but not in the lanes. | Add a source or cut |
| VF-10 | 13 | the line did exactly what it promised, only top buyers lost | unsupported | No lane row on the line's performance. Campbell says older lines' dividends rose 4.4% (1843) to 7.0% (1847), so "exactly what it promised" is not shown. | "The railway was built and ran. Its share price fell" |
| VF-11 | 17, 58 | railway building 5.7%, 6.7%, 4.7% of output 1846 to 1848 | match | Campbell 2014 (citing Mitchell): "5.7, 6.7 and 4.7 per cent of GDP in 1846, 1847 and 1848". Odlyzko puts 1847 above 10% (unverified, not opened). | Add "of GDP" and note one other estimate is higher |
| VF-12 | 0 | about 6% of whole output each year at its peak | overstated | Peak year is 6.7% and the three year mean is 5.7%. | "between 4.7% and 6.7% a year from 1846 to 1848" |
| VF-13 | 17 | shareholders were promised returns the traffic could not pay | overstated | Lane R17A-10 plausible, from a reader's notes on Odlyzko (10% dividends needed 30 to 60 million pounds of revenue against about 6 million). Not opened at source. Campbell says pre-mania lines' dividends were rising. | "By one account, investors hoped for returns the traffic could not pay" |
| VF-14 | 17 | about a third of lines approved 1844 to 1846 reported never built | match | Lane R17A-08 plausible (Casson via Wikipedia). Draft hedges with "reported". | none |
| VF-15 | 17 | freight saving about 4% of output by 1865, generous estimate | match | Crafts 2004 Table: England and Wales 4.1 in 1865. "upper bound" and "overestimates by a factor of around 2". | none |
| VF-16 | 17 | station cost about 300,000, "with the wires and other charges" over half a million | mismatch | Edison Papers: $300,000 paid "to acquire the Pearl Street properties and construct the central station and distribution system". Wires are inside the 300,000. Total chargeable to first district "more than a half million". | "the properties, station and wires cost about 300,000. With fees, interest and other charges the first district cost over half a million" |
| VF-17 | 17 | for months it charged nothing | match | "did not charge customers for current until early 1883" (service began 4 Sept 1882). | none |
| VF-18 | 17 | chips "costly and few", "cheap enough for every phone" | unsupported | Lane has a $120 gate in 1961 and about $1 by 1968 (secondary). Nothing on phones. | Use the gate prices, cut "every phone" |
| VF-19 | 17 | Nasdaq fell 77.9% March 2000 to October 2002 | match | FRED close 5048.62 (2000-03-10) to 1114.11 (2002-10-09). I recomputed 77.93%. | none |
| VF-20 | 17 | firms cut about 100,000 jobs in 2001, by one count | match | Computerworld: Challenger counted 100,925 in 2001 and 41,515 in 2000. Lane plausible. Hedged. | none |
| VF-21 | 18 | one study: about three in four did not return investors' money | match | Lane R17A-26 plausible (Ghosh, via Fast Company summary). Hedged. NVCA's own estimate of failure is 25 to 30% (different measure). | Add years of the sample (2004 to 2010) |
| VF-22 | 18 | another count: two thirds lost, fewer than 4% returned 10x | match | Search of Levine and Correlation Ventures: about 65% and about 4%. Correlation's later post says "nearly half" lost money and that its 10x figure is by dollars. Original medium post returned 403. | Add "2004 to 2013 deals" and note later counts are lower |
| VF-23 | 18 | the winners pay for the losers | unsupported | No lane row on how winners' returns offset losses. | Cut or label as a reading |
| VF-24 | 24 | federal 67% to 18%, business 31% to 75% (1964, 2022) | match | NSF: federal 66.82 and 18.44, business 30.82 and 75.48. Dollars give 67.0, 18.3, 30.9, 75.5. | none |
| VF-25 | 24 | basic research federal share 70% in 1969, 40% in 2022 | match | NSF 24-332: 1969 federal 70.4%, 2022 39.6%. These are shares of funding. | none |
| VF-26 | 23 | America, which is the largest in the world | unsupported | No lane row on rank in research spending. | Cut or source |
| VF-27 | 25, 22 | business pays mostly from its own profits and from shares | unsupported | R17A gaps: share of business R&D paid from retained profit versus borrowing "not found". | "Business now pays 75%. How it funds that was not checked" |
| VF-28 | 25 | over sixty years | match | 1964 to 2022 is 58 years. | "nearly sixty years" |
| VF-29 | 26 | government bought 100% in 1962, 53% in 1966, 37% in 1968 | match | Nelson table via a reproduction site: 4 of 4, 78 of 148 (52.7%), 115 of 312 (36.9%). Section 5 of R17A calls this secondary. | Hedge: "in figures reproduced from Nelson" |
| VF-30 | 26 | Apollo order the largest single use until 1965 | match | Computer History Museum: Apollo Guidance Computer order, 200,000 units, largest IC user through 1965. | none |
| VF-31 | 26 | government did not lend, guaranteed sales let them grow | unsupported | No lane row on loans or guarantees. Lane notes Fairchild had corporate backing of about 1.4 to 1.5 million. | Cut "did not lend" and "guaranteed" |
| VF-32 | 0 | bought every microchip sold in 1962 | match | Table 1962: 4 of 4 million dollars. | none |
| VF-33 | 30 | Bank rate 2.5% to 3.5% before 1847, as reported | match | Lane plausible (Hansard 1856). Campbell says 3.0% rising to 3.5% then 4.0% by January 1847. Hedged. | none |
| VF-34 | 30 | rate rose to 5.5% in 1847 and the boom broke | mismatch | Campbell: share prices peaked August 1845 and fell 18.2% by November 1845, 57.5% by April 1850. Rate went to 5% in April 1847 and 5.5% in August 1847, and a government letter in October 1847 allowed 8%. The rise came after the boom broke. | "Share prices fell from autumn 1845. The rate rose in 1847, with the harvest failure and gold outflow" |
| VF-35 | 30 | US main rate between about 4.6% and 5.9% in 1995 to 2000 | mismatch | FRED monthly fed funds Jan 1995 to Dec 2000: low 4.63 (Jan 1999), high 6.54 (Jul 2000). 5.85 is only the March 2000 value. | "between about 4.6% and 6.5%" |
| VF-36 | 30, 36 | M2 up about 33% over five years, about 6% a year | overstated | FRED M2: Dec 1994 to Dec 1999 is +33.05% (5.88% a year). To Dec 2000 it is +41.3%. The window ends a year before the peak and is not stated. | State "1995 to 1999" |
| VF-37 | 30 | 2020 to 2021 rate near zero, M2 up 26.8% in a year | match | FRED: Feb 2020 to Feb 2021 +26.78%, fed funds 0.05 to 0.08. | Give the months |
| VF-38 | 32 | "opportunity pull rather than easy credit push" | mismatch | Perez 2009: "They are the result of opportunity pull rather than of easy credit push." The word "of" is missing. | Quote in full, or use no quote marks |
| VF-39 | 31 | Perez, whose life's work is how bubbles pay for new technology | overstated | Fits her writing. Not sourced in lanes beyond her own page. | "an economist who studies technology bubbles" |
| VF-40 | 31 | internet boom built the most lasting technology of the three | unsupported | Opinion. No lane row. | Cut |
| VF-41 | 33 | cheap money added fuel in 1845 and 2021, spark was technology | unsupported | Lanes show rates and M2 only, not what the money did. The "spark" is Perez's view. | Attribute to Perez and drop "It did" |
| VF-42 | 34 | Chapter 02 showed most bank lending in rich countries goes to property | unsupported | No lane row. R17A has no lending split. Cannot be checked here. | Check against chapter 02 itself |
| VF-43 | 35 | easy money fed two of the three booms, none needed it to start | overstated | Only rate levels are shown. "fed" and "none needed" are causal. The lane notes rival causes (harvest, gold, Bank Charter Act). | "Rates were low in two of the three booms" |
| VF-44 | 36 | rate about 5%, not near zero, 1995 to 2000, money supply about 6% a year | mismatch | Rate ran 4.6% to 6.5%. M2 window see VF-36. | "between 4.6% and 6.5%" |
| VF-45 | 36, 63.1 | first internet network paid by government research budget | overstated | Lane R17A-19 plausible (O'Reilly, search summary). ARPANET from 1969 stated plainly. | "as reported" |
| VF-46 | 39 | in 2006 NASA tried something new, fixed payments for goals | overstated | NASA deck confirms fixed price milestone payments. "something new" has no lane row. | Cut "something new" |
| VF-47 | 39 | 396 million, all 40 goals by 2012, 288 million same terms | match | NASA lessons deck: "All 40 milestones completed in August 2012 for payments totaling $396M", "All 29 milestones completed in November 2013 for payments totaling $288M". Second company finished in 2013. | Add "by 2013" for the second |
| VF-48 | 40 | traditional 1.4 to 4.0 billion, commercial 0.4 to 1.7 billion | match | NAFCOM deck: 3,977 and 1,383 cost plus, 1,695 and 443 fixed price (FY2010 dollars), initial and updated versions. | none |
| VF-49 | 40 | company told Congress about 300 million, as reported | match | Lane R17B-09 plausible. Hedged. | none |
| VF-50 | 41 | NASA warns not budget estimates, did not study the gap | match | NAFCOM: "did not perform a detailed analysis to explain the significant differences", "not NASA budget estimates". | none |
| VF-51 | 41 | NASA drew one lesson above all | overstated | The deck lists many lessons. The first is "Government seed money was highly leveraged. Commercial partners funded over 50% of COTS development costs". The quoted lesson is one of several. | "One of NASA's lessons was..." |
| VF-52 | 41, 58 | public money small next to old way, 396 million against billions | overstated | The 396M covered the rocket and the capsule and included later top-ups. The NAFCOM figures are for the rocket alone. NASA's updated fixed price figure of 443M is close to 396M. | Say the scopes differ |
| VF-53 | 43 | shuttle 54,500 per kg, new rocket 2,720, about 20 times | match | Ames paper abstract: "$54,500/kg", "$2,720/kg", "a factor of 20". The paper's own table gives 61,700 for shuttle. Falcon is an advertised price, shuttle a cost. | Say "advertised price" against "cost" |
| VF-54 | 43 | a NASA study dates most of the fall to about 2010 | overstated | It is one NASA Ames author's conference paper (Jones, 2018). It says "A major drop in cost occurred in 2010 with the Falcon 9". It also says reuse may cut costs by a factor of two. | "a NASA engineer's 2018 paper" |
| VF-55 | 43 | first booster landing December 2015 | match | Lane R17B-17 plausible (21 Dec 2015). | none |
| VF-56 | 44 | OneWeb raised 3.4 billion, bankrupt March 2020, 74 of about 650 | match | Spaceflight Now: "announced $3.4 billion in money raised", "74 satellites already in orbit", "nearly 650". | "announced raising" |
| VF-57 | 44 | Virgin Orbit six missions, two failed, April 2023, assets sold about 36 million | overstated | CNBC: four successes and two failures, filed 4 April. "$36 million" is auction bids, and some assets were still unsold. | "bids of about 36 million at auction" |
| VF-58 | 46 | rocket company paid for by private investors and government promise | unsupported | No lane row on who funded development 2002 to 2012. Lane warns not to print lifetime totals. | Say what NASA paid and the 300M company claim only |
| VF-59 | 49 | banks relied on central bank for 89% of lending to exporters, 1973 to 1981 | match | K-Developedia: "relied on the central bank for 89 percent of their export credit funding". | none |
| VF-60 | 49 | most growth in lendable money came from the central bank | match | Same page: reserve base grew 25.1% a year, 20.2 points from lending to commercial banks. | none |
| VF-61 | 49 | push into steel, ships, chemicals paid for largely with created money | overstated | The 89% and 20.2 points are about export credit and the reserve base, not heavy industry loans. The National Investment Fund 57% figure is unverified (R17B-28). | "export credit was largely refinanced by the central bank" |
| VF-62 | 49 | heavy and chemical goods 13% (1970) to 92% (2008) | match | Page: "just 13%" and "92%" by 2008. The chart caption says 2023. | none |
| VF-63 | 49 | prices rose 10% to 20% a year through the 1960s and 1970s | match | Page: "consumer price inflation soared to 10-20 percent throughout the 1960s and 1970s". | See section 5 on cause |
| VF-64 | 49 | big business groups reported to owe about five times what they owned | match | Dallas Fed: debt to equity of the thirty major chaebols "was 500 percent". | none |
| VF-65 | 49 | rescue of 58.4 billion dollars | overstated | Dallas Fed calls it a standby arrangement but its footnote splits it: IMF 21.1, World Bank and ADB 14.2, others 23.1. | "a rescue package of 58.4 billion, of which the IMF gave 21.1" |
| VF-66 | 50 | 1976, paid an American firm about 10 million | unsupported | Taiwan Insight has no fee and no date. The lane marks R17B-32 confirmed against that page, which is wrong. Figure is from Asterisk and Taiwan Today (secondary). | "about 10 million, as reported" |
| VF-67 | 50 | sent 19 engineers | match | Taiwan Insight: "over 30 young engineers, including 19 in the initial group". | none |
| VF-68 | 50 | end of 1977 test plant making watch chips, wasting fewer than the teacher, by its own count | overstated | Page: watch chips by end of 1977, yield "exceeded 70%, surpassing... RCA's own facilities". "by its own count" is not in the page. | "reported yield above RCA's" |
| VF-69 | 50 | 1987, state reported to own about 48% | match | Search: 48.3% Development Fund, Philips 27.5% (one says 27.6). Taiwan Insight says the state meant it to be "not state-owned" in operation. Hedged. | none |
| VF-70 | 50 | 61% of contract chips by 2023 | match | Taiwan Insight: 61% "in professional foundry services", Q4 2023. | "in late 2023" |
| VF-71 | 50 | money went into skills and one firm, not a flood of loans | unsupported | No lane figure on Taiwan's bank credit or total public cost. | Cut or source |
| VF-72 | 51 | high unemployment in 1969 | match | About 16% (MIDA, plausible). | Give the figure as reported |
| VF-73 | 51 | from 1971 it opened a free trade zone | mismatch | Free Trade Zones Act was 1971. The Bayan Lepas zone opened 1972. | "From 1972" |
| VF-74 | 51 | years free of tax | match | Pioneer status up to eight years (plausible). | none |
| VF-75 | 51 | 1972 Intel first factory outside America | match | Intel's own history page (via search) says first production facility outside the US, Penang, 1972. | none |
| VF-76 | 51, 0 | foreign firms paid with their own money, needed little borrowing | unsupported | No source on how the plants were financed. It is the lane writer's inference. The state also paid to build the zone. | "mostly foreign firms' investment, as far as the lanes show" |
| VF-77 | 52 | about 19,000 women in 1980 | match | Grossman: "Approximately 19,000 women work in these plants." | none |
| VF-78 | 52 | women about nine in ten of the assembly workers | overstated | Grossman: "90 percent of the assembly workforce in this 1400-person factory" (one Intel plant). | "at one large plant about nine in ten" |
| VF-79 | 52 | long shifts, often at night | overstated | Grossman: in 1970 Malaysia exempted electronics firms from the night work ban. No evidence that work was often at night. | "night work was allowed" |
| VF-80 | 52 | close work under microscopes, school leavers from villages | match | Grossman: microscope work blurs vision, "recent high school graduates from small villages". | none |
| VF-81 | 52, 54 | the wages and the skills stayed | unsupported | No wage or skills figures in lanes. Lane cites Rasiah that Malaysia stayed in assembly. | Cut |
| VF-82 | 52 | electronics about 40% of exports in 2023, as reported | match | Lane R17B-42 plausible (40.4%). Hedged. | "electrical and electronic goods" |
| VF-83 | 53 | Proton set up in the 1980s behind high protection | match | HICOM 1980, Proton 1983, most protected sector (plausible). | none |
| VF-84 | 53 | Malaysia's heavily funded push into heavy industry | unsupported | Lane: no World Bank evaluation found, losses not verified. | "push into heavy industry" |
| VF-85 | 53 | in 2016 it received a soft loan of 1.5 billion ringgit | overstated | Search: approved April 2016, conditional on finding a foreign partner, released in parts. | "was approved a 1.5 billion ringgit soft loan" |
| VF-86 | 53 | 2017 a Chinese firm bought almost half | match | Geely 49.9%. | none |
| VF-87 | 54 | Proton row: "Losses, a rescue loan" and Taiwan "small next to Korea's loans" | unsupported | Proton accumulated losses not verified (lane gap). The Taiwan versus Korea comparison has no figures. | Cut or give the figures |
| VF-88 | 55 | Amsden argues the state steered credit | match | Birdsall 2025 on Amsden 1989 and 1994 (secondary). | none |
| VF-89 | 55 | World Bank 1993 doubted that steering credit was central | match | Birdsall: the report dismissed industrial policy as central, though it hedged on credit subsidies to exporters. | none |
| VF-90 | 55 | later look says the failure case is harder to make | match | Birdsall CGD 736: "has become harder to defend with the passage of time". Birdsall was a report author, and it is about the sectoral argument. | Name Birdsall and say she co-wrote the 1993 report |
| VF-91 | 56 | Taiwan and Penang did as much with far less borrowing | overstated | No lane measure of output or borrowing compares them with Korea. | "also built industries" |
| VF-92 | 61 | sisters unlucky to buy near the top | unsupported | Lanes give no purchase date or price. The shares may have been bought well below 120 and paid 10% for some years. | "Their shares fell from 120 to 20" |
| VF-93 | 13, 61 | the sisters lost most of their money | unsupported | Same gap. Only the fall from 120 to 20 is sourced. | Say what is sourced |
| VF-94 | 63.0 | 100 million, 1935, 2% to 3%, under 1 in 100 bad, about half of farms by 1945 | match | Richmond Fed: "$100 million", "between 2 percent and 3 percent", "default rate was less than 1 percent", "roughly half" by end of WWII. | "default rate under 1%" |
| VF-95 | 63.1 | defence department from 1969, NSF network closed 30 April 1995 | match | Lane R17A-19 plausible. Second half hedged. | Hedge first half too |
| VF-96 | 64 | lines never built from Odlyzko | mismatch | Lane R17A-08 source is Casson via Wikipedia. Odlyzko was not opened. | "Casson, from a summary" |
| VF-97 | 64 | NASA payments from the commercial cargo final report | mismatch | Lane gap: final report SP-2014-617 not opened. Figures came from a 2013 NASA lessons deck. | "NASA's 2013 lessons learned deck" |
| VF-98 | 64 | Edison from histories of the station | overstated | Source is the Edison Papers headnote. | Name it |
| VF-99 | 1, 2 | bridge notes to chapters 02, 04, 05, "fourth of seven" | unsupported | Not in lanes. Check against those chapters. | Check chapters |
| VF-100 | 58 | verdict row 3: main rate near 5% | mismatch | See VF-35. | "between 4.6% and 6.5%" |

## 3. Re-fetched items
1. https://www.annebronte.org/2020/09/27/2164/ saw: "each left around £300", Emily managed the funds, Wooler letter and quote, September 1849 letter to George Smith with 50, 120, 10, 20. No aunt, no death dates.
2. https://pureadmin.qub.ac.uk/ws/files/18161511/RailwayCrisis.pdf (downloaded, text read) saw: 516 and 246, 5.7, 6.7, 4.7, the rate path, price fall from August 1845, pre-mania dividends 4.4 to 7.0.
3. https://fred.stlouisfed.org/graph/fredgraph.csv?id=FEDFUNDS saw: 1995 to 2000 range 4.63 to 6.54.
4. FRED M2SL and NASDAQCOM csv saw: M2 +33.05% (Dec 1994 to Dec 1999), +41.3% to Dec 2000, +26.78% (Feb 2020 to Feb 2021), Nasdaq peak 5048.62 and trough 1114.11.
5. https://carlotaperez.org/?p=5425 saw: "They are the result of opportunity pull rather than of easy credit push" and "massive episodes of credit creation". Only the first 100,000 of 223,547 characters read.
6. https://ntrs.nasa.gov/api/citations/20200001093/downloads/20200001093.pdf saw: 54,500, 2,720, factor of 20, advertised price, drop in 2010, table gives 61.7k, reuse has not cut cost so far.
7. https://ncses.nsf.gov/pubs/nsf24332 saw: 1969 federal 70.4%, 2022 39.6%, shares of funding.
8. https://www.richmondfed.org/publications/research/econ_focus/2020/q1/economic_history saw: REA figures.
9. https://edison.sas.rutgers.edu/images/archive/innovations/EL/PearlStreetHeadnote.pdf saw: 300,000 covers properties, station and distribution system, over half a million total, no charge until early 1883.
10. https://www.lse.ac.uk/asset-library/information/0604nickcrafts.pdf saw: England and Wales 4.1 (1865), upper bound, overstated by about 2.
11. https://ntrs.nasa.gov/api/citations/20150009324/downloads/20150009324.pdf saw: 396M, 288M, 40 and 29 milestones, several lessons, over 50% commercial funding.
12. https://www.nasa.gov/wp-content/uploads/2015/01/586023main_8-3-11_NAFCOM.pdf saw: 3,977, 1,695, 1,383, 443, caveats.
13. https://www.dallasfed.org/~/media/documents/research/efr/2001/efr0104c.pdf saw: 500 percent, 58.4 billion package split.
14. https://www.kdevelopedia.org/k-db-originals/export-promotion-and-koreas-government-led-industrialization-1960s-1970s saw: 89%, 25.1, 20.2, 10 to 20%, 13 to 92.
15. https://multinationalmonitor.org/hyper/issues/1980/03/grossman.html saw: 19,000, 90% at a 1,400 person plant, 1970 night work exemption, microscopes.
16. https://taiwaninsight.org/2024/05/10/a-short-history-of-semiconductor-technology-in-taiwan-during-the-1970s-and-the-1980s/ saw: 19 of over 30, watch chips, 70% yield, Philips 27.5%, TSMC 61%. No 10M, no 48%.
17. https://www.cgdev.org/sites/default/files/world-bank-s-east-asian-miracle-too-much-a-product-of-its-time.pdf saw: "harder to defend with the passage of time", Amsden 1994.
18. https://www.computerworld.com/article/1354274/dot-com-layoffs-eased-at-end-of-2001.html saw: 100,925 and 41,515.
19. https://spaceflightnow.com/2020/03/30/oneweb-files-for-bankruptcy/ saw: 3.4 billion announced, 74, nearly 650.
20. https://www.cnbc.com/amp/2023/05/23/virgin-orbit-bankruptcy-sale-rocket-lab-stratolaunch-vasts-launcher.html saw: six missions, two failures, 4 April, 36 million in bids.
21. Web searches (not page reads): Correlation Ventures figures, Proton loan and Geely, TSMC 48.3 and 27.5, Intel Penang 1972 and Penang unemployment 16% and zone 1972.
Not re-fetched: Ghosh, Nelson table, Computer History Museum Apollo page, NSFNET dates, Penang pioneer tax terms. The Medium Correlation page and the Birdsall landing page returned 403 and 404.

## 4. Plausible, unverified or memory rows stated as fact
- Brontë figures 50, 120, 10%, 20 (R17B-61 plausible). Stated plainly in block 12. The page does quote them, but originals were not opened.
- Investors promised returns traffic could not pay (R17A-10 plausible, from a reader's notes). Plain in block 17.
- ARPANET funded by Defense from 1969 (R17A-19 plausible). Plain in blocks 36 and 63.1.
- Chip purchase shares (reproduction of Nelson, secondary). Plain in block 26.
- About 10 million for the RCA licence (secondary, and the lane's cited page does not carry it). Plain in block 50.
- 58.4 billion (secondary). Plain in block 49 and it is a package.
- Pioneer tax holidays (plausible). Plain in block 51.
- Intel 1972 (plausible in lane, now supported by Intel's own page). Plain in block 51.
- First booster landing, 21 December 2015 (plausible). Plain in block 43.
- "something new" in 2006 (no lane row, memory like). Block 39.
- Brontë death dates and novels (not in lanes). Blocks 8 and 12.
- No unverified or memory row was printed as a figure. Rocketplane Kistler, mRNA, Theranos, Odlyzko 10% of GDP and Korean bank nationalisation were left out. Good.

## 5. One-sided numbers and causal overreach
Causal claims the data cannot carry
- Block 30 and 35: rate levels in three booms do not show that easy money "fed" two of them. Rival causes are in the lane (harvest, gold flows, 1844 Act). Three cases cannot rank a cause.
- Block 33: "the spark was the technology" is Perez's view, stated as fact. The same Perez page calls bubbles credit creation and says the 2000s moved to "easy credit push".
- Block 49 and 0: Korea's inflation is blamed on the credit push, but the 1960s inflation came before the 1973 heavy industry drive, and the Dallas Fed text ties the 1997 crisis to short term foreign borrowing at 285% of reserves and chaebol debt. A crisis 24 years later is not shown to follow from 1970s created money.
- Block 49: "It worked" gives Korea's growth to credit. The lane lists rival causes (education, land reform, US aid, export discipline) and Krugman and Young (inputs, not productivity).
- Block 43: "cheaper way of building rockets did most of the work" rests on one date (2010) in one paper, comparing a shuttle cost with a Falcon advertised price.
- Block 46: "not paid for by created money" cannot be shown from NASA payments alone. Nothing in the lanes traces who funded the company's development.
- Block 60: "promises that paid were mostly shares, profits and government buying" has no table of funding sources per technology. It rests on one example per case.
- Block 52 and 56: Penang "wages and skills stayed" and "as much with far less borrowing" have no data. Lane cites Rasiah that Malaysia stayed in assembly.
- Blocks 13 and 61: the sisters' loss is shown only as a fall from 120 to 20. Their purchase price is unknown.

One sided numbers
- Interest rates and M2: both use windows that make the internet boom look ordinary (rate top cut off at 5.9, M2 stops in 1999).
- Railway share of output: Campbell 5.7 to 6.7% is printed. The lane's higher Odlyzko figure (over 10% in 1847) is not mentioned. Campbell's rising pre-mania dividends are also left out.
- Venture capital: only the high loss figures (75%, two thirds). NVCA's 25 to 30% and Correlation's later "nearly half" are left out.
- Perez: the half of her argument that supports the chapter is used, the credit creation half is not.
- Rockets: the 396M against billions leaves out Dragon capsule scope, NASA's own "partners funded over 50%", the NAFCOM 443M figure near 396M, Google and Fidelity money in 2015, and commercial crew ceilings of 2.6 and 4.2 billion. Failures (OneWeb, Virgin Orbit) are given with numbers but no count of other launch companies.
- Late developers: Korea gets costs in numbers. Taiwan's costs get none (the lane has NT$210M for ITRI) and Penang's costs are only "taxes not collected". Korea's 89% is export credit only.
- Test 1 says "Yes, easiest to support" while the lanes' own findings cut the other way in places. Taiwan's start cost about 10 million, NASA paid hundreds of millions, and the mRNA early cost was 337 million. The chapter does not mention the lane's note that "enormous price first" is not always true.
- Survivorship: the five technologies chosen are all ones that worked in the end, apart from dot-com and the failed firms, so "costs a fortune before paying back" has no counter sample of technologies that never paid back.
