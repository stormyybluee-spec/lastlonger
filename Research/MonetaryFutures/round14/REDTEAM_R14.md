# Red team, round 14: rb-1971, "The weekend that cut the anchor"

Blind review. Only DRAFT_R14.md was read. Web sources are given with each point.

## 1. Blocking points, ranked

Ranked from most to least serious. Each OLD text is copied from the draft and sits inside one paragraph, list item or table cell.

### RT-01. Why Bretton Woods ended is told as arithmetic only. Blocks [9], [11]
What is wrong: the scene says the promise failed because claims grew past the gold. It never says why the claims grew. An economic historian would expect three causes. First, the Triffin problem: the world needed more dollars to trade, and it got them only if America ran deficits, which in turn ate away trust in the gold behind them. Second, US policy: from about 1965 the central bank let inflation rise while the government paid for the Vietnam War and new social programmes. Third, other countries: surplus countries such as Germany built up dollars and were slow to change their own rates. The deeper box [53.1] already hints that policy, not metal, ended the system, but the main story never says so. Without this, the reader learns "gold ran out", which is the weakest version of the history and also the one that most flatters Part 1.
Evidence: Bordo, "The operation and demise of the Bretton Woods system", VoxEU/CEPR, https://cepr.org/voxeu/columns/operation-and-demise-bretton-woods-system-1958-1971 . Eichengreen notes the Triffin reading is itself disputed: https://eml.berkeley.edu/~eichengr/research/brookingsperrytobin2.pdf
Fix:
OLD: The promise worked while America held more gold than foreigners held dollars. By 1971 that was no longer true.
NEW: The promise worked while America held more gold than foreigners held dollars. By 1971 that was no longer true. Why did the claims grow so fast? Part of the answer was built into the system. The world needed more dollars to trade, and it could get them only if America spent more abroad than it earned. In 1960 the economist Robert Triffin warned that the more dollars went out, the less anyone would trust the gold behind them. Part of the answer was policy. From about 1965 America's central bank let prices rise faster, while the government paid for the Vietnam War and new social programmes at home. And part lay with other countries. Germany and others piled up dollars and were slow to change their own exchange rates. Historians still argue about how much weight each cause deserves.

### RT-02. The crisis table leaves out the worst gold years. Blocks [34], [35], [38]
What is wrong: the table jumps from 1880 to 1913 to 1945 to 1971. It leaves out 1919 to 1939, when many countries rebuilt a gold standard and then gave it up in the Depression. The same study found that era had the most crises of all, and that the post-1973 rate is matched only by the 1920s and 1930s. It also found crises after 1973 were more frequent but not clearly longer or deeper. Leaving the interwar years out makes the gold side look calmer than the source says. Then [38] states "crises became more frequent, not less" with no limit on the comparison.
Evidence: Bordo, Eichengreen, Klingebiel and Martinez-Peria, Economic Policy 2001, abstract: https://ideas.repec.org/a/oup/ecpoli/v16y2001i32p52-82..html
Fix 1:
OLD: Those were also years of tight rules on banks and on money crossing borders, so gold may not deserve the credit.
NEW: Those were also years of tight rules on banks and on money crossing borders, so gold may not deserve the credit. The table also leaves out one era. Between the two world wars, many countries went back to gold and then gave it up in the Depression. The same study found that era had more crises than any other, and that crises after 1973 were more frequent than under the two gold systems but not clearly longer or deeper.
Fix 2:
OLD: But it arrived late, it has failed badly at least three times, and crises became more frequent, not less.
NEW: But it arrived late, it missed badly in 2022, it did not stop the banking crisis of 2008, and crises became more frequent than in the gold-linked years after the war, though not more frequent than between the wars.
(Fix 2 also removes "at least three times". The 1970s cannot count as a failure of the inflation target, because [32] itself says there was no anchor then.)

### RT-03. Malaysia in 1997 is placed inside a trap it partly avoided, and the controls debate is missing. Blocks [23], [24]
What is wrong: [23] says "the same trap closed on Asia" and [24] lists Malaysia under it. For a Malaysian reader this is the most sensitive table in the chapter, and it misses three things. Malaysia's short-term foreign debt was small next to its reserves, much smaller than Korea's or Thailand's. Malaysia did not take an IMF loan. And whether its 1998 controls worked is a live debate: one well-known study found a faster recovery and smaller job losses than in IMF-programme countries, while sceptics note Korea and Thailand recovered at about the same time without controls. The IMF itself said in 2012 that such controls can be useful in some cases. The table says the IMF loans came "with hard conditions" but gives no voice to either side of that argument.
Evidence: Bank Negara governor's speech on the Malaysian experience: https://www.bnm.gov.my/-/governor-tan-sri-ali-abul-hassan-s-speech-at-the-malaysia-japan-economic-association-21st-joint-conference-asian-financial-turmoil-and-its-implications-the-malaysian-experience-so-far- . Short-term debt to reserves in mid 1997: Malaysia 0.61, Korea 2.06, Thailand 1.45 (from IMF data, in https://ijbt.unimap.edu.my/images/stories/June_2011/ijbt%201_2_11_357-375.pdf ). Kaplan and Rodrik, NBER w8142: https://www.nber.org/papers/w8142 . IMF institutional view, 2012: https://www.imf.org/en/News/Articles/2015/09/28/04/53/sopol120312a
Fix:
OLD: The International Monetary Fund lent Thailand, Indonesia and South Korea tens of billions of dollars, with hard conditions
NEW: The International Monetary Fund lent Thailand, Indonesia and South Korea tens of billions of dollars, with hard conditions. Malaysia did not take an IMF loan. Its short-term foreign debt was less than its reserves, while Korea's was about twice its reserves. Economists still disagree about its controls. One study found that Malaysia recovered faster, with smaller job losses, than the countries that took IMF loans. Others point out that Korea and Thailand recovered at about the same time without controls. In 2012 the IMF said that controls like these can be useful in some cases
Also add to [24] Malaysia row a short clause that the controls targeted short-term money and ringgit held offshore. (No number needed.)

### RT-04. "Malaysia learned from that year" mixes up government and private debt. Block [26]
What is wrong: the 1997 weak point named in [24] was short-term dollar borrowing by banks and firms. [26] answers it with the share of federal government debt held in ringgit. That is a lesson about a different borrower. An expert would say the paragraph does not follow.
Fix:
OLD: Malaysia learned from that year.
NEW: Malaysia's government drew its own lesson, even though its debt was not what broke in 1997. The weak point then was short-term foreign borrowing by banks and firms.

### RT-05. The UK 2022 story leaves out the pension funds. Block [22]
What is wrong: the jump in yields was made much worse by pension funds that had borrowed to hold more long bonds (liability-driven investment, or LDI). As prices fell they had to sell, which pushed prices down again. The Bank of England stepped in to protect financial stability and told MPs that without it many of these funds would have been left with negative value. It bought 19.3 billion pounds of gilts from 28 September to 14 October. Without this, the story reads as "markets punish borrowing governments", which is only half the cause. A modern monetary theory economist would also point out that the central bank could and did stop the fall.
Evidence: Bank of England Quarterly Bulletin 2023: https://www.bankofengland.co.uk/quarterly-bulletin/2023/2023/financial-stability-buy-sell-tools-a-gilt-market-case-study . CNBC, 6 October 2022: https://www.cnbc.com/2022/10/06/bank-of-england-says-pension-funds-were-hours-from-disaster-before-it-intervened.html
Fix:
OLD: Within days the interest rate on its 30-year bonds jumped by 1.6 percentage points, and the Bank of England had to step in to calm the market.
NEW: Within days the interest rate on its 30-year bonds jumped by 1.6 percentage points. Part of the jump came from inside the market. Many pension funds had borrowed so they could hold more of these bonds. As prices fell they were forced to sell, and that pushed prices down further. The Bank of England stepped in and bought 19.3 billion pounds of bonds in about two weeks. It later told Parliament that without this, many of those funds would have been wiped out. So the lenders' limit was real, but borrowing inside the market made it bite much harder.

### RT-06. Test 2 tests government borrowing, Test 1 tests bank lending, and modern monetary theory is not named. Blocks [20], [23]
What is wrong: Part 1 of the claim is about credit, and Test 1 measures private bank lending. Test 2 then judges "unlimited borrowing" almost only with governments (America 1980, Britain 2022, Mexico 1982). The reader is never told these are two kinds of borrowing. Also, the view that a currency issuer is limited by inflation, not by running out of money, is a real school (modern monetary theory). The chapter uses its main point as the first limit but does not name it, so the friend in [29] reads as a straw man. A fair reading of the reader's "unlimited" is "no metal cap", and the chapter half grants that, which is good, but it should say so plainly.
Fix 1:
OLD: Borrowing became elastic. It can stretch a long way.
NEW: Borrowing became elastic. It can stretch a long way. If "unlimited" means only that no metal now caps it, the reader is right. If it means there is no limit at all, the record disagrees. Keep two kinds of borrowing apart here. Banks lending to families and firms is private credit, the subject of test 1. A government selling bonds is public borrowing. Most examples below are about governments, but the same limits reach private borrowers too, as Asia showed.
Fix 2:
OLD: A country that borrows in its own money can always print to repay, at the cost of inflation.
NEW: A country that borrows in its own money can always print to repay, at the cost of inflation. A group of economists, known for modern monetary theory, put this at the centre of their view. For them a government that issues its own currency cannot be forced to default, and its true limit is inflation and the real resources of the economy, not the size of its debt. Many other economists accept the first part and doubt that inflation can be kept in check so easily.

### RT-07. Test 4 ignores the oil shocks, the productivity slowdown, and Japan. Blocks [42], [43], [44]
What is wrong: the growth table splits at 1973, the year oil prices jumped. The oil shocks of 1973 and 1979 are a standard explanation for the rich-world slowdown, and the chapter never mentions them. The best direct test of "productivity" is productivity: US total factor productivity grew about 2.1% a year from 1948 to 1973 and about 0.5% from 1973 to 1995, with a rebound in the computer years after 1995. That cuts against Part 4 for America and should be in the test. Japan, the great late developer of the gold-linked years, grew about 8% a year per person from the mid 1950s to the early 1970s. That weakens "late developers did better after 1971". Malaysia's own rise has a clear home-grown cause: the Free Trade Zone Act of 1971 and the electronics factories that came to Penang from 1971 and 1972. It also has a dollar-system cause worth naming: those factories sold into dollar markets. China's reforms after 1978 and India's after 1991 are named in [43] only as "many things at once".
Evidence: Baily and Montalbano, Brookings: https://www.brookings.edu/wp-content/uploads/2016/09/wp22_baily-montalbano_updated1.pdf . Japan: https://cigs.canon/en/article/uploads/pdf/column/170901_okazaki.pdf . Malaysia FTZ Act: https://downloads.unido.org/ot/46/88/4688167/00001-10000_03683.pdf and MIDA: https://www.mida.gov.my/?p=173633
Fix:
OLD: Neither story proves a cause. The rich countries were catching up after a war until about 1973, and that could not last.
NEW: Neither story proves a cause. The rich countries were catching up after a war until about 1973, and that could not last. Then oil prices jumped in 1973 and again in 1979, at the very moment the table changes period. Productivity tells the same story for America. The output each worker and machine could make together grew about 2.1% a year from 1948 to 1973, and only about 0.5% a year from 1973 to 1995. And the most famous late developer of the gold-linked years, Japan, grew about 8% a year per person from the mid 1950s to the early 1970s, under the old system.
And add to [43] after "trade rules": "Malaysia passed a Free Trade Zone Act in 1971, and electronics firms began building factories in Penang soon after. China began its reforms in 1978 and India in 1991." (Only the years are used. 1978 and 1991 are standard dates, not searched here.)

### RT-08. The verdict on Part 4 says "True for late developers", which the test did not earn. Blocks [48], [46]
What is wrong: Part 4 says the system lets productivity and technology advance. Test 4 found that late developers grew faster, and [46] says the cause is not shown. The verdict table then says "True for late developers". That turns a correlation into a finding for the reader.
Fix:
OLD: Holds in part. True for late developers, not for the rich world
NEW: Not shown. Late developers grew faster after 1971 and the rich world slower, but the evidence does not tie either to the end of the gold link

### RT-09. The closing pair is two cherry-picked numbers. Block [51]
What is wrong: the 99% figure depends heavily on the day chosen. Gold hit an all-time high of about 5,589 dollars on 28 January 2026 and was about 3,999 dollars on 11 November 2026. So the same sum gave different answers within one year. Gold also fell from about 850 dollars in January 1980 to about 252 dollars in August 1999. The draft's "about 3,900" is also a little low for November 2026. The two numbers are also in different units and different countries: the dollar in gold against Malaysian income in ringgit. And "lost 99% of its value" with no caveat reads like a pitch for gold, which is an advice risk.
Evidence: Kitco, 11 November 2026 quote and record high: https://www.kitco.com/charts/gold . 1980 and 1999 prices from secondary sources such as https://www.usagold.com/gold-price-history-50-years-investor-lessons/ (a dealer site, so check against World Gold Council data before use).
Fix:
OLD: In November 2026 it cost about 3,900 dollars, by one price chart. Measured in gold, the dollar has lost about 99% of its value since the anchor was cut.
NEW: In mid November 2026 it cost about 4,000 dollars, by one price chart. Measured in gold, the dollar has lost about 99% of its value since the anchor was cut. But gold is a jumpy ruler. It cost about 850 dollars in 1980 and about 252 in 1999, and in January 2026 it touched about 5,589 before falling back. Measured in the things people buy, the dollar's loss is smaller, though still large.

### RT-10. The governance line is unfair to how officials are chosen, and the Swiss vote is misdescribed. Blocks [37], [38]
What is wrong: [37] says Fed governors are named by the President and confirmed by the Senate, and then [38] says they are "not" controlled by "the people who pay the toll". Voters elect the President and Senate, and Congress writes the central bank's goals. The fair line is that control is indirect. Also, the 2014 Swiss initiative did not "tie the central bank to gold". It asked the bank to hold at least 20% of its assets in gold and never sell it. 77.3% voted no.
Evidence: swissinfo, 30 November 2014: https://www.swissinfo.ch/eng/politics/voters-roundly-reject-swiss-gold-initiative/41139376
Fix 1:
OLD: It is controlled by appointed officials, not by the people who pay the toll.
NEW: It is run by officials whom elected leaders appoint. Voters control it only at one remove, through the people they elect.
Fix 2:
OLD: When Swiss voters were asked in 2014 to tie their central bank to gold, about 77% are reported to have said no.
NEW: When Swiss voters were asked in 2014 to make their central bank hold at least 20% of its assets in gold and never sell it, about 77% said no.

### RT-11. The summary says America escapes the limits, the body says it does not. Block [0]
What is wrong: [0] says the reserve-currency country "escapes most of them". [27] says even America met the first limit, and [32] shows it met it again in 2022. The summary overstates America's freedom.
Fix:
OLD: Only the country that prints the world's main reserve money escapes most of them.
NEW: The country that prints the world's main reserve money feels them least, but America still met the inflation limit in 1980 and again in 2022.

### RT-12. "Bank lending grew fastest while the gold link was in place" is used as evidence against a limit. Blocks [0], [16], [17]
What is wrong: fast growth from a low post-war base does not show the limit was loose. [17] admits the low base, but [0] and the verdict table [48] still use the 9.0% as if it decides the case. The level (53% of output in 1970, 111% in 2007) is the fairer measure, and it leans toward the reader. Also, gold was not the only brake in 1950 to 1970. Interest-rate ceilings and controls on money crossing borders held lending down too, and the eurodollar market grew in the 1960s precisely because US reserve rules and interest ceilings did not apply offshore. That is good support for "a rope, not a wall", and the chapter does not use it.
Evidence: Boston Fed Regional Review 2001: https://www.bostonfed.org/publications/regional-review/2001/quarter-3/competition-opportunity.aspx
Fix 1:
OLD: Bank lending grew fastest while the gold link was still in place.
NEW: Bank lending grew fast under the gold link, but from a low post-war base. Its level against income rose far higher only after the link was cut.
Fix 2:
OLD: Credit grew fast under the gold link because it started from a low level after the war.
NEW: Credit grew fast under the gold link because it started from a low level after the war. Gold was not the only brake. Rules on bank interest rates and on money crossing borders held lending down as well. In the 1960s a market in dollars held outside America, in London and elsewhere, grew quickly because America's banking rules did not reach it. That is dollar credit growing outside both the gold rule and the home rules.
Fix 3 (verdict table [48], row 1):
OLD: Claims on America's gold were 2.9 times the gold by 1971. But bank lending grew 9.0% a year from 1950 to 1970
NEW: Claims on America's gold were 2.9 times the gold by 1971. Bank lending was 53% of output in 1970 and 111% in 2007

### RT-13. The three quotations lean one way. Block [36]
What is wrong: two of three voices (Bernanke, Eichengreen) speak against gold. Hayek's line is about governments and inflation in general, not about gold as a rule. A gold-side scholar is missing. Michael Bordo, already in the deeper box, wrote with Finn Kydland that the gold standard worked as a rule that tied governments' hands. (Not searched in this round. The verifier should check the 1995 paper "The Gold Standard as a Rule" before use.)
Fix:
OLD: The historian Barry Eichengreen called the gold standard "a central factor in the worldwide Depression".
NEW: The historian Barry Eichengreen called the gold standard "a central factor in the worldwide Depression". Other historians, such as Michael Bordo, see the old gold standard as a rule that stopped governments from spending by printing, and say that rule was its real value.

### RT-14. A sentence misreads its own table. Block [42]
What is wrong: "Korea, Malaysia, China and India all grew faster after 1973 than before." Korea grew 3.6% from 1990 to 2019, slower than its 6.0% from 1950 to 1973. Also the Korea figures (6.0%, 7.9%) should be rechecked against Maddison 2023, as older Maddison estimates give lower numbers for Korea (not searched here).
Fix:
OLD: Korea, Malaysia, China and India all grew faster after 1973 than before.
NEW: Korea, Malaysia, China and India all grew faster from 1973 to 1990 than before. Malaysia, China and India kept that pace after 1990, while Korea slowed as it grew rich.

### Omissions (item g): which matter for the verdict
- Oil shock of 1973 and petrodollars. Matters. It is a rival cause for the Test 4 slowdown (see RT-07). Petrodollar lending to Latin America also sets up Mexico 1982 in [23], so one sentence there would add a cause.
- Eurodollar market. Matters for Test 1. It is the clearest evidence that dollar credit grew outside the gold rule (see RT-12).
- Financial deregulation in the 1980s. Matters for Test 1 and Test 3. Much of the rise in lending to 111% of output, and some of the crises, came after rules were lifted, not after 1971 itself. One sentence in [17] would do.
- The euro. Matters for Test 2. Greece borrowed in a currency it could not print, which is the third limit inside a rich country. One clause in [23] would do.
- Japan. Matters for Test 4 (fast growth under the gold link, see RT-07). Also a strong case for Test 2: a rich country with very large debt in its own currency and no default.
- China's reserves. Matters a little for [27]. Part of why America borrows easily is that export countries, China and Malaysia among them, save in dollars.
- Plaza Accord 1985. Does not change the verdict. Could stay out.

### Advice check (item h)
- [51] "the dollar has lost about 99% of its value" with no counterweight reads as a case for gold. RT-09 fixes this.
- [55] is a clear disclaimer. Keep it.
- Nothing else reads as advice.

## 2. Eight voices: the single most important miss for each

- **A gold-standard advocate.** The chapter never puts the strongest gold case in its own words. That case is not "gold is scarce". It is that gold was a rule governments could not quietly change, and that 1971 happened because America chose to inflate rather than keep its word. RT-01 and RT-13 fix most of this.
- **A modern monetary theory economist.** The chapter borrows the core MMT point (the limit is inflation) without naming the school, and then uses Britain 2022 as a "lender limit" without saying the central bank could and did stop the fall within days. RT-05 and RT-06.
- **A central banker.** Test 3 counts 2008 and 2022 against the inflation target but gives no credit for the response: after 2008 and in 2022 the target did pull inflation back down. A central banker would also object that 2008 was a banking failure, not an inflation-target failure. RT-02 Fix 2 helps.
- **An economic historian of Bretton Woods.** The end of the system is told as gold against claims. The Triffin problem, US inflation from 1965, and the surplus countries are missing from the main story. RT-01.
- **A development economist who studies East Asia.** Late developers are credited to "years after 1971" with Japan left out, though Japan was the fastest grower of the gold-linked years. The role of the dollar system (export markets priced in dollars, reserves saved in dollars) is mentioned only as "may have helped". RT-07.
- **A Malaysian who lived through 1998.** Malaysia is put in the same trap as Korea and Thailand, with no word that it refused an IMF loan and that its own path is still argued over by economists. RT-03.
- **A Malaysian 18-year-old reader.** The chapter never shows, in ringgit, what a currency fall does to a dollar loan. Using the draft's own numbers: a firm that owed 1 dollar owed 2.50 ringgit in mid 1997 and about 4.88 ringgit in January 1998, so its debt nearly doubled while its income in ringgit did not. That single sum would make Test 2 click. (See section 4.)
- **A historian of technology.** Research spending as a share of output is an input, and the 1964 peak was driven by the race to the moon. The better test is productivity, which slowed sharply after 1973 and rose again in the computer years after 1995. Also, no technology is named. The chapter could ask what was paid for before it paid back (chips, the internet, mobile phones) and who paid. RT-07.

## 3. Flattery check (both directions)

**Where the draft flatters the reader**
- The verdict on Part 4, "True for late developers" [48], turns a correlation into a finding the test did not make. RT-08.
- The weekend scene, told as gold against claims, lets Part 1 ("credit rested on something limited") look like the cause of the end. The policy story is kept in a collapsed box [53.1]. RT-01.
- The closing pair [51] ends on Malaysia's growth "faster than it ever had before", which is the reader's Part 4 in a warm light with no cause shown. RT-09.

**Where the draft leans against the reader to look balanced**
- The crisis table [34] is used against Part 3, but leaves out the interwar gold years, which would cut against the gold side. That oddly makes the gold era look better and the reader's governance look worse. RT-02.
- "Controlled by appointed officials, not by the people who pay the toll" [38] is a jab at Part 3 that ignores that elected leaders appoint them. RT-10.
- "Failed badly at least three times" [38] counts the 1970s, which [32] itself says had no anchor. RT-02 Fix 2.
- Test 1 uses the 9.0% growth rate against the reader, though the level of lending (53% then 111%) supports the reader. RT-12.

**Is each finding earned?**
- Finding 1, "holds in part": earned. The rope image is fair to both camps once the 9.0% is moved out of the deciding cell and the eurodollar point is added.
- Finding 2, "does not hold as stated": earned for a literal "unlimited", but the chapter should grant the charitable reading ("no metal cap") in words. RT-06.
- Finding 3, "holds in part": earned, but the reasons given in [38] need the fixes in RT-02 and RT-10.
- Finding 4, "holds in part": not earned. It should read "not shown". RT-08.

**Is the rebuilt claim [50] supported line by line?**
- Line 1: supported, though "until one weekend it was cut" again hides the policy causes. Adding "after years of policy that let dollars pile up" would match RT-01.
- Line 2: supported. "They do it more roughly" is a judgement. The chapter shows rough cases (1981, 1997) but no measure of roughness against gold. Suggest "and sometimes more roughly".
- Line 3: supported.
- Line 4: supported, and honest about cause. It is the verdict table that overstates, not this line.

## 4. Depth and narration

**Where the chapter is shallow**
Test 3 and Test 4 are a table, then a short paragraph that reads the table back. Test 4 names no technology, no factory, no person. Test 2's Asian table gives facts in cells but never tells the reader what happened inside a Malaysian firm.

**The three places where one more layer would most help an 18-year-old**
1. **[23] to [24], the mechanism of the currency trap.** Show the sum with the draft's own numbers. A firm that borrowed 1 dollar owed 2.50 ringgit in mid 1997. By January 1998 it owed about 4.88 ringgit, nearly twice as much, while its sales in ringgit had not grown. That is why borrowing in someone else's money is a limit that printing cannot fix.
2. **[9] to [11], the cause of the end.** Add the Triffin layer from RT-01. The world needed dollars, it could only get them from American deficits, and every extra dollar sent abroad made the gold promise weaker. That turns the gold table from a scoreboard into a story with a cause.
3. **[43], the cause of Malaysia's rise.** In 1971, the same year the gold window closed, Malaysia passed a Free Trade Zone Act, and electronics firms began building factories in Penang in 1971 and 1972. Sources: https://downloads.unido.org/ot/46/88/4688167/00001-10000_03683.pdf and https://www.mida.gov.my/?p=173633 . This gives the reader a concrete local scene, and it shows a home-grown cause sitting next to the money-system cause.

**Where the story sags into report voice**
- [33] "Now look at crises. One well-known count measures how often..." reads like a methods note.
- [42] "The table tells two stories" and [44] "So research was high before 1971, dipped in the decade after, and is higher now" read the table aloud rather than tell anything.
- [48] the verdict table is useful, but [49] "rebuilt so the evidence can carry it" is a report phrase. Try "Here is the claim again, in a form the record can carry."
- Each "What test N does to the claim" box repeats its test. That is fine for teaching, but the four boxes and the verdict table say the same thing twice.

**Strongest scene**
The Volcker passage [21]: one man at Camp David in 1971 and at the central bank in 1981, rates near 20%, and builders mailing bricks and car keys. It has a person, a cause, a price, and a consequence. The Korean gold queue [24] to [25] is a close second, and it would be stronger still if the Malaysian scene beside it had the ringgit sum from point 1 above.

## 5. Word audit

| Word | Block | Earned? | Softer wording if not |
|---|---|---|---|
| only (escapes most of them) | [0] | Not earned. [27] says America met the limit | "feels them least" (RT-11) |
| only 1.3 billion | [16] | Earned. It is the figure from the hearing | Keep |
| foreign governments only | [16] | Earned | Keep |
| only about 5% to 9% | [16] | Earned as one estimate, and the block says so | Keep |
| always (print to repay) | [23] | Earned in law for an issuer, but the euro is an exception | "can print to repay, if its central bank will do so" |
| never (again a hostage) | [12] | A quotation | Keep |
| never undone | [13] | Earned | Keep |
| can never run out | [29] | The friend's words, tested in the answer | Keep |
| all credit | [5] | The reader's words | Keep |
| all grew faster after 1973 | [42] | Not earned for Korea after 1990 | See RT-14 |
| at all (no banking crisis) | [35] | Earned by the 18-country data | Keep, but say "is recorded in that data" |
| most of the rise came from currency crises | [35] | Plausible from the source, not shown in the table | "Much of the rise" unless the verifier finds the split |
| most of the time | [50] | Earned (about 35 years of low inflation) | Keep |
| cannot say the money system caused either | [0] | Slightly strong | "do not show" |
| cannot (borrow in someone else's money) | [23] | Earned | Keep |
| could not last | [43] | A judgement | "was bound to slow" |
| proves | [43] | Used as "neither proves", earned | Keep |
| every (foreign government) | [11] | A hypothetical, earned | Keep |
| every number | [55] | Earned | Keep |
| at last | [5], [20] | The reader's words | Keep |
| best on record | [46], [50] | Earned only for the data used, which starts in 1950 | "the best in these records, which begin in 1950" |
| ever had before | [51] | Same issue | "faster than in any period since 1950" |
| at least three times | [38] | Not earned (the 1970s had no anchor) | See RT-02 Fix 2 |

