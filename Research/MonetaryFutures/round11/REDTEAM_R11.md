# Round 11 blind red team: rb-print ("Is printing money a scam? The charge, the defence and the toll")

Written 2026-11-15. Blind to the verifier file, lane files and court files. Read: DRAFT_R11.md, FRAME_R11.md, OWNER_R11.md, PLAN.md Move 7, skim of BASE_R11.md.
Block numbers are the [n] tags in DRAFT_R11.md. Every "Old" string is copied verbatim from the draft and occurs once (checked by script, see the end of this file). New text uses no em-dashes, en-dashes or semicolons.

Fetches used (6 of 6 budget, counting searches): US Treasury fiscaldata average interest rates (two API calls), Rolnick and Weber 1983 AER paper (Table 2), Harvard JCHS and other cohort home ownership sources (search), KRI and DOSM median multiple (search).

Verdict in one line: the draft is lively, well sourced in most rows and honest in tone, but it has one inverted concept (the strict Ponzi test), two hard-money history errors that tilt the trial against gold (1866 to 1897 "metal standard", free banks "close to half failed"), one claim that makes interest look tax-paid when it is in effect borrowed, and it skips three spec items (verdict grid, regime table, hyperinflation in the main path). Fix the 11 blocking points before the court.

---

## 1. Blocking points, ranked

### B1. [15] [14] [21] [22] [54] [56] The strict Ponzi test is stated backwards, and the primary deficit is missing
Problem. In the economics literature the "no-Ponzi condition" is the rule that debt cannot be serviced forever by new borrowing. When the interest rate r is BELOW growth g, a government CAN run a Ponzi game (roll all interest forever) without the debt ratio exploding. That is the point of O'Connell and Zeldes (1988) and Blanchard (2019). So r below g does not mean "it is not a Ponzi". It means "a rolling scheme is sustainable, for now". The draft says the system "passes" the Ponzi test, which a careful economist would read as the reverse of the literature. Second, r against g alone does not settle the debt path. The primary balance (deficit before interest) matters too. The US has run a primary deficit in almost every year since 2001, so with money being fungible, in effect all US interest has been paid with new borrowing since 2009. That makes [14] row 2 ("interest comes mostly from taxes") wrong in substance and flattering to the defence. Data check (Treasury fiscaldata, fetched): the 3.57% is "Total Marketable" for October 2026 (total interest-bearing debt was 3.58%). The low of 1.42% was January 2022, not 2021. December rates 2001 to 2025 against nominal GDP growth from memory give rate above growth in 2001, 2002, 2008, 2009 and 2020, with 2007 a near tie (4.84% against about 4.8%). Say "5 or 6".

Fix [15]:
- Old: `So by its features it is not a Ponzi. But economists have their own strict test, and it is fairer to the prosecution. A debt is a Ponzi in the strict sense if it can only ever be paid by borrowing more. The check is one comparison: is the interest rate on the debt higher than the growth of the income behind it?`
- New: `So by its features it is not a Ponzi. But economists have their own strict version, and here the prosecution scores a point. In the strict sense, a borrower runs a Ponzi game when it pays all its interest with new borrowing. By that test the US qualifies: it has spent more than it taxed, even before interest, in each year since 2008, so in effect its interest has been borrowed. The real question is whether that can go on. Two numbers decide it. The first is the interest rate on the debt against the growth of the income behind it. The second is the deficit before interest. While growth beats the rate, a borrower can roll its debt for a very long time without the debt growing against income, as long as the deficit before interest stays modest.`

Fix [15], second half:
- Old: `In October 2026 the rate was 3.57% and growth was 5.9%. The system passes. But the gap is closing as cheap old debt is replaced at higher rates, and that is the number to watch.`
- New: `In October 2026 the average rate on marketable US debt was 3.57% and growth was 5.9%. So the rolling can go on for now. But the gap is closing as cheap old debt is replaced at higher rates, and the deficit before interest is still large. Those two numbers are the ones to watch.`

Fix [14] row 2:
- Old: `Partly. Old bonds are repaid by selling new ones, but interest comes mostly from taxes`
- New: `Partly. Old bonds are repaid by selling new ones, like any big company refinancing. And since the US spends more than it taxes even before interest, its interest is in effect paid with new borrowing too`

Fix [21]:
- Old: `Ponzi? Not by its features. By the strict test it passes today, on a margin that is narrowing.`
- New: `Ponzi? Not by its features. By the strict test, the US does roll its interest, and that can go on while growth beats the interest rate. Today it does, on a margin that is narrowing.`

Fix [54] step 3:
- Old: `Not a Ponzi by its features. By the strict test it passes on a narrowing margin. Watch the interest rate on the debt against growth.`
- New: `Not a Ponzi by its features. By the strict test it is a rolling debt that stays sustainable while growth beats the interest rate. That margin is narrowing. Watch the rate against growth, and the deficit before interest.`

Fix [56] answer 3:
- Old: `Not by its features. By the strict test, the rate on US debt beat growth in only 5 of 25 years, but the margin is narrowing.`
- New: `Not by its features. By the strict test the US does pay interest with new borrowing, which stays sustainable while growth beats the rate. The rate beat growth in 5 or 6 of the 25 years from 2001 to 2025, and the margin is narrowing.`

Fix [22]:
- Old: `While growth is higher, the debt can be rolled over without growing against income. If the rate stays above growth for years outside a recession, the friend has a point.`
- New: `While growth is higher and the deficit before interest is modest, the debt can be rolled over without growing against income. If the rate stays above growth for years outside a recession, the friend has a point. One small correction to the friend: each US bond is repaid in full when it falls due. It is the total that keeps rolling.`

### B2. [32] The 1866 to 1897 "metal standard" and "fixed money" are wrong, and the panics are pinned on gold without the rival cause
Problem. From 1862 to the end of 1878 the US ran on greenbacks, an unbacked paper money. Gold convertibility resumed on 1 January 1879. So 13 of the draft's 31 years were a fiat regime deflating on purpose to return to gold. Second, the money stock was not fixed. The US gold stock and the money stock grew in most of these years (gold finds in the 1880s and 1890s, South Africa from 1886). The lesson "a fixed money and fast growth can live together" is not what the period shows. It shows that slowly growing money and falling prices can live with fast growth. Third, the hard-money critic's strongest reply is missing: the US panics of 1873, 1893 and 1907 happened under the National Banking System, with banks barred from branching and note issue tied to government bonds. Canada was on gold too, had branch banks and no central bank, and had no banking panic in those years. The draft lets gold take blame that regulation shares. Fourth, 1930 to 1933 ran under the interwar gold exchange standard with a Federal Reserve that held more gold than its legal cover needed. Friedman and Schwartz blame the Fed's choices. Eichengreen blames the gold rules. Both views belong in a fair trial.

Fix [32]:
- Old: `Take hard money first. From 1866 to 1897 the US was on a metal standard. Prices fell about 2% a year while output grew about 4% a year, so a fixed money and fast growth can live together.`
- New: `Take hard money first. From 1866 to 1897 US prices fell about 2% a year while output grew about 4% a year. For the first 13 of those years the dollar was paper, held back on purpose so it could return to gold in 1879. After that it was tied to gold. The money supply still grew in that era, just more slowly than output. So slowly growing money, falling prices and fast growth can live together.`

- Old: `The country had three great banking panics, in 1873, 1893 and 1907.`
- New: `The country had three great banking panics, in 1873, 1893 and 1907. Hard-money writers reply that the rules caused these, not gold. US banks could not open branches and their notes were tied to government bonds. Canada was also on gold, with no central bank but with branch banks, and had no banking panic in those years.`

- Old: `Then from 1930 to 1933 the money supply fell by nearly a third and prices by about a quarter.`
- New: `Then from 1930 to 1933, under a looser gold system with a central bank, the money supply fell by nearly a third and prices by about a quarter. Economists still argue over how much of that was the gold rules and how much was the Federal Reserve's own choices. Countries that left gold earlier recovered sooner.`

### B3. [12] [33] [41] [56] "A fixed money freezes the first-comer advantage" overstates, and the newborn argument applies to dollars too
Problem. Coins change hands every day. Early holders who sell move their gain into other assets, and buyers enter. What a fixed supply does is let the early holders keep the whole rise in value while they hold, and make latecomers pay that rise to get in. "Freezes" implies nobody new can ever get a share. Second, "a child born a century from now would start with none, and could get coins only by working for people who hold them" is equally true of a child born today into a dollar economy. The real difference is that a credit system can lend new money into existence for that child, and also that a coin standard could have banks lending coins (fractional reserve banking ran on gold for two centuries). The hard-money critic will call this the most unfair line in the chapter. Third, the 27% figure (Makarov and Schoar, 2021) is for identified investors after removing exchanges and miners. Say so, because readers will assume addresses.

Fix [12]:
- Old: `A fixed money does not remove the first-comer advantage. It freezes it.`
- New: `A fixed money does not remove the first-comer advantage. It lets early holders keep the whole rise in value, and latecomers pay it to get in.`

Fix [33]:
- Old: `A 2021 study found that the top 10,000 holders owned about 27% of all coins, and between 2.6 and 3.8 million coins are thought lost for good. A child born a century from now would start with none, and could get coins only by working for people who hold them. A fixed money does not remove the advantage of arriving first. It freezes it.`
- New: `A 2021 study found that the top 10,000 investors, after setting aside exchanges and miners, owned about 27% of all coins. Between 2.6 and 3.8 million coins are thought lost for good. A child born today also starts with no dollars, and earns them from people who have them. The difference is in what happens next. If output keeps growing and the coins are fixed, each coin buys more every year, so the early holders keep the whole gain and the child pays it to get in. A credit system can lend new money to the child, which helps them start and also leaves them in debt. Banks could lend coins too, as they lent gold for two centuries, but each loan would grow heavier as prices fell. A fixed money does not remove the advantage of arriving first. It keeps it with the early holders for as long as they hold.`

Fix [41]:
- Old: `Because the coins are already owned. The child starts with none and must earn them from holders, and if the economy grows the coins gain value while the child is still borrowing.`
- New: `Because the coins are already owned, and if the economy grows each coin gains value. A child earns coins from holders, as children earn dollars today, but any coins they borrow grow heavier while they repay.`

### B4. [13] [26] [29] The rebuild story flatters the owner and softens two premise corrections
Problem. (a) "The instinct behind the question is right. Had gold been the only money that counted, the ruined countries could not have started" is a counterfactual nobody tested, stated as fact. Even under the classical gold standard, domestic money was mostly bank deposits and notes, and capital moved across borders (Britain lent abroad about 4% to 5% of its income a year before 1914, desk memory, verify). The binding limit in 1945 to 1950 was dollars to buy imports, not domestic money, and the US could have lent gold as it lent dollars. The fair answer is "much harder and slower, and dependent on American lending either way". (b) [29] "The world was officially on gold at the time" half confirms the owner's premise that "by the Second World War gold is money". It was not money for citizens anywhere. Only foreign central banks could swap dollars for gold, at $35 an ounce. (c) The owner's 75% is never corrected in plain words: the peak was about 70% in 1948, excluding the Soviet Union. (d) The hard-money side's best rebuild point, that 1950 to 1971 growth came under a gold anchor that disciplined policy, is only in [55]. The tldr line "Gold did not" ignores the anchor. (e) [26] "almost none of it" is too strong. The other countries held about 30% between them, Britain, France, Switzerland and Belgium among them.

Fix [13]:
- Old: `Credit, aid and debt cuts rebuilt them. Gold did not.`
- New: `Work, credit, aid and debt cuts rebuilt them, inside a system anchored to gold at the top. Gold itself did not pay for it.`

Fix [26]:
- Old: `America held 59.5% of the world's official gold, and by 1948 about 70%. If gold alone were money, the countries that most needed to rebuild had almost none of it.`
- New: `America held 59.5% of the world's official gold outside the Soviet Union, and by 1948 about 70%. So the figure of 75% that is often quoted is a little high, but the picture is right. The rest of the world shared the remaining 30% or so, and the countries that most needed to rebuild held the least of it.`

Fix [29]:
- Old: `Here is the twist. The world was officially on gold at the time. The dollar was fixed to gold and other currencies were fixed to the dollar. So this is not a story of gold against printing. It is a story of credit built on top of a gold anchor. Governments and banks created the money that put people to work, and creditors agreed to forgive. The instinct behind the question is right. Had gold been the only money that counted, the ruined countries could not have started.`
- New: `Here is the twist. Gold was not money for ordinary people anywhere in 1945. Most countries had left gold between 1931 and 1936. What remained was a link at the top: foreign central banks could swap dollars for gold at $35 an ounce, and other currencies were fixed to the dollar. So this is not a story of gold against printing. It is a story of credit built on top of a gold anchor. Governments and banks created the money that put people to work, and creditors agreed to forgive. Hard-money writers can claim part of it too: the anchor kept a lid on inflation through the fastest growth Europe has seen. Could a world where gold was the only money have rebuilt? Nobody can test that. It would have needed America to lend its gold the way it lent its dollars, and it would almost certainly have been slower.`

### B5. [51] [54] "Hard money has no rescue in a panic" is false as stated
Problem. Under the classical gold standard the Bank of England acted as lender of last resort, in 1866 (Overend Gurney) and 1890 (Barings), and Bagehot wrote the rulebook in 1873 while Britain was on gold. Gold limits rescue. It does not forbid it. This is the hard-money critic's second strongest complaint.

Fix [51] government row:
- Old: `Hands are tied, which blocks abuse, and also blocks rescue in a panic`
- New: `Hands are tied, which blocks abuse, and also limits rescue in a panic. Britain's central bank still rescued banks while on gold, in 1866 and 1890, but only as far as its gold allowed`

Fix [54] step 4:
- Old: `Hard money is not innocent either. Its toll falls on borrowers and the young, and it has no rescue in a panic.`
- New: `Hard money is not innocent either. Its toll falls on borrowers and the young, and it leaves little room for rescue in a panic.`

Fix [0]:
- Old: `It falls on borrowers and the young, and it bites hardest in a panic.`
- New: `It falls on borrowers and the young, and it bites hardest in a panic, when the supply of money does not stretch.`

### B6. Spec gaps: no verdict grid, no regime table, hyperinflation in a footnote, alternatives not scored
Problem. FRAME 3.2 items 1, 3 and 5 and pre-mortem P1 and P2. (a) The verdict never splits by kind of printing, so it is true for one kind and loose for another (P2). Bank lending is not "a transfer nobody voted on" in the way central bank buying is. (b) There is no regime table. Regimes appear as scattered dates. (c) Hyperinflations, the scam side's strongest card, sit in one sentence of the last go-deeper box [62.2]. That is the exact P1 sign. (d) The alternatives (currency board, fixed peg, rule-based fiat) are not scored. Malaysia's own history holds two of them: the Malayan currency board until 1967 and the ringgit peg at 3.80 with capital controls from 1998 to 2005. That is the most interesting Malaysia fact for this audience and it is missing.

Fix, add a hyperinflation paragraph after [8]:
- Old: `But the mechanism he named is the same one, only slower.`
- New: `But the mechanism he named is the same one, only slower. And the fast version is not rare. One widely used count lists 57 hyperinflations, where prices rise 50% or more in a single month: Germany in 1923, Hungary in 1946, Zimbabwe in 2008, Venezuela from 2016. The famous cases began with a government paying its bills with new money after war, lost output or debts in foreign currency had wrecked its taxes. That is the charge at full strength: printing to pay the state has ended in ruin many times.`

Fix, add the verdict grid after [21] (anchor on the last sentence of [21]):
- Old: `The honest word is a toll: a charge for using the system, paid by some people far more than others.`
- New: `The honest word is a toll: a charge for using the system, paid by some people far more than others.

| Kind of printing | Scam? | Theft? | Ponzi? |
|---|---|---|---|
| Banks lend | No. Both sides sign a contract | No. The borrower agrees and repays | No. Loans are paid from income, and many are repaid each year |
| Central bank buys bonds | Not since targets and purchases were published (US 2012, earlier in a few countries) | Not in law. In effect a transfer to asset owners, with a size | No by its features. It can be reversed, as in 2022 to 2025 |
| Government spends new money | Not when announced. Close to it when hidden, as in coin clipping or 1923 | Not in law. In effect a tax nobody voted on as a number | Yes in the strict sense, as rolling debt. Sustainable while growth beats the rate. Ruin when it pays the state's bills after taxes collapse |`

Fix, add a regime table at the start of Part 3 (anchor on [24] last sentence):
- Old: `So put hard money in the dock, starting with a question from the owner of this project.`
- New: `But hard money is not one regime, and neither is printing. Keep the six eras apart.

| Era | Prices | Banking panics | Who gained, who lost |
|---|---|---|---|
| Classical gold, to 1914 | Flat over decades, falling 1873 to 1896 | Frequent in the US, fewer in Britain, none in Canada | Lenders and savers gained, indebted farmers lost |
| Gold exchange and collapse, 1919 to 1939 | Hyperinflation in Germany, Austria and Hungary, then deflation | Worldwide in 1931 to 1933 | Savers wiped out in the 1920s, borrowers and workers in the 1930s |
| Bretton Woods, 1944 to 1971 | Mild inflation, about 2% to 3% a year in the US | Few | Workers and borrowers gained, bondholders slowly lost |
| Free floating, 1971 to 2007 | High in the 1970s, then falling | 1980s US savings banks, 1997 Asia | Bondholders lost in the 1970s, gained from 1981 |
| Near-zero rates, 2008 to 2019 | Low, under 2% | 2008 | Asset owners gained, savers lost |
| Pandemic and after, 2020 to 2026 | 4.5% a year in the US | 2023 US regional banks | Households first, then cash holders and renters paid |

The verifier should fill these cells from data before publication. Now put hard money in the dock, starting with a question from the owner of this project.`

Fix, score the alternatives and add Malaysia's own hard-money past to [52]:
- Old: `And Malaysia cannot print dollars. It lives with the inflation and the interest rates that America sets.`
- New: `Malaysia has also tried harder money. Until 1967 Malaya's currency board could issue a ringgit only against sterling held in reserve, so it had no power to print at will, and no power to rescue a bank either. From 1998 to 2005 the ringgit was fixed at 3.80 to the dollar, with controls on money leaving the country. Each kept prices steady and tied Malaysia's hands. And Malaysia cannot print dollars. Bank Negara sets its own interest rate, but if it strays far from America's for long, the ringgit moves, so part of America's inflation and interest rates arrives in Malaysia anyway.`

### B7. [9] The government does collect the toll on cash. Seigniorage is missing from the whole chapter
Problem (accountant and MMT voices agree). A dollar note is a liability of the Federal Reserve that pays no interest. The Fed holds interest-paying bonds against it and hands its profit to the Treasury. Inflation shrinks the real value of that liability. So on cash, the issuer is exactly who gains. The name is seigniorage. FRAME 3.2 item 4 lists it in the government lens. The draft says "the government does not collect it directly", which a reader will take as "the state gains nothing".

Fix [9]:
- Old: `The government does not collect it directly. Borrowers gain, because their debts shrink in real terms, and the government is the biggest borrower. Banks that pay savers less than they earn keep part of it too.`
- New: `On cash, yes, in effect. A note is a debt of the central bank that pays no interest. The central bank holds bonds that do pay interest, and hands its profit to the government. Economists call that profit seigniorage. Inflation also shrinks debts in real terms, and the government is the biggest borrower. On deposits, banks that pay savers less than they earn keep part of the gap.`

Fix [51] government row, credit column:
- Old: `Can fight a crisis, and its debt melts a little each year. The danger is the temptation to overspend`
- New: `Can fight a crisis, earns seigniorage on the cash people hold, and its debt melts a little each year. The danger is the temptation to overspend`

### B8. [0] [7] [21] [54] "Nobody voted" and "nothing is hidden" need a law and a period
Problem (historian and hard-money voices). Congress did vote: the 1977 amendment to the Federal Reserve Act sets "stable prices" as a goal. What no parliament voted on is the number: the Fed chose 2% itself, and announced it only in January 2012. Before 1994 the Fed did not even announce its rate decisions on the day. Bank Negara has a price stability goal in the Central Bank of Malaysia Act 2009 but no published number. So "nothing is hidden" is true of the US since 2012, not of the system's history, and the 2021 overshoot was not announced in advance.

Fix [0]:
- Old: `From 2021 to 2025 people holding US cash lost about $488 billion of buying power, and nobody voted on it.`
- New: `From 2021 to 2025 people holding US cash lost about $488 billion of buying power. Congress gave the central bank its goals, but no parliament voted on that number.`

- Old: `It is not a scam in the plain sense, because nothing is hidden: the target, the balance sheets and the price index are published.`
- New: `It is not a scam in the plain sense today, because the target, the balance sheets and the price index are published. That was not so before 2012, when the US Federal Reserve first announced its 2% target.`

Fix [7] row 2:
- Old: `Inflation takes buying power from anyone holding cash, with no law passed`
- New: `Inflation takes buying power from anyone holding cash. The law sets a goal of stable prices, but nobody voted on the 2% or on the overshoot of 2021 to 2023`

Fix [21]:
- Old: `A con depends on a lie, and the target, the purchases and the price index are all published.`
- New: `A con depends on a lie, and today the target, the purchases and the price index are published. Before 1994 the US central bank did not even announce its decisions on the day, and in 2021 it called the rise in prices temporary for most of a year. That was a forecast that missed, not a lie, but it shows how little warning cash holders get.`

Fix [54] step 1:
- Old: `Not a scam in the plain sense. Nothing is hidden, though few people are ever shown who pays.`
- New: `Not a scam in the plain sense. Since 2012 the US target has been published, though few people are ever shown who pays.`

### B9. [60.0] Free banking: "close to half failed" is wrong by the cited study
Problem. Fetched Rolnick and Weber (AER 1983, Table 2). Of 709 free banks in New York, Wisconsin, Indiana and Minnesota, 339 (48%) CLOSED. Only 104 of the 678 with data (15%) closed and paid noteholders below par. The authors say treating the closing rate as a failure rate "clearly exaggerates" the problem. The draft repeats exactly that exaggeration, which is unfair to the decentralised side. Also, Scotland's three chartered banks had limited liability. Most other Scottish banks had unlimited liability.

Fix [60.0]:
- Old: `A study of 709 such banks in four states found that close to half failed, though most noteholders were paid in full. Losses came mainly from falls in the state bonds that backed the notes, not from fraud. Scotland ran a similar system for over a century with few failures, in part because bank owners were liable for every loss.`
- New: `A study of 709 such banks in four states found that 48% closed, but only about 15% closed without paying their notes in full. The authors found that losses came from falls in the state bonds that backed the notes, rather than from fraud. Scotland ran a similar system from 1716 to 1844 with few failures, in part because the owners of the Scottish banks, apart from three chartered ones, were liable for losses without limit.`

### B10. [17] The T-bill saver "came out ahead" before tax. After tax they lost
Problem (hard-money critic's strongest number). Tax is charged on the full interest, including the part that only makes up for inflation. Bills averaged roughly 4.5% a year from 1971 to 2025. At a 25% tax rate the saver pays about 1.1 points a year, which turns +0.54% into roughly -0.5% a year. This is also part of the "who decides" story: the tax code, not the central bank, takes it.

Fix [17]:
- Old: `That saver came out ahead by about half a percent a year.`
- New: `That saver came out ahead by about half a percent a year, before tax. But tax is charged on the whole interest, including the part that only makes up for inflation. At a 25% tax rate, the saver fell behind by roughly half a percent a year. The verifier should confirm this with a tax-rate assumption stated.`

### B11. [19] [20] The 2021 to 2023 inflation is billed to the cheques alone
Problem (MMT critic's strongest complaint, and the bond trader agrees). The cheques were about $850 billion. The Fed bought about $4.6 trillion of bonds in 2020 to 2021, other fiscal programmes added trillions, and energy prices, shipping jams and the 2022 war in Ukraine pushed prices worldwide, including in countries that sent no cheques. Bernanke and Blanchard (2023) found most of the first surge came from energy, food and shortages. Studies of the US stimulus put its share at roughly 2 to 3 points of inflation. "Then the bill arrived as inflation" implies the cheques caused it all.

Fix [19] row 3:
- Old: `Everyone, through the inflation of 2021 to 2023`
- New: `Every holder of dollars, through part of the inflation of 2021 to 2023. Energy, food and shortages caused much of the rest`

Fix [20]:
- Old: `Then the bill arrived as inflation.`
- New: `Then part of the bill arrived as inflation, on top of a worldwide jump in energy and food prices that hit countries which sent no cheques at all.`

---

## 2. Nine voices: the single most important miss for each

| Voice | Block | The one thing | Where fixed |
|---|---|---|---|
| New York Fed open market desk | [19] | Bond buying does not hand the seller a windfall. The desk pays the market price, so the seller swaps a bond for a deposit of equal value. The gain to asset owners comes later, through higher prices for every holder of bonds, shares and houses. Also, the chapter shows money being created but never destroyed. Since 2022 the Fed has shrunk its holdings, which removes reserves | V1 below |
| Treasury debt manager | [14] [15] | Interest is in effect borrowed, because the US runs a deficit before interest. And the average rate lags. The rate on new debt is what moves the future average | B1 |
| Bond trader | [14] row 5 | Bonds DO promise a fixed return, set at auction by the buyers. What makes it unlike Ponzi is that buyers can refuse and demand more. The bond market is the check a Ponzi lacks, as Britain found in September 2022 when gilt yields jumped and a budget was withdrawn | V2 below |
| Bank treasurer | [9] [56] | The toll on deposits is far bigger than the toll on cash. US deposits are roughly seven to eight times the stock of notes, and in 2022 many banks paid well under 1% while inflation ran 6% to 9%. That gap is collected partly by banks, not the state. The chapter sizes only cash | V3 below |
| Accountant | [9] [51] | Seigniorage. A note is a liability of the issuer, and inflation shrinks it. The issuer gains | B7 |
| Economic historian | [32] [29] [21] | Regimes are blurred: a fiat greenback era sold as a metal standard, Bretton Woods sold as "officially on gold", and today's transparency projected back onto a system that was secret until 1994 | B2, B4, B8, B6 regime table |
| Post-Keynesian or MMT critic | [15] [20] | Unfair in two places. First, it judges a currency issuer by a borrower's test. A government that borrows in its own currency cannot be forced to default by its lenders. Its real limit is inflation, meaning workers and goods, not solvency. Second, it blames the 2021 to 2023 inflation on the cheques. MMT writers also object to [14] row 1 calling bonds "claims on taxes": in their view taxes give the money its use, and bonds are interest-paying money | B1, B11, V4 below |
| Hard-money critic | [32] [60.0] [17] [33] [51] | Unfair in five places, each a fact, not a matter of taste: the 1866 to 1897 regime label, free banks "close to half failed" (really 15%), the after-tax saver, the newborn argument that applies to dollars too, and "no rescue in a panic". Add a sixth: wage earners under gently falling prices get their share of productivity through lower prices, without needing a raise. The draft never states this best case for hard money in the main path | B2, B9, B10, B3, B5, V5 below |
| Ordinary reader | [0] [21] | "Toll" sounds like a fee for a road you chose. This road has no alternative in law, because taxes must be paid in it. A literal reader will also take "the system passes" as "the system is safe" | B1, section 3 below |

### V1. Fed desk: [19] row 2
- Old: `The seller of the bond, then owners of shares and houses as prices rise`
- New: `The seller of the bond, who swaps it for new money of equal value. The gain goes to every owner of bonds, shares and houses as prices rise. Since 2022 the reverse has run, as the central bank lets its bonds mature and the money disappears`

### V2. Bond trader: [14] row 5
- Old: `No. Bond buyers lost heavily when rates rose after 2020`
- New: `Partly. Bonds promise a fixed return, but a modest one that buyers set at auction, and they can refuse. When Britain's 2022 budget spooked buyers, interest rates jumped within days and the plan was withdrawn. And holders who sold early lost heavily when rates rose after 2020`

### V3. Bank treasurer: [56] answer 1
- Old: `Deposits that pay below inflation add more, and banks keep part of that gap.`
- New: `Deposits that pay below inflation add more, and US deposits are several times larger than the stock of notes. In 2022 many banks paid under 1% while prices rose 6% to 9%, so banks kept part of that gap. The verifier should size the deposit toll in dollars.`

### V4. MMT critic: [14] row 1
- Old: `No. Bonds are claims on taxes, and taxes are a claim on everything a country produces`
- New: `No. Bonds are backed by a government that taxes and issues its own money. Mainstream economists call them claims on future taxes. MMT economists say a government that borrows in its own money cannot be forced to default, and that its real limit is inflation`

### V5. Hard-money critic: [51] worker row, hard-money column
- Old: `Loses in slumps. Gains if pay holds while prices fall`
- New: `Loses in slumps. In normal years gains from productivity through lower prices, without needing to win a raise, as in 1873 to 1896`

---

## 3. Flattery check (both directions)

### Leans toward the owner's view beyond the evidence
1. [29] "The instinct behind the question is right... could not have started." Untested counterfactual stated as fact. Fixed in B4.
2. [13] "Gold did not." Drops the anchor half of the hybrid. Fixed in B4.
3. [14] row 2 "interest comes mostly from taxes." Makes the debt look tax-paid. Fixed in B1.
4. [15] "The system passes." Reads as a clean bill of health on a concept the literature frames the other way. Fixed in B1.
5. [55] "Elastic money let the world grow." The poverty fall from 43% to 10% came mostly from China and India, where growth followed market reforms, trade and investment under managed currencies and capital controls. The chapter's own counterpoint (3% a year in the 1960s under the gold link) cuts against the credit story, and post-war catch-up confounds both. Neither regime is shown to cause growth.
   - Old: `Elastic money let the world grow. It did not decide how the growth was shared.`
   - New: `Most of the fall in poverty came from China and India opening their economies, and the fast growth of the 1960s was partly countries catching up after the war. So the record does not show that elastic money made the world grow. It shows that elastic money did not stop it, and did not decide how the growth was shared.`
6. [40] "A system that can create credit has quiet ways to reset the board. A system that cannot tends to wait for the loud ones." No count backs "tends to". Income tax (US 1913) and Britain's land and death duties came in under gold.
   - Old: `A system that can create credit has quiet ways to reset the board. A system that cannot tends to wait for the loud ones.`
   - New: `A system that can create credit has one extra quiet way to reset the board, through inflation with capped interest rates. Taxes, land reform and agreed debt relief work under any money. America brought in its income tax in 1913 while on gold.`
7. [51] The company row has only credit-money gains and only hard-money losses. See section 7.

### Leans against the owner's view beyond the evidence
1. [36] "Low interest rates explain much of this." No number, and Malaysia's policy rate sat around 3% for most of the 2010s, not near zero. Malaysia's ratio was 4.75 in 2016 and 4.1 in 2019 (DOSM-based figure, fetched), so it was improving while rates fell. The sentence leans against credit money without data.
   - Old: `Low interest rates explain much of this. So do limits on building, since the same low rates raised prices far more in places that could not build.`
   - New: `Cheap credit is one suspect, but Malaysia's policy rate sat near 3% for most of the 2010s, and the ratio actually fell from 4.75 in 2016 to 4.1 in 2019. Land, building costs, where the jobs are and what kind of houses get built all play a part. Across rich countries, the same fall in interest rates raised prices far more in places that could not build.`
2. [35] [34] The table is offered as proof that "cheap loans push up the price of houses". It shows a fall in ownership, not its cause. US boomers bought at age 30 in the late 1970s and 1980s, when mortgage rates ran 9% to 18%. Later marriage, student debt and city jobs also lowered ownership at 30. And the US row uses the widest gap among the sources: JCHS gives about 58%, 51% and 41% (matches the draft, but for early boomers), while Redfin gives 52%, 49% and 43% and Apartment List 2021 gives 51%, 48% and 42%. Label the source, show the range, and soften the causal sentence.
   - Old: `But credit money shuts new players out too, by a different door. Cheap loans push up the price of houses.`
   - New: `But credit money can shut new players out too, by a different door. Cheap loans can push up the price of houses faster than pay. Fewer young people own a home at 30 than their parents did, though the gap depends on the source, and later marriage, student debt and city jobs play a part too.`
   - Old: `| United States | about 58% | about 51% | about 41% |`
   - New: `| United States (Harvard housing centre. Other sources give a smaller gap, about 52%, 49% and 43%) | about 58% | about 51% | about 41% |`
3. [20] [19] The cheques are blamed for all of the inflation. Fixed in B11.

### Is "toll" a fair word?
Mostly fair, and better than "tax" (which implies a vote) or "theft" (which implies no legal right). But two of its connotations flatter the system: a toll is small and you choose the road. At 2% it is small. At 7% to 9% in 2021 and 2022 it was not. And you cannot choose another road for taxes and wages. Keep "toll" but attach both caveats the first time it appears.
- Old: `It is not a Ponzi by the features of one. The honest name is a toll, and a toll has payers: cash holders, renters and late savers.`
- New: `It is not a Ponzi by the features of one. The honest name is a toll on a road the law makes you use for taxes and wages. It is small at 2% a year and large in years like 2022. A toll has payers: cash holders, renters and late savers.`

### Is the verdict earned?
Partly. The scam and theft verdicts are earned, once the period labels in B8 are added. The Ponzi verdict is not, because it rests on the inverted test (B1). The hard-money verdict leans on three facts that are wrong or overstated (B2, B5, B9). With those fixed and the verdict grid in B6 added, the five-step verdict stands. Its last line, "who pays the toll, how big it is, who decides, and whether you can see it", is the chapter's best sentence and should stay.

---

## 4. Answer spec (FRAME 3.2), item by item

| # | Spec item | Status | Note |
|---|---|---|---|
| 3.1 | Definitions fixed before judgment | Partly | Printing is defined in three kinds at [6] before Part 1's table. Scam, theft and Ponzi are defined at [11] and [13], after the charge and before the verdict, which is the right order. But "theft" never says whether it means law, ethics or feeling until [21], and the strict Ponzi definition is inverted (B1) |
| 1 | Verdict grid, kind by word by regime | Missing | Verdict [54] mixes the three kinds. Grid supplied in B6 |
| 2 | Channel table, create and destroy, normal and stress year, sized | Partly | [19] has three create rows and first receivers. No destroy channel (loan repayment, taxes, QT), no sizes for a normal year against a stress year. Add a fourth row for destruction (V1 covers QT) and one size per row from the Level 2 chapter |
| 3 | Regime split, six eras | Missing | Regimes appear in passing. Table supplied in B6, cells for the verifier to fill |
| 4 | Three lenses with gains and losses, Malaysia angle | Partly | [51] has household rows in depth, one company row, one government row. No Malaysia column. EPF missing entirely (see section 5, Malaysia). Company rows supplied in section 7 |
| 5 | Alternatives scored on the same criteria | Missing | Only gold and Bitcoin appear. Currency board and fixed peg added in B6 through Malaysia's own history. A one-line score table across price stability, growth, crises, fairness across ages, hack and seizure risk and accountability is still needed |
| 6 | Owner's three questions with premise right and wrong | Partly | See section 6 |
| 7 | Sword judged, better analogy offered | Partly | Judged well at [45] to [46]. No better analogy offered, and the loan branch of the owner's story (bought with a loan, so new money was created) is missing. Fix in section 6 |
| 8 | Where the scam feeling is right, in plain words with numbers | Met | [7], [8], [17], [20] do this well. Strengthened by B10 and V3 |
| 9 | What is still unknown and what would change the verdict | Partly | [15] and [58] name the rate against growth. Add one explicit "what would change our mind" line to the verdict |

Fix for item 9, [54] last step:
- Old: `So the real argument is not printing against no printing. It is who pays the toll, how big it is, who decides, and whether you can see it.`
- New: `So the real argument is not printing against no printing. It is who pays the toll, how big it is, who decides, and whether you can see it. What would change this verdict: inflation above 4% for several years with no attempt to bring it down, or the interest rate on US debt staying above growth outside a recession.`

Regime split: not present as a split. The draft treats "hard money" as one thing across classical gold, the interwar gold exchange standard and Bretton Woods, which is the FRAME 2.3 trap. B2, B4 and the B6 regime table fix it.

Pre-mortem check. P1 (flatter the owner): partly triggered, by the rebuild counterfactual, the inverted Ponzi test and the hyperinflation footnote. P2 (one definition): triggered for the verdict, which blends kinds. P3 (true headline hiding a loser): triggered for Malaysia ("cannot... lives with the rates America sets" hides that Bank Negara does set its own rate, and that EPF savers were paid above inflation) and for deposit holders (only cash is sized).

---

## 5. Word audit (only, always, never, all, none, most, mostly, main, cannot, impossible, myth, wrong, every)

No "myth", "wrong" or "impossible" in the draft. Good. Uses inside the crowd's charge ([5], [20] "always", [22] "never repays") are quoted voices and can stay, with the [22] correction in B1. "Every number has a date" [63] and "main path" [3] are not size claims. The rest:

| Block | Word | Verdict | Fix |
|---|---|---|---|
| [0] | nobody voted, nothing is hidden | Needs law and period | B8 |
| [7] row 1 | almost every year | Needs a number | W1 |
| [7] row 3 | mostly the rich | The number beside it says top 5% held 40%, which is not "mostly" | W2 |
| [12] [33] | freezes, only by working | Overstated | B3 |
| [14] row 2 | mostly from taxes | Wrong in substance | B1 |
| [24] | cannot be created at will | Gold is mined, about 1% to 2% a year | W3 |
| [26] | almost none | About 30% held outside the US | B4 |
| [28] | never more than about 2.5% | True on average, not for each country | W4 |
| [29] | only money | Untested counterfactual | B4 |
| [38] | every system, every society | Rewrite | W5 |
| [40] | every peaceful tool | Give the count | W6 |
| [45] | whole job | Money has three jobs (Level 1) | W7 |
| [46] | against everything | Rewrite | W8 |
| [51] | no safety net, blocks rescue | Absolute, false for Britain 1866 and 1890 | B5 |
| [52] | cannot print dollars | True. Keep, but the next sentence overstates | B6 |
| [52] | mostly paid, every decade | Fine with the decade label, add EPF and "after inflation" | W9 |
| [54] | Nothing is hidden, no rescue | Period label, absolute | B8, B5 |
| [56] Q4 | crushed | Strong verb, and the panic cause is shared | W10 |
| [56] Q6 | cannot resell | Add "quickly at a fair price" | W11 |
| [60.0] | every loss, mainly, most noteholders | Fact error | B9 |
| [60.1] | Nobody insures, most countries | Needs a number and a rewrite | W12 |
| [61.2] | mostly shielded | Rewrite | W13 |

- W1 [7]. Old: `Prices rise almost every year, so idle money buys less` New: `US prices rose in all but about 14 of the years since 1913, so idle money buys less. The verifier should confirm the count`
- W2 [7]. Old: `When central banks bought bonds, asset prices rose, and assets are owned mostly by the rich` New: `When central banks bought bonds, asset prices rose, and those assets are owned very unevenly`
- W3 [24]. Old: `Usually the answer is hard money: money that cannot be created at will, such as gold, or a coin with a fixed supply.` New: `Usually the answer is hard money: money that no government or bank can create at will, such as gold, whose stock grows as fast as it is mined, or a coin with a fixed supply.`
- W4 [28]. Old: `It was never more than about 2.5% of the income of the countries that received it` New: `On average it came to about 2.5% of the yearly income of the countries that received it, though some small countries received far more`
- W5 [38]. Old: `Because every system lets wealth pile up, every society has needed a way to deal the cards again. History offers six tools.` New: `Under gold and under credit money alike, wealth has piled up at the top over time, and many societies have found ways to deal the cards again. History offers six tools.`
- W6 [40]. Old: `Notice that every peaceful tool on the list uses the state's power over money, debt or tax.` New: `Notice that all five peaceful tools on the list use the state's power over land, money, debt or tax.`
- W7 [45]. Old: `Being easy to pass on is the whole job of money.` New: `Being easy to pass on is the first job of money.`
- W8 [46]. Old: `Inflation is money itself losing value against everything.` New: `Inflation is money itself losing value against goods and services in general.`
- W9 [52]. Old: `Income per person in Malaysia grew about six times from 1971 to 2025, built on credit, trade and investment. Over the same years the ringgit lost about 82% of its buying power. Savers were mostly paid for that: bank deposits beat inflation in every decade from the 1980s to the 2010s, though not in the 1970s.` New: `Income per person in Malaysia grew about six times after inflation from 1971 to 2025, built on credit, trade and investment. Over the same years the ringgit lost about 82% of its buying power. Savers with deposits were paid for that: deposits beat inflation in each decade from the 1980s to the 2010s, though not in the 1970s. Savers in the EPF, the retirement fund that private-sector workers must pay into, earned dividends above inflation in [n] of the years since 1980.` (The verifier should fill in [n].)
- W10 [56]. Old: `No. The gold era had deflation that crushed borrowers and repeated banking panics, and wealth still piled up at the top.` New: `No. The US gold era had deflation that squeezed borrowers and repeated banking panics, partly caused by its banking rules, and wealth still piled up at the top.`
- W11 [56]. Old: `a thing you cannot resell is not money.` New: `a thing you cannot resell quickly at a fair price is not money.`
- W12 [60.1]. Old: `Nobody insures a stolen key. A bank deposit can be frozen or inflated away, but in most countries it is insured up to a limit.` New: `A stolen key is rarely insured, unless the exchange chooses to cover it. A bank deposit can be frozen or inflated away, but in more than 100 countries it is insured up to a limit.`
- W13 [61.2]. Old: `and banks mostly shielded ordinary savers from them.` New: `and banks charged them on some large deposits but rarely on ordinary savers.`

---

## 6. Logic and fact (non-blocking unless marked)

The five tests the brief named:
1. "Freezes the first-comer advantage" when coins change hands: no. Blocking, B3.
2. Does r against g answer "Ponzi"? Not as written. It answers "can the rolling continue", and only with the primary deficit beside it. Blocking, B1.
3. Is 1866 to 1897 doing too much work? Yes. It carries the "fixed money and fast growth" claim on a period that was partly fiat and had growing money, and its per person growth was lower (population grew about 2% a year, so output per person grew about 2%, not 4%). Blocking, B2. Add "per person, about 2% a year" if the verifier confirms.
4. Is the post-war story fair to gold? Not quite. Blocking, B4.
5. Does the home ownership table prove the text? No, it shows an outcome, not the cause. Section 3.
6. Is the poverty fall credited fairly? No. Section 3, item 5.
7. Is Malaysia handled honestly? Mostly honest on numbers, but it overstates dependence on the US, omits the EPF and omits Malaysia's own currency board and peg. B6, W9.

Other points:

| # | Block | Problem | Fix |
|---|---|---|---|
| F1 | [7] row 1, [0] | "2.9 cents" in the table, "3 cents" in the tldr. 1913 CPI average 9.9 against about 330 in late 2026 gives about 3.0 cents. Pick one and show the months | Old: `A dollar keeps 2.9 cents of its 1913 buying power` New: `A dollar keeps about 3 cents of its 1913 buying power` (verifier to confirm the months used) |
| F2 | [7] row 6 | Date of the low is January 2022 (1.42% on marketable debt, fiscaldata). And the evidence column does not show the charge: a rising rate is not "only works by borrowing". Interest as a share of federal revenue is the number that fits | Old: `The average interest rate on US government debt rose from 1.43% in 2021 to 3.57% in October 2026` New: `The average interest rate on marketable US government debt rose from 1.42% in January 2022 to 3.57% in October 2026. The verifier should add interest as a share of federal revenue` |
| F3 | [47] row 2 | "Normal interest rates sit around 4%" is high. The Fed's own long-run estimate of its policy rate has been about 3% | Old: `If inflation is 2%, normal interest rates sit around 4%, which leaves room to cut in a slump` New: `If inflation is 2%, normal interest rates sit around 3%, by the central bank's own estimate, which leaves room to cut in a slump` |
| F4 | [47] row 3 | Boskin's 1.1 points is from 1996. Index fixes since then cut the bias. Later estimates put it near 0.5 to 1 point (FRAME 3.2 Q3c range) | Old: `A 1996 US review put the overstatement at about 1 point a year, so measured 2% may be closer to 1%` New: `A 1996 US review put the overstatement at about 1 point a year. Fixes since then have cut it to roughly half a point to one point, so measured 2% may be closer to 1% to 1.5%` |
| F5 | [39] row 4 | Reinhart and Sbrancia measure the "liquidation effect" of low real rates. Debt did not shrink by that amount each year, since new deficits offset part | Old: `America and Britain, 1945 to 1980: government debt shrank by about 3% to 4% of national income a year` New: `America and Britain, 1945 to 1980: low real interest rates wore down government debt by about 3% to 4% of national income a year` |
| F6 | [27] | Japan "by 1951" holds for total output, not output per person, which passed pre-war levels around 1955. Say which | Old: `Yet Western Europe passed its pre-war output in 1949, and Japan by 1951.` New: `Yet Western Europe passed its pre-war output in 1949, and Japan by 1951, though output per person in Japan took until about 1955.` (verifier to confirm 1955) |
| F7 | [55] | Output per hour and middle family income use different price indexes and different units (a worker hour against a family). Part of the 175% against 62% gap is measurement. Say so in one clause | Old: `while the middle family's income rose 62%.` New: `while the middle family's income rose 62%. Part of that gap comes from measuring the two with different price indexes, but not all of it.` |
| F8 | [59.0] | Rothbard's "What Has Government Done to Our Money?" first appeared in 1963 | Old: `(Rothbard, 1964)` New: `(Rothbard, 1963)` (verifier to confirm edition) |
| F9 | [62.1] | 1971 to 1980: 1.92 over 2.17 gives about -1.2% a year over ten years, not -1.18%. Small, but recompute from the tool output | Recompute, no text change proposed |
| F10 | [48] | "The owner of this project calls it a leaking bucket." That phrase is not in OWNER_R11.md. If it comes from an earlier round, keep it with the date. If not, cut it. ("Leaky bucket" is also Okun's 1975 phrase for the cost of redistribution, which will confuse an economist reader) | Old: `The owner of this project calls it a leaking bucket. ` New: `` (delete, unless the source is found) |
| F11 | [1] | Bridge lists six chapters but [56] Q5 "builds on rb-03", which the bridge omits | Add a bridge line: Old: `- rb-07: Interest can be paid if money keeps moving.` New: `- rb-03: After the war America held most of the official gold, and Bretton Woods tied the dollar to gold at $35 an ounce.\n- rb-07: Interest can be paid if money keeps moving.` (Editor to check against the rb-03 page) |
| F12 | [7] row 2, [56] | "About half of all dollar notes are held outside America." The Fed's own estimates have ranged around 45% to 60% of the value, mostly in $100 notes. Say "about half by value" | Old: `About half of all dollar notes are held outside America` New: `About half of the value of dollar notes is thought to be held outside America` |
| F13 | [61.0] | Japan "about 47%" is lower than the Bank of Japan's usual figure of about 50% to 51%. Check the date | Verifier |
| F14 | [36] | KRI's "above 3 every year since 2002" is confirmed by search. 4.1 in 2019 is confirmed (4.11, DOSM-based). Note the ratio was 4.75 in 2016 | Section 3 fix covers it |
| F15 | [15] | "All five were slow or crisis years." With 2007 a near tie, write "5 or 6, all slow or crisis years, with 2007 a near tie" | B1 covers it |

---

## 7. The owner's three questions: answered straight?

### Question 1, the rebuild
- 75%: never corrected in words. The draft gives 59.5% and about 70% and lets the reader do the subtraction. Softened. Fixed in B4 ([26]).
- 50 years: corrected plainly at [27] ("about five years, not fifty"). Met. Japan per person needs a label (F6).
- "By the Second World War gold is money": half confirmed at [29] ("officially on gold"). This is the premise most in need of correction and it is the one the draft leans into. Fixed in B4.
- "Most wars start from resources": not addressed. That is acceptable, but one line saying it is one school of thought stops a reader thinking the chapter agreed.
  - Old: `In 1945 much of Europe and Japan lay in ruins.`
  - New: `In 1945 much of Europe and Japan lay in ruins. (The question also says wars start over scarce resources. That is one school of thought among historians, and this chapter does not depend on it.)`

### Question 2, the old board
- "Is it fair that inflation strips the wealthy of some advantage?" BURIED, close to blocking. The draft never answers the premise. Inflation mostly does not strip the wealthy. The richest households hold shares, firms and property, often bought with loans, and those tend to keep up with prices. Doepke and Schneider (2006) found surprise inflation moves wealth from older bondholders to younger middle-class borrowers. So the owner is right for the young borrower and wrong for the young renter who saves in cash. The Monopoly picture also needs one correction: in the game every player collects the same $200 at Go, and real new money does not arrive that way.
  - Old: `Which money gives them a fairer start?`
  - New: `Which money gives them a fairer start? Two corrections before we answer. In Monopoly every player collects the same $200 for passing Go. Real new money does not arrive that way. It enters as loans to people with income or property, and as purchases of bonds from people who already hold them. The nearest thing to passing Go was the cheques of 2020 and 2021. And does inflation strip the rich of their head start? Less than it seems. The richest households hold shares, firms and property, often bought with loans, and those tend to keep pace with prices. One US study found that surprise inflation moves wealth from older lenders to younger borrowers with mortgages. So inflation helps the young who borrow to buy a home, and hurts the young who rent and keep their savings in cash.`
- "If it is worth more tomorrow, why spend today?" Not answered in the main path.
  - Old: `Farmers with mortgages were squeezed for a generation.`
  - New: `Farmers with mortgages were squeezed for a generation. What about the fear that nobody spends a money that gains value? Phones and computers get cheaper every year and people still buy them. The real danger is falling prices on top of heavy debts.`
- Boomers and houses: answered, but the causal claim leans too hard (section 3).
- Decentralised money and hacks: answered in [60], after the B9 fix.
- Stored wealth in houses: answered in [61.1]. Good.

### Question 3, the sword
- Answered straight at [46]: the sword does not explain the 2%. Met, and well done.
- The loan branch is missing. The owner said "from a loan or savings". If it was a loan, this is the best place in the chapter to teach that loans create money.
  - Old: `because one person's spending is another person's pay.`
  - New: `because one person's spending is another person's pay. And if the collector paid with a loan, the 100,000 did not exist before. The bank created it when it lent, and it disappears again as the loan is repaid.`
- No better analogy offered (spec item 7).
  - Old: `Central banks aim for about 2% for four other reasons.`
  - New: `A better picture for the 2% is a game where new players join every round. If the bank never issues new chips, each chip must buy more every round, and anyone who borrowed chips owes more in real terms. A little new money each round keeps a chip's price steady or rising slowly. Central banks aim for about 2% for four reasons of their own.`

---

## 8. Narration

The voice is clear, short-sentenced and mostly free of jargon. It meets the bar for an 18-year-old in Parts 1 to 3. The courtroom holds through Part 1 ([5]), Part 2 ([11], [21]) and Part 3 ([24]), then disappears in Part 4 until the verdict. The sword and the three seats read as a lecture. Two short fixes restore it. The bigger weakness is density: [15], [52] and [55] stack four or five numbers in a row, which an 18-year-old will skim. The fixes in B1 and B6 add words, so the editor should split those blocks.

### The three weakest passages, with replacements

N1 [6]. Dry, and it ends on a cross-reference.
- Old: `A fair trial starts by making the charge as strong as it can be. So first, three meanings of printing, because the crowd mixes them. A central bank creates money when it buys bonds. Ordinary banks create it when they lend. And a government creates it when it spends more than it taxes and the central bank or banks buy the debt. Level 2 chapter 2 showed all three.`
- New: `A fair trial starts by making the charge as strong as it can be. But first, a problem. The crowd is accusing three different printers of one crime. When a central bank buys a bond, it pays with money that did not exist a second earlier. When your bank gives someone a mortgage, it types new money into their account. And when a government spends more than it collects in tax, and banks or the central bank fund the gap, new money lands in the accounts of whoever the government paid. Three printers, three doors. Keep them apart, because the verdict will not be the same for each.`

N2 [11]. Flat, and it wastes the moment the defence stands up.
- Old: `Now test the charge, one word at a time. A scam means winning by deceiving people. Theft means taking without consent. A Ponzi scheme has a precise meaning, and it comes from one man.`
- New: `Now the defence stands up, and its first move is old and simple: what exactly do you mean by those words? A scam wins by lying, so that the victim would say no if they knew the truth. Theft takes without consent or legal right. And Ponzi is not a general insult. It is the name of one man, and his scheme had five features you can check.`

N3 [50]. One line where Part 4 needs the courtroom back.
- Old: `Whether printing looks like a scam depends on where you sit.`
- New: `The jury has heard both sides. But a jury is made of people, and each of them sits somewhere. Whether printing looks like a scam depends on which seat is yours.`

Courtroom bridge for the sword, [44]:
- Old: `A collector pays 100,000 for a custom sword.`
- New: `The defence calls one last witness, and it is not a person. It is a sword. A collector pays 100,000 for a custom one.`

### The three-seat table: is the company seat too thin?
Yes. Households get four rows, the company gets one, and that one has only credit-money gains and only hard-money losses (a lean toward the owner). FRAME 3.2 item 4 asks for misallocated credit, input cost swings, debt eroded by inflation and the Malaysian exporter and SME angle. Replace the single row with four.
- Old: `| Company | Can borrow to build before it has profits. An exporter gains when its currency weakens | Credit is scarce and dear when prices fall |`
- New: `| Company that borrows to grow | Can borrow to build before it has profits, and inflation shrinks its debt. Loses when costs jump, as in 2022, and when cheap credit keeps weak rivals alive | Credit is scarce and dear when prices fall, and debts grow heavier. Gains a steady measuring stick for long contracts |
| Exporter or importer (in Malaysia, palm oil and chip makers against firms that buy parts and fuel abroad) | The exporter gains when the currency weakens. The importer pays more | Fixed exchange rates remove the currency gamble, but a fall in demand abroad must be met by cutting prices and pay |
| Small firm | Depends on bank loans, which flow in good years and dry up in a crisis unless the central bank steps in | Fewer loans, at higher rates after inflation |
| Large firm that can set its prices | Can raise prices faster than costs in an inflation. Profits rose faster than wages in parts of 2021 and 2022 | Must cut prices as costs fall, which squeezes profits while wages are slow to fall |`

A Malaysia column for the whole table (FRAME 3.2 item 4) is still missing. The minimum is one sentence per seat in [52], which the B6 and W9 fixes start.

---

## 9. Checks run on this file

- All 80 "Old" strings were matched against DRAFT_R11.md by script. Each occurs exactly once.
- All "New" strings were scanned for em-dashes, en-dashes and semicolons: none found. They were also scanned for the audit words. The ones left carry a date, a number, a legal fact or a quoted school ("only about 15%", "Malaysia cannot print dollars", "cannot be forced to default" as the MMT claim).
- Where two fixes touch the same block ([15], [21], [51], [52], [54], [56]), they use different, non-overlapping Old strings, so they can be applied in any order.
- Figures this file adds from memory, each marked for the verifier: Britain's foreign lending before 1914, Japan per person output passing pre-war around 1955, the after-tax T-bill estimate, the count of US years with falling prices since 1913, the Fed long-run rate near 3%, the later CPI bias range, deposit rates in 2022, the cheques' share of the 2021 to 2023 inflation.
- Sources fetched: US Treasury fiscaldata average interest rates (api.fiscaldata.treasury.gov), Rolnick and Weber, "New Evidence on the Free Banking Era", AER 1983, Table 2, Harvard JCHS and Redfin and Apartment List cohort ownership figures (search), KRI and DOSM median multiple figures (search).
