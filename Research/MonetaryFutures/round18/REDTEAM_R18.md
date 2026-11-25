# Red team, round 18, chapter rb-printers

Blind review. Only DRAFT_R18.md was read. Web searches were used to check facts. Status: complete.

## 1. Blocking points, ranked

Ranked from most to least serious. Each fix gives OLD text copied from the draft and NEW text.

### RT-01. Block [33], with [38] and [54]. The line between "buying bonds" and "paying the state's bills" is drawn as a wall

What is wrong. The chapter's central answer rests on one contrast: the 2010s central banks "bought bonds" in a working economy, while the printers paid the state's bills. But in 2020 America's central bank bought government bonds while the government ran a record deficit. Its holdings rose from 15% to 22% of all outstanding Treasury debt between mid March and August 2020. Much of that money reached households, and in 2021 and 2022 prices rose fast. An expert would say the difference is not the mechanism (both create money against government debt) but trust: whether people believe the debt will be repaid from future taxes, and that the central bank can and will take the money back. This is the core of Sargent's work and of the fiscal theory of the price level, which the chapter cites in its sources but never explains. As written, [38] and [54] can read as "creating money to buy bonds is harmless", which the task says must be tested.

Evidence. Federal Reserve, balance sheet developments, August 2020: https://federalreserve.gov/monetarypolicy/bsd-recent-developments-202008.htm . St Louis Fed, record 3.1 trillion dollar deficit in fiscal 2020: https://www.stlouisfed.org/on-the-economy/2020/december/financing-response-covid19 . Sargent, The Ends of Four Big Inflations (a regime change must be "sufficiently binding as to be widely believed"): https://www.nber.org/chapters/c11452.pdf

Fix 1, block [33].
OLD: When America's central bank created money, it bought bonds, the economy kept working, and most of the money was held.
NEW: When America's central bank created money in the 2010s, it bought bonds from investors, the economy kept working, and most of the money was held. People trusted that the bonds would be repaid from future taxes, and that the central bank could take the money back out. That belief does a lot of work. In 2020 the same central bank bought government bonds while the government ran a record deficit of 3.1 trillion dollars. Its share of all government bonds rose from 15% to 22% in about five months. In 2021 and 2022 prices did rise fast. So the line between buying bonds and paying the state's bills is not a wall. It depends on how much is done, and on whether people trust that it will stop.

Fix 2, block [38].
OLD: Creating money to buy bonds in a working economy, as in the 2010s, did not.
NEW: Creating money to buy bonds in a working economy, as in the 2010s, did not, while people trusted the state to repay and the central bank to stop. That is not a promise that it is always harmless.

Fix 3, block [54].
OLD: Creating money is not the same as printing money to pay bills.
NEW: Creating money is not always the same as printing money to pay bills, but the two can blur.

### RT-02. Block [32], carried into [0], [38], [52], [54]. "In every case the economy was already shrinking" is not true of Germany or Hungary

What is wrong. German output grew strongly after the war. Productive volume rose by more than 90% from 1919 to 1922, and Germany avoided a large downturn until July 1922, while inflation was already high. Output then fell by about a third from 1922 to 1923 after the Ruhr occupation. Hungary in 1946 was rebuilding from a ruined base, not shrinking further. So the rule "printed in an already shrinking economy" fits Zimbabwe and Venezuela, fits Germany only for 1923, and does not fit Hungary well. The stronger and true version is: printing to pay the state's bills in an economy badly hurt by another blow. This change matters because the verdict row for the question rests on it.

Evidence. NBER conference paper on the German inflation (growth strong, no large downturn until July 1922): https://conference.nber.org/conf_papers/f178425/f178425.pdf . Wagenführ, production fell by "a good third" from 1922 to 1923: https://ghdi.ghi-dc.org/pdf/eng/ES_WAGENFÜHR_ENGL.pdf . Graham, output growth 1919 to 1922: https://mises.org/online-book/exchange-prices-and-production-hyper-inflation/xii-business-activity-and-production

Fix 1, block [32].
OLD: And in every case the economy was already shrinking, so the new money was chasing fewer and fewer goods.
NEW: And in every case the economy had been badly hurt. In Zimbabwe and Venezuela it was shrinking year after year. Germany is different. Its output grew strongly until the middle of 1922, while prices were already rising fast, and then fell by about a third in 1923 after the Ruhr was occupied. Hungary in 1946 was rebuilding from ruins. So the new money was chasing a supply of goods that was small, or falling, or both.

Fix 2, block [0].
OLD: printed to pay the government's bills while the economy was already shrinking
NEW: printed to pay the government's bills while the economy was badly hurt

Fix 3, block [38].
OLD: while the economy was already shrinking from another blow
NEW: while the economy was badly hurt by another blow

Fix 4, block [52].
OLD: Because they printed to pay the state's bills in an economy already shrinking from another blow
NEW: Because they printed to pay the state's bills in an economy badly hurt by another blow

Fix 5, block [54].
OLD: Money printed to pay a government's bills in a shrinking economy was spent as fast as people could, and trust broke.
NEW: Money printed to pay a government's bills in a badly hurt economy was spent as fast as people could, and trust broke.

### RT-03. Blocks [24], [27], [52]. Velocity is treated as a cause, and bank reserves are mixed up with spendable money

What is wrong. Velocity of M2 is worked out by dividing a year's spending (nominal output) by the stock of M2. So "velocity fell, that is why prices stayed calm" partly restates the same fact twice. Many economists treat velocity as a result of money demand, which moves with interest rates, saving and trust, not as an independent force. Second, bank reserves are not part of M2. Ordinary people cannot spend reserves at all. So "the money existed, but it did not move" mixes two kinds of money: reserves, which cannot leave the banking system as spending, and deposits, which people chose to save. Third, the interest on reserves sentence implies banks could otherwise send reserves out. In total they cannot. What the interest does is set a floor under interest rates. The verdict "Holds, strongly" is therefore not earned. The draft's own steps say Part 2 is "decides how hard a given amount of money pushes", and the evidence supports it as a description, not as the deciding cause.

Evidence. Reserves are held by banks, and QE purchases from nonbanks add deposits while reserves stay with banks: NBER w31050, https://www.nber.org/system/files/working_papers/w31050/w31050.pdf . Acharya and others, Jackson Hole paper on reserves and deposits: https://www.kansascityfed.org/Jackson%20Hole/documents/9040/JH_Paper_Acharya.pdf

Fix 1, block [24].
OLD: That is why the huge money creation of the 2010s did so little to prices.
NEW: Velocity is worked out by dividing a year's spending by the amount of money. So a fall in velocity describes what happened: money grew faster than spending. It does not by itself say why. Many economists see velocity as the result of choices about saving, interest rates and trust, more than as a cause of its own.

Fix 2, block [24].
OLD: Much of the new money went into bank reserves and savings, and stayed there.
NEW: Much of the central bank's new money became bank reserves. Reserves are money that banks keep at the central bank. Ordinary people cannot spend them, and they are not counted in the money behind the velocity table. The part that did reach people's bank accounts was mostly saved, not spent.

Fix 3, block [24].
OLD: From October 2008 America's central bank even paid banks interest to keep their reserves with it.
NEW: From October 2008 America's central bank also paid banks interest on their reserves. This set a floor under interest rates and gave banks less reason to lend cheaply.

Fix 4, block [27].
OLD: Part 2 holds, and strongly. The speed of money explains what the amount of money cannot: why the 2010s stayed calm and why Germany in 1923 ran ahead of its own printing.
NEW: Part 2 holds as a description. A fall in the speed of money is how the 2010s stayed calm, and a rise is how Germany in 1923 ran ahead of its own printing. But speed is itself a result of how much people want to hold money.

Fix 5, block [52].
OLD: Holds, strongly
NEW: Holds, as a description. Speed is a result of trust and interest rates as much as a cause

### RT-04. Blocks [13] and [58]. The 0.88 correlation is called "one study" but the sources say it was "computed for this chapter"

What is wrong. [13] says "One study checked 144 countries". [58] says "World Bank data, 2000 to 2019, computed for this chapter". A reader will think an outside paper found 0.88. It must say the chapter did the sum. It should also say that a few very high inflation countries pull the score up, which the draft's own 0.51 row shows. No search needed: the contradiction is inside the draft.

Fix 1, block [13].
OLD: One study checked 144 countries from 2000 to 2019.
NEW: For this chapter, we used World Bank data to check 144 countries from 2000 to 2019. This is our own sum, not a published study, though earlier studies found the same pattern.

Fix 2, block [13].
OLD: The link was very strong: on a scale where 1 means a perfect match, it scored 0.88.
NEW: The link was very strong: on a scale where 1 means a perfect match, it scored 0.88. A few countries with very high inflation pull this score up, as the next table shows.

### RT-05. Blocks [18] and [19], with the kicker. "Barely moved prices" leaves out asset prices, and "the money did matter in the end" skips the supply shock debate

What is wrong, part one. The 2010s purchases did raise the prices of things people own. One estimate in a Brookings working paper puts the lift at about 7% for home prices and about 5% for share prices. A reader who says "printing causes inflation" may well mean house prices. The chapter should say that consumer prices barely moved and asset prices did.

What is wrong, part two. "So the money did matter in the end" picks a side in a live debate. Bernanke and Blanchard found that most of the 2021 to 2022 surge came from shocks to prices (energy, food, shortages), while also saying that those who warned of inflation were right, for different reasons than they expected.

Evidence. Bivens, Brookings working paper: https://www.brookings.edu/wp-content/uploads/2016/06/Josh_Bivens_Inequality_FINAL.pdf . Bernanke and Blanchard, What Caused the US Pandemic-Era Inflation?: https://www.nber.org/papers/w31417 and https://nber.org/digest/20239/unpacking-causes-pandemic-era-inflation-us

Fix 1, block [18].
OLD: Those are some of the largest money creations in history, and for years prices barely moved.
NEW: Those are some of the largest money creations in history, and for years the prices of everyday things barely moved. The prices of things people own did move. One estimate, in a paper for the Brookings Institution, found that the American purchases lifted house prices by about 7% and share prices by about 5%. So part of the new money did push on prices: the prices of assets.

Fix 2, block [18].
OLD: So the money did matter in the end. But the link between them was loose and slow.
NEW: Did the money cause it? Economists still argue. Ben Bernanke and Olivier Blanchard found that most of the rise came from shocks to prices: dearer energy and food, and shortages of goods such as cars. They also said that those who had warned of inflation were right, for different reasons than they expected. What is clear is that the link between money and prices was loose and slow.

Fix 3, block [19].
OLD: The largest money creations of the 2010s barely moved prices for years, which supply and demand alone does not explain.
NEW: The largest money creations of the 2010s barely moved shop prices for years, which supply and demand alone does not explain. They did help lift the prices of houses and shares, which is a kind of inflation the reader may also mean.

Fix 4, kicker.
OLD: Others created even larger sums and saw almost no rise in prices.
NEW: Others created even larger sums and saw little rise in shop prices.

Note for the verifier. In [17] the European Central Bank row runs holdings to 2022 but prices only to 2019. Euro area prices rose fast in 2022. Either end the holdings in 2019 or add the 2022 price rise with a sourced figure.

### RT-06. Block [43], with [44]. Malaysia 1998 leaves out the peg and capital controls, and the "no price controls" quote misleads

What is wrong. On 1 September 1998 Bank Negara fixed the ringgit at 3.80 to the dollar and brought in selective capital controls. This is the best known fact about Malaysia in 1998, and it bears directly on Part 3: it stopped the fall that passes inflation in. Scholars still argue whether the controls helped recovery (Kaplan and Rodrik think they did more good than critics say, Athukorala argues they did little), so the chapter should name the debate. Second, in April 1998 the IMF urged Malaysia to "scale back price controls" to basic food for the poorest. So price controls on some goods existed. The quoted "no price controls as such" may be accurate words, but alone it tells the reader there were none. I could not find the phrase in the online annual report, so the verifier should check its context.

Evidence. Bank Negara governor's speech on the controls and 3.80 rate: https://www.bnm.gov.my/-/governor-tan-sri-ali-abul-hassan-s-speech-at-the-national-congress-on-economic-recovery-the-way-forward- . Kaplan and Rodrik, NBER w8142: https://nber.org/system/files/working_papers/w8142/w8142.pdf . Athukorala: https://www.rieti.go.jp/en/events/07062901/pdf/2-3_E_Athukorala_PPT_o.pdf . IMF Public Information Notice, 27 April 1998: https://www.imf.org/external/np/sec/pn/1998/pn9831.htm

Fix 1, block [43].
OLD: Firms absorbed costs in a slump, and oil was cheap. Bank Negara said there were "no price controls as such"
NEW: Firms absorbed costs in a slump, and oil was cheap. From 1 September 1998 the ringgit was fixed at 3.80 to the dollar, with controls on money leaving the country, which stopped the fall. Some basic goods still had controlled prices: in April 1998 the IMF urged Malaysia to scale these back

Fix 2, block [44].
OLD: So the size of the fall alone does not decide what happens.
NEW: So the size of the fall alone does not decide what happens. Malaysia also fixed its currency in September 1998, and Indonesia did not. Economists still argue about how much that helped.

### RT-07. Block [36]. Turkey: "no evidence was found here" is too weak a search and too strong a conclusion

What is wrong. Turkey's central bank did not mainly print to cover the budget, so the core point is fair. But the state and the central bank did carry large costs together. From late 2021 a scheme (the FX-protected deposit scheme) promised savers compensation if the lira fell. Its cost to the budget was 95.3 billion lira by May 2023, by the finance minister's own figure, and economists link most of the central bank's later losses to it. The central bank also had a record of sending profits to the Treasury. "Kept growing every year" is not sourced in the draft. The honest description is a currency that lost trust while interest rates were held far below inflation, with costs shared between the budget and the central bank.

Evidence. Daily Sabah, the minister's 95.3 billion lira figure: https://www.dailysabah.com/business/economy/fx-protected-turkish-lira-schemes-budget-burden-easing-nebati . Central bank losses and profit transfers: https://turkishminute.com/2026/04/10/turkeys-central-bank-posts-23-8-billion-loss-in-2025/amp/ . Central bank of Turkey on exiting the scheme: https://www.tcmb.gov.tr/wps/wcm/connect/blog/en/main%20menu/analyses/exit%20from%20kkm%20accounts

Fix, block [36].
OLD: But Turkey's economy kept growing every year, and no evidence was found here that its central bank was paying the government's bills. It is a case of a currency losing trust, not of a printer paying for the state.
NEW: But Turkey's economy kept growing, and its central bank did not mainly print to cover the budget. The state did take on costs in other ways. From late 2021 a scheme promised savers that the state would make up their losses if the lira fell. By May 2023 it had cost the budget 95.3 billion lira, and it later left the central bank with large losses. So Turkey is a case of a currency losing trust while interest rates were held far below inflation, with the budget and the central bank sharing the bill. It is not a clean case of a printer paying for the state.

### RT-08. Block [37]. Germany's inflation ended in November 1923, not 1924, and the budget reform is left out

What is wrong. The Rentenmark was issued in November 1923 and prices stopped racing then. Sargent, whom the draft cites, stresses that taxes were raised and spending cut (including a large cut in state staff) and that people believed the change. Leaving out the budget side hides the main lesson of the literature on how hyperinflations end. The same holds for Argentina, where the end of central bank financing came with a primary budget surplus of about 1.8% of output in 2024.

Evidence. Sargent: https://www.nber.org/chapters/c11452.pdf and the Minneapolis Fed listing https://www.minneapolisfed.org/research/working-papers/the-ends-of-four-big-inflations . Lecture notes summarising Sargent on taxes and spending cuts: https://faculty.wcas.northwestern.edu/mdo738/textbook/dls_ch18.pdf . Argentina's 2024 primary surplus of 1.8% of GDP: https://www.itau.com.br/itaubba-pt/analises-economicas/latam/argentina-another-fiscal-surplus-in-2025

Fix 1, block [37].
OLD: Germany's ended in 1924, when a new currency was issued and the central bank stopped lending to the government.
NEW: Germany's ended in November 1923, when a new currency, the Rentenmark, was issued. The government also raised taxes and cut spending, and the central bank stopped lending to it. The economist Thomas Sargent argued that the budget change was the key, because people believed it and stopped expecting more printing.

Fix 2, block [37].
OLD: In 2024 its central bank stopped paying for the government directly, and inflation fell to about 118% for the year.
NEW: In 2024 its central bank stopped paying for the government directly, and the government took in more than it spent before interest, a surplus of about 1.8% of output. Inflation fell to about 118% for the year.

### RT-09. Block [31] and [52]. Zimbabwe's 36% has a later IMF revision, and Venezuela's "other blow" leaves out its own policies

What is wrong. The IMF's 2009 notice put the Reserve Bank's 2008 quasi fiscal spending at 36% of output. The IMF's 2010 notice lists it at 28.9%. The chapter should give the range. On Venezuela, the "other big blow" column names only the oil price and American sanctions. But output had already fallen about 17% in 2016 and 16% in 2017, and price controls set too low had left producers unable to cover costs. Naming only outside blows for Venezuela, while naming farm seizures for Zimbabwe, is uneven and can read as excusing the printing. Actors here are institutions, so this does not blame any people.

Evidence. IMF PIN 09/53: https://www.imf.org/external/np/sec/pn/2009/pn0953.htm . IMF PIN 10/62: https://www.imf.org/en/News/Articles/2015/09/28/04/53/pn1062 . Economics Observatory on Venezuela: https://economicsobservatory.com/why-did-venezuelas-economy-collapse

Fix 1, block [31].
OLD: The central bank spent on the government's behalf an amount equal to 36% of the country's output
NEW: The central bank spent on the government's behalf, on things such as farm inputs, state firms and election costs, an amount equal to between 29% and 36% of the country's output, by two IMF estimates

Fix 2, block [31].
OLD: The oil price fell 71% from mid 2014 to early 2016, and America imposed sanctions in 2017
NEW: The oil price fell 71% from mid 2014 to early 2016. Price caps set too low left many producers unable to cover their costs. Output shrank about 17% in 2016 and 16% in 2017. America imposed financial sanctions in 2017, and wider sanctions on the state oil company later

Fix 3, block [52].
OLD: Zimbabwe's central bank spent an amount equal to 36% of output in 2008
NEW: Zimbabwe's central bank spent an amount equal to 29% to 36% of output in 2008

### RT-10. Block [43]. The 2022 subsidy bill is undersized

What is wrong. The table gives the 37.3 billion ringgit that was planned. The actual bill was much larger. The government's Economic Report put total subsidies at a record 70.3 billion ringgit in 2022, with fuel about 52 billion. The Auditor General gave lower totals: 55.4 billion in all, 45.2 billion for petroleum products. Either way, the planned figure understates the cost the verdict relies on.

Evidence. Malay Mail on the Auditor General's report: https://www.malaymail.com/amp/news/malaysia/2023/10/10/auditor-general-says-govt-spent-rm554b-on-subsidies-in-2022-up-3221pc-from-2021-lions-share-on-petrol-based-products/95462 . Free Malaysia Today: https://www.freemalaysiatoday.com/category/nation/2023/10/10/govt-spent-322-1-more-on-subsidies-in-2022 . Malaysiakini on fuel and electricity: https://www.malaysiakini.com/news/636291

Fix, block [43].
OLD: The state planned 37.3 billion ringgit of fuel subsidies for the year
NEW: The state had planned 37.3 billion ringgit of fuel subsidies. The real bill was higher: between about 45 and 52 billion ringgit for fuel, depending on the source, in the biggest subsidy year in Malaysia's history

Note for the verifier. [45] says the bill was paid "by taxpayers now and later". Malaysia is an oil and gas producer, and its oil income also rose in 2022. If a sourced figure is found, add one sentence saying part of the cost was met from higher oil income.

### RT-11. Block [47]. The chicken story is unfair to the farmers and vague about the government

What is wrong. The farmers' problem was itself imported inflation: feed costs rose because of the war in Ukraine and the weak ringgit. This is the best example in the chapter of Part 3, and it is missing. The government also paid farmers a subsidy (729.43 million ringgit allocated under the price control scheme, later 1.1 billion ringgit approved for chicken and egg farmers), which the draft leaves out. And the export halt was not just "as reported": the Prime Minister announced it on 23 May 2022, to start on 1 June.

Evidence. Wikipedia summary with sources: https://en.wikipedia.org/wiki/2022_Malaysian_chicken_export_ban . The Poultry Site on the 1.1 billion ringgit and the end of subsidies: https://www.thepoultrysite.com/news/2022/08/malaysia-to-end-subsidies-for-chicken-farmers-on-aug-31 . New Zealand trade ministry report: https://www.mfat.govt.nz/ru/trade/mfat-market-reports/malaysia-restricts-chicken-trade-june-2022

Fix, block [47].
OLD: The poultry farmers said they could barely make a profit. In June 2022 Malaysia stopped exporting chickens for a time, as reported.
NEW: The poultry farmers said they could barely make a profit. Their feed was costing more. The war in Ukraine had disrupted grain supplies, and the weak ringgit made imported feed dearer. That is imported inflation too, arriving at the farm before the shop. The government set aside 729.43 million ringgit to pay farmers part of the gap. On 23 May 2022 the Prime Minister announced that Malaysia would stop exporting chickens from 1 June, to keep more at home.

### RT-12. Block [48]. Hong Kong's deflation is put down to the dollar alone

What is wrong. Hong Kong's monetary authority found that the property crash explained about half of the fall in consumer prices. Property prices fell about 60% from their peak. The strong dollar was a real cause but not the only one. The draft's "every year from 1999 to 2004" is better put as the official run: prices fell for 68 months in a row from November 1998, and turned up in July 2004.

Evidence. HKMA, Deflation (1): https://www.hkma.gov.hk/eng/news-and-media/insight/2002/11/20021114 . HKMA remarks via BIS: https://www.bis.org/review/r020620c.pdf . Hong Kong government: https://www.news.gov.hk/isd/ebulletin/en/category/businessandfinance/040823/html/040823en03004.htm

Fix 1, block [48].
OLD: When the US dollar grew strong after 1998, Hong Kong's prices fell every year from 1999 to 2004, while America's kept rising.
NEW: From November 1998 Hong Kong's prices fell for 68 months in a row, while America's kept rising. The strong US dollar was one cause. A crash in property prices was a bigger one: Hong Kong's monetary authority estimated it explained about half of the fall.

Fix 2, block [48].
OLD: It passes on the dollar's strength.
NEW: It passes on the dollar's strength, and it leaves the country less able to cushion a crash at home.

### RT-13. Block [49]. Two governors read as one, and the 2022 quote loses its context

What is wrong. "Bank Negara's governor ... In 2022 he said" makes one person of two. The 2022 words were said by Governor Nor Shamsiah Mohd Yunus in May 2022, in answer to a former prime minister's call to peg the ringgit at 3.80 again. Her reasons were that a peg would tie Malaysia's interest rates to America's and use up a large part of its reserves. Without that context the quote reads as a general view on dollar ties. The 2017 governor should be named. My understanding is that it was Muhammad Ibrahim, but the verifier should confirm.

Evidence. Malay Mail, 13 May 2022: https://www.malaymail.com/news/malaysia/2022/05/13/pegging-the-ringgit-not-in-malaysias-best-interest-says-bank-negara-governo/2058723 . The Star: https://www.thestar.com.my/business/business-news/2022/05/13/pegging-the-ringgit-not-in-malaysia039s-best-interest-bnm-governor

Fix, block [49].
OLD: In 2022 he said that tying the ringgit to the dollar again "will not be in the best interest of Malaysia".
NEW: In May 2022 a former prime minister proposed fixing the ringgit at 3.80 again. The governor by then, Nor Shamsiah Mohd Yunus, said that pegging the ringgit "will not be in the best interest of Malaysia". She said a peg would tie Malaysia's interest rates to America's and use up a large part of its reserves.

### RT-14. Block [56]. The first test "that would change the verdict" has a known partial case, and the chapter should face it

What is wrong. The chapter asks whether any country printed to pay its government's bills on a large scale, in a growing economy, without high inflation. Japan from 1932 is the case experts will name. From 25 November 1932 the Bank of Japan underwrote new deficit bonds directly, and Japan recovered from the Depression. Inflation soared only after the finance minister Takahashi Korekiyo was killed in 1936 and his successors would not stop the funding. Historians argue about how to credit this. Naming it tests the strongest form of the counter claim.

Evidence. Kobe University discussion paper: https://www.rieb.kobe-u.ac.jp/academic/ra/dp/English/dp201.pdf . Bank of Japan governor's speech via BIS: https://www.bis.org/review/r131028c.pdf . Takahashi summary: https://en.wikipedia.org/wiki/Takahashi_Korekiyo

Fix, block [56].
OLD: The third is a fair question this chapter did not settle.
NEW: The third is a fair question this chapter did not settle. The first has a partial test. From November 1932 the Bank of Japan bought new government bonds directly to pay for a budget deficit, and Japan recovered from the Great Depression. Inflation soared only after 1936, when the finance minister who ran the policy, Takahashi Korekiyo, was killed, and those after him did not stop the funding. Historians still argue over how much to credit to the policy itself, and how much to the way it ended.

### RT-15. Block [55]. The closing makes a rhetorical point the evidence does not carry

What is wrong. "The people holding the money saw it first" is not shown anywhere in the chapter. "Only one of them was watching trust collapse" is a neat line but sets a hyperinflation beside one shopper's choice in a way that can read as dismissing the shopper's pain. The chapter has earned a fairer and still vivid ending.

Fix 1, block [55].
OLD: Because they used it to cover a hole that was already growing, and the people holding the money saw it first.
NEW: Because they used it to cover a hole that was already growing, and once people stopped believing the hole would be closed, they stopped holding the money.

Fix 2, block [55].
OLD: Both were feeling the price of money. Only one of them was watching trust collapse.
NEW: Both were feeling prices rise. In Germany the money itself had lost people's trust. In Kuala Lumpur people still trusted the ringgit, and the strain showed up instead in the shopping basket, the state's budget and the farms.

### RT-16. Block [0]. The summary overclaims on velocity

OLD: How fast money changes hands matters as much as how much there is.
NEW: How fast money changes hands matters a great deal, and it depends on trust.

### Omissions an expert expects (part f)

1. Fiscal theory of the price level and Sargent's regime change. Matters for the verdict. It is the real reason "buying bonds" and "paying bills" differ, and the chapter's own source. Covered by RT-01 and RT-08.
2. Expectations and central bank credibility. Matters for the verdict. The chapter says "trust" throughout but never says what builds it: an independent central bank, a budget that adds up, a record of keeping promises. One paragraph in Test 3 would do it.
3. Supply shocks in 2021 and 2022. Matters for Test 1. Covered by RT-05.
4. Money demand. Partly there (Part 1 says "more than people want to hold"), but Test 2 should link velocity to money demand. Cagan's work on hyperinflation is the classic study of this. Covered in part by RT-03.
5. Broad money against base money. Matters for Test 1. Table [17] counts central bank holdings, which are base money. The 0.88 test uses broad money. A monetarist will say the 2010s were calm partly because broad money did not grow as fast as base money. The chapter should say which money each table counts.
6. Modern monetary theory. Does not change the verdict, but the verdict (the limit is real goods and trust, not the amount of money) is close to that school's view, and fairness asks that it be named once.
7. Interest rates as the main tool. Does not change the verdict, but an expert will notice that the chapter never mentions that central banks fought 2022 with interest rate rises, in America and in Malaysia.
8. Islamic finance's view of money. Optional. Many readers in Malaysia will know the idea that money is a measure, not a good to be traded for profit, and the ban on riba. It does not change any finding, so a go deeper line at most.

## 2. Eight voices: the single most important miss for each

A monetarist economist. Table [17] counts central bank holdings, which are base money, and then the chapter says the 2010s show money did not push prices. The 0.88 test in [13] counts broad money. Mixing the two makes the reader's Part 1 look weaker than it is. Say which money each table counts (see omission 5).

A modern monetary theory economist. The verdict says the limit on creating money is real output and trust, which is close to this school's view, yet the school is never named. It would also say Zimbabwe and Venezuela were above all collapses of supply, and that the chapter should say so more plainly than "another big blow".

A central banker. Trust is the chapter's key word, but nothing says how a central bank earns it: independence from the budget, a clear target, and raising interest rates when prices rise, as in 2022. Without this, [54] tells the reader trust "can change overnight" but not why it usually does not.

An economic historian of hyperinflation. Germany's economy grew until mid 1922 (RT-02), and the end in November 1923 came with a budget reform that people believed (RT-08). The literature from Cagan and Sargent is cited in the sources but not explained in the story. The reparations debate also deserves one line: historians are divided on how much reparations drove the inflation, as Germany's actual payments were a fraction of the total charge (https://en.wikipedia.org/wiki/Hyperinflation_in_the_Weimar_Republic).

A Bank Negara economist. The 1998 peg and capital controls are missing from the 1998 column (RT-06), and the 2022 quote is shown without the debate it answered (RT-13). Bank Negara's own interest rate rises from 2022 are also missing, so the reader thinks only subsidies held prices down. The verifier should add a sourced line on these.

A Malaysian poultry farmer. The draft says farmers "could barely make a profit" and then that the cap "moved the pain somewhere else", but never says why: imported feed got dearer because of the war in Ukraine and a weak ringgit. The subsidy meant to help them is also missing. One report said only 50 million ringgit of the 729.43 million allocated had been claimed by mid 2022, mostly by smaller farms (https://en.wikipedia.org/wiki/2022_Malaysian_chicken_export_ban). See RT-11.

A Malaysian 18-year-old reader. Words that carry the whole argument are not explained: "bond", "reserves", "base money", "deficit". The 10 ringgit note in [21] is the one clear picture in the chapter. The reader needs the same for a bond ("a loan to the government that the central bank can buy") and for reserves ("money banks keep at the central bank, which you cannot spend").

A Venezuelan or Zimbabwean who lived through it. The chapter gives one quote and one handbag, and lists the oil price and sanctions as the blow. It does not show what ordinary people did to survive. The draft has no sourced detail on this, so the verifier should find one (for example how people switched to US dollars), and it should name the state's own price controls alongside outside blows (RT-09).

## 3. Flattery check, both directions

Where the draft flatters the reader.
- [27] and [52] say Part 2 "holds, strongly" and that the reader "has found the missing piece" ([21]). Velocity is largely a ratio that describes what happened, not a separate force. The reader gets more credit than the evidence gives (RT-03).
- [18] says "the money did matter in the end", choosing the reader's side of a live debate about 2021 and 2022 without saying so (RT-05).
- [50] says Part 3 "holds" with no word of the 1998 peg, which shows a country can stop importing inflation by changing its currency rules. This gives the reader's Part 3 a cleaner win than it deserves.

Where the draft leans against the reader to look balanced.
- [19] says the 2010s "barely moved prices", leaving out the rise in house and share prices, which is likely part of what the reader means (RT-05).
- [17] counts base money, not broad money, which makes Part 1 look weaker than a fair test would (omission 5).
- [33] and [38] answer the reader's question with a contrast (bonds against bills) that removes the reader's worry about modern central banks. 2020 to 2022 shows the worry was not foolish (RT-01).

Is the rebuilt claim supported line by line?
- Line 1 ([54]): "how much there is, how fast it moves, and how much people trust it". Supported, if speed is described as a result of trust (RT-03). "Trust is the one that can change overnight": supported by Germany and Venezuela, though no single night is shown.
- Line 2: "Creating money is not the same as printing money to pay bills." Not supported as stated. The 2020 purchases blur it (RT-01). Supported with the NEW wording.
- Line 3: "someone still pays, through the budget or through shortages". Supported by the subsidy and chicken stories, once the subsidy figure is corrected (RT-10).

## 4. Depth and narration

Three places where one more layer would most help.

1. Test 3, how a hyperinflation ends ([37]). Add the mechanism in reverse. In November 1923 Germany issued a new currency, raised taxes, cut spending and stopped central bank lending to the state. Prices stopped racing almost at once, because people believed the printing had ended (Sargent, https://www.nber.org/chapters/c11452.pdf). This shows the reader what "trust" means in practice better than any other paragraph could. About 150 to 200 words.

2. Test 4, the chicken from farm to plate ([47]). Follow one chicken back. Feed is bought from abroad. The war in Ukraine disrupted grain and the weak ringgit raised its price. The farmer's cost rose, but the shop price was capped at 8.90 ringgit. The state set aside 729.43 million ringgit to make up the gap, little of it was claimed at first, and then exports were stopped (https://en.wikipedia.org/wiki/2022_Malaysian_chicken_export_ban). This makes imported inflation a story the reader can see, and it is fair to farmers and to the government. About 200 words.

3. Test 2, where the money went ([24]). Explain the two kinds of money. When the central bank buys a bond from an investor, the investor's bank account grows, and the bank's reserves at the central bank grow too. The investor can spend the deposit but usually saves it. The bank cannot hand reserves to shoppers. This is what "the money did not move" really means (https://www.nber.org/system/files/working_papers/w31050/w31050.pdf). About 150 words.

Where the story sags into report voice. Test 4 from [41] to [43] is three tables in a row with little narration. The verdict table [52] repeats numbers already given. [57.0] reads like a note to an editor ("was not found for this chapter"). [36] on Turkey reads as a ruling, not a story.

Strongest scene. Zweig's newspaper, morning and night ([8] to [10]), carried into the closing. Wilmer Rojas sewing handbags from banknotes ([34] and [35]) is a close second and could be given one more sentence of setting.

Where the extra 1,100 words should go. Test 3 about 400 (the 2020 purchases from RT-01, the end of the German inflation, Japan in the 1930s). Test 4 about 400 (the 1998 peg, the chicken chain, the true subsidy bill). Test 2 about 200 (reserves against deposits). Test 1 about 100 (asset prices). Keep the opening scene and the closing at their present length.

## 5. Word audit

- Kicker, "almost no rise in prices". Not earned for asset prices. Use "little rise in shop prices" (RT-05).
- [0], "matters as much as how much there is". Not earned. See RT-16.
- [0], "mostly sat still". Earned for spending, but say "much of the new money sat still".
- [0], "mostly printed to pay the government's bills". Earned for the four cases shown. Better: "in the four cases here, printed to pay the government's bills".
- [10], "almost all of its spending". Earned for October 1923.
- [10], "every family in a runaway inflation learns". Not earned. Use "families in a runaway inflation soon learn".
- [24] and [28], "almost half". Earned (2.19 to 1.13).
- [27] and [52], "strongly". Not earned. See RT-03.
- [28], "most of the new money was not spent". Loose, since reserves cannot be spent at all. Use "much of the new money stayed as bank reserves or savings".
- [31], "the fastest on record". Earned, per the Hanke and Krus table.
- [32], "In every case the government was printing to pay its own bills". Earned for the four in the table. "In every case the economy was already shrinking". Not earned. See RT-02.
- [33], "nobody wanted to hold the result". Not earned. Use "few people wanted to hold the result".
- [33], "most of the money was held". Fair for the 2010s.
- [40], "much of its food", "most of its trade is priced in US dollars". Plausible but not sourced in [58]. The verifier should add a source or soften "most" to "much".
- [44], "all matter". Earned.
- [48], "every year from 1999 to 2004". Use the 68 months wording (RT-12).
- [54], "mostly sat still". Earned for the 2010s, with the RT-01 caveat.
- [55], "Only one of them". Rhetorical. See RT-15.
- No uses of "always", "never" or "none" in the main path. "Almost" in the kicker is the only weak one.
