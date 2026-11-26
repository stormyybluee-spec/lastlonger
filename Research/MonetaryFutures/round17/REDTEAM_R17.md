# Red team, round 17: chapter rb-future, "Paying for tomorrow"

Blind review. Only DRAFT_R17.md was read. Sections are appended as they are finished.

## 1. Blocking points, ranked

Ranked from most to least serious. Every OLD text is copied from one block of the draft and occurs once.

### RT-01. The Brontë loss is told as bad timing, but the company's own accounts were part of the cause. Blocks [13], [61]

What is wrong. Block [13] says the line "did exactly what it promised to do" and the loss fell on those who "paid for it at the top of the fever". Block [61] says the sisters "were unlucky to buy near the top". The same web page the draft cites as its Brontë source says the company's profits were greatly overstated and that shareholders, the Brontës among them, were paid dividends out of the company's capital, not out of its earnings. So the "10% a year" in block [12] was partly the savers' own money handed back. A historian of Victorian finance would say the chapter turns a story about misleading accounts into a story about market timing. That changes the lesson: a promise about the future is only as good as the honesty of the books behind it. The fix names the company, not any person, which keeps to the site's rule.

Evidence. annebronte.org page cited in block [64.0]: profits "grossly over-exaggerated", shareholders paid "out of company capital rather than earnings". https://www.annebronte.org/2020/09/27/2164/ . The draft's own source also says Emily's account book records a "speculation" in 1845, so the purchase date is roughly the top of the fever, which supports the timing story too. Both causes are true.

Fix 1, block [13].
OLD: The line did exactly what it promised to do for the country. It was the people who paid for it at the top of the fever who lost most of their money.
NEW: The line did what it promised to do for the country. But it did not do what it promised to its owners. Later it came out that the company had shown profits it did not really have, and had paid part of those 10% dividends out of the shareholders' own capital. The people who paid for the line at the top of the fever lost most of their money.

Fix 2, block [61].
OLD: They were unlucky to buy near the top, and to be among the many whose money paid for something everyone else would use.
NEW: They bought near the top, from a company whose accounts made its profits look larger than they were. They were among the many whose money paid for something everyone else would use.

### RT-02. Test 2 and Test 3 leave out the strongest version of the reader's claim: governments borrow, and central banks buy that debt. Blocks [22], [25], [36], [46]

What is wrong. The table in block [22] lists "Government as a buyer" and "Government as a payer for research", and block [36] says research was paid "from taxes". But governments pay for research, rockets and early chips with borrowed money as well as taxes. In the years the chapter covers, the American government often spent more than it collected, and the gap was filled by selling bonds, which are promises about the future. In some periods, such as 2020 to 2021, the central bank itself bought large amounts of those bonds. This is the most direct path from "money made by a central bank" to "paying for new technology", and it is the path the reader most likely means. The chapter never tests it. That makes Part 3 easier to reject than it should be. This is the chapter's biggest lean against the reader.

Evidence. No new number is needed for the fix. The point is one of logic: the draft's own table says the state pays as buyer and as research funder, and the state pays with taxes and borrowing.

Fix 1, block [22]. Add a row after "Government as a payer for research".
OLD: | Government as a payer for research | Taxes pay for science that no single firm would fund | The internet's first network. Basic science |
NEW: | Government as a payer for research | Taxes pay for science that no single firm would fund | The internet's first network. Basic science |
| Government borrowing | The state sells bonds, which are promises to repay, and spends the money now. Sometimes the central bank buys those bonds | Part of what the state spends as buyer and as research funder, in years when it spends more than it collects in taxes |

Fix 2, block [36].
OLD: The first internet network was paid for by the government's research budget, from taxes, and the boom was paid for by investors buying shares.
NEW: The first internet network was paid for by the government's research budget, from taxes and government borrowing, and the boom was paid for by investors buying shares.

Fix 3. Add one sentence at the end of block [34] so Test 3 admits the untested path.
OLD: Created money is not aimed at technology unless someone aims it.
NEW: Created money is not aimed at technology unless someone aims it. One way it can be aimed is through the state. A government sells bonds to pay for research or a space programme, and at times the central bank buys those bonds. This chapter does not measure how much of the state's spending on technology was paid this way, so this part of the reader's claim is left open, not rejected.

### RT-03. The railway row of Test 3 dates the end of the boom wrongly, and the internet row leaves out the rate cuts and the rate rises that fit the reader's picture. Block [30]

What is wrong, railway. The table says the Bank's rate "rose to 5.5% in 1847 and the boom broke". The share boom broke in the autumn of 1845, when the Bank raised its rate. The crisis of 1847 came later, and in that year the rate went up to 8%, not 5.5%. Campbell, whom the draft cites, dates the mania to "between 1843 and the autumn of 1845".

Evidence. Campbell, Queen's University Belfast paper: https://pureadmin.qub.ac.uk/ws/files/18161511/RailwayCrisis.pdf . Wikipedia, Railway Mania (Bank "increased interest rates" in late 1845): https://en.wikipedia.org/wiki/Railway_Mania . Rate of 8% in October 1847, Hyndman: https://www.marxists.org/archive/hyndman/1892/crises/ch04.html

What is wrong, internet. The table calls the money conditions "Ordinary". That leaves out three facts. First, in the autumn of 1998, after market turmoil, the Federal Reserve cut its rate three times, by 0.75 percentage points in all, and the last and wildest stage of the boom followed. Second, borrowing to buy shares, called margin debt, reached a record of about 278.5 billion dollars in March 2000, the month the Nasdaq peaked. That is borrowed money flowing into shares, the kind of credit the reader means. Third, the Fed raised its rate again from June 1999, and the bust followed. The railway row tells the reader "the rate rose and the boom broke". The internet row should tell the same story where it fits. As written, the table counts the same mechanism for one boom and hides it for another.

Evidence. Federal Reserve, 1998 cuts in three steps of 0.25 and three 1999 rises: https://www.federalreserve.gov/boarddocs/RptCongress/annual99/mpo.pdf and New York Fed: https://www.newyorkfed.org/medialibrary/media/markets/omo/omo99.pdf . Margin debt record of 278.5 billion dollars in March 2000: https://www.advisorperspectives.com/dshort/updates/margin-debt

Fix 1, block [30].
OLD: | British railway fever, 1844 to 1846 | The Bank of England's rate was 2.5% to 3.5%, low for the time, as reported | Easy. Then the rate rose to 5.5% in 1847 and the boom broke |
NEW: | British railway fever, 1843 to 1845 | The Bank of England's rate was 2.5% to 3.5%, low for the time, as reported | Easy. The Bank raised its rate in late 1845 and share prices broke. In the crisis of 1847 the rate went as high as 8% |

Fix 2, block [30].
OLD: | The internet boom, 1995 to 2000 | America's main interest rate was between about 4.6% and 5.9% | Ordinary. The money supply grew about 33% over five years, about 6% a year |
NEW: | The internet boom, 1995 to 2000 | America's main interest rate was mostly about 5%. It was cut three times in late 1998, after a market scare, and raised again from June 1999 | Mostly ordinary, with a burst of easing in late 1998. The money supply grew about 33% over five years, about 6% a year. Borrowing to buy shares reached a record in March 2000, the month the boom peaked |

Fix 3, block [31].
OLD: So two booms fit the reader's picture and one does not.
NEW: So two booms fit the reader's picture well, and one fits it only at the edges.

### RT-04. "None of them needed it to start" is not shown by the evidence. Blocks [35], [33], [60]

What is wrong. The test only looks at interest rates during each boom. It cannot show what would have happened without cheap money. For the railways, the low rate came at the very start of the fever, so the evidence fits "cheap money helped start it" as well as it fits "it did not". The Perez phrase in block [32] is about the internet bubble of the late 1990s. In the same paper she describes a second bubble, from about 2003 to 2008, that was driven by easy credit and went mostly into things other than technology. So her own work says some bubbles are credit-driven. The draft uses her phrase as a rule for "the great technology bubbles" in general.

Evidence. Perez, "The double bubble at the turn of the century", Cambridge Journal of Economics, 2009: https://www.repository.cam.ac.uk/bitstream/1810/225149/1/wp31.pdf and summary of her contrast: https://blog.irvingwb.com/blog/2009/04/a-historical-perspective-on-the-financial-crisis.html

Fix 1, block [35].
OLD: Easy money fed two of the three booms, and none of them needed it to start.
NEW: Easy money fed two of the three booms, and the internet boom began without it. Three booms are too few to say more.

Fix 2, block [32].
OLD: "opportunity pull rather than easy credit push" (Carlota Perez, on what drives the great technology bubbles)
NEW: "opportunity pull rather than easy credit push" (Carlota Perez, on the internet bubble of the late 1990s. She contrasts it with the bubble of the mid-2000s, which she says was driven by easy credit and went into things other than technology)

Fix 3, block [60].
OLD: Cheap money fed some booms. It did not start them. The spark was the chance people saw.
NEW: Cheap money fed some booms, and the internet boom grew without it. In these cases the bigger spark was the chance people saw.

### RT-05. OneWeb is told as a plain failure, but its network was rescued, partly by a government, and went on. Block [44]

What is wrong. The draft ends the OneWeb story at bankruptcy. In November 2020 the company left bankruptcy after a 1 billion dollar purchase by the British government and an Indian telecoms group, each owning 42.2%. This is the Brontë story again: early investors lost, but the network was kept and built. As told, the paragraph is too hard on the industry and misses the chapter's own best echo. Virgin Orbit is a fair counterweight as written.

Evidence. https://www.geekwire.com/2020/british-indian-team-puts-winning-1b-bid-acquire-oneweb-satellite-broadband-venture/ and https://www.lightreading.com/iot/oneweb-gets-out-of-bankruptcy

Fix, block [44].
OLD: A satellite internet company called OneWeb raised 3.4 billion dollars and went bankrupt in March 2020, with 74 of about 650 planned satellites in orbit.
NEW: A satellite internet company called OneWeb raised 3.4 billion dollars and went bankrupt in March 2020, with 74 of about 650 planned satellites in orbit. Its first investors lost most of their money. But in November 2020 the British government and an Indian telecoms group bought it for about 1 billion dollars, and it went on building. Like the sisters' railway, the network outlived the people who first paid for it.

### RT-06. The NASA story stops in 2012 and leaves out the larger promises to buy. Blocks [39], [41], [46]

What is wrong. The draft tells only the 396 million dollar development payments. In December 2008 NASA also signed a contract to buy cargo flights from the same company, valued at 1.6 billion dollars for up to 12 flights. In 2014 it awarded the company up to 2.6 billion dollars to carry astronauts. These later, larger contracts are the clearest proof of the chapter's own lesson that a firm promise to buy helps a company raise money. Leaving them out makes the public role look smaller than it was, which flatters the "private money" story. Also, "paid for results, not for promises" in block [41] clashes with the chapter's own frame: a contract to pay on delivery is itself a promise about the future. The phrase "fraction of the old cost" in block [46] leans on a model NASA itself says is not a budget estimate.

Evidence. Cargo contract, 1.6 billion dollars for up to 12 flights: https://spaceflightnow.com/news/n0812/23crsawards/ . Crew contract, 2.6 billion dollars, a ceiling not a guarantee: https://www.planetary.org/articles/20140917-nasa-kicks-off-private-race . NASA cost model document: https://www.nasa.gov/wp-content/uploads/2015/01/586023main_8-3-11_NAFCOM.pdf

Fix 1, block [41].
OLD: The public money was small next to the old way of doing things, and it was paid for results, not for promises.
NEW: The public money was small next to the old way of doing things, and it was paid only when results were reached. NASA's promise was to pay for results, not to cover costs.

Fix 2, block [42].
OLD: That lesson is the microchip story again. The state as first customer, not as lender.
NEW: That lesson is the microchip story again. The state as first customer, not as lender. And the promises to buy grew. In December 2008 NASA agreed to buy up to 12 cargo flights to the space station from the same company, valued at 1.6 billion dollars. In 2014 it agreed to pay up to 2.6 billion dollars for flights carrying astronauts. These were far larger than the first payments.

Fix 3, block [46].
OLD: The rocket company was paid for by private investors and by a government that promised to buy its services, at a fraction of the old cost. It was not paid for by created money.
NEW: The rocket company was paid for by private investors and by a government that promised to buy its services, by NASA's rough estimate at well below the old cost. The record here does not show created money paying for it directly, though some of its private money was raised in years when money was very cheap.

Note on the last sentence. The reviewer did not source the company's later fund-raising rounds, so the NEW text claims only what the draft's own Test 3 table supports (money was very cheap in 2020 to 2021). If the verifier cannot tie the company's rounds to those years, delete the clause after "directly".

### RT-07. Korea's inflation range is wrong, and the 1997 crisis is tied to directed credit without its main causes. Blocks [49], [54], [56]

What is wrong, inflation. "Prices rose 10% to 20% a year through the 1960s and 1970s" is not right year by year. World Bank data show about 3% in 1973, about 24% in 1974 and about 25% in 1975. The pattern was high and swinging, not a steady band.

What is wrong, 1997. The draft puts the 1970s directed credit and the 1997 crisis in one line, so it reads as cause and effect. Most accounts of 1997 stress newer causes: in the 1990s Korea opened to short-term foreign borrowing before long-term borrowing, the number of lightly watched merchant banks grew from 6 to 30 between 1994 and 1996, and firms paid for long projects with short foreign loans. Short-term debt was 61% of foreign debt in 1996, by one account. High company debt was a legacy of the directed-credit years, so the link is real, but the crisis came after much of the old steering had been loosened. A development economist would object strongly to the current wording.

Evidence. World Bank series on FRED: https://fred.stlouisfed.org/data/FPCPITOTLZGKOR . IMF Independent Evaluation Office on Korea: https://www.imf.org/external/np/ieo/2003/cac/pdf/Kor.pdf . Notre Dame Kellogg working paper (merchant banks, short-term debt 61%): https://kellogg.nd.edu/publications/workingpapers/WPS/272.pdf

Fix 1, block [49].
OLD: But prices rose 10% to 20% a year through the 1960s and 1970s. And by 1997 the biggest business groups are reported to have owed about five times what they owned, and the country needed a rescue of 58.4 billion dollars.
NEW: But prices often rose by more than 10% a year, and in 1974 and 1975 by about a quarter each year. The habit of heavy borrowing lasted. By 1997 the biggest business groups are reported to have owed about five times what they owned. That year Korea needed a rescue of 58.4 billion dollars. The crisis had newer causes too. In the 1990s Korea let banks and firms borrow short-term from abroad, and new, lightly watched banks used that money for long projects. When foreign lenders asked for their money back, it was not there.

Fix 2, block [54].
OLD: | Korea | Created money and bank loans aimed by the state | Steel, ships and chemicals that now sell worldwide | Inflation of 10% to 20% a year, and a crisis in 1997 |
NEW: | Korea | Created money and bank loans aimed by the state | Steel, ships and chemicals that now sell worldwide | High and swinging inflation, heavy company debt, and a crisis in 1997 that also had newer causes |

### RT-08. Taiwan's public and foreign money is understated. Blocks [50], [54], [56]

What is wrong. The draft says "the money was public, but it went into skills and one well-run firm". Three facts are missing. First, the 1987 chip maker had a large foreign partner: the Dutch firm Philips owned about 27.5% at the start. Second, it was not the only state-born chip firm. The institute's test plant was spun off in 1980 or 1981 as another chip maker, UMC. Third, the reviewer could not source the share of Taiwan's banks owned by the state in the 1980s, but experts will expect a mention that most large banks were state-owned then. The verifier should source this before adding it. "One firm" and "small next to Korea's loans" both shrink the state's role.

Evidence. RCA deal and 19 engineers, 1976: https://www.chiphistory.org/chc_upload/content/pdf/19/1505416825/1505416825.pdf . Shareholders 48.3% development fund, 27.5% Philips: https://anysilicon.com/history-and-milestones-of-tsmc/ . UMC spin-off: https://medium.com/economic-history-blog/history-of-taiwanese-semiconductor-chip-industry-266c779b6220

Fix 1, block [50].
OLD: The money was public, but it went into skills and one well-run firm, not into a flood of loans.
NEW: The state's research institute also spun off an earlier chip firm, UMC, around 1980. And the 1987 firm had a large foreign partner, the Dutch company Philips, which owned about 27.5% at the start. So the money was public and foreign together. It went into skills and a few firms, not into a flood of loans.

Fix 2, block [54].
OLD: | Taiwan | Public money for skills and one firm | A world-leading chip maker | Small next to Korea's loans, by these accounts |
NEW: | Taiwan | Public money for skills and a few firms, with a foreign partner | A world-leading chip maker | Smaller than Korea's loans, by these accounts, though the state took large risks |

Fix 3, block [56].
OLD: But Taiwan and Malaysia's Penang show that skills, a few good firms and foreign money could do as much with far less borrowing.
NEW: But Taiwan and Malaysia's Penang show another road: public money spent on skills and land, a few good firms and foreign money, with far less borrowing aimed by the central bank.

### RT-09. "Penang needed little borrowing at all" ignores the state's own investment and how foreign firms raised their money. Blocks [0], [51], [54]

What is wrong. A state agency, the Penang Development Corporation, built the free industrial zone and the township beside it. A bridge to the mainland opened in 1985 and linked the zone to the rest of the country. Those cost public money, and the reviewer could not find how the bridge was paid for. Also, "foreign firms paid with their own money" hides that those firms raised their money partly from shares and loans at home, so promises about the future still paid for Penang, just not Malaysian ones. "Needed little borrowing at all" should become "little borrowing by Malaysia's banks".

Evidence. Bayan Lepas zone opened 1972, built by the Penang Development Corporation: https://en.wikipedia.org/wiki/Bayan_Lepas_Free_Industrial_Zone . Bridge opened 1985 and linked the zone: https://penangmonthly.com/article/9364/penangs-pride-25-years-of-the-penang-bridge-1

Fix 1, block [51].
OLD: Malaysia took a third road, and its biggest success needed little borrowing at all.
NEW: Malaysia took a third road, and its best-known success needed little lending by Malaysia's own banks.

Fix 2, block [51].
OLD: Foreign firms paid for the factories with their own money.
NEW: A state agency, the Penang Development Corporation, built the zone and a new township beside it, and in 1985 a bridge joined the island to the mainland. Foreign firms paid for the factories themselves, with money they had raised at home from their own profits, shares and loans. So promises about the future still paid for Penang. They were simply made far away.

Fix 3, block [0].
OLD: Malaysia's biggest success, electronics in Penang, needed little borrowing at all.
NEW: Malaysia's best-known success, electronics in Penang, needed little lending by Malaysia's own banks.

### RT-10. Proton is told only through its troubles. Blocks [53], [54]

What is wrong. A Malaysian reader will know Proton as a car many families owned. By mid-1986 the Saga held about 64% of the domestic market for cars under 1600cc, and more than 1.2 million Sagas were sold from 1985 to 2008. Since 2017 its sales have more than doubled, from about 71,000 in 2016 to over 152,000 in 2024. The draft's "did less well" may still be fair as a judgment of value for public money, but leaving out every success breaks the site's rule to weigh both sides.

Evidence. Saga share and units: https://handwiki.org/wiki/Company:PROTON_Holdings . Losses 2012 to 2016 and later rise in sales: https://paultan.org/2025/07/23/proton-returned-to-profitability-following-geely-partnership-says-miti-minister-tengku-zafrul

Fix, block [53].
OLD: In 2016 it received a soft loan of 1.5 billion ringgit, and in 2017 a Chinese car maker bought almost half of it, as reported.
NEW: For years it sold well at home. By the middle of 1986 its first car held about 64% of the market for small cars, as reported. But it made losses from 2012 to 2016. In 2016 it received a soft loan of 1.5 billion ringgit, and in 2017 a Chinese car maker bought almost half of it, as reported. Since then its sales have more than doubled.

Fix to block [54].
OLD: | Malaysia, heavy industry | State money and protection | A national car maker | Losses, a rescue loan, and a foreign partner |
NEW: | Malaysia, heavy industry | State money and protection | A national car maker that many families drove | Years of losses, a rescue loan, and a foreign partner |

### RT-11. The microchip story leaves out military missiles. Blocks [17], [26]

What is wrong. "Rocket and space programmes" is accurate but soft. The early chip buyers were largely military, especially missiles that carried nuclear weapons. An expert historian of technology will expect the word "military". This matters for the verdict because military buying is the largest example of the state as first customer, and it was paid by taxes and borrowing. The reviewer did not source the claim about which programme bought the most chips first, so the fix does not touch "until 1965, the largest single use". The verifier should check that phrase, because many histories give the Minuteman missile programme a larger share than Apollo by 1964 to 1965.

Fix, block [17].
OLD: Their first buyers were rocket and space programmes
NEW: Their first buyers were military missile programmes and the space programme

### RT-12. Small factual checks the verifier should confirm. Blocks [41], [9]

- Block [9]: "In 1846 alone Parliament considered 516 bills for new railways and passed 246." Wikipedia, citing secondary sources, gives 263 Acts passed in 1846. Different counts exist. Fix only if the cited source does not say 246. https://en.wikipedia.org/wiki/Railway_Mania
- Block [40]: the cost model numbers match NASA's document only loosely. NASA's August 2011 update gives about 3,977 million dollars and 1,383 million dollars for the traditional way, and about 443 million dollars for the fixed-price way. The draft's ranges contain these, but the fixed-price top of 1.7 billion comes from the earlier version. This is acceptable as written. https://www.nasa.gov/wp-content/uploads/2015/01/586023main_8-3-11_NAFCOM.pdf
- Block [12]: the draft's quote of Charlotte's 1849 letter is to George Smith, her publisher. Confirmed by the draft's source.

### RT-13. The verdict table must follow the fixes to Test 3 and Test 5. Blocks [58], [60]

What is wrong. Row 3 of block [58] rests on one fact, the 5% rate in the internet boom. After RT-02 and RT-03, that fact still stands but is no longer decisive alone. The rebuilt claim in block [60], line 2, says "mostly shares ... profits ... governments". The chapter never measures the shares of these against each other, so "mostly" is not earned (see section 5).

Fix 1, block [58].
OLD: | 3. Created money makes those promises possible | Holds only in part | The internet boom happened with America's main interest rate near 5% |
NEW: | 3. Created money makes those promises possible | Holds only in part, and one path is left untested | The internet boom grew while America's main interest rate was mostly near 5%. Government borrowing bought from the central bank was not measured here |

Fix 2, block [60].
OLD: The promises that paid were mostly shares bought by savers, profits kept in firms, and governments promising to buy the product.
NEW: In these cases the promises that paid were largely shares bought by savers, profits kept in firms, and governments promising to buy the product.

Fix 3, block [62]. Add the untested path to what would change the verdict.
OLD: Third, that the new space industry pays back on the scale its backers hope.
NEW: Third, that a large part of what governments spent on research and on buying new technology was paid with bonds that central banks bought. Fourth, that the new space industry pays back on the scale its backers hope.

Then in the same block:
OLD: The third will take years to know.
NEW: The fourth will take years to know.

### RT-14. Missing material an expert expects, and which omissions matter for the verdict

1. Matters for the verdict: government borrowing and central bank purchase of bonds. Covered in RT-02. Without it, Part 3 is tested on the private side only.

2. Matters for the verdict: military spending as first customer. Covered in RT-11. Early chips, the first computer networks and rockets all grew from military budgets. One sentence naming defence buying in Test 2 would make the "state as first customer" finding stronger and fairer.

3. Matters somewhat: the economist Mariana Mazzucato's idea of the "entrepreneurial state", which argues that the state takes the earliest and riskiest bets, not only as buyer but as investor. The draft's Test 2 already makes a milder version of her point but never names the debate, while it does name Amsden and the World Bank in Test 5. Suggested addition at the end of block [25]: "Some economists, such as Mariana Mazzucato, argue that the state is often the boldest investor of all, taking risks that private money will not. Others reply that the state also backs many losers." No number needed.

4. Matters for a Malaysian reader: China's state chip funds, a live example of "created money aimed by the state" at technology today. China set up a national chip investment fund in 2014 with registered capital of about 138.7 billion yuan, a second in 2019 of about 204 billion yuan, and a third in 2024 of 344 billion yuan, about 47.5 billion dollars. Source: https://yicaiglobal.com/news/china-sets-up-third-investment-fund-with-usd475-billion-to-spur-semiconductor-industry and https://www.theregister.com/2024/05/28/china_semiconductor_big_fund_3/ . A short go-deeper box or one sentence in block [55] would show the reader's road is still being tried. Do not judge the outcome, which is not yet known.

5. Matters less: sovereign wealth funds. Malaysia's own state investment fund would be a natural local example, but the reviewer did not source it. Leave out unless the verifier can source it.

6. Already partly covered: the risk that cheap money funds bubbles in old things. Block [34] makes this point. Perez's own 2003 to 2008 bubble (RT-04) is the best evidence and should be named there.

## 2. Eight voices: the single most important miss for each

- Historian of technology. The early microchip and network buyers were military first. The draft says "rocket and space programmes" and the "defence department" but never says that defence budgets were the biggest first customer of the computer age. See RT-11.

- Venture capitalist. Venture money is itself raised from pension funds and other big savers, and it flows faster when interest rates are low, because those savers look for higher returns. The draft treats venture money as savers' shares, separate from created money, and does not ask whether cheap money changes how much of it there is. The 2020 to 2021 row of block [30] hints at this but the chapter never says how.

- Economist who studies central banks. The chapter treats the central bank's rate as if it were the whole of credit. Credit to buy shares (margin debt, a record 278.5 billion dollars in March 2000), the 1998 rate cuts, and central bank purchases of government bonds are all channels that do not show up in a single rate. See RT-02 and RT-03.

- Space industry analyst. The NASA story stops at 396 million dollars. The 1.6 billion dollar cargo contract of December 2008 and the 2.6 billion dollar crew contract of 2014 are what a space analyst would call the real public backing. OneWeb's rescue by a government is also missing. See RT-05 and RT-06.

- Development economist who studies East Asia. The 1997 Korean crisis is linked to 1970s directed credit, but most studies put the trigger on 1990s short-term foreign borrowing and weak new banks. Also, Korea's inflation figures are wrong year by year. See RT-07.

- A Malaysian who worked in Penang's factories. The paragraph says "the wages and the skills stayed", but gives no wage, no example of a skill, and no word on the women's own view. The source the draft cites is titled "Bitter Wages", which tells you how its author saw the pay. One sentence should say that the pay was low by the standards of the firms' home countries and that health problems such as eye strain from microscope work were reported, if the verifier can source this from Grossman. Otherwise "the wages and the skills stayed" should become "the jobs and the skills stayed".

- A Malaysian 18-year-old reader. Malaysia gets two short paragraphs, and Proton is told only as a failure. A local reader will want to know what Malaysia is doing now and why Penang still matters. RT-10 adds Proton's successes. A line saying Penang's factories today make chips for the world, if sourced, would close the loop.

- Historian of the Brontës or of Victorian finance. The loss came partly from misstated accounts and dividends paid from capital, not only from buying near the top. See RT-01. A Victorian finance historian would also mention that railway shares were often bought with only a small deposit paid, with the rest called up later. Wikipedia notes shares "could be purchased for a 10% deposit" (https://en.wikipedia.org/wiki/Railway_Mania). That is a promise about the future made by the buyer, and it is exactly the reader's idea of credit.

## 3. Flattery check, both directions

### Where the draft flatters the reader

- Block [56] and block [60], line 4: "Korea did pay for its rise largely with created money aimed by the state, and it worked". The draft then softens the cost by tying 1997 to the same cause without its newer triggers (RT-07). This is mixed: it flatters the reader on the gain and overstates the cost. After the fix, Korea still gives the reader real support, which is fair.
- Block [16]: "Yes. This part of the claim is the easiest to support." Fair. Test 1 earns it.
- Block [46] and the rocket section as a whole are kind to the reader's chosen company, because the draft leaves out the larger public contracts (RT-06). That makes the private side look larger than it was. It is a soft spot in favour of the company more than the reader.
- Block [45] is honest and does not flatter: "The reader's hope about what may follow is a hope". Keep it.

### Where the draft leans against the reader to look balanced

- Test 3, the main lean against. Government borrowing and central bank bond buying are never tested (RT-02). Margin lending and the 1998 rate cuts are left out of the internet row, while the matching rate rise is told for the railway row (RT-03). "None of them needed it to start" is stated without evidence (RT-04). Together these make Part 3 look weaker than the record shows.
- Block [41]: "paid for results, not for promises". This sets results against promises, but a contract to pay later is a promise. The phrase makes the reader's word "promises" look wrong when it is right.
- Block [44]: OneWeb is told as a plain failure, when its rescue and survival fit the chapter's own railway lesson (RT-05). This leans against the reader's hope about the space industry.
- Block [51]: Penang "needed little borrowing at all". This ignores that foreign firms raised their money from shares and loans at home, which are promises about the future (RT-09). It narrows the reader's "credit" to Malaysian bank loans only.

### Is the reader's claim narrowed to make it easier to reject?

Partly. Part 2 of the reader's claim uses "credit" to mean promises about the future. The draft accepts that wide meaning in Test 2, where shares count, and so Part 2 "holds". Then in Test 3 the draft quietly narrows Part 3 to one channel, the central bank's rate during private booms. The reader's own words in block [5] Part 3 are "Money made by a central bank, and by banks when they lend". Bank lending to buy shares and central bank buying of government bonds both fall inside those words, and neither is tested. The fixes in RT-02 and RT-03 restore the full claim and leave Part 3 "in part", which is where the evidence puts it.

### Is the rebuilt claim supported line by line?

- Line 1, block [60]: supported by Test 1.
- Line 2: supported in kind, but "mostly" is not measured. Use "largely, in these cases" (RT-13).
- Line 3: "It did not start them" is not supported. Use the RT-04 wording.
- Line 4: supported, once Korea's costs are stated accurately and Taiwan and Penang are given their public and foreign money (RT-07, RT-08, RT-09).

## 4. Depth and narration

### Three places where one more layer would most help an 18-year-old

1. Test 3, after block [33]: the mechanism. How does money made by a bank reach a new technology? One or two sentences: a bank lends to a buyer of shares, the loan creates new money in the buyer's account, and the buyer pays it to the new firm for its shares. Or a government sells a bond, and the central bank buys it with money it creates. Then the reader can see what "created money made it possible" would look like if it were true, and why a single interest rate does not settle it.

2. The Brontë scene, block [9] or [12]: how a railway share worked. Shares were often bought with only a small deposit, about 10% (https://en.wikipedia.org/wiki/Railway_Mania), and the company called for the rest later. Add the dividends paid from capital (RT-01). This turns the sisters from unlucky savers into people caught by two promises: their own promise to pay the calls, and the company's promise of profits it did not have.

3. Korea, block [49]: who held the loss. The draft asks in block [14] "who is left holding the loss?" but never answers for Korea. Using facts already in the draft: when the central bank supplied most of the money for export loans, and prices often rose more than 10% a year, anyone holding savings in won saw them buy less each year. So ordinary savers helped pay for the steel and ships, without being asked. This is the clearest answer in the chapter to its own question, and it costs two sentences.

### Where the story sags into report voice

- Blocks [23] to [25]: the research spending table and its comment read like a statistics note. The point (business now pays most research, the state still pays much of basic science) can be one sentence in the main path, with the table in a go-deeper box.
- Blocks [40] and [41]: the cost model table, with its caveat, stops the rocket story cold. Tell the gap in one sentence and move the table to a go-deeper box.
- Block [55]: the scholars' debate is three bare sentences. Either give it a human frame ("Economists have argued about this for thirty years") or move it to a box.
- Block [62]: necessary, but list-like. Fine inside an insider box.

### Strongest scene

The Brontë opening, blocks [8] to [13]. A real letter, real numbers, and a twist: the railway was built and the savers lost. The closing echo in block [61] works. With RT-01, it becomes stronger, because it adds a second lesson about honest accounts.

### Room for the fixes

The main path, from the kicker to block [62] without the go-deeper boxes, is about 3,750 words by a plain word count. The fixes in section 1 add roughly 450 to 550 words. To stay under about 3,900, move to go-deeper boxes:
- Block [24] (research table) and most of block [25], keeping one sentence. Saves about 90 words.
- Block [40] (cost model table) and the first sentence of block [41]. Saves about 80 words.
- Block [43] (cost per kilogram). It is a side point about reuse and the timing surprise. Saves about 90 words.
- Block [55] (scholars' debate), keeping one sentence. Saves about 50 words.
- Block [17] row on electric light, if more room is needed. Saves about 45 words.

## 5. Word audit

Each use of the listed words in the main path and verdict, with a judgment. Line references are to block numbers.

| Block | Word and phrase | Earned? | Softer wording if not |
|---|---|---|---|
| Kicker | "all cost a fortune" | Earned. Test 1 shows it for each one | Keep |
| [0] | "not mostly the kind the reader means" | Not earned. The chapter never measures how much each kind of promise paid | "not only the kind the reader means" |
| [0] | "The biggest early payers were savers buying shares and governments buying the product" | Not earned. No sizes are compared | "Large early payers were savers buying shares and governments buying the product" |
| [0] | "lines up with only some of the booms" | Earned for the three tested | Keep |
| [0] | "most useful role", "every microchip sold in 1962" | "every" is sourced. "most useful" is a judgment | "One of the government's most useful roles was as a first customer" |
| [0] | "Malaysia's biggest success" | Fair in plain sense, but see RT-09 | "Malaysia's best-known success" |
| [0] | "needed little borrowing at all" | Not earned (RT-09) | See RT-09 fix |
| [1] | "mostly from their owners' money" | From an earlier chapter. Not tested here | Keep, as a recall |
| [2] | "about 40 minutes in all" | Fine | Keep |
| [9] | "People of every kind" | Loose, but a common figure of speech | "People of many kinds" |
| [12] | "after Emily and Anne had both died" | Fine | Keep |
| [14] | "Every test in this chapter" | Earned. The tests do return to it, though Korea does not answer it (section 4) | Keep |
| [16] | "the easiest to support" | Earned | Keep |
| [18] | "most single bets fail" | Earned for venture-backed firms. Wider than the evidence | "most single bets of this kind fail" |
| [25] | "Business pays mostly from its own profits and from shares" | Not sourced in the draft | "Business pays largely from its own profits and from shares" |
| [25] | "the most basic science" | Fine | Keep |
| [26] | "every integrated circuit made in the country" | Sourced | Keep |
| [27] | "the main promises were shares ..." | Not earned. No measure | "the promises that show up most in these cases were shares ..." |
| [30] | "America's main interest rate" | Fine as a name | Keep |
| [31] | "the one that built the most lasting technology of the three" | A judgment, not shown | "the one that left the most widely used technology of the three" or cut |
| [33] | "not mainly because money is cheap" | Leans on three cases | "not only because money is cheap" |
| [34] | "most bank lending in rich countries now goes to property" | From chapter 02 | Keep, as a recall |
| [35] | "Part 3 holds only in part" and "none of them needed it to start" | "none" not earned (RT-04) | See RT-04 fix |
| [38] | "as far as the public record shows" | Good hedge | Keep |
| [39] | "all 40 of its goals" | Sourced to NASA report | Keep |
| [41] | "NASA drew one lesson above all" | Not shown. The draft cites one lesson, not a ranking | "One lesson NASA drew stands out" |
| [41] | "Still, the pattern is clear" | Too strong given NASA's own caveat | "Still, the gap is large" |
| [43] | "most of the fall to around 2010" | Sourced to the NASA Ames study | Keep |
| [44] | "for every winner there were losers" | Loose | "beside the winner there were losers" |
| [45] | "whether travel to Mars will ever pay back at all" | Fair, open question | Keep |
| [45] | "supports only its first steps" | Earned | Keep |
| [48] | "Here the evidence is strongest" | Not earned. Test 5 has several sources marked secondary | "Here the evidence is richest" |
| [49] | "Korea fits the reader's picture most closely" | Earned among the three | Keep |
| [49] | "Most of the growth in the money banks could lend came from the central bank" | Needs a source line. Not in block [64.0] by name | Keep if the verifier finds it in the Korean credit studies |
| [49] | "the biggest business groups" | Fine | Keep |
| [51] | "its biggest success needed little borrowing at all" | Not earned (RT-09) | See RT-09 fix |
| [54] | "Main way of paying" | Fair as a summary heading | Keep |
| [55] | "Scholars still argue about all of this" | Fine | "Scholars still argue about this" |
| [56] | "its strongest support and its clearest warning" | Earned for support. "clearest warning" is fair | Keep |
| [56] | "could do as much" | Not shown. Korea and Taiwan both grew fast, but "as much" is not measured | "could also succeed" |
| [58] | "Mostly shares, profits and the state as buyer" | Not earned (RT-13) | "Largely shares, profits and the state as buyer, in these cases" |
| [58] | "every American microchip in 1962" | Sourced | Keep |
| [58] | "Holds only in part" | Earned | Keep |
| [60] | "most single bets fail" | As block [18] | Keep, or "most bets of this kind fail" |
| [60] | "mostly shares bought by savers" | Not earned (RT-13) | See RT-13 fix |
| [60] | "a state that only lends" | Fine | Keep |
| [60] | "Korea most of all" | Earned | Keep |
| [62] | "mostly in years of very cheap money" | Fine, as a test condition | Keep |
| [65] | "Most single bets on new technology lose money" | Earned for venture-backed firms | Keep |

