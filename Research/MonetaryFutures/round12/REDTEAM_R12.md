# Red team, round 12: rb-credit, "Money from the future"

Blind review. Only DRAFT_R12.md was read. Web checks are listed with each point. 19 blocking points in section 1.

## 1. Blocking points, ranked

Ranked from most to least serious. "Fix" gives OLD text copied from the draft and NEW text.

### RT-01. The epilogue's "first money system" claim is contradicted by the chapter itself (block 64, also 63)
What is wrong: Block 64 says the modern system "is also the first money system that offers ordinary people a way to build before they have saved." Block 15 shows loans 4,400 years ago. Block 68.0 concedes bank credit grew strongly under Bretton Woods. Historians of early modern England (Craig Muldrew, The Economy of Obligation, 1998) show that most everyday exchange ran on credit between households. And mass home ownership through mortgages came before 1971: the US home ownership rate rose from 43.6% in 1940 to 61.9% in 1960, under the gold link. An expert would read block 64 as the chapter flattering the reader in its last paragraph, after refuting the same point in question 5.
Evidence: https://www.huduser.gov/portal/node/11428 (43.6% to 61.9%), https://www.cambridge.org/core/journals/journal-of-economic-history/article/economy-of-obligation-the-culture-of-credit-and-social-relations-in-early-modern-england-by-craig-muldrew-london-macmillan-1998-pp-xvii-453-6995/9F479F1A134918EB46ECC9E2A4C54996
Fix:
OLD: "It is also the first money system that offers ordinary people a way to build before they have saved."
NEW: "It also offers ordinary people more ways to build before they have saved than any money system before it. That road was already being built under gold. In America, home ownership rose from about 44% of homes in 1940 to about 62% in 1960, mostly on long home loans, while the dollar was still tied to gold."

### RT-02. The "rebuilt" claim asserts things the chapter never tested (block 63, bullets 2 and 4)
What is wrong: (1) "output grows fastest when people can build before they have saved" is not shown. The chapter's own growth table and block 61 say growth was fastest when bank lending was small. (2) "A money that cannot stretch makes building wait for savings that most people never had" is exactly the third test in block 65, which the chapter admits "has not been tested in a modern economy". (3) "It did make access to credit the main ladder for ordinary people, because cash melts and the things credit buys tend to rise" is unsourced, contradicts block 54 (the poorest owners lost almost everything from 2007 to 2010), and reads as a buy-with-debt tip to an 18-year-old.
Fix (bullet 2):
OLD: "But output grows fastest when people can build before they have saved. Credit is the tool for that, and it is four thousand years old. A money that cannot stretch makes building wait for savings that most people never had."
NEW: "Credit lets people build before they have saved, and it is four thousand years old. Whether a money that cannot stretch would hold building back in a modern economy has not been tested. The rich world grew fastest from 1951 to 1973, when credit was growing but still small."
Fix (bullet 4):
OLD: "It did make access to credit the main ladder for ordinary people, because cash melts and the things credit buys tend to rise."
NEW: "It did make access to credit one of the ladders for ordinary people, because cash slowly loses value. The things credit buys can rise, and they can also fall, as the poorest home owners in America found after 2007."

### RT-03. The deposit insurance table is a one-sided before-and-after (block 35, 36)
What is wrong: The table compares the worst years of the Great Depression with 1934, the first year of insurance, and leaves out 1932. It credits the fall in failures to insurance while block 36 admits other causes. It leaves out the strongest counter case: Canada had no deposit insurance until 1967 and no bank failures during the Great Depression, which most researchers put down to a few large branch banks. It also leaves out the main expert worry about insurance: a 61-country study (Demirguc-Kunt and Detragiache, 2002) found explicit deposit insurance raised the chance of banking crises where institutions were weak. America's savings and loan crisis of the 1980s is the standard example. A banking historian would call the table cherry-picked.
Evidence: https://www.nber.org/papers/w4546.pdf (Canada, no failures in the Depression), https://www.cato.org/blog/unnecessary-evil-how-canada-ended-insuring-bank-deposits (no insurance until 1967), https://www.nber.org/papers/w9322.pdf (deposit insurance and crises)
Fix (add after block 36, as a new paragraph):
OLD: "In 2018 Swiss voters were asked whether to stop banks creating money. 75.7% said no."
NEW: "In 2018 Swiss voters were asked whether to stop banks creating money. 75.7% said no. But insurance is not the only way to stop panics. Canada had no deposit insurance until 1967, and none of its banks failed in the Great Depression. Its banking was spread over a few large banks with branches across the country. And insurance has its own danger. A study of 61 countries found that where rules and courts were weak, deposit insurance made banking crises more likely, because banks and savers stopped watching the risks."

### RT-04. The tldr says "Nobody asked", the body says "rarely", and elected legislatures did vote (block 0, 32, 37)
What is wrong: Block 0 says "Nobody asked the people who pay the toll." Block 32 says "rarely", and block 36 reports a national vote in Switzerland. The Federal Reserve Act was passed by an elected Congress after a public fight, and it differed from the Jekyll Island draft (it created a public board in Washington). Present at Jekyll Island was also a Treasury official, A. Piatt Andrew, so "a senator and leading bankers" is incomplete. Congress also later voted to change the dollar's gold price after 1971 (the Par Value Modification Acts of 1972 and 1973, which the editors should verify). "Insiders, not the people" is the line that a historian of law would call conspiratorial in tone.
Evidence: https://www.federalreservehistory.org/essays/jekyll-island-conference, https://www.richmondfed.org/publications/research/econ_focus/2015/q1/federal_reserve
Fix (block 0):
OLD: "Nobody asked the people who pay the toll."
NEW: "Elected lawmakers passed most of these rules, but the people who pay the toll were seldom asked about it directly."
Fix (block 32):
OLD: "The first draft of America's central bank law came from a secret meeting of a senator and leading bankers in 1910, disguised as a duck hunt. A changed version was then passed by an elected Congress."
NEW: "The first draft of America's central bank law came from a secret meeting in 1910 of a senator, a Treasury official and leading bankers, disguised as a duck hunt. Congress did not pass that draft as it stood. Three years later, after open debate, it passed a law that kept much of the draft's design but put a public board, named by the president, in charge." (Historians differ on how much of the draft survived, so "kept much of" is safer than either "changed" or "different".)
Fix (block 32):
OLD: "The people who pay the toll were rarely asked."
NEW: "Voters chose the lawmakers, but they were seldom asked about money rules directly. Switzerland, below, is a rare case where they were."
Fix (block 37):
OLD: "the lean is real, it has winners, and it was chosen more by insiders than by the people who pay."
NEW: "the lean is real, it has winners, and insiders had a large hand in writing it, although elected lawmakers passed it."

### RT-05. Zimbabwe and Venezuela are government printing, not bank credit, and the draft blurs them (blocks 39, 41)
What is wrong: Block 39 uses Zimbabwe and Venezuela as a rebuttal to "credit makes plenty". Both cases were a central bank paying a government's bills while output was collapsing. In Zimbabwe, real GDP fell by about 40% from 2000 to 2007 before the worst of the hyperinflation, with farm output falling after the land seizures, and the IMF blames the central bank's "quasi-fiscal" spending for the inflation. So these cases are mainly about state printing and a fall in output, which actually supports the chapter's own Question 4 thesis. Block 41's third row hints at this but still files it under "what the new money buys".
Evidence: https://www.imf.org/external/np/sec/pn/2009/pn0953.htm
Fix (block 39):
OLD: "Both printed without limit. Both grew poorer."
NEW: "In both, the central bank printed money to pay the government's bills, while farms, oil fields and factories were producing less and less. Both grew poorer. Notice that this is not bank lending to builders. It is a state printing to cover its spending as output falls."
Fix (block 41, third row, first cell):
OLD: "Spending that is used up, or a government's bills with nothing new made"
NEW: "Spending that is used up, or a central bank paying a government's bills while output falls"

### RT-06. "Three quarters then, three quarters now" compares unlike things (block 51)
What is wrong: The 1820 figure is the share of the world in extreme poverty. The 2024 figure is the share of adults in poorer countries who did not borrow from a formal lender in one year. Not borrowing is often a choice, and 35% borrowed informally (block 47). Many Muslim readers in Malaysia avoid interest-based loans on purpose. Putting the two numbers side by side suggests the gate today keeps out as many people as poverty did in 1820, which no source shows.
Evidence: https://lhoft.com/finance/global-findex-database-2025/ (24% formal, 35% informal)
Fix:
OLD: "In 1820 about three quarters of the world was too poor to save. In 2024 about three quarters of adults in poorer countries did not borrow from a formal lender. The gate is wider than it was. It is still a gate."
NEW: "In 2024 about three quarters of adults in poorer countries did not borrow from a formal lender. Some chose not to borrow, and many borrowed from family instead. But for many of the rest, the gate was shut. It is wider than it was. It is still a gate."

### RT-07. The growth table is a test of money rules, not of credit, and it stops in 1989 (blocks 17 to 20, 61)
What is wrong: The table compares gold, Bretton Woods and floating money for rich countries only. 1951 to 1973 includes the post-war rebuilding and catch-up of Europe and Japan. The table stops in 1989 because the source paper is from 1995. It leaves out the countries that grew fastest after 1971, including Malaysia, Korea and China, all under paper money with fast-rising credit. Block 19 also compares growth from 1951 with bank lending in 1945, the war-time low point. Bank lending grew fast during 1951 to 1973 (block 68.0 admits this). Block 20 then says credit doubled "and growth has been slower", which invites a causal reading that block 68.1 denies only inside a collapsed box. The source paper itself warns that the timing invites an easy causal story.
Evidence: https://www.rba.gov.au/publications/rdp/1995/9507/overview-of-long-rim-growth-trends.html, https://www.frbsf.org/wp-content/uploads/el2015-09.pdf (bank lending 30% in 1945 to 120% before 2008)
Fix (add after block 18):
OLD: "The fastest growth came before 1971, when bank lending was still small: about 30% of yearly income in the rich countries in 1945."
NEW: "Read this table with care. It covers rich countries only, and it stops in 1989. The years 1951 to 1973 include Europe and Japan rebuilding and catching up after the war, which would have been fast under almost any money rule. Many poorer countries, Malaysia among them, grew fast after 1971 under paper money. So the table cannot show that paper money slowed growth. It shows only that the end of gold did not bring a speed-up in the rich world. The fastest growth came before 1971, when bank lending was still small but rising fast: about 30% of yearly income in the rich countries in 1945, just after the war."
Fix (block 20):
OLD: "Since then credit has roughly doubled against income, and growth has been slower than in the years just before, not faster."
NEW: "Since then credit has roughly doubled against income in the rich world, and growth there has been slower than in the years just before, not faster. That does not prove credit slowed growth. Many things changed at once."

### RT-08. The "too much finance" threshold is presented as settled (block 42, 61, 65)
What is wrong: The 100% threshold is a disputed finding. William Cline (Peterson Institute, 2015) argued it is partly a statistical illusion that would also make "too many doctors" look bad for growth. Arcand, Berkes and Panizza replied that it is robust. Block 65 then says "the evidence is against the first", which overstates. Block 42 also sets Malaysia's household debt (84.8%) next to a threshold for all private credit, households plus companies. These are different measures, and a reader will wrongly think Malaysia is just under the line.
Evidence: https://www.piie.com/publications/policy-briefs/too-much-finance-or-statistical-illusion, https://repository.graduateinstitute.ch/record/293103/files/HEIDWP12-2015-1.pdf
Fix (block 42):
OLD: "Once private credit passes about 100% of a country's yearly income, more of it goes with slower growth. Malaysia's household debt alone was 84.8% of yearly income in the first half of 2025."
NEW: "Once private credit passes about 100% of a country's yearly income, more of it goes with slower growth. Other economists dispute this. They argue the pattern partly comes from how the tests were built, and the debate is not settled. For comparison, Malaysia's household debt alone was 84.8% of yearly income in the first half of 2025. That is only part of private credit, because it leaves out loans to companies."
Fix (block 65):
OLD: "Today the evidence is against the first two, and the third has not been tested in a modern economy."
NEW: "Today most of the evidence leans against the first, though it is disputed. It is against the second. The third has not been tested in a modern economy."

### RT-09. The strongest pro-credit evidence is missing (Question 8, block 42)
What is wrong: The chapter cites the "too much finance" studies but not the larger body they qualify. King and Levine (1993), using about 80 countries from 1960 to 1989, found that financial depth predicts later growth. That finding, plus home ownership through mortgages (see RT-01), is the core of the pro-credit case. Without it, the chapter looks like it chose the anti side's best paper and not the pro side's.
Evidence: https://econpapers.repec.org/RePEc:tpr:qjecon:v:108:y:1993:i:3:p:717-37
Fix (block 42):
OLD: "And studies at the International Monetary Fund and the Bank for International Settlements both found that more credit helps growth only up to a point."
NEW: "A famous study of about 80 countries found that those with deeper banking systems in 1960 grew faster over the next thirty years. Critics say that does not prove the banks caused the growth. Later studies at the International Monetary Fund and the Bank for International Settlements found that more credit helps growth only up to a point."

### RT-10. "Spain proves" overstates a disputed case, and "ask them about Spain" does not answer "gold kept us poor" (blocks 12, 63, 66, 10)
What is wrong: The draft's own source note (67.0) says the cause of the price rise "is still argued". Population growth pushed prices too. Hamilton counted only official landings, so the 210 million figure is a floor. Spain's windfall was a resource gift to one state, spent on war, which tests a silver windfall, not credit and not ordinary people's access to money. In block 66, "gold kept us poor" is a claim that scarce money hurts. Spain shows that more money does not make plenty, which is a different point. The best evidence on scarce money is the coin famines (block 10) and the long fall in prices from 1873 to 1896 under gold, which hurt indebted farmers. The figure "prices in Western Europe rose 3 to 4 times" was not confirmed in my searches and needs a cited source.
Evidence: https://en.wikipedia.org/wiki/Price_revolution (Hamilton's 210 million pesos counted only official imports), https://www.economics.utoronto.ca/workingPapers/UT-ECIPA-MUNRO-99-02.pdf (Munro on Hamilton's narrower claim)
Fix (block 12):
OLD: "Spain proves that more money alone does not make plenty."
NEW: "Spain is a strong sign, though historians still argue about it, that more money alone does not make plenty."
Fix (block 63):
OLD: "Money does not create it. Spain's silver proved that."
NEW: "Money on its own does not create it. Spain's silver is the classic warning."
Fix (block 66):
OLD: "When someone says gold kept us poor, ask them about Spain."
NEW: "When someone says gold kept us poor, ask: was the problem too little money, or too little made? The coin famines say money mattered sometimes. Spain says money alone is not enough."

### RT-11. The Black Death row does not separate money from output (block 10)
What is wrong: "No new coins arrived" is true, but the same coins were now shared by far fewer people, so coins per person rose. A monetary historian would say the case fits both stories. The row is offered as proof that pay "followed output per worker, not the number of coins", which it cannot show alone.
Evidence: https://ideas.repec.org/p/pra/mprapa/15748.html (Munro, money, prices and wages before and after the Black Death)
Fix:
OLD: "Pay followed output per worker, not the number of coins"
NEW: "Pay rose with output per worker. Coins per person also rose, since the same coins were shared by fewer people, so this case alone cannot settle the question"

### RT-12. Islamic and profit-sharing finance is absent for a largely Malaysian reader base (Questions 6, 9, 10)
What is wrong: Nearly half of all financing in Malaysia's financial system is Islamic: 46.6% in 2024 by Bernama's report of Bank Negara data. Islamic finance claims a different way to build before saving: sharing profit and loss (mudarabah, musharakah) instead of charging interest. Critics reply that most Islamic financing in practice is debt-like (for example tawarruq and murabahah). Either way, a Malaysian reader will ask about it, and it bears directly on "credit is the only tool" and on the lever table in block 56, since risk sharing is a direct answer to "can you carry a bad year". Its absence is the biggest local gap. The proverb in block 53 is from the Bible (Proverbs 22:7). Naming the source, and noting that Islamic teaching also warns about debt and bans riba, would be fairer to Muslim readers.
Evidence: https://www.bernama.com/en/news.php?id=2405632
Fix (new go-deeper paragraph, after block 44 or in block 68):
NEW: "In Malaysia, nearly half of all financing is Islamic: 46.6% of financing in the financial system in 2024. Islamic finance bans riba, which most scholars read as interest. In theory it offers another way to build before you have saved: the financier shares the profit and the loss, so a bad year is shared too. Critics say most Islamic financing in practice still works like a debt, with fixed payments. Supporters say the rules still limit some of the worst lending. Either way, it shows that credit with interest is not the only way to fund building."
Fix (block 53):
OLD: "The oldest warning about debt says the opposite: the borrower is servant to the lender."
NEW: "An old warning in the Bible says the opposite: the borrower is servant to the lender. Islamic teaching also warns against debt and forbids riba."

### RT-13. Lerner and Buchanan are summarised loosely, and the "later review for the US Congress" is unsourced (block 24)
What is wrong: The usual synthesis is Franco Modigliani (1961): debt is a burden on the future mainly when it crowds out capital that would have been built, and less so when it pays for lasting capital. Block 24 credits this to an unnamed "later review for the US Congress", which has no entry in block 67.0. Lerner also accepted that debt owed to foreigners is a real burden and that taxes to service any debt have costs, so "not a burden" needs that qualifier. Buchanan's actual point was that the burden falls on future taxpayers because today's bond buyers lent willingly and gave up nothing they did not choose to give up.
Evidence: https://www.nber.org/system/files/working_papers/w1955/w1955.pdf (cites Buchanan 1958 and Modigliani 1961), https://www.dpipe.tsukuba.ac.jp/~naito/teaching_web/public_economics_2013_web/lerner_Re_stat_1961.pdf
Fix:
OLD: "One side says a national debt owed inside the country is not a burden on the next generation as a whole, because the children inherit the bonds as well as the tax bills (Abba Lerner). The other side says the taxpayers who must service the debt do carry a real burden (James Buchanan, 1958). A later review for the US Congress put the two together: the burden is real when the borrowing paid for spending that is used up, and small when it paid for something that lasts."
NEW: "One side says a national debt owed inside the country is not a burden on the next generation as a whole, because the children inherit the bonds as well as the tax bills. Debt owed to foreigners is different (Abba Lerner). The other side says today's lenders gave up nothing they did not choose to, so the real burden falls on the future taxpayers who must pay the interest (James Buchanan, 1958). Franco Modigliani, in 1961, put the two together: the burden is real when the borrowing takes the place of factories and machines that would have been built, and small when it pays for something that lasts."

### RT-14. The Latin American debt case blames the use of the loans and leaves out the interest shock (block 25)
What is wrong: The 1982 crisis followed a sharp rise in US interest rates and a fall in commodity prices, on loans in dollars at floating rates. Some of the borrowing did fund investment. Presenting it as simply "borrowing that did not build" is unfair to economists who stress the external shock and the currency of the debt.
Fix:
OLD: "Then income per person fell about 9% to 10% in the 1980s, and about a third of the debt was later forgiven"
NEW: "Much was borrowed in dollars at rates that could change. When US interest rates jumped around 1980, payments soared. Income per person fell about 9% to 10% in the 1980s, and about a third of the debt was later forgiven. Some loans built little, and all of them were exposed to a shock from outside"

### RT-15. "In real things, a society cannot borrow from the future at all" is true only for the world as a whole (block 23)
What is wrong: One country can borrow real goods today from abroad, by importing more than it exports and paying later. Block 25 then talks about debt owed to foreigners, so block 23's absolute claim clashes with it.
Fix:
OLD: "So in real things, a society cannot borrow from the future at all."
NEW: "So in real things, the world as a whole cannot borrow from the future. One country can borrow cement from another country today and pay later, but nobody can borrow it from 2050."

### RT-16. "The only limits on credit were the judgment" ignores rules (block 16, 63)
What is wrong: After 1971 credit was still limited by bank capital rules (the Basel rules from 1988), reserve rules, and in many countries by direct credit controls. Bank Negara itself uses lending limits. A central banker would call "nothing outside human judgment" wrong.
Fix (block 16):
OLD: "After it, the only limits on credit were the judgment of banks, central banks and borrowers."
NEW: "After it, the limits on credit were rules and judgment: rules on how much capital a bank must hold, the central bank's interest rate, and the judgment of lenders and borrowers."
Fix (block 63):
OLD: "Since 1971 nothing outside human judgment limits credit."
NEW: "Since 1971 credit has been limited by human rules and judgment, not by a metal."

### RT-17. The epilogue grades Part 3 "Holds as a fact" on a number that measures something else (block 61, 11)
What is wrong: Part 3 says people "had no way to save and grow their savings". The 1820 figure measures extreme poverty, not the ability to save. Poor households did save, in grain, animals, land and tools, and lent to each other (Muldrew, see RT-01). Also the source note says one historian thinks the old poverty figures are too high. "Holds as a fact" overgrades.
Fix:
OLD: "Holds as a fact. The cause was low output more than rare money"
NEW: "Holds in part. Most people were very poor, but many saved in grain, animals and tools, and lent to each other. The cause of the poverty was low output more than rare money"

### RT-18. Smaller factual precision points
- Block 10: Broadberry's 68% for 1522 is for men in the workforce, taken from muster rolls. OLD: "In 1522 about 68% of English workers were farming" NEW: "In 1522 about 68% of English working men were farming". Source: https://www.lse.ac.uk/asset-library/information/wp240.pdf
- Block 42: the mortgage share of about 60% is dated "today" in the 2014 source, not 2007. OLD: "and about 60% by 2007" NEW: "and about 60% a century later". Source: https://www.frbsf.org/wp-content/uploads/el2015-09.pdf
- Block 67.0: "Bank lending and the mortgage share" is credited only to The Great Mortgaging. The 30% in 1945 and 120% in 2008 come from Schularick and Taylor (2012). Add that source.
- Block 33: the IMF report is April 2014 and the estimates are for 2012. OLD: "The International Monetary Fund put the value of that belief in 2012 at" NEW: "The International Monetary Fund, in 2014, put the value of that belief in 2012 at"
- Block 54: the CFPB "one in ten" is about card accounts. OLD: "Nearly one in ten paid more in interest and fees each year than they paid off the debt" NEW: "About one in ten card accounts was charged more in interest and fees each year than was paid off the debt". Source: https://www.consumerfinancemonitor.com/2023/10/27/cfpb-issues-biennial-card-act-report-to-congress/
- Block 11: "Today it is about 8%" depends on the poverty line. The World Bank raised its line in 2025. Give the year and the line, or say "under one in ten".
- Block 20: "the industrial age was built on bank credit under gold" overstates. Economic historians stress that early British factories were funded mostly from owners' profits and family money, with banks giving short-term loans. OLD: "and the industrial age was built on bank credit under gold" NEW: "and bank credit helped fund the industrial age under gold"
- Blocks 25, 26, 54 (Mian and Sufi style figures), 54 (Malaysian bankruptcy, PTPTN figures) and 49 (moneylender caps) have no entry in block 67.0. Each needs a source line.

### RT-19. Advice risk (blocks 56, 58, 63)
What is wrong: Block 56 is written in the second person ("Can you carry a bad year?", "The lever lifts you") as a checklist. Read with block 63's "things credit buys tend to rise", it works as a guide to taking a loan. The disclaimer in block 55 helps, but the table itself should describe borrowers, not "you".
Fix (block 56 header row and row 3):
OLD: "| Test | The lever lifts you | The lever crushes you |"
NEW: "| Test | When the lever lifted the borrower | When the lever crushed the borrower |"
OLD: "| Can you carry a bad year? |"
NEW: "| Could the borrower carry a bad year? |"

## 2. Eight voices: the single most important miss for each

1. Hard-money (Austrian) economist. The chapter treats the credit boom only as "credit that bids up old houses". It never states the Austrian theory of the cycle: cheap credit set below what savers would accept sends money into long projects that later fail, so the bust is the price of the boom. Minsky, from the other camp, says something close. Block 68.0 gives the hard-money side only the growth table. Its real argument is about booms and busts, and it is missing.

2. Post-Keynesian or MMT economist. The chapter asks whether a society "can borrow from the future" (block 23) but never says that a government borrowing in its own currency cannot be forced to default the way a household or Latin America in dollars can. That is the single point this school would insist on, and it changes the reading of blocks 25 and 26. Minsky's idea that stability itself breeds risky lending is also missing (see section 3 note).

3. Medieval economic historian. The chapter assumes that scarce coin meant no credit. In fact medieval and early modern villages ran on credit between neighbours (Muldrew, The Economy of Obligation, 1998, and work on fourteenth-century village credit). Coin shortage pushed people into credit, not out of it. This both weakens Part 3 of the claim and strengthens the chapter's "credit is ancient" point. It is the best missing evidence in Question 4.

4. Development economist. Institutions. The draft's answer to Question 4 is "output, not money", but output itself depends on property rights, courts and who can enforce a contract (Acemoglu and Robinson, and Douglass North). Credit needs courts and records to work. The chapter never says that the "gate" in Question 9 is partly a gap in institutions, not just in personal wealth. Also, the fast growers after 1971, including Malaysia, are missing from the growth evidence.

5. Central banker. The chapter says nothing outside judgment limits credit (blocks 16 and 63). A central banker would point to capital rules, lending limits on house loans, and debt service limits, which Bank Negara itself uses. The missing idea is that modern credit has a brake, it is just made of rules and not of metal.

6. Bankruptcy lawyer or debt counsellor in Malaysia. The missing piece is what actually happens before bankruptcy: AKPK, the government agency for credit counselling and debt management, and the danger of illegal moneylenders (Ah Long), who sit outside the 12% and 18% caps in block 49. A reader turned away by a bank is more likely to meet an illegal lender or a buy-now-pay-later app than a licensed moneylender. Buy-now-pay-later is the credit an 18-year-old in Malaysia will meet first, and it is not named.

7. Malaysian 18-year-old reader. Almost every gate and price number in Questions 9 and 10 is American (credit records, mortgage rates, card rates, payday loans, owner and renter wealth). The reader's own first loans are PTPTN, a car loan, a phone plan and buy-now-pay-later. And the chapter never mentions Islamic finance, which is nearly half of Malaysian financing (RT-12). The reader will wonder whether the chapter was written for them.

8. Historian of law and money. The chapter treats legal tender (block 31) as "the one money that settles a debt". Legal tender means a creditor must accept it to settle a debt, but most debts are settled by bank transfer, which is not legal tender at all. The missing point is that bank money works because the law and the state accept it in payment of taxes and protect it, not because of legal tender rules. This is the more precise answer to "why does the law lean".

## 3. Flattery check (both directions)

Flattering the reader who made the claim
- Block 64 "the first money system that offers ordinary people a way to build before they have saved" (RT-01). This is the most serious flattery. It restates the reader's Part 4 in stronger form after the chapter has shown it is wrong on dates.
- Block 63 bullet 4, "the main ladder for ordinary people, because cash melts and the things credit buys tend to rise" (RT-02). Unsupported in the chapter, and it repeats the reader's frame.
- Block 63 bullet 2 "output grows fastest when people can build before they have saved". The growth table in the chapter points the other way.
- Block 61 row 3 "Holds as a fact" for the 80% point (RT-17).
- Block 64 "saw something true and important" is fine as courtesy, but it comes before the corrections and is not balanced by a matching "what the claim got wrong" in equal weight.

Leaning the other way to look balanced
- Block 51 "three quarters then, three quarters now" is a rhetorical stroke against credit (RT-06).
- Block 0 and block 37 "Nobody asked" and "chosen more by insiders" lean toward a suspicious reading of the law (RT-04).
- Block 20 "growth has been slower ... not faster" sits on the main path while the caveat sits in a collapsed box (RT-07).
- Block 42 the disputed threshold is given as settled, and the pro-credit studies are left out (RT-08, RT-09).
- Block 39 Zimbabwe used as if it tested bank credit (RT-05).
So the main path leans anti-credit in the questions, then swings pro-credit in the epilogue. Each swing is unsupported in its own direction.

Is the epilogue grading honest? Line by line
- Row 1, "Holds in part". Fair grade. But the "number that decides it" cites a disputed threshold and a growth period that the chapter itself says had other causes. The deciding number should be the micro-loan trials and the mixed finance and growth evidence, with both sides.
- Row 2, "Holds only a little". Slightly harsh. The chapter's own coin famine row (block 10) and the post-plague coins-per-person point (RT-11) support "holds in part, but output was the bigger cause". The Spain number does not decide this row, since Spain tests a windfall, not scarcity.
- Row 3, "Holds as a fact". Too generous (RT-17).
- Row 4, "Holds in part". Fair, but the deciding numbers do not test "pushes everyone to stand on their own". The US debt ratio shows more debt, not more self-reliance. A fairer deciding fact would be the gate data in block 47 plus the 1940 to 1960 home ownership rise under gold (RT-01), which shows the push did not start in 1971.

Is the rebuilt claim supported, line by line?
- Bullet 1 "Plenty comes from output". Supported by Question 4, with the Spain caveat (RT-10).
- Bullet 2. Not supported (RT-02).
- Bullet 3 "The law leans ... because the state gains, the banks gain, and most voters fear panics". Partly supported. "Most voters" rests on one Swiss vote. Soften to "voters, when asked, have chosen".
- Bullet 4. First sentence needs the rules correction (RT-16). "That did not bring faster growth" is supported for rich countries only. "Main ladder" is not supported (RT-02).
- Bullet 5. Supported by Question 9 and 10. The conclusion "the fair fight is no longer about whether money should stretch" is a judgment, not a finding. Hard-money readers will call it a verdict the chapter did not try. Suggested NEW: "So a large part of the fight is not only about whether money should stretch. It is also about what credit is used for, and who is let through the gate."

## 4. The seven questions: is each answered straight?

- Question 4 (poor because of money or output?). Answered directly: mostly output. The Black Death and Spain rows are weaker than presented (RT-10, RT-11). Best missed question: "If coins were scarce, did people use credit instead?" (medieval village credit, Muldrew).
- Question 5 (was credit born in 1971?). Answered directly and well: no. Best missed question: "Did growth outside the rich world speed up after 1971?" This is where Malaysia's own story sits.
- Question 6 (can a society borrow from the future?). Answered, but the answer drifts from bank credit (the reader's claim) to government debt. Best missed question: "Is a household loan different from a government loan in its own currency?"
- Question 7 (why does the law lean?). Answered with three reasons. The fairness problems are in RT-03 and RT-04. Best missed question: "What limits does the law put on credit today?" (capital rules, Bank Negara's lending limits, the Moneylenders Act). It would balance a section that lists only what the law enables.
- Question 8 (why are the biggest printers poor?). Answered, but with a category slip between state printing and bank credit (RT-05). Best missed question: "Why did some countries with lots of credit, such as Korea or Malaysia, grow fast, while others had crises?"
- Question 9 (who gets through the gate?). Answered directly and clearly. Best missed question: "Is there a way to fund building without interest-bearing debt?" (Islamic profit-sharing, equity, cooperatives, Amanah Ikhtiar Malaysia's group finance).
- Question 10 (free or owned?). Answered directly: a lever. Best missed question: "What happens to a Malaysian who cannot pay?" (AKPK, the 2023 bankruptcy changes, illegal lenders). Block 54 has the numbers but not the path.

## 5. Word audit

- Block 0, "poor mostly because output was scarce". Earned in broad terms, but add "on most evidence". NEW: "were poor mostly, on most evidence, because output was scarce".
- Block 0, "Nobody asked". Not earned (RT-04).
- Block 1, "Most money is born when a bank makes a loan". Earned (true of broad money in modern economies).
- Block 11, "The main cause of old poverty was scarce output". Contested by those who stress money and by those who stress institutions. NEW: "The bigger cause of old poverty, on most evidence, was scarce output."
- Block 11, "no matter how many coins the king had". Earned.
- Block 12, "mainly", "proves". "Mainly" is acceptable with the caveat. "Proves" is not earned (RT-10).
- Block 14, "far older ... older than coins". Earned.
- Block 16, "the only limits". Not earned (RT-16).
- Block 19, "most of that rise came after the mid 1980s". Needs a source line in 67.0.
- Block 20, "the industrial age was built on bank credit". Overstated (RT-18).
- Block 23, "cannot borrow from the future at all". Earned only for the world as a whole (RT-15).
- Block 28, "all government debt is theft" is the friend's word, fine.
- Block 31, "the one money that settles a debt". Overstated. NEW: "Makes the state's money the money a creditor must accept to settle a debt".
- Block 37, "most voters, given the choice". Rests on one referendum. NEW: "voters, when they have been asked, have preferred".
- Block 42, "Which kind do banks make most?" Earned by the 60% figure.
- Block 49, "Most people with a record". Earned.
- Block 61 row 2, "Scarce output was the main cause". NEW: "Scarce output was the bigger cause".
- Block 63, "Money does not create it", "proved". Not earned (RT-10). "nothing outside human judgment". Not earned (RT-16). "the main ladder". Not earned (RT-02). "most voters". As block 37.
- Block 64, "the first money system". Not earned (RT-01). "mostly scarce output". Acceptable.
- Block 65, "the evidence is against the first two". Not earned for the first (RT-08).
- Block 68.2, "Nobody has run a modern economy that way". Earned, as far as known.
- Block 47, "no financial account at all". Earned (Findex).
- Block 57, "Credit multiplies what you already are". A metaphor, acceptable, but "multiplies" also multiplies bad luck, which the block says.

## 6. Narration

Does the courtroom story hold? Mostly yes. "The defence makes a bigger claim" (blocks 4 to 7) is a strong opening, and each question ends with a ruling. Weak spots:
- Who is the prosecution? The defence speaks, the jury rules, but the questions have no voice. Naming the questions as cross-examination by "the prosecution" in block 7 would make the frame clearer for a second-language reader.
- "Seven harder questions" numbered 4 to 10 will confuse. One line in block 7, "We number them 4 to 10 because questions 1 to 3 were in the last chapter", would help. The draft says this, but only after the reader has seen the title.
- The courtroom drops out from Question 6 to Question 10. A one-line return of the jury at the start of Question 9 or 10 would hold the thread.
- The epilogue verdict swings away from the evidence (section 3). In a courtroom, the verdict must follow the testimony. This is where the story sags most.

Too dense for the reader
- Block 19: four numbers in three sentences, with two different measures (bank lending in rich countries, all non-finance debt in America). Split into two short paragraphs, one per measure.
- Block 31: five legal pillars with dates and acts in one table. Fine for a table, but the Malaysia row packs an act name and a legal idea. Move "Currency Act 2020" into the source box.
- Block 54: six facts with three currencies and four years. Split into two tables, America and Malaysia, so the Malaysian reader can find their own numbers.
- Block 42: mortgage share, two research centres, a threshold and Malaysia in one paragraph. Split after "already stand".
- Block 24: three economists and a synthesis in one paragraph. With RT-13's fix, break into three short sentences, one per voice.
- Block 61: the grading table's third column carries too much. One deciding number per row is easier.
