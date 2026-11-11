# Chapter export for verifier and red team

Numbers in [brackets] are block indexes. Nested go-deeper blocks are numbered parent.child.

## L1.7 The musical chairs question (id rb-07)

Kicker: If all money is borrowed and interest is owed on top, can everyone ever pay? The honest answer is yes in a quiet world, and not always in a real one.

[0 p] Chapter 6 showed that money is born as debt. That raises a question almost everyone hits sooner or later, and the owner of this project put it in a sharp form.

[1 quote] "Imagine I give a person my own currency YYY$10, but I tell them they must pay me back 5% interest, but no matter how much they work they can't repay if there is only YYY$10 in circulation." (The owner of this project, in their own words)

[2 p] It feels like musical chairs. Ten chairs, ten and a half people. Someone must always be left standing, or someone must always borrow more to keep the music playing. Let us test the intuition carefully, because it is half right, and the half that is right matters a great deal.

[3 diagram] musical-chairs: The worry: YYY$10 in circulation, YYY$10.50 owed. If the stock of money is all there is, someone must default or borrow more.


### Why it feels impossible

[5 p] The worry treats money as a fixed pile, a stock. You hand out 10. You ask for 10.50 back. There are only 10 in existence. Arithmetic seems to say no.

[6 p] The missing piece is time. Money is not used once. It moves. The same coin can pay many debts in a year, because each person who receives it spends it again. Economists call how often money changes hands its velocity. Debts are paid from flows over time, not from the stock all at once.


### The real mechanism: the lender spends

[8 callout] (Picture this) You are the lender on a small island. You lend YYY$10 to Bea, a fisher, at 5% a year. Each year Bea owes you YYY$0.50 of interest. Where does she get it? From you. You need to eat, so you buy YYY$0.50 of fish from Bea each year. She takes that YYY$0.50 and pays you the interest. Next year, the same thing. The money supply never changes. It stays at YYY$10. Bea pays her interest forever. Nobody is left standing.

[9 table]
| Year | Money in circulation | Bea's loan | Interest Bea pays you | You spend back on fish | Anyone short? |
|---|---|---|---|---|---|
| 1 | YYY$10 | YYY$10 | YYY$0.50 | YYY$0.50 | No |
| 2 | YYY$10 | YYY$10 | YYY$0.50 | YYY$0.50 | No |
| 10 | YYY$10 | YYY$10 | YYY$0.50 | YYY$0.50 | No |
| Total over 10 years | Still YYY$10 | Still YYY$10 | YYY$5.00 paid | YYY$5.00 spent | No |

[10 p] Interest is a payment for a service, the use of money over time. As long as the person who receives interest spends it back into the economy, on goods, wages, rent or taxes, the money circulates and can be earned again. Even repaying the principal is possible. Bea can sell you more fish over time and pay down the YYY$10. When she finishes, the money she borrowed is gone, because the loan that created it is gone. That is not a failure. It is the loop from Chapter 6 running in reverse.

[11 p] Economists who modeled this carefully, including critics of mainstream economics such as Steve Keen, have shown that a pure credit economy can pay interest in a steady state without needing endless new loans. So the strict version of the musical chairs claim, that interest can never be paid without more debt, is not correct.

[12 myth] Myth: Because banks only create the principal and never the interest, the system needs ever more debt just to pay interest, or it collapses.
Reality: Interest is paid out of the circulating flow of money, and banks spend their interest income on salaries, rent, dividends and taxes, which puts it back into circulation. In a steady state, interest can be paid indefinitely. The real dangers come from somewhere else, and they are listed below.


### Where the intuition is right

[14 p] Now the important part. The owner's instinct points at real weaknesses. They are just different from the arithmetic one.

[15 list]
- Savers who do not spend. If the people receiving interest save it instead of spending it, money piles up with them and drains from everyone else. If savers as a group want their savings to keep growing, someone else must keep going deeper into debt. This is an accounting fact, made famous by the economist Wynne Godley: for every saver accumulating financial assets, some sector, households, businesses, government or foreigners, must be adding debt.
- Debt can outgrow income. Paying interest is possible. Paying more and more interest on debts that grow faster than incomes is not sustainable. Global debt is about $365 trillion, roughly 310% of world output, according to the Institute of International Finance in 2026.
- Repayment destroys money. If many borrowers try to pay down debt at once, deposits vanish, spending falls, prices and incomes drop, and the remaining debts get harder to pay.
- Panics need cash now, not over time. In a crisis everyone wants to settle at once. Then the stock of money really is too small for the pile of claims, unless a central bank steps in.

[16 quote] "The more the debtors pay, the more they owe." (Irving Fisher, The Debt-Deflation Theory of Great Depressions, 1933)

[17 p] Fisher saw this in the Great Depression. When everyone sells assets and cuts spending to repay debt, prices fall. Falling prices make each remaining dollar of debt heavier. Paying down debt can make debt burdens worse.


### Minsky: stability breeds instability

[19 p] The economist Hyman Minsky described three kinds of borrowers. Hedge borrowers can pay both interest and principal from income. Speculative borrowers can pay interest from income but must keep rolling over the principal. Ponzi borrowers cannot even pay the interest from income, and must borrow more or sell assets that they hope keep rising.

[20 p] Minsky's key idea is that long calm periods push people from the first kind toward the third. Good times make lenders and borrowers confident, so they take on more debt against rising asset prices. Then a small shock, like a dip in house prices, reveals that many borrowers were Ponzi borrowers all along. The 2008 crisis is often called a Minsky moment, a phrase coined by economist Paul McCulley.

[21 diagram] treadmill: The debt treadmill: when debt grows faster than income, the interest bill rises, so more borrowing is needed just to keep pace. Calm years tempt more people onto the faster belt.


### Why credit growth became structural after 1971

[23 p] Under gold, a bank boom eventually ran into a gold shortage and stopped. After 1971 that brake was gone. Each time a slump threatened, central banks could cut rates and governments could borrow, so recessions were shorter but debt rarely got cleared out. Over decades, debt grew faster than incomes. The system became like a bicycle that is stable only while it keeps moving forward.

[24 p] The US government is the clearest current case. According to Treasury data gathered by this project, the government spent about $7.40 trillion in fiscal year 2026 and collected about $5.40 trillion, a deficit of about $1.99 trillion. Even before interest, it ran a primary deficit of about $941 billion, close to 2.9% of the economy. Interest itself cost about $1.05 trillion. The average rate on its marketable debt is about 3.5%, but new borrowing costs closer to 4.9%, and about 36% of the debt reprices within a year. Unless deficits shrink or rates fall, the interest bill climbs on its own.

[25 insider] The owner's notes say there is only about $15,000 of liquid money per person on earth against about $346 trillion of global debt, and conclude that we live in a world of scarce settlement capacity, not scarce money. The figures need updating: world broad money is now about $19,500 per person, and global debt is about $365 trillion. But the insight is sharp. Normally debts are paid slowly from flows, so a small stock of money services a huge stock of debt. In a panic, everyone wants settlement at once, and the stock is far too small. That is exactly why central banks act as lenders of last resort in a crisis.

[26 check] Q: In the island story, what single behavior would turn the YYY$10 economy into a real musical chairs game?
A: If you, the lender, stopped spending your interest and hoarded it. Then money would drain out of circulation into your savings, and Bea would eventually be unable to pay without borrowing more or defaulting.

[27 check] Q: Is it true that interest can never be paid without new loans?
A: No. In a steady state, interest can be paid indefinitely as long as interest income is spent back into circulation. The real risks are debt growing faster than income, savers hoarding, mass repayment shrinking the money supply, and panics.

Rules: Interest can be paid from a circulating flow. Debt that grows faster than income cannot be paid forever. / When everyone repays at once, money shrinks and debts get heavier. Pace your debt so you never have to sell in a panic. / Calm years breed risky borrowing. Be most careful when lending feels safest.

## L1.8 The seasons of money (id rb-08)

Kicker: Money has weather. In some decades it melts, in others it hardens, and the same choice can make you rich in one season and poor in the next.

[0 p] So far we have looked at how money is made. Now we look at how it behaves over time. Prices do not move in a straight line. They move in long seasons, some inflationary, some deflationary. Most people live through only two or three seasons, so they assume the one they grew up in is normal. The rulebook exists so you do not make that mistake.


### Two kinds of weather

[2 list]
- Inflation: prices in general rise, so each unit of money buys less. Debts get lighter in real terms. Savings in cash shrink in real terms.
- Deflation: prices in general fall, so each unit of money buys more. Debts get heavier in real terms. Cash gains real value, but jobs and incomes usually suffer.

[3 callout] (Picture this) Think of money as ice. In a warm season, inflation, ice held in your hand melts, so you want to turn it into something that does not melt, like a house or a tool, and owing ice to someone is cheap because it shrinks while you owe it. In a cold season, deflation, ice keeps its shape and even grows, so holding ice is smart and owing ice is dangerous because your debt grows heavier.


### A timeline of seasons, 1870 to 2026

[5 diagram] seasons: Seasons of money from 1870 to 2026: inflationary eras (wars, the 1970s, 2021 onward) and deflationary or disinflationary eras (1873 to 1896, 1929 to 1933, 1982 to 2020).

[6 table]
| Years | Season | Main cause | Who tended to win | Who tended to lose |
|---|---|---|---|---|
| 1873 to 1896 | Long deflation | Gold standard, money growth slower than output | Lenders, savers | Farmers and other debtors |
| 1897 to 1914 | Mild inflation | New gold discoveries | Debtors, farmers | Fixed-income holders, slightly |
| 1914 to 1920 | War inflation | War spending, gold suspended | Debtors, governments | Savers, bondholders |
| 1929 to 1933 | Deflationary collapse | Bank failures, money supply fell about a third | Holders of safe cash | Debtors, workers, banks |
| 1941 to 1951 | War and postwar inflation with capped rates | War debt, Fed held rates down | The government as debtor | Savers in bonds and deposits |
| 1966 to 1981 | The Great Inflation | Deficits, oil shocks, loose policy, no gold anchor | Fixed-rate borrowers, owners of gold and real assets | Savers, bondholders, fixed incomes |
| 1982 to 2007 | Disinflation, long bond summer | Volcker's credibility, globalization | Bondholders, stock owners | Late borrowers at high fixed rates |
| 2008 to 2020 | Low inflation, zero rates | Debt overhang after 2008, cautious banks | Asset owners | Savers earning nearly nothing |
| 2021 to 2023 | Inflation surge | Pandemic spending, supply shocks, energy | Borrowers with low fixed mortgages | Renters, savers, long bond holders |
| 2024 to 2026 | Sticky, energy-led inflation | Oil shock, deficits, AI investment boom | Owners of energy and real assets | Wage earners whose pay lags prices |

[7 p] The last row comes from this project's 2026 data. US consumer energy prices rose about 20.4% over a year, oil traded near $98 a barrel in October, and a key inflation measure ran at 5.0% annualized in the second quarter. Real hourly pay fell about 0.7% in the year to September 2026. The Fed under Kevin Warsh raised rates in September 2026, against the President's wishes.

[8 insider] Financial repression is the polite name for a quiet trick governments use to shrink debt. They keep interest rates below inflation, so lenders to the government lose real value every year. Economists Carmen Reinhart and Belen Sbrancia showed in 2011 that the US and UK used this after the Second World War to cut their debt burdens substantially. A mild version is happening now: the average interest rate on US government debt is about 3.2 to 3.5%, while nominal income has grown about 5.7% a year over the past decade, so inflation is quietly shrinking the debt relative to the economy.


### Why governments prefer mild inflation

[10 list]
- It shrinks debt. A government that owes trillions benefits when each future dollar is worth a little less.
- Wages are sticky downward. People resist pay cuts. With mild inflation, a business can let real wages adjust by giving smaller raises instead of cutting pay, which keeps more people employed.
- It leaves room to cut rates. If inflation is 2% and rates are 4%, a central bank can cut rates enough to make borrowing cheap in real terms during a slump. With zero inflation, there is less room.
- Deflation is scarier. Once people expect falling prices, they delay buying, firms delay hiring, and debts grow heavier. That spiral is hard to stop.

[11 p] New Zealand adopted the first formal inflation target in 1990. The Federal Reserve formally adopted a 2% target in 2012. The owner calls inflation a circulation incentive, a leaking bucket that pushes people to spend or invest rather than hoard cash. That is a fair description of how a mild target works, and it is also why holding idle cash is a slow loss in most modern seasons.

[12 quote] "Inflation is always and everywhere a monetary phenomenon." (Milton Friedman, 1963)

[13 p] Friedman's line is famous and partly true. Over long periods, sustained high inflation does come with fast money growth. But most economists today add that supply shocks, like the oil embargoes of the 1970s or the 2026 energy shock, can drive prices up for a while even without fast money growth, and that expectations matter a great deal. Where scholars disagree is how much weight to give each.


### Deflation traps

[15 p] The United States from 1929 to 1933 is the classic trap. About 9,000 banks failed. The money supply fell by about a third, as Milton Friedman and Anna Schwartz documented. Prices fell by about a quarter. Unemployment reached about 25%. Fisher's debt deflation, from Chapter 7, ran at full speed.

[16 p] Japan is the modern case. After its stock and property bubble burst around 1990, banks were slow to admit losses, households and firms paid down debt for years, and prices drifted slightly downward for much of the period from the late 1990s to the early 2010s. The Nikkei stock index did not regain its 1989 peak until 2024. The economist Richard Koo called this a balance sheet recession: everyone repaying debt at once, so nobody borrows to spend.


### A store of value changes jobs with the season

[18 p] Here is a subtle point that most people never notice. An asset is not simply safe or risky. It is a tool that works in some seasons and fails in others.

[19 table]
| Asset | Works as a store of value in | Fails in | Example |
|---|---|---|---|
| Cash and savings accounts | Deflation | Inflation | Cash gained real value in 1930 to 1933, lost it in the 1970s |
| Long-term government bonds | Disinflation and deflation | Inflation and rising rates | Great from 1982 to 2020, lost close to half their market value from 2020 to 2023 |
| Gold | Inflation, crisis and loss of trust | Disinflation with high real rates | Rose from $35 to $850 by January 1980, then fell to around $255 by 1999 to 2001 |
| Fixed-rate debt (as a borrower) | Inflation | Deflation | A 3% mortgage from 2021 became a gift as prices rose |
| Stocks of strong companies | Moderate inflation and growth | Deep deflation and very high real rates | Fell sharply in 1929 to 1932 and in 1973 to 1974 |

[20 insider] Gold is usually called an inflation hedge, but from 1980 to 2001, a period that still had inflation, gold lost most of its value in real terms. What gold really hedges is a loss of trust in the money or the people managing it. When trust is high and real interest rates are high, gold tends to struggle. When trust falls, gold shines. In 2025 central banks bought about 863 tonnes of gold, a sign that some governments trust the system less.

[21 myth] Myth: There is one safe asset you can buy and forget.
Reality: Safety depends on the season. Long-term US government bonds are free of default risk, but holders lost close to half their market value from 2020 to 2023 as rates rose. Cash is safe from crashes but loses value to inflation. The most reliable protection is to understand which season you are in and to avoid betting everything on one season continuing.

[22 check] Q: You have a fixed-rate mortgage and inflation jumps to 8%. Are you better or worse off in real terms?
A: Better off as a borrower, as long as your income keeps up. Your fixed payments and remaining debt shrink in real terms because each dollar you repay buys less.

[23 check] Q: Why did Japan's long stagnation happen even though interest rates were near zero?
A: Households, firms and banks were focused on repairing their balance sheets after the 1990 bust, so they paid down debt instead of borrowing to spend. Cheap money did not help when nobody wanted to borrow.

Rules: Know your season. Ask whether money is melting or hardening before you decide to save, borrow or invest. / Mild inflation is the default policy goal. Idle cash slowly loses in most modern seasons. / No asset is safe in every season. Spread your bets across seasons, not just across names.

## L1.17 When markets fall: buckets, collateral and rotation (id rb-buckets)

Kicker: A 20% crash does not hand 20% to someone else. But money really does slosh between buckets, and the timing of when you enter a bucket is most of the game.

[0 p] Every big market drop brings the same post: the market lost a trillion dollars today, so someone on the other side must have made a trillion. It feels like conservation of money. If value left one place, it must have arrived somewhere. That intuition is mostly wrong, and understanding why it is wrong is one of the most useful things in this whole rulebook.


### Market cap is a price tag, not a pile of cash

[2 p] Market capitalization is a simple multiplication: the last price anyone traded at, times every share that exists. It is a valuation. It is not money sitting in a vault. When the price moves, the whole tag is rewritten, even though only a few shares actually changed hands.

[3 diagram] markcap: A company with 1,000 shares. Ten shares trade at a lower price and the value of all 1,000 shares is rewritten.

[4 steps]
- A company has 1,000 shares. The last trade was at $100, so its market cap is $100,000.
- Bad news arrives. A nervous seller offers 10 shares and the best bid is $80. They trade.
- The last price is now $80, so the market cap is now $80,000. Twenty thousand dollars of value is gone.
- How much cash changed hands? Ten shares at $80, which is $800. The seller got $800 in cash. The buyer paid $800 in cash and got shares.
- Nobody received the missing $20,000. It was never cash. It was an estimate of what all the shares were worth, and the estimate went down.

[5 myth] Myth: When the stock market drops 20%, someone on the other side profited by that same 20%.
Reality: Most of the drop is a repricing of paper value that nobody collects. Every share sold had a buyer who paid cash for it, so cash only changes hands, it does not appear from the crash. The people who do profit from a fall (short sellers, buyers of put options) win only what the other side of those specific contracts loses, which is a small slice of the headline number.

[6 callout] (Picture this) Your street has 100 houses. One neighbor sells in a hurry for 20% below what similar houses fetched last month. An appraiser now marks every house on the street 20% lower. The street lost millions on paper in one afternoon, yet only one family actually sold, and one family actually bought. Nobody walked away with the millions. That is what a market crash headline is.


### So does money just circulate? Not quite. It moves between buckets

[8 p] The owner of this project put the next idea well: money is not a fixed pie that only circulates. It moves through different buckets, at different times, and each bucket sits on top of other buckets as collateral. That is right, with two refinements. First, the pie is not fixed: banks create money when they lend and it disappears when loans are repaid (chapter 6), so the total in the buckets can grow or shrink. Second, valuations move far more than money does, because a small flow of cash into a bucket can reprice everything already in it.

[9 diagram] buckets: Money rotates between buckets, and the buckets are stacked: one bucket's value is pledged to borrow money that fills the next.

[10 list]
- Cash and bills: the safe bucket. It fills up when people are scared.
- Bonds: fill up when people expect rates to fall or want steady income.
- Stocks: fill up when people expect profits to grow.
- Property: fills up when credit is cheap, because most of it is bought with loans.
- Gold: fills up when people distrust the system or the currency.
- Crypto and frontier assets: fill up last in a boom and empty first in a bust.


### Collateral on top of collateral

[12 p] Here is where the owner's phrase is exactly right. A bucket's value is often pledged to borrow money that fills another bucket. Stocks are pledged for a margin loan. Bonds are pledged in repo (a short loan backed by bonds) to buy more bonds. A house is pledged for a mortgage, and the bank pledges the mortgage to borrow from someone else. When prices rise, the collateral is worth more, so you can borrow more, so prices rise further. When prices fall, the same chain runs backwards: the lender asks for more collateral (a margin call), you must sell, the selling pushes prices lower, and the next borrower gets a margin call. That is why falls are often faster than rises.

[13 insider] The scary days in markets are rarely about people changing their minds. They are about collateral. In 2008 it was mortgage bonds pledged in repo. In 2022 British pension funds had to sell government bonds to meet margin calls on their hedges, which pushed bond prices down, which caused more margin calls, until the Bank of England stepped in. Watch who is forced to sell, not who wants to sell.


### Early, late, and the price of being first

[15 p] Because money rotates, timing matters. The first money into a bucket buys before the crowd, when the story is uncertain and the bucket might stay empty. It takes the most risk and, when it is right, earns the largest return, sometimes an outlier return. The last money in buys after prices have risen, when the story is obvious and everybody agrees. It takes a different risk: that it is buying from the early money on its way out. Neither is free money. The early buyer is paid for carrying uncertainty and being wrong often. The late buyer pays for comfort.

[16 table]
| When you enter a bucket | What you are paid for | Main risk |
|---|---|---|
| Early (before the crowd) | Carrying uncertainty and illiquidity | Being wrong or too early, the bucket stays empty |
| Middle (as flows arrive) | Riding the repricing as others join | Mistaking a crowded trade for a safe one |
| Late (after the story is obvious) | Comfort and confirmation | Buying from early money that is leaving |


### What moves money between buckets

[18 list]
- Interest rates and liquidity: when central banks make money cheap, it flows outward toward riskier buckets. When money gets dear, it flows back toward cash and bills.
- Credit: lending creates new money that lands in some bucket first, usually property and financial assets (the Cantillon effect from chapter 16).
- Supply and demand: new shares, new bonds and new coins dilute a bucket. Buybacks and scarcity concentrate it.
- Fear and narrative: stories move flows faster than numbers do.
- Rules: laws that force holders into a bucket (like stablecoin reserves that must hold Treasury bills) fill that bucket by design.
- Rigging: it exists (insider trading, pump and dump schemes, spoofing) and is illegal in most markets, but most rotation is explained by the five forces above.

[19 check] Q: The stock market falls 20% and headlines say $10 trillion was wiped out. Where did the $10 trillion go?
A: Mostly nowhere. It was the paper value of all shares at the last traded price. The cash that changed hands in the selling went from buyers to sellers. Short sellers and put buyers gained only what their direct counterparties lost, a small fraction of the headline.

Rules: A market cap is a price tag on the last trade, not cash. Crashes mostly erase paper value that nobody collects. / Money does not just circulate. It rotates between buckets, and buckets are pledged as collateral for each other. / Falls are faster than rises because collateral chains force selling. / Early money is paid for uncertainty, late money pays for comfort. Know which one you are.

## L1.16 Eye-openers: what most people never notice (id rb-13)

Kicker: Sixteen quiet facts about money that, once seen, cannot be unseen.

[0 p] Each chapter so far has hidden a few surprises. This chapter gathers them in one place, with a few new ones. Each is something that sits in plain sight in the official numbers, yet most people go their whole lives without noticing it. Read them slowly. For each one, ask yourself where it touches your own money.


### About your own money

[2 insider] 1. Your bank deposit is a loan you made to the bank. The balance in your account is the bank's debt to you. You are an unsecured lender, protected by deposit insurance up to $250,000 per depositor, per bank, per ownership category. Above that, you are trusting the bank's books. That is why depositors ran from Silicon Valley Bank in March 2023.

[3 insider] 2. Banks create money when they lend. They do not lend out your savings. A new loan creates a new deposit at the same instant, as the Bank of England explained in 2014. In the United States, reserve requirements have been zero since March 2020. Bank lending is limited by capital, demand, profit and the interest rate, not by a fixed multiple of reserves.

[4 insider] 3. Treasury bills are the cash of the rich. In 2026 the average US savings account paid about 0.38%, while a three-month Treasury bill paid about 4.25%. On $50,000 that is about $190 a year against about $2,125. Wealthier savers and companies keep their cash in bills and money market funds. Many ordinary savers leave it in accounts that pay almost nothing, and the bank keeps the difference.

[5 insider] 4. Most money is not cash at all. Paper notes and coins are a small share of the money supply. Most money is bank deposits, which are entries in ledgers. When people say the government prints money, what usually grows is ledger entries at banks and at the Fed.


### About the government's money

[7 insider] 5. Inflation is a silent tax. No law is passed and no vote is taken, yet inflation moves buying power from people holding money and fixed-rate claims to people who owe money, and the largest debtor is the government. In 2026 the average interest rate on US government debt was about 3.2 to 3.5%, while nominal income had grown about 5.7% a year over the decade. That gap quietly shrinks the debt relative to the economy, paid for by bondholders and savers.

[8 quote] "There is no subtler, no surer means of overturning the existing basis of society than to debauch the currency." (John Maynard Keynes, The Economic Consequences of the Peace, 1919)

[9 insider] 6. Seigniorage: issuing money is profitable. A $100 bill costs a few cents to print and buys $100 of goods. More importantly, the Fed buys interest-paying bonds with money it creates, earns the interest, and in normal years sends its profits to the Treasury. Stablecoin issuers have found a private version: they take your dollar, buy Treasury bills and keep the yield.

[10 insider] 7. The Fed can lose money and keep running. From late 2022, the Fed paid more interest on bank reserves than it earned on its bonds. Instead of asking for a bailout, it recorded the losses as a deferred asset, an IOU to itself to be repaid from future profits before it resumes sending money to the Treasury. A central bank that creates its own currency cannot run out of it. It can only lose credibility.

[11 insider] 8. Interest on the national debt now exceeds defense. In fiscal year 2026 the US spent about $1,052 billion on net interest and about $965 billion on national defense. Interest was higher in 2024, 2025 and 2026. Interest took about 19.5% of all federal revenue. About 36% of the government's marketable debt reprices within a year, so if rates stay high, the bill keeps climbing.

[12 insider] 9. US gold is still booked at $42.22 an ounce. The Treasury owns about 261.5 million ounces of gold and records it at the 1973 legal price, about $11 billion in total. At market prices it is worth about $1.08 trillion. Revaluing it would raise about one year of interest payments, once. It is a one-time gain, not a fix for deficits that recur every year.

[13 insider] 10. Workers carry most of the federal tax load. In 2026 about 86% of federal receipts came from individual income and payroll taxes, and only about 7% from corporate taxes, down from about 11% two years earlier as companies expensed huge investments in AI. As machines take a larger share of income, this tax base is under quiet pressure.


### About the world's money

[15 insider] 11. Sanctions run through dollar plumbing. Most international payments pass through dollar accounts at US banks. That gives Washington the power to cut a country, bank or person out of the system. When Western governments froze about $300 billion of Russia's reserves in 2022, every central bank noticed. Central banks then bought gold at a record pace, about 863 tonnes in 2025, because gold held at home cannot be frozen by someone else.

[16 insider] 12. The Cantillon effect. In the 1700s the banker and writer Richard Cantillon noticed that new money does not reach everyone at once. Those who receive it first spend it before prices rise. Those who receive it last face higher prices first. This project's data refine the idea: in 2020 and 2021, checks sent directly to households lifted the bottom half's share of wealth from 1.7% to 2.4%. But owners of assets captured most of the dollar gains. Since late 2019 the top 10% took about 67.5% of the $78 trillion rise in household wealth.

[17 insider] 13. Stablecoin issuers keep the interest. Under the GENIUS Act, holders of compliant US stablecoins cannot be paid interest by the issuer. The issuer invests the reserves in Treasury bills and keeps the yield, often sharing it with distributors. At a 4.25% bill rate, the whole market's float is worth about $11.7 billion a year. Each $1,000 left idle in a stablecoin gives up about $42.50 a year.

[18 insider] 14. Mortgage rates are set more by the bond market than by the Fed. The Fed sets a short-term rate. Mortgage rates follow long-term Treasury yields, which reflect inflation fears, debt supply and foreign demand. In October 2026 the Fed's rate was 3.75 to 4.00%, while the 10-year Treasury yield was about 5.13% and the 30-year about 5.42%. In late 2024 the Fed cut rates and long-term yields rose anyway.

[19 insider] 15. Safe assets are only safe in a given season. Long-term US Treasury bonds have essentially no risk of default, yet they lost close to half their market value from 2020 to 2023 as rates rose. Silicon Valley Bank failed in 2023 largely because it held safe bonds bought in a different season. Safety is a property of an asset in a season, not of the asset alone.

[20 insider] 16. Platforms are the new toll booths. Producing goods has not become cheaper in dollar terms since 2019, but the cut taken by platforms has grown. Advertising rose from about 23.5% to about 41.9% of Amazon's seller services revenue between 2019 and early 2026. Etsy's take rate rose from 16.5% to 24.2%. None of this shows up as a separate line in the consumer price index.

[21 check] Q: Pick the eye-opener that most affects you this month, and say why.
A: Any is fine. For many readers it is number 3: moving idle savings from a near-zero account to a Treasury bill or government money market fund can earn many times more for the same safety. For others it is number 14, because mortgage rates do not simply follow the Fed.

[22 check] Q: Why can the Fed lose money without failing?
A: Because it creates the currency its debts are paid in. It records losses as a deferred asset to be covered from future profits. Its real risk is a loss of credibility, not running out of money.

Rules: Read the official numbers yourself. The biggest secrets in money are published. / Ask who receives new money first. They usually gain most. / Never confuse free of default with free of risk.

## L2.2 Who really creates money: banks, the Fed and the Treasury (id rb-moneymake)

Kicker: Bank loans are one door, the busiest one in normal years. Level 2 adds the others: the Fed, the Treasury, the sponges that soak money up, the shredders that destroy it, the brakes on each printer, and how other countries do it.

[0 tldr]
- Money lives on two floors. Upstairs, banks and the Treasury hold accounts at the Federal Reserve. Downstairs, you and every business hold bank deposits. You can only spend the downstairs kind.
- In normal years banks create most new downstairs money when they lend (1971 to 2007, 87% to 96% of the two printers combined). They also create it when they buy a bond or anything else from someone who is not a bank. In 2008 to 2014 and 2020 to 2021 the Fed did most of it.
- The Fed creates upstairs money, called reserves, every time it buys a bond. Whether new downstairs money appears too depends on who sold the bond: a bank (no) or a pension fund or other nonbank (yes).
- The Treasury moves money between the floors. Selling bonds and collecting taxes pulls deposits up into its Fed account. Spending pushes them back down.
- So money is not created only by bank loans. In 2020 and 2021 the Treasury and the Fed together created most of the $4.7 trillion rise in bank deposits.
- The Fed is not allowed to buy new bonds straight from the Treasury. It must buy in the open market, through 25 primary dealers.
- In short: banks are the everyday printer. The government and the Fed together are the emergency printer, and when both switch it on, as in 2020, it is bigger than anything the banks do.
- From 1971 to 2026, bank loans grew about $13.79T and the Fed's bonds about $6.43T: two thirds downstairs, one third upstairs, with the upstairs third arriving in two bursts, 2008 to 2014 and 2020 to 2021.

[1 cards] Five key words
- Reserves: Banks' own accounts at the Fed. Upstairs money. About $2.97 trillion on 21 October 2026. Only banks and a few institutions can hold them.
- Deposits: The money in your bank account. Downstairs money, a promise from your bank. About $19.6 trillion at US commercial banks.
- Treasury General Account: The government's checking account at the Fed. About $945 billion on 21 October 2026. Money in it is out of public hands.
- Primary dealer: One of 25 big dealers that must bid at every Treasury auction and that trade directly with the Fed.
- Open market: The market where bonds already issued change hands. The only place the Fed may buy Treasuries.
- Risk-weighted assets: A bank's assets, each scaled by how risky the rules say it is. Capital rules ask for owners' money of at least a set share of this total.

[2 p] Level 1's "How money is born today" showed that a bank loan creates a deposit. In normal years that is the most common way money is born, but not the only one. This chapter finishes the picture. It adds the Fed, the Treasury and the dealers in between, and shows exactly which moves create money you can spend and which only shuffle money that banks use among themselves.

[3 bridge] Built on Level 1: recall these before you start
- rb-06: A bank loan creates a deposit and repaying it destroys one. There is no fixed money multiplier.
- rb-01: Money is a ledger of who owes what, so always ask whose ledger a dollar sits on: the Fed's or a bank's.
- rb-nation: Taxes are the state's subscription fee. Here you see them leave the public's books.
- rb-08: In wartime and after it, the Fed held interest rates down while inflation shrank the war debt (the 1941 to 1951 season of capped rates).
- rb-bonds: Treasuries are what the Fed buys, the Treasury sells and stablecoins hold. Read chapter 1 of this level first.

[4 radiant] centre: Two floors, two printers, many drains
- The everyday printer: Banks create deposits when they lend (rb-06)
- The upstairs printer: Fed reserves reach you through nonbanks (rb-bonds)
- The Treasury's staircase: Taxes up, spending down, deficits netted (rb-nation)
- The sponges: Treasury account and reverse repo absorb (rb-buckets)
- The shredders: Repayments, taxes, auctions, QT destroy (rb-07)
- The brakes: Capital, mandate, law, inflation (rb-06)
- Money outside banks: Money funds, repo, stablecoins, eurodollars (rb-crypto)
- Other printers abroad: ECB, Bank of Japan, Bank Negara (rb-em)

[5 p] This chapter comes in three parts of about ten minutes each. Each part ends with a stop box and three quick questions. Stop at any box and come back another day.


### Part 1 of 3. Two floors and three printers


### The whole idea in three rows

[8 p] Here is the whole idea before any numbers. Steps 1 to 3 explain each row, and after Step 3 the full table puts sizes on every channel in four kinds of year.

[9 table]
| Who | Creates money you can spend when | Destroys it when |
|---|---|---|
| Banks | they lend, or buy anything from someone who is not a bank | loans are repaid, or they sell to someone who is not a bank |
| The Fed | it buys bonds. Reserves rise every time, your deposits only if the seller is not a bank | it shrinks its bonds (QT) |
| The Treasury | it spends | it collects taxes or sells bonds to savers, until it spends the money again |


### Two floors of money

[11 p] Picture the dollar system as a building with two floors. Upstairs are the Fed's books. Banks hold reserves there, the Treasury holds its account there, and money funds can park cash there overnight. Downstairs are the public's books: deposits at banks, plus paper cash. When you pay rent or buy groceries, you move downstairs money. Banks settle with each other upstairs.

[12 callout] (Picture this) Think of a big market hall. Upstairs is the wholesale floor, where only licensed traders deal, and they settle in special tokens issued by the hall's owner, the Fed. Downstairs is the shop floor, where everyone shops with receipts issued by the traders, which are bank deposits. Some deals happen only upstairs, between traders and the owner. Some happen only downstairs. And some go through the staircase and change the amount of receipts on the shop floor. This chapter is a guide to the staircase.

[13 diagram] mc-two-tier: Upstairs: reserves, the Treasury's account and cash parked at the Fed. Downstairs: deposits and cash held by the public. Arrows show which moves cross the staircase.

[14 table]
| Floor | What is there | Size, October 2026 |
|---|---|---|
| Upstairs (the Fed's books) | Bank reserves | $2.97T (21 Oct 2026) |
| Upstairs | Treasury General Account | $945B |
| Upstairs | Cash parked by money funds at the Fed (overnight reverse repo) | $0.2B (it peaked at about $2.4T in late 2022) |
| Upstairs | What the Fed holds against all this: Treasuries and mortgage bonds | $4.57T and $1.90T |
| Both | Paper cash (a Fed liability that the public holds) | $2.49T |
| Downstairs | Bank deposits | $19.6T (September 2026) |
| Downstairs | M2, the broad measure of the public's money | $23.3T (August 2026) |

[15 check] Q: Can a family spend bank reserves at a shop?
A: No. Reserves are accounts at the Fed that only banks and a few institutions hold. A family spends deposits or cash. Reserves only matter to the family when a move also changes deposits.


### Step 1. Banks create deposits, and not only by lending

[17 p] When a bank lends you $100, it adds a $100 loan to its assets and a $100 deposit to its debts at the same moment. New downstairs money appears. When you repay, both disappear. That is Level 1 chapter 6. The second way is less known. When a bank buys a $100 bond from a pension fund, it pays by crediting the fund's account with a new $100 deposit. No loan was made, but money was created all the same. When a bank sells a bond to a nonbank, money is destroyed.

[18 quote] "Whenever a bank makes a loan, it simultaneously creates a matching deposit in the borrower's bank account, thereby creating new money." (Bank of England, Money creation in the modern economy, 2014)

[19 steps]
- A bank lends $100 to a household: the household's deposit rises $100. New money.
- The household repays: the deposit and the loan both shrink $100. Money destroyed.
- A bank buys a $100 bond from a pension fund: the fund's deposit rises $100. New money without a loan.
- Upstairs, nothing changed in total. Reserves only move between banks when the money is spent at another bank.

[20 check] Q: Your bank buys a building from a developer for $1 million and pays into the developer's account at the same bank. Did the money supply change?
A: Yes, it rose by $1 million. The bank gained an asset (the building) and a new deposit liability (the developer's balance). Any purchase by a bank from a nonbank creates a deposit.


### Step 2. The Fed creates reserves when it buys, and the seller decides the rest

[22 p] The Fed holds $4.57 trillion of Treasuries. It got them by buying in the open market from the 25 primary dealers, paying with reserves it creates on the spot, and by rolling over bonds as they mature. That is real money creation, but upstairs. Whether it reaches downstairs depends on who sold the bond in the end.

[23 table]
| Who sells the bond to the Fed | Upstairs (reserves) | Downstairs (deposits) |
|---|---|---|
| A bank | Up $100 | No change. The bank swapped a bond for reserves. |
| A pension fund, insurer, money fund or foreign investor | Up $100 | Up $100. The seller's bank gets reserves and credits the seller's deposit. |
| A dealer selling from its own stock | Up $100 | Up $100 at first. If the dealer uses the cash to repay a loan from a bank, the deposit disappears again. |

[24 diagram] mc-qe-paths: Two paths for the same $100 purchase. From a bank, only reserves rise. From a pension fund, reserves and deposits both rise.

[25 quote] "When the Federal Reserve purchases securities from a nonbank seller, it creates new bank deposits." (Castro, Cavallo and Zarutskie, Federal Reserve FEDS Notes, 2022)

[26 insider] The primary dealer in the middle is only the pipe. Many of the 25 primary dealers belong to big banking groups, and many act for customers. To know whether a Fed purchase added money you can spend, follow the cash to whoever holds it at the end. In 2020 to 2022 much of the selling came from nonbanks, which is why quantitative easing then added deposits as well as reserves.

[27 check] Q: The Fed buys $1 billion of Treasuries, and the sellers turn out to be three banks. How much new money can the public spend?
A: None directly. Bank reserves rose $1 billion, which is upstairs money. Public deposits change only if the sellers are nonbanks, or later when banks spend or lend.


### Step 3. The Treasury moves money between the floors

[29 p] The Treasury keeps its account at the Fed, upstairs. When a fund buys a new Treasury bond at auction, the fund's deposit falls, its bank's reserves fall, and the Treasury's account rises. Money has gone upstairs. When the Treasury pays a Social Security check, the reverse happens: the account falls, and the retiree's deposit and the bank's reserves rise. Taxes work like an auction: deposits go up the stairs. You can watch it happen. In the week to 21 October 2026, on weekly averages, the Treasury's account rose $69 billion and bank reserves fell $60 billion.

[30 diagram] mc-deficit-loop: Auctions and taxes lift money into the Treasury's account at the Fed. Spending sends it back down. A deficit means more goes down than comes up.

[31 p] So does a budget deficit create money? It depends on who buys the new bonds. In fiscal 2026 the deficit was $1.99 trillion.

[32 table]
| Who buys the new debt | Effect on the public's deposits |
|---|---|
| Households and funds, paying from their deposits | None overall. The deposits taken at auction come back when the Treasury spends. The buyers now hold a bond instead. |
| Banks | Deposits rise. Banks pay with reserves, the spending lands in someone's account. |
| The Fed, indirectly, buying later from nonbanks | Deposits and reserves both rise. This is the legal route to printing money for a deficit. |
| Money funds using cash parked at the Fed | Deposits rise. Cash that was upstairs comes down when the Treasury spends. |

[33 check] Q: The Treasury runs a $100 deficit and a pension fund buys the whole $100 bond with its bank deposit. What happens to deposits?
A: Nothing overall. The fund's deposit fell $100 at the auction, and the Treasury's spending added $100 to someone else's deposit. The private sector holds $100 more in bonds, not more money.


### The whole map with sizes

[35 table]
| Channel | Adds (+) or drains (-) the public's deposits | Normal year 2019 | Emergency 2020 to 2021 | Shrinking 2022 to 2023 | Latest year |
|---|---|---|---|---|---|
| Bank loans, net of repayments | + when lending beats repayment | +$0.45T | +$0.68T | +$1.56T | +$1.00T |
| Banks buying (selling) securities from nonbanks | + buy, - sell | +$0.33T | +$1.86T | -$0.61T | +$0.14T |
| Fed buying (QE) or shrinking (QT) | Reserves always. Deposits only when the seller is a nonbank. Treasuries plus mortgage bonds | -$0.13T | +$4.52T | -$1.04T | +$0.16T (Sep 2025 to Sep 2026) |
| Treasury account at the Fed | - when it rises, + when it falls | fell $0.02T | fell $0.07T | rose $0.43T | rose $0.23T |
| Money funds' cash parked at the Fed (reverse repo) | drains reserves when it rises | flat | rose $1.64T | fell $0.82T | flat |
| Result: bank deposits |  | +$0.79T (+6.4%) | +$4.71T (+35.7%) | -$0.50T (-2.8%) | +$1.23T (+6.7%) |
| Result: M2 |  | +$0.96T | +$6.15T | -$0.72T | +$1.25T (Aug 2025 to Aug 2026) |

[36 p] Windows run December to December, except the latest year (September 2025 to September 2026 for banks, the Fed and deposits, August to August for M2). Sources: Fed H.8 (banks), H.4.1 (the Fed), H.6 (M2), Treasury Monthly Statement (deficits). Memo, not a deposit flow: the federal deficit was $0.98T (2019), $5.90T (2020 to 2021), $3.07T (2022 to 2023) and $1.99T (fiscal 2026). Whether it added money depends on who bought the bonds (Step 3). The rows do not add exactly to the result, because some channels have no clean series: banks buying back their own shares, fees and interest, and foreign official purchases. In 2019 bank lending and bank bond buying explain the whole rise. In 2020 to 2021 the Fed's channel was 6.6 times bank lending. In 2022 to 2023 deposits fell even though banks lent $1.56T, because QT, bank bond sales and a rising Treasury account drained more.

[37 curiosity]
- Q: In 2020 and 2021 bank deposits rose $4.71T while bank loans rose only $0.68T. Who printed the rest?
  A: The emergency printer. The Fed bought $4.52T of bonds and banks bought $1.86T of securities while the Treasury ran $5.90T of deficits (Fed H.8 and H.4.1, Treasury statements). (builds on rb-06)

[38 callout] (Stop here) Part 1 of 3 done. You can now say which floor a dollar sits on and which of the three printers made it. Before Part 2, try these three.

[39 check] Q: The Fed buys $100 of bonds from a pension fund. What rises upstairs, and what rises downstairs?
A: Upstairs, bank reserves rise $100. Downstairs, the fund's deposit rises $100. From a bank seller, only the reserves would rise.

[40 check] Q: A household repays a $100 bank loan. What happens to the money supply?
A: It falls $100. The loan and the deposit both disappear.

[41 check] Q: In 2020 to 2021 bank deposits rose $4.71T. How much came from new bank loans, and what did most of the rest?
A: Only $0.68T. Most of the rest came from the emergency printer: Treasury spending, with the Fed buying $4.52T of bonds and banks buying $1.86T of securities.


### Part 2 of 3. Sponges, shredders, brakes and other printers


### Step 4. Drains, sponges and new pipes

[44 list]
- The overnight reverse repo facility: money funds can lend cash to the Fed overnight. While it sits there, it is out of the banks. It peaked at about $2.4 trillion in late September 2022. On 21 October 2026 it held $0.2 billion, so this drain is empty.
- The Treasury General Account: every rise drains reserves and often deposits, every fall adds them back.
- The standing repo facility (since July 2021): a door that works the other way. Banks and dealers can swap Treasuries for new reserves at a set rate whenever they need them, which limits how far short-term rates can spike in a squeeze.
- Stablecoins: buying a dollar token moves your deposit to the issuer, who buys Treasury bills. Bank deposits do not grow, and if the bill comes from a bank or the Treasury, they shrink. The token is a new private dollar outside M2.
- Interest on reserves: the Fed pays banks interest by creating new reserves, about $115 billion a year at current rates (desk estimate). Deposits grow only if banks pass it on.
- Fed profits and losses: when the Fed earns more than it pays, it sends the profit to the Treasury. From late 2022 it paid more than it earned and built up a $245.9 billion IOU to itself by January 2026. That IOU is now shrinking ($232.7 billion), so it again earns slightly more than it pays, and payments to the Treasury restart once the IOU is cleared. The 'taxes go to the Fed's owners' story has it backwards.

[45 check] Q: A money fund pulls $50 billion out of the Fed's reverse repo facility to buy new Treasury bills, and the Treasury spends the cash. What happens downstairs?
A: Deposits rise about $50 billion. The cash was upstairs at the Fed, it passed through the Treasury's account, and the spending landed in public accounts.


### The puzzle of the missing shrinkage

[47 table]
| Date | Fed's bonds | Reverse repo (money funds' cash at the Fed) | Treasury account | Bank reserves |
|---|---|---|---|---|
| 26 Feb 2020 | $3.85T | $0.00T | $0.39T | $1.68T |
| 29 Dec 2021 | $8.27T | $1.64T | $0.28T | $4.04T |
| 1 Jun 2022, QT starts | $8.48T | $1.97T | $0.78T | $3.36T |
| 28 Sep 2022 |  | $2.37T, the peak |  |  |
| 31 Dec 2025 | $6.27T | $0.11T | $0.87T | $2.85T |
| 21 Oct 2026 | $6.47T | $0.0002T | $0.95T | $2.97T |

[48 p] From June 2022 to October 2026 the Fed's bonds fell $2.01T, yet bank reserves fell only $0.39T. Where did the shrinkage go? Into the sponge. Money funds pulled $1.97T out of the Fed's reverse repo pool to buy Treasury bills, and the cash came back into the banks as the Treasury spent it. QT mostly emptied the sponge, not the banks. Now the sponge is dry, so any further drain hits bank reserves one for one. That is a large part of why the Fed stopped shrinking its Treasuries in December 2025 and has added $0.34T since.


### The shredders: six ways money is destroyed

[50 steps]
- Repaying a bank loan. The loan and the deposit both vanish.
- Paying taxes. The deposit goes upstairs into the Treasury's account and comes back only when the Treasury spends.
- Buying a new Treasury at auction with a deposit. The same as taxes, until the Treasury spends.
- Fed QT. When a bond the Fed holds matures and the Treasury repays it with money raised from a nonbank, a deposit and reserves both disappear.
- A bank selling a bond to a nonbank, or buying back its own shares or bonds. The buyer pays with a deposit, which the bank cancels.
- Money moving into the Fed's reverse repo pool. It leaves the banks while it sits there. In 2020 to 2021 the pool rose $1.64T, more than twice the $0.68T of new bank loans in those two years.

[51 curiosity]
- Q: The Fed shrank its bonds by $2.01T from mid 2022, yet bank reserves fell only $0.39T. Where did the shrinkage go?
  A: Into an empty sponge: money funds drained $1.97T from the Fed's reverse repo pool to buy bills (Fed H.4.1). The sponge is now dry. (builds on rb-buckets)
- Q: When you pay your taxes, does the money still exist?
  A: It leaves the public's books and sits upstairs in the Treasury's account at the Fed, $945B on 21 October 2026, until it is spent again. (builds on rb-nation)
- Q: The Fed lost money for three years. Did anyone have to rescue it?
  A: No. It booked an IOU to itself, a deferred asset, which peaked at $245.9B in January 2026 and is now shrinking ($232.7B). It is earning slightly more than it pays again. (builds on rb-01)


### Why the Fed cannot just buy from the Treasury

[53 p] Section 14 of the Federal Reserve Act says US government bonds may be bought "only in the open market". Congress added that rule in 1935 so that the Treasury would have to face market buyers and could not finance itself at its own central bank. A wartime exception from 1942 allowed up to $5 billion of direct purchases. It was renewed several times, last in 1979, and lapsed in 1981. The Fed can still roll over bonds it already owns by taking new ones at auction, which gives the Treasury no new cash.

[54 insider] A ban on direct buying is not a ban on financing. From 1942 to 1951 the Fed promised to keep bill rates at 0.375% and long bond yields under 2.5%, buying whatever the market sold at those prices. That financed the war debt cheaply without a single direct purchase. The Treasury-Fed Accord of 4 March 1951 ended the deal.


### The brakes on each printer

[56 table]
| Printer | Hard limit (law or rule) | Soft limit (price or demand) |
|---|---|---|
| Banks | Capital rules: owners' money of at least 4.5% of risk-weighted assets plus buffers. Liquidity rules: enough safe assets for 30 days of stress. Reserve requirement: 0% since 26 March 2020 | Borrowers must want loans and pass checks. A loan must beat the bank's funding cost, which the Fed anchors by paying 3.90% on reserves |
| The Fed | May buy Treasuries only in the open market (Federal Reserve Act section 14, since 1935). Its mandate: maximum employment, stable prices, moderate long-term rates | Inflation. Buying bonds while inflation runs high fights its own mandate. The current chair calls QE a tool to use sparingly, if at all |
| The Treasury | Congress must approve spending. The debt limit caps total debt | Auctions must clear. The bond market sets the price, and net interest passed $1T in fiscal 2026 |
| Government plus Fed together | Both keys must turn: Congress spends, the Fed buys from nonbanks | Inflation and the bond market. 2020 to 2021 shows how fast it runs when both keys turn |

[57 p] Notice the reserve requirement: zero since March 2020. The old textbook picture of banks lending out each deposit ten times over has no legal base in the US today. What stops banks is owners' capital, liquidity rules, the price of money and borrowers who must repay. What stops the emergency printer is a law that makes the Fed shop in the open market, a mandate that puts inflation first, and the bond market's price.

[58 curiosity]
- Q: US banks have had to hold zero reserves since March 2020. So what stops them lending forever?
  A: Capital rules (owners' money absorbs losses), liquidity rules, the 3.90% the Fed pays on reserves, which sets the cost of money, and borrowers who must want and repay loans. (builds on rb-06)
- Q: The Fed has been banned from buying bonds straight from the Treasury since 1935. How did it end up with more than half of the new debt of 2020 and 2021?
  A: It bought in the open market from dealers and investors, days or months after the auctions. In wartime, 1942 to 1951, it got the same result by capping yields. (builds on rb-08)


### Money outside the banks

[60 table]
| Money-like claim | Size | Counted in M2? |
|---|---|---|
| Money market fund shares | $7.98T (Sep 2026) | Retail funds yes, institutional funds no |
| Repo, cash lent against bonds | about $12.6T outstanding on an average day (Q3 2025) | No |
| Stablecoins | about $308B (Aug 2026) | No |
| Dollars borrowed outside the US by non-US firms and governments (eurodollars) | $14T, 55% as bonds (Sep 2025) | No |

[61 p] Who prints the $14 trillion of dollars borrowed outside America? Bond investors hold over half of it (55% at the end of September 2025, BIS). The rest is loans written by banks abroad, in London, Singapore or Kuala Lumpur, which create dollar loans and deposits on their own books exactly as a US bank does. They settle through accounts at US banks, and in a crisis they need dollars from the Fed's swap lines. So the Fed is the last-resort supplier, while private foreign banks and bond markets are the everyday sources of offshore dollars.

[62 curiosity]
- Q: Money market funds hold $7.98T, about 40% as much as all US bank deposits. Is that money?
  A: Partly. Retail funds are counted in M2, institutional funds are not, and both are mostly lent to the government. They work like money for their owners, but they rest on Treasuries and on bank deposits. (builds on rb-01)
- Q: Who prints the dollars borrowed outside America?
  A: Mostly banks and bond markets abroad, about $14T at the end of September 2025 (BIS). The Fed steps in only in a crisis, through swap lines with other central banks. (builds on rb-04)


### Other printers abroad

[64 table]
|  | Fed (US) | ECB (euro area) | Bank of Japan | Bank Negara Malaysia |
|---|---|---|---|---|
| Reserve requirement | 0% since 2020 | 1% since 2012, paid 0% since September 2023 | Small ratios still apply | 1% since May 2025 |
| Ban on financing the state | Open market only | EU Treaty Article 123 bans direct purchase of government debt | Barred from underwriting new bonds without the Diet's approval | Central bank credit to the government is limited by law |
| Extra door |  | Large loans to banks (mostly repaid now) | Yield curve control 2016 to 2024, and about 47% of government bonds, excluding bills (June 2026) | The currency door: buying dollars creates ringgit, selling dollars destroys it |

[65 p] The two-floor picture works everywhere, but the doors differ. In Malaysia a large share of changes in central bank money comes through the currency door: when Bank Negara buys dollars to steady the ringgit, it pays with new ringgit reserves, then usually soaks them back up. In Japan the central bank owns so much of the bond market that who sold a bond matters less than how much the Bank of Japan chose to buy.

[66 curiosity]
- Q: When Bank Negara buys dollars to steady the ringgit, does it create ringgit?
  A: Yes, at first: it pays with new ringgit reserves. It then usually soaks them back up in its money market operations, so the ringgit money stock need not change. (builds on rb-em)
- Q: The Bank of Japan owns about half of its government's bonds. Who is the printer in Japan?
  A: The central bank, on a scale no other big economy matches. It held about 47% of government bonds, excluding bills, in June 2026, after its share first fell below 50% at the end of 2025, for the first time since 2022 (Ministry of Finance). (builds on rb-leader)

[67 callout] (Stop here) Part 2 of 3 done. You now know the sponges that soak money up, the shredders that destroy it, the brakes on each printer and how other countries do it. Before Part 3, try these three.

[68 check] Q: From June 2022 the Fed's bonds fell $2.01T, yet bank reserves fell only $0.39T. Where did the difference come from?
A: The reverse repo sponge. Money funds took $1.97T out of it to buy bills, and the cash came back to banks as the Treasury spent it.

[69 check] Q: US banks have had no reserve requirement since March 2020. Name two things that still stop them lending without limit.
A: Any two of: capital rules, liquidity rules, the 3.90% the Fed pays on reserves, and borrowers who must want and repay loans.

[70 check] Q: When Bank Negara buys dollars to steady the ringgit, what does it pay with?
A: New ringgit reserves, which it usually soaks back up afterwards.


### Part 3 of 3. Who printed, year by year, and what the critics say


### What the critics add

[73 table]
| School | Its strongest point | What it adds to this chapter |
|---|---|---|
| MMT and post-Keynesian | Treat the Fed and the Treasury as one. The state spends first, taxes and bond sales drain afterwards. The limit is inflation, not money | Deficit spending is the only source of net financial assets for the non-government sector as a whole, which means the domestic private sector plus foreigners (Stephanie Kelton, The Deficit Myth, 2020). A country's private sector can also gain them from a trade surplus. |
| Austrian and hard money | New money enters unevenly. The first receivers, banks and asset owners, gain before prices rise. Credit without savings breeds booms that end in busts | Ask who receives new money first, not only which floor it lands on (Murray Rothbard, The Case Against the Fed, 1994) |
| Monetarist | The quantity of money matters for inflation, with a lag of one to two years | M2 rose about 40% in 2020 to 2021 and inflation peaked at 9.1% in June 2022. Then M2 fell in 2022 and 2023 (Tim Congdon, 2025) |
| Official view (Fed, Bank of England) | Central banks set the price of money. Banks and borrowers choose the quantity | QE works mainly through bond yields and portfolios, not only through the deposit count |

[74 p] We found no school whose strongest objection points to a channel missing from this chapter. Each points to a missing consequence. The Austrian asks who got the money first. The monetarist asks what it did to prices. The MMT economist asks why we pretend the Treasury needs to borrow its own currency. A complete Level 2 reader can hold all three questions at once.

[75 curiosity]
- Q: M2 fell in 2022 and 2023, the first full-year falls since the record starts in 1959. Why was there no deflation?
  A: Prices respond with a lag, and the stock of money was still about 35% to 40% above early 2020. Inflation slowed but stayed positive. (builds on rb-defl)
- Q: Is today's two-printer system the old empire habit of debasing money, or a safeguard against it?
  A: Both readings have evidence. M2 grew about 37 times since 1970 (Fed H.6). But the open market rule, the 1951 Accord and the 2022 to 2023 contraction show a brake that empires lacked. (builds on rb-09)


### Putting sizes on it

[77 diagram] mc-channels: Every channel that creates or destroys the public's deposits, with rough sizes for the latest year and for 2020 to 2021.

[78 p] In an ordinary year, bank lending is the biggest engine. In the pandemic it was the government and the central bank: the Treasury spent borrowed money straight into household accounts, and the Fed and banks ended up holding about 68% to 72% of the new bonds, so nothing drained the deposits back. M2 rose about 40% in two years, from $15.5 trillion in February 2020 to $21.7 trillion in February 2022.

[79 myth] Myth: All money is created by banks making loans.
Reality: Loans are the main channel in normal years (87% to 96% of the two printers from 1971 to 2007), but banks also create money when they buy securities, the Fed creates reserves whenever it buys and deposits when the seller is a nonbank, and Treasury spending adds deposits unless the public funded it from its own accounts. In 2020 to 2021 the Treasury and Fed channel created most new deposits.

[80 myth] Myth: The Fed prints money and hands it to the government.
Reality: The Fed may not lend to the Treasury or buy at auction. It buys bonds from dealers in the open market and pays the sellers. That holds down yields and can turn bonds held by the public into deposits, which finances deficits indirectly. Its profits go back to the Treasury, and since 2022 it has been running losses.


### So who is printing? The everyday printer and the emergency printer

[82 p] Put all of this together. In a normal year, banks are the main printer: new spendable money appears mostly because people and firms borrow. In the year to September 2026, bank loans grew by about $1.0 trillion and deposits by about $1.2 trillion. But the government and the Fed together can do the same job, and in some years they do it far more than the banks. That combination is printing money in everything but name.

[83 diagram] mc-two-printers: Two ways new spendable money is made. The banks run every day. The government and the Fed switch on in emergencies, and then they are bigger.

[84 steps]
- The government spends more than it collects in taxes. When it pays a salary, a pension or a stimulus check, a new deposit lands in someone's bank account. Spending is what actually puts the money in public hands.
- To cover the gap, the Treasury sells bonds.
- Whether new money is left over depends on who ends up holding those bonds. If households and funds buy them with savings they already had, money only moves around and nothing new is left. If banks buy them, or the Fed buys them in the market from dealers and pension funds, the public keeps the new deposits and the bonds sit with the banks or the Fed. New money remains.

[85 table]
| Who ends up holding the new bonds | Is new spendable money left over? |
|---|---|
| Households and funds, paying with savings they already had | No. Money moves to the government and comes back |
| Banks | Yes. The public has the deposit, the bank has the bond |
| The Fed, buying from dealers and pension funds in the market | Yes. The Fed has paid for it with new reserves it created |

[86 callout] (Picture this) Think of two printers in an office. The banks' printer runs all day, printing a little each time someone signs a loan, and it shreds the pages again as loans are paid back. The government and the Fed share a second printer kept in a locked room. It needs two keys: Congress must approve the spending, and the Fed must choose to buy the bonds. When both keys turn, as in 2020, it prints faster than anything the banks can do.

[87 p] The clearest case is 2020 to 2021. Bank deposits jumped $4.7 trillion, about 36% (December 2019 to December 2021). Most of it came from government spending on stimulus checks, business support loans and unemployment benefits, while the Fed ended up with about 56% to 59% of the new marketable Treasury debt, depending on the source. Bank loans rose only $0.68 trillion, a seventh of the deposit rise.


### Then why do people say the government cannot just print?

[89 list]
- The Fed decides, not the Treasury. The law lets the Fed buy only in the open market, for its own reasons such as interest rates or market stability, and it can stop or reverse. Since 2022 it has been shrinking its bond holdings, which pulls money back out.
- The bond market votes. If investors think a government is leaning on the printer, they demand higher interest rates. That is part of why the US 10-year yield is near 5% and the interest bill passed $1 trillion a year.
- There is friction. Congress must approve the spending, the debt ceiling has to be dealt with, and every auction has to find buyers.

[90 insider] The two kinds of money behave differently over time. Bank-loan money is temporary: when the loan is repaid, the money disappears. Deficit money can stay, because the government rarely pays its debt down overall and rolls the bonds over. So the old worry that governments finance themselves by creating money is right when banks or the Fed end up holding the bonds, as in 2020 to 2021 (about 68% to 72% of the new debt). It is wrong when savers buy the bonds with money they already had.

[91 check] Q: In 2020 bank deposits rose by trillions while bank lending barely grew. Which printer was running, and what two things had to happen?
A: The emergency printer. The government had to spend far more than it taxed, and the Fed and banks had to end up holding much of the new debt. Together that left trillions of new deposits in public hands.


### Fifty-five years of money creation: downstairs banks versus the upstairs printer, 1971 to 2026

[93 p] Since the dollar left gold in 1971, how much new money came from banks lending, and how much from the Fed buying bonds upstairs? The chart below puts the two printers side by side for every year, using the Federal Reserve's own data. The gold bars are the yearly change in commercial bank loans. The blue bars are the yearly change in the bonds the Fed holds (Treasuries plus mortgage bonds). The dots are the actual change in the money supply (M2).

[94 diagram] mc-history: Yearly change in commercial bank loans (gold) and in the Fed's bond holdings (blue), with the change in M2 (dots), 1971 to 2026. Bars below the line mean that printer was shrinking. 2026 runs to September for loans, 21 October for the Fed and August for M2.

[95 table]
| Era | New bank loans (downstairs) | Fed bond buying (upstairs) | Upstairs share of the two | Change in M2 |
|---|---|---|---|---|
| 1971 to 1979 | $548B | $43B | 7% | $847B |
| 1980 to 1989 | $1.11T | $50B | 4% | $1.68T |
| 1990 to 1999 | $1.39T | $173B | 11% | $1.49T |
| 2000 to 2007 | $3.11T | $453B | 13% | $2.84T |
| 2008 to 2014 | $1.14T | $3.44T | 75% | $4.24T |
| 2015 to 2019 | $2.43T | minus $449B | none (the Fed was shrinking) | $3.63T |
| 2020 to 2021 | $681B | $4.52T | 87% | $6.15T |
| 2022 to 2025 | $2.60T | minus $2.00T | none (the Fed was shrinking) | $853B |
| 2026 to date | $784B | $201B | 20% | $988B |
| 1971 to 2026 | $13.79T | $6.43T | 32% | $22.72T |

[96 list]
- 1971 to 2007: the banks did almost all of it. In every decade the Fed's share of the two printers was only 4% to 13%. Its bond buying in those years was about the size of the paper cash people came to hold: the Fed's bonds rose about $0.72T from 1971 to 2007, and currency in circulation was about $0.83T at the end of 2007.
- 2008 to 2014: the first emergency. Bank loans actually fell by $481 billion in 2009, while the Fed bought bonds worth $3.44T over the period. Upstairs took about 75% of the work.
- 2015 to 2019: the banks took over again, adding $2.43T of loans while the Fed shrank its holdings by about $449B.
- 2020 to 2021: the biggest switch-on ever. The Fed bought $4.52T of bonds against $681B of new bank loans, about 87% upstairs. M2 jumped $6.15T in two years, the fastest rise in the record.
- 2022 to 2025: the printer ran backwards. The Fed shrank its bonds by about $2.00T while banks lent $2.60T. M2 rose only $853B over four years, and fell in 2022 and 2023, the first full-year falls in the official M2 record, which starts in 1959.
- 2026 so far: both printers are adding again, banks about $784B and the Fed about $201B.
- The whole period: banks added about $13.79T of loans and the Fed about $6.43T of bonds. Roughly two thirds downstairs and one third upstairs, but the upstairs third came in two short bursts. M2 grew from about $0.63 trillion at the end of 1970 to about $23.3 trillion in August 2026, roughly 37 times.

[97 insider] How to read the bars fairly. They are the two main engines, not a complete accounting, so they do not add up exactly to the change in M2. Banks also create deposits by buying Treasuries themselves (about $1.9 trillion over the period), the Treasury's cash balance at the Fed swings up and down, and people move money in and out of cash. The blue bar is also the upper limit of upstairs money reaching the public, because Fed buying adds spendable deposits only when the seller is not a bank. Bank loans here are commercial banks only.

[98 check] Q: Looking at the chart, in which two periods did the upstairs printer do most of the work, and what happened to the money supply right after the second one?
A: 2008 to 2014 and 2020 to 2021. After 2021 the Fed shrank its bonds by about $2 trillion, and M2 fell in 2022 and 2023 for the first time in the official record.

Rules: Ask which floor moved. Reserves are money for banks. Deposits are money for you. / The Fed creates reserves whenever it buys. It creates spendable deposits only when the seller is not a bank. / Auctions and taxes pull money up into the Treasury's account. Spending pushes it back down. / A deficit adds to your money only if banks, the Fed or parked cash fund it. / Banks create money by lending and by buying. Repayments and sales destroy it. / Banks are the everyday printer. The government plus the Fed is the emergency printer. / Before you say who printed money, name the year: banks in normal years, the government plus the Fed in emergencies. / Watch the sponges. When the reverse repo pool is empty, every drain hits bank reserves directly.

## L2.3 The world's balance sheet: what it owns, what it owes, and how countries are built (id rb-worldbs)

Kicker: You may have heard that the world owes $300 trillion, or $500 trillion, or more. Each can be true, depending on what you count, and the world owes all of it to itself. This chapter shows what the world really owns, why its debts cancel but still matter, how the numbers grew, and how each big country is built.

[0 tldr]
- Which debt? On the usual meaning, loans and bonds, the world owes about $348T (end 2025) to over $365T (mid 2026, IIF, via press). Its net wealth is about $518T (UBS, households) to $600T (McKinsey, all sectors, via press). Count everything owed on paper, deposits and other claims included, and the debt side is about $1,200T (computed from McKinsey).
- You cannot subtract one from the other. Every debt is somebody's asset, so at world level the debts cancel. What is left is real things, about two thirds of them real estate (McKinsey's 2021 study, Level 1).
- The debts cancel for the world, not for each family. Who owes whom, in which currency, and how soon decides the danger.
- In 2025 about four fifths of the rise in household wealth was higher prices and inflation, and about a fifth was new investment (McKinsey, via press).
- Debt grew from about 1 year of world output in 1971 (a model estimate) to about 2.5 years (3 counting the financial sector's own debts). It jumps in crises, 2008 and 2020. After 2020 the debt ratio fell while dollar debt kept rising, except in 2022, when a strong dollar shrank it.
- The dollar is the ruler. Japan's debt fell by a third in dollars from 2020 to 2025 while it rose in yen. Nobody repaid anything.
- Countries are built differently. The US is the richest country and the largest net debtor to the world. Japan's state owes mostly its own central bank and savers (foreigners about 13%). Italian families owe little (36% of output) while their state owes 137%. China borrowed to grow and saved at home.

[1 bridge] Built on Levels 1 and 2: recall these before you start
- rb-titled: Most wealth is a price, not a pile, and every financial asset is someone's debt.
- rb-07: Debt is a claim on future income, and the musical chairs stop when everyone wants cash at once.
- rb-10: The ruler stretches. Always ask what a number is measured in.
- rb-leader: Money flows to the deepest market, which is why the world holds dollar assets.
- rb-moneymake: Every new loan creates a deposit, so new debt always arrives with a new asset attached.

[2 radiant] centre: Every debt is someone's asset. So what is the world worth?
- Many counters, one ladder: Net wealth, loans and bonds, every claim (rb-10)
- The great cancellation: Every IOU has two equal sides (rb-07)
- Price, not pile: In 2025 about four fifths of the gain was price (rb-titled)
- The ruler moves: Dollar swings resize the whole world (rb-10)
- Two crisis jumps: 2008 and 2020 lifted every ratio (rb-08)
- Countries built differently: Debtor, creditor, saver, borrower, hub (rb-leader)
- Who holds the paper: Central banks, foreigners, or the family (rb-bonds)
- Brain-sized numbers: Village, household, per person, per dollar (rb-13)

[3 p] This chapter comes in three parts of about ten minutes each. Each part ends with a stop box and three quick questions. Stop at any box and come back another day.


### Part 1 of 3. What the world owns and owes


### The question that started this chapter

[6 quote] "If the world wealth is 300T+ and 500T+ world debt, now show others a brief timeline of how others, maybe the G7 or G10, are different in structure, so users can understand and quantify the numbers around the world." (The owner of this guide, October 2026 (lightly edited))

[7 p] It is a sharp question, and the honest answer starts with a question back: which debt? Both numbers can be true, depending on what you count. Count loans and bonds, the usual meaning of debt, and the world owes about $348 trillion to $365 trillion, while its net wealth is about $518 trillion to $600 trillion. On that count the order in the question flips. Count everything owed on paper by every part of the world, bank deposits and other claims included, and the total is about $1,200 trillion, far above $500 trillion. So "300T+" is right as a floor for wealth, and "500T+" is too high for loans and bonds and too low for everything owed. One thing holds on every count: none of these debts can be subtracted from wealth, because the world owes all of them to itself. The words below come first, then the numbers.

[8 cards] Seven words to pin down first
- Net wealth: What you own minus what you owe. A $500k house, $100k of savings and a $300k mortgage make $300k.
- National net worth: The net wealth of a whole country or the world, all sectors together.
- Financial asset: A claim on someone else: a deposit, a bond, a loan, a share. One side's asset is the other side's debt.
- Gross debt: Every IOU counted once, from the borrower's side, with nothing subtracted.
- Nonfinancial debt: Debt of governments, firms and households only. The financial sector's own borrowing is left out, so the same lending is not counted twice: a bank borrows in order to lend to the other three.
- Yardstick: World totals are in dollars. When the dollar moves 10%, non-US numbers move about 10% with nothing real changing.
- Net foreign position: What a country owns abroad minus what it owes abroad, shares and firms included. It is not the same as foreign debt.

[9 bars] One world, many counters: what the world owns and owes ($ trillions)
- Everything on every balance sheet, gross (McKinsey, 2025): 1800
- All IOUs on paper, every sector (computed, 2025): 1200
- National net worth (McKinsey, 2025): 600
- Household net wealth (UBS, end 2025): 517.7
- Financial assets of financial firms (FSB, end 2024): 503.7
- Debt, loans and bonds, four sectors (IIF, mid 2026): 365
- Debt, loans and bonds, four sectors (IIF, end 2025): 348.3
- Debt without the financial sector (BIS, end 2025): 262.7
- Debt without the financial sector (IMF, 2024): 251
Caption: Blue bars count what is owned, orange bars what is owed. On the usual debt measures, loans and bonds ($251T to $365T), net wealth is bigger than debt. On the widest count of everything owed on paper (about $1,200T), the order flips. Neither comparison tells you how rich the world is, because every one of these claims is owed by the world to itself.
Source: UBS Global Wealth Report 2026, McKinsey Global Institute global balance sheet 2026 (via press), Fortune on McKinsey (27 Jul 2026), FSB Global Monitoring Report 2025, IIF Global Debt Monitor (Feb and Sep 2026), BIS total credit statistics, IMF Global Debt Database (blog, Sep 2025).

[10 p] Where could "500T+" come from? We do not know which source the question had in mind, so here are five candidates. As for "300T+", it is right as a floor for world wealth on every count. It is also roughly how world debt was reported from 2021 to 2024, about $300 trillion to $320 trillion (IIF), the figure many popular videos quoted.

[11 list]
- An estimate this guide's owner once made: the world's gold times ten, about $500 trillion. Level 1's "How money is born today" explains why a fixed times-ten multiplier does not hold.
- The financial firms of the world, central banks, banks and other funds, held $503.7 trillion of financial assets at the end of 2024 (Financial Stability Board). That is a count of claims. It includes much of the world's debt seen from the lender's side, plus shares and claims on each other.
- People's net wealth: $517.7 trillion at the end of 2025 (UBS). The number may simply belong on the other side of the ledger.
- Everything owed on paper by every sector: about $1,200 trillion (computed from McKinsey). On that count "500T+" is true, more than twice over.
- Derivatives: over-the-counter contracts with a notional value of $846 trillion at the end of June 2025 (BIS). Notional is the size of the thing bet on, not money owed. Their gross market value, closer to what is actually at stake, was $21.8 trillion. Never add notional derivatives to debt.

[12 callout] (Popular claim) "The world owes $500 trillion and is only worth $300 trillion." What it gets right: the world's paper claims are enormous, and on the widest count of everything owed (about $1,200 trillion) they are far bigger than $500 trillion. What it gets wrong: on the usual meaning of debt, loans and bonds, the world owes about $348 trillion to $365 trillion, while its net wealth is $518 trillion to $600 trillion. And on any count the two cannot be subtracted, because the world owes all of it to itself.

[13 table]
| Measure | Value | What it counts | What it leaves out |
|---|---|---|---|
| Household net wealth (UBS) | $517.7T, end 2025 (McKinsey's household count: $570T) | People's houses, savings, shares and private pensions, minus their debts. 56 markets with over 92% of world wealth | Wealth of governments and firms not owned by people, state pension promises |
| National net worth (McKinsey, via press) | $600T, 2025 (5.1 times world GDP) | Real assets of every sector plus net claims | Human and natural capital |
| Financial assets of financial firms (FSB) | $503.7T, end 2024 | Assets of central banks, banks and nonbanks in 29 jurisdictions with over 90% of world GDP | Real assets. It counts claims, which cancel against debts |
| Debt, loans and bonds, four sectors (IIF) | $348.3T at end 2025, over $365T by mid 2026 (via press) | Households $64.6T, firms $100.6T, governments $106.7T, financial sector $76.4T | Shares, derivatives (notional $846T at mid 2025, BIS, which is not debt), unfunded pension promises |
| Nonfinancial debt (IMF, BIS) | $251T (2024) to $262.7T (end 2025) | Governments, firms and households | The financial sector's own debts, left out so lending is not counted twice |
| Everything owed on paper, every sector (computed from McKinsey, via press) | about $1,200T, 2025 | Nearly $1,800T of assets minus $600T of net worth: deposits, bonds, loans and other claims owed by one part of the world to another | Real assets. It is a gross count, so almost all of it cancels at world level |

[14 insider] Every one of these numbers comes from a different counter with a different purpose. UBS counts people's wealth for a wealth manager's report. The IIF is a bank industry body and counts the financial sector's own debts, so its figure is the biggest of the usual debt counts. The FSB counts financial firms' assets to watch for risk. McKinsey counts every balance sheet, which is how it reaches nearly $1,800 trillion. When two headlines disagree, first ask which counter they used.

[15 p] Two kinds of pension sit in different places. Private pension funds are inside household wealth: the savings belong to people. Unfunded state promises, such as public pensions and health care paid from future taxes, are in none of these debt counts. They are real claims on future taxpayers, and hard-money writers often add them to debt. This chapter does not, and has no checked figure for them yet.


### The great cancellation: why the world cannot owe anyone outside itself

[17 p] Every debt has two sides. When a family owes a bank $300,000, the bank owns a $300,000 claim. When the US Treasury owes $1,000 on a bond, a pension fund, a bank, the Fed or a foreign central bank owns that claim. Add up every balance sheet on Earth and each IOU appears once as a debt and once as an asset. They cancel. There is no bank on Mars that the world owes.

[18 callout] Imagine a family of four who lend each other money all year: the teenager owes the parents for a phone, a parent owes the grandmother for a car, the grandmother owes the teenager for help with the shop. At the end of the year the IOUs on the fridge add up to $50,000. Is the family $50,000 poorer? No. The IOUs are owed from one member to another. The family is worth its house, its car and its shop. The IOUs only matter if one member cannot pay another.

[19 p] The debts cancel for the world, not for each family. Creditors and debtors are different families, so interest flows from one group to another. In the United States, the top 10% of households took 67.5% of the rise in household net worth since the end of 2019, and the bottom half took 3.1% (Federal Reserve distributional accounts, mid 2026).

[20 p] Walk through two real kinds of deal. First, a young family buys an existing flat from a retired couple with a $300,000 mortgage.

[21 table]
| Who | Owns | Owes | Net wealth |
|---|---|---|---|
| Young family | + the flat, $300,000 | + mortgage, $300,000 | No change |
| Bank | + the mortgage loan, $300,000 | + the sellers' new deposit, $300,000 | No change |
| Retired couple | - the flat, + a $300,000 deposit | nothing | No change. The asset changed form |
| The world | + $300,000 of claims | + $300,000 of debt | Unchanged. Debt rose, wealth only moved |

[22 p] Debt went up and nobody got richer or poorer. Now the second deal: the US government runs a $1 trillion deficit, and half the new bonds are bought by a US pension fund, half by Japanese investors.

[23 table]
| Who | What happens | Net wealth |
|---|---|---|
| US government | Owes $1T of new bonds, spends the money on wages and transfers | Falls $1T |
| US households | Receive $1T of new deposits, then move $0.5T into a pension fund that buys bonds | Rise $1T: $0.5T in deposits and $0.5T in pension claims backed by bonds |
| Japanese investors | Buy $0.5T of bonds with dollar deposits they already held from selling goods to the US | No change, they swapped a dollar deposit for a bond |
| The US as a nation | Owes Japan the same amount as before, in a new form: a bond instead of a deposit | No change in this deal. Its foreign position fell earlier, when the US paid for the goods |
| The world | Every IOU has an owner | Unchanged |

[24 p] Inside the US, the government's new debt is the private sector's new asset, so "we owe it to ourselves" is right for that half. The foreign half is a claim of Japan on future US income, and it was created when the US bought more from the world than it sold. That is why only countries, not the world, can owe outside. The US's net foreign position was about minus $26.5 trillion at the end of 2024 (IMF) and minus $27.5 trillion at the end of 2025 (BEA), while Japan's was about plus $3.5 trillion (end 2024). A net foreign position is not the same as foreign debt: part of the US figure is foreigners owning US shares and companies, and stock prices move it a lot (BEA).

[25 p] So what survives the cancellation? Three things. Real assets: land, houses, offices, factories, machines, roads and software, worth roughly the world's $600 trillion of net worth (McKinsey, via press), about two thirds of it real estate (Level 1, "The titled world"). Assets that are nobody's IOU, like gold bullion and bitcoin, which are small next to property. And, in household wealth only, the market's view of companies' future earnings above what their books show, because shares are counted at market price. In national net worth that extra cancels, because a share is also a claim on the company. World wealth, measured in dollars, is mostly the price of real things.

[26 curiosity]
- Q: If every debt is somebody's asset, who is the world in debt to?
  A: Itself. The $348T of debt the IIF counts is matched by $348T of claims held by people, pension funds, banks and central banks. Only countries can owe outside: the US's net foreign position was about minus $26.5T at the end of 2024, Japan's about plus $3.5T. (builds on rb-07)
- Q: Why is the richest country also the biggest debtor?
  A: Because lenders lend against assets and income, and because the world wants dollar assets. The US holds about 35% of world household wealth and owes about 29% of world nonfinancial debt. Its net foreign position, about minus $26.5T at the end of 2024, is part debt and part foreign ownership of US shares and firms, and the US can owe it in its own currency. (builds on rb-leader)

[27 callout] (Stop here) Part 1 of 3 done. You can now say what the world owns, what it owes on each counter, and why the two cannot be subtracted. Before Part 2, try these three.

[28 check] Q: Someone says world debt is $500 trillion. What is your first question, and what are the two main answers?
A: Which debt? Loans and bonds come to about $348T to $365T. Everything owed on paper, deposits and other claims included, comes to about $1,200T.

[29 check] Q: A young family buys an existing flat with a $300,000 mortgage. Is the world richer or poorer?
A: Neither. Debt rose $300,000 and so did someone's claim. Wealth only moved.

[30 check] Q: If the world's debts cancel, why can they still be dangerous?
A: They cancel for the world, not for each family. Creditors and debtors are different people, and if one borrower cannot pay another, the chain of IOUs breaks.


### Part 2 of 3. How it grew, and how to hold it in your head


### Price, not pile

[33 p] Debt and wealth can both grow at once, for four reasons. A loan that builds a new house adds a debt and a new real asset. A loan that buys an existing house adds a debt and a deposit, and more credit chasing the same houses lifts their price, which shows up as more wealth. Inflation lifts both in dollars. And the two are counted differently: debt is a gross count of IOUs, net worth is what is left after they cancel.

[34 p] How much of new wealth is new things? McKinsey's 2026 report, as summarized in the press, found that only about 20% of the rise in household wealth in 2025 came from net new investment, and about 58% came from higher valuations above inflation. The rest was inflation itself. The report was not opened for this chapter, so treat the split as approximate. The direction matches Level 1's "The titled world": the same buildings became worth more.

[35 p] Here is every way world debt and world wealth can grow or shrink, with a size for 2025 and for a stress year.

[36 table]
| What moves | Debt | Wealth | 2025 | Stress year |
|---|---|---|---|---|
| New borrowing | Up | No change on the day, up if it builds something | +$28.8T in dollars, flattered by a weaker dollar (IIF, $319.5T to $348.3T) | 2020: a record +$35T (IIF) |
| New real investment | None or up | Up | about $8T, a fifth of the $40T household gain (McKinsey, via press) | not sized |
| Higher prices of existing assets | None | Up, or down when prices fall | about $23T, 58% of the household gain (McKinsey, via press) | 2022: household wealth fell 2.4%, to $454.4T (UBS and Credit Suisse, via press) |
| Inflation | Up in dollars, down as a share of output | Up in dollars | The IIF ratio fell for a fifth year, to about 308% | 2020 to 2024: the BIS ratio fell from 285% to 235% |
| The dollar ruler | Up when the dollar falls | Up when the dollar falls | The euro rose almost 9% against the dollar (UBS) | 2022: IIF debt fell about $4T as the dollar rose |
| Repayment and default | Down | Moves from lender to borrower, no change for the world | not sized | not sized |

[37 curiosity]
- Q: World wealth rose about 10.8% in 2025 (UBS). Did the world build 10% more things?
  A: No. Only about a fifth of the household gain came from new investment, and most of the rest from higher prices. A weaker dollar also lifted the dollar value of non-US wealth. (builds on rb-10)
- Q: Real estate is about two thirds of world net worth. What happens to world wealth if house prices fall 20%?
  A: Measured wealth falls by roughly 13% of net worth (two thirds times 20%, a model using McKinsey's 2021 finding that real estate is about two thirds of net worth). No house is lost and no debt is repaid. Debt stays at face value, so everyone's debt looks bigger next to what they own. (builds on rb-titled)


### The ruler moves: the dollar resizes the world

[39 p] Every world total is counted in dollars. When the dollar rises, everything outside the US looks smaller, and when it falls, everything looks bigger, with nothing real changing. Japan shows how large this effect can be.

[40 table]
| Japan's nonfinancial debt | End 2020 | End 2025 | Change |
|---|---|---|---|
| In yen | 2,273 trillion | 2,340 trillion | +3% |
| In US dollars | $22.05T | $14.94T | -32% |
| As a share of Japan's GDP | 410% | 351% | -59 points |

[41 p] Japan's debt rose 3% in yen and fell 32% in dollars, because the yen fell from about 103 to about 157 per dollar. Its debt also fell as a share of its economy, because inflation returned and lifted nominal output. Nobody repaid anything. The same ruler worked the other way in 2025: the euro rose almost 9% against the dollar, which is part of why wealth in Europe, the Middle East and Africa grew about 17.5% in dollars that year (UBS).

[42 p] In 2022 the ruler worked the other way for the whole world. The dollar rose, and world debt measured in dollars fell about $4 trillion, to just under $300 trillion, the IIF's first annual fall since 2015. World household wealth fell too, about 2.4% to $454.4 trillion on the UBS and Credit Suisse count (via press), as higher interest rates cut asset prices. Nobody repaid anything.

[43 curiosity]
- Q: Japan's debt fell by a third in dollars from 2020 to 2025. Did Japan repay?
  A: No. In yen it rose 3% (2,273 to 2,340 trillion yen, BIS). The yen fell against the dollar, so the ruler shrank the number. (builds on rb-10)
- Q: World wealth rose 10.8% in dollars in 2025. Measured in ounces of gold, did it rise or fall?
  A: It fell, by about a third. Gold rose about 66% in 2025 (press), so 1.108 divided by 1.66 is about 0.67 (a model). Neither ruler is the right one alone. Check big claims with more than one ruler. (builds on rb-10)


### A brief timeline, 1971 to 2026

[45 timeline] The world's output, debt and net worth, 1971 to 2025 ($ trillions) years=[1971, 1980, 2000, 2001, 2005, 2007, 2008, 2020, 2021, 2024, 2025]
- Net worth: [None, None, 156, None, None, None, None, 514, None, None, 600]
- Debt: [3.3, 11.5, None, 60.1, 88.2, 113.5, 118.6, 222.0, 228.3, 237.0, 262.7]
- World GDP: [3.33, 11.48, 33.97, 33.75, 47.94, 58.57, 64.38, 86.39, 98.78, 111.67, 118.35]
Caption: Debt is nonfinancial debt (governments, firms, households) in dollars. The 1971 and 1980 points are a model: world output times the IMF's finding that this debt sat near 100% of world output until about 1980, from an early sample made up mostly of rich countries. BIS data from 2001, on the BIS's own country coverage. Net worth is McKinsey's national net worth (2000, 2020, and 2025 via press). Output grew about 36 times since 1971, debt about 80 times (the 1971 debt point is a model).
Source: World Bank (GDP, current dollars), BIS total credit statistics (aggregate of reporting countries), IMF Global Debt Database (model years), McKinsey Global Institute.

[46 table]
| Year | What was happening | World debt | Debt as % of output (BIS on its own coverage, or IIF) | World wealth |
|---|---|---|---|---|
| 1971 | The dollar leaves gold | about $3T (model) | about 100% (model) | no reliable series |
| 1980 | Interest rates near 20% | about $11.5T (model) | about 100% (model) | no reliable series |
| 2000 | Rates falling, credit booming | $60T (2001, BIS) | 191% (BIS) | $156T (McKinsey) |
| 2008 | The global financial crisis | $119T (BIS) | 202%, rising to 229% by 2010 (BIS) | a fall of about $21T in 2007 to 2008 (press) |
| 2020 | Covid | $222T (BIS). A record $35T added in one year (IIF, four sectors) | 285% (BIS) | $514T (McKinsey) |
| 2022 | Inflation and a strong dollar | just under $300T (IIF, four sectors), after a fall of about $4T, the first since 2015 | fell (IIF) | household wealth fell 2.4%, to $454.4T (UBS and Credit Suisse, via press) |
| 2025 | Weak dollar, fiscal push, AI borrowing | $263T (BIS) or $348T with the financial sector (IIF) | 246% (BIS) or about 308% (IIF) | $518T (UBS, people) to $600T (McKinsey, all, via press) |
| Mid 2026 | Health, energy, AI and defense spending | over $365T (IIF, via press) | about 305% in Q1 2026 (IIF) | no estimate yet |

[47 p] Three things stand out. Debt grew faster than output in almost every period since 1971, from about one year of world output (a model) to about two and a half. It grew in jumps, in 2008 to 2010 and above all in 2020, when a record $35 trillion was added in one year (IIF). And after 2020 the world ratio fell for years while the dollar amount kept climbing, apart from 2022, when it fell about $4 trillion as a strong dollar shrank everything counted outside the US. Inflation and the ruler did that, not repayment. The fall did not last in dollars: debt rose about $46 trillion from the end of 2024 to mid 2026 ($319.5 trillion to over $365 trillion, IIF), and the BIS ratio rose again in 2025.

[48 p] This was not the first time. After the Second World War the US and the UK shrank their government debt as a share of output without repaying it, by growing and by keeping interest rates below inflation (Level 1's "The seasons of money", citing Reinhart and Sbrancia, 2011). The years after 2020 were a short replay.

[49 insider] The sources do not always agree on direction. In 2025 the BIS measure of world debt to output rose (235% to 246%) while the IIF's fell (to about 308%). The likely reason is how each converts currencies when the dollar falls during a year. It is a reminder that a single year's move in a world ratio can depend on who is counting.

[50 curiosity]
- Q: The world debt ratio fell for years after 2020 while dollar debt kept climbing. How can both be true, and what happened in 2022?
  A: Inflation raised nominal output faster than debt. On the BIS measure world nonfinancial debt went from $222T (285% of output) in 2020 to $237T (235%) in 2024. Nobody paid it down. In 2022 dollar debt even fell, by about $4T on the IIF count, because a strong dollar shrank everything measured in dollars outside the US. (builds on rb-08)
- Q: When did world debt jump most: 1971, 2008 or 2020, and who borrowed?
  A: 2020: a record $35T in one year, with governments borrowing about $14T of it (IIF). In 2008 to 2010 the BIS ratio rose from 202% to 229%. In 1971 there was no jump: debt sat near 100% of world output (IMF). (builds on rb-05)


### Make the numbers brain-sized

[52 p] A trillion is too big to picture, so shrink it. One trillion seconds is about 31,700 years. Counting the IIF's $348 trillion at a dollar a second would take about 11 million years. Here are three better ways to hold the world in your head.

[53 bars] If the world were 100 adults: share of all wealth held by each group
- 42 adults with under $10k: 0.6
- 41 adults with $10k to $100k: 12.2
- 15 adults with $100k to $1m: 38.8
- 1.5 adults with over $1m: 48.4
Caption: UBS sample of about 3.85 billion adults in 56 markets, grouped by wealth per adult, end 2025.
Source: UBS Global Wealth Report 2026 wealth pyramid, end 2025.

[54 p] Of every 100 adults in UBS's sample, 42 own under $10,000 and together hold 0.6% of all wealth. The one or two millionaires hold almost half. Averages hide this: counting every adult on Earth (World Bank), wealth per adult is about $93,000, yet 42 of every 100 adults own less than $10,000.

[55 table]
| If the world were one household earning $100,000 a year | Amount |
|---|---|
| Income each year (world output) | $100,000 |
| What the family members own, net (household wealth) | $437,400 |
| What the whole household is worth, with the family business and the town hall (national net worth) | $507,000 |
| IOUs written inside the household (all four sectors) | $294,300 |
| of which the town hall (government) owes | $90,200 |
| of which the family business (companies) owes | $85,000 |
| of which the family bank (financial sector) owes | $64,600 |
| of which family members (households) owe | $54,600 |

[56 p] In household terms, the $294,300 of IOUs are owed from one member of the household to another. The household as a whole owes nobody outside. Its true worth is the house, the land, the tools and the business, about five years of income. The danger is not the size of the IOU pile. The danger is that one member cannot pay another and the chain of IOUs breaks.

[57 table]
| Split across 8.2 billion people | Each |
|---|---|
| Household wealth per person | $63,000 |
| Household wealth per adult (all 5.6 billion adults) | $93,000 |
| Debt per person, all four sectors | $42,000 |
| Output per person per year | $14,400 |

[58 curiosity]
- Q: Split world wealth and debt across 8.2 billion people. What does each own and owe, and why is that misleading?
  A: About $63,000 of household wealth and $42,000 of debt each. But 42 of every 100 adults own under $10,000, and the debt is owed between governments, firms, banks and households, not by each person. (builds on rb-13)

[59 callout] (Stop here) Part 2 of 3 done. You can now explain how world debt and wealth grew, why the dollar resizes them, and how to picture them. Before Part 3, try these three.

[60 check] Q: Japan's debt fell 32% in dollars from 2020 to 2025. Did Japan repay?
A: No. In yen it rose 3%. The yen fell against the dollar, so the ruler shrank the number.

[61 check] Q: World household wealth rose in 2025. Was most of the rise new houses and machines?
A: No. About a fifth was new investment. Most of the rest was higher prices and inflation (McKinsey, via press).

[62 check] Q: If the world were 100 adults, how many would own under $10,000, and what share of all wealth would they hold together?
A: 42 adults, holding 0.6% of all wealth.


### Part 3 of 3. How countries are built, and what would change the picture


### Who contributes the numbers: G7, G10 and the giant left out

[65 p] The owner asked about the G7 or the G10. The G7 is the US, Japan, Germany, the UK, France, Italy and Canada. The G10 is, confusingly, eleven countries: the G7 plus Belgium, the Netherlands, Sweden and Switzerland. Neither includes China, which now holds about 16% of the world's household wealth (18.5% counting Hong Kong and Taiwan) and about 22% of its nonfinancial debt. So China and India are added here.

[66 pairbars] Who contributes: each country's share of the world (%) series=['Share of world wealth', 'Share of world debt', 'Share of world output', 'Share of world people']
- United States: [35.09, 29.03, 26.0, 4.16]
- China: [16.18, 22.09, 16.47, 17.12]
- Japan: [4.25, 5.74, 3.75, 1.5]
- Germany: [4.56, 3.87, 4.27, 1.02]
- United Kingdom: [3.02, 3.51, 3.38, 0.85]
- France: [3.51, 4.27, 2.84, 0.84]
- Italy: [2.65, 2.26, 2.16, 0.72]
- Canada: [2.56, 2.78, 1.96, 0.51]
- India: [3.13, 2.57, 3.34, 17.82]
Caption: Debt here is nonfinancial debt. Each country's debt is BIS (Q4 2025) and the world total it is divided by is the IIF's $271.9T, so the shares are approximate. Country wealth is derived from UBS wealth per adult times adults, and China's and India's use end-2022 wealth figures, so treat them as rough.
Source: UBS Global Wealth Report 2026 and Databook 2023, BIS total credit statistics (Q4 2025), World Bank (2025).

[67 table]
| Group | Share of world wealth | Share of world debt | Share of world output | Share of world people |
|---|---|---|---|---|
| G7 (US, Japan, Germany, UK, France, Italy, Canada) | 56% | 51% | 44% | 9.6% |
| G10 (really 11: the G7 plus Belgium, Netherlands, Sweden, Switzerland) | 60% | 56% | 48% | 10% |
| G10 plus China, India and Malaysia | 79% | 81% | 68% | 46% |

[68 p] Read the chart in pairs. The rich are also the big borrowers: the G7 holds about 56% of world household wealth and owes about 51% of world nonfinancial debt, with under 10% of the world's people. Lenders lend against assets and income, so debt follows wealth. The US has a bigger share of world wealth (35%) than of world debt (29%) or output (26%). China's share of debt (22%) is above its shares of wealth and output on these mixed-year figures. McKinsey says China's balance sheet grew through debt more than through rising asset values (via press), though its property boom was also a price story. India has 18% of the world's people and about 3% of everything else, and its low debt partly reflects a small formal financial system.


### Six ways to build a country's balance sheet

[70 table]
| Country | Government debt, % of GDP | Household debt, % of GDP | Company debt, % of GDP | Who holds the state's debt | Owns abroad minus owes abroad |
|---|---|---|---|---|---|
| United States | 116% | 68% | 72% | Fed 14%, foreigners 29% (of debt held by the public) | -$26.5T (-91% of GDP), end 2024 |
| Japan | 193% | 61% | 113% | Bank of Japan 43%, foreigners 13% (end 2025) | +$3.5T (+83%) |
| Germany | 63% | 48% | 87% | Bundesbank 20%, outside Germany 51% | +$3.6T (+77%) |
| Italy | 137% | 36% | 58% | Bank of Italy 19%, outside Italy 34% | +$0.35T (+15%) |
| France | 116% | 59% | 155% | Bank of France 17%, outside France 54% | -$0.7T (-22%) |
| United Kingdom | 102% | 74% | 58% | foreigners about a third | -$0.35T (-10%) |
| Canada | 100% | 100% | 119% | non-residents about 45% of the bond market | +$1.3T (+59%) |
| Belgium | 108% | 57% | 118% | National Bank of Belgium 15%, outside Belgium 63% | +$0.38T (+57%) |
| Netherlands | 45% | 94% | 169% | De Nederlandsche Bank 21%, outside the Netherlands 49% | +$0.72T (+60%) |
| Sweden | 35% | 82% | 147% | Riksbank 4%, foreigners 23% | +$0.39T (+65%) |
| Switzerland | 25% | 123% | 129% | not confirmed | +$1.15T (+119%) |
| China | 99% | 58% | 143% | not confirmed | +$3.3T (+18%) |
| Malaysia | 65% | 70% | 89% | foreigners about 20% of MGS (July 2026) | about zero |

[71 p] Notes: debt ratios are BIS, Q4 2025. Shares of government debt are 2025 (Eurostat for the euro members and Sweden, where "outside" includes other euro area investors and the ECB). Net foreign positions are end 2024 (IMF). What households own differs too: financial assets are 79% of gross household wealth in the US but 44% in Germany, where homes weigh more (UBS).

[72 callout] (The US and Japan) The US is the richest country and the largest net debtor to the rest of the world, about minus $26.5T at the end of 2024. It can borrow abroad in its own currency because the world wants dollars. The bigger currency risk in world debt sits outside the US: about $14T of dollar credit owed by borrowers abroad at the end of September 2025 (BIS), which gets heavier for them when the dollar rises. Japan's government owes about twice its output, yet Japan as a nation is owed $3.5T by the world. The Bank of Japan held about 43% of the government's bills and bonds at the end of 2025 (41% by June 2026) and foreigners about 13%, so Japan's debt is mostly owed from one Japanese pocket to another, in yen. Its government debt is 193% of output on the BIS basis, about 207% gross on the IMF's, and about 136% net of the government's own financial assets (IMF). Each figure is right on its own basis. The risk shows up as a weak yen, not as foreign creditors walking away.

[73 callout] (Germany and Italy) One currency, opposite structures. Germany's state owes 63% of output, Italy's 137%. Yet the typical Italian adult is richer than the typical German one: median wealth $131,001 against $53,485 (UBS, modelled). Italian families owe little, 36% of output against 48% in Germany. The usual explanation is home ownership, which is more common in Italy, though this chapter has not checked the figures. Italy's state is the debtor, its families much less so. Neither country prints its own currency, so investors can charge either one a risk premium when they worry. Countries with their own central bank pay such premia too, as Britain found in 2022.

[74 callout] (France) Same euro, a different worry. The French state owes about 116% of output, less than Italy's 137% (BIS), and French companies carry the heaviest debt in this table, 155% of output. Investors outside France, including other euro area investors and the ECB, hold about 54% of French government debt (Eurostat), and France owes the world a net $0.7T (end 2024). Yet in early October 2026 investors charged France more than Italy to borrow for ten years: about 1.4 points over Germany for France, against about 1.2 for Italy (press). They were reacting to France's deficit and politics more than to the size of its debt. A debt ratio is where the analysis starts, not where it ends.

[75 callout] (The UK and Canada) House-rich households with heavy mortgages. Canadian household debt is about 100% of output and British about 74%, among the highest in the G7. When interest rates rise, these families feel it first, because their mortgages reset within a few years. Canada is a large net creditor abroad, partly thanks to big pension funds investing overseas, while the UK is a small net debtor.

[76 callout] (Switzerland) A tiny state and heavy private balance sheets. The Swiss government owes only 25% of output, Swiss households 123%, the highest in the table, much of it mortgages that owners often keep rather than repay. Yet Swiss adults are the richest on Earth on average ($910,382) and the country owns far more abroad than it owes. High gross debt, very high net wealth: proof that gross debt alone says little.

[77 callout] (China) Debt-built growth, saved at home. China's total nonfinancial debt is about 300% of output, above the US, and its companies, including local government financing vehicles, carry most of it (143%). Yet China is a net creditor abroad, because its savings are lent at home, through Chinese banks, in yuan. Falling property prices have dragged on its household wealth.

[78 callout] (Malaysia) A smaller currency with a foreign window. Malaysia's nonfinancial debt is about 224% of output: government 65%, households 70% (high for an emerging market, including mortgages and car loans), companies 89%. It owes the world about as much as it owns abroad. Foreigners hold about a fifth of Malaysian Government Securities (20.1% in July 2026), enough that a jump in US yields can pull money out and push the ringgit down, as Level 1's "The view from a smaller currency" described.

[79 curiosity]
- Q: Japan's government owes about twice its GDP. Why is it not treated like Greece was?
  A: Its debt is in yen, the Bank of Japan held about 43% of it at the end of 2025, foreigners only about 13%, and Japan as a whole is owed $3.5T by the world. Greece borrowed in a currency it could not print, much of it from foreigners. (builds on rb-em)
- Q: Germany, Italy and France share the euro. Why did France, with less government debt than Italy, pay more to borrow in October 2026?
  A: Investors price the risk that worries them now, not only the size of the debt. France's deficit and politics worried them more than Italy's higher debt: about 1.4 points over Germany for France against about 1.2 for Italy (press, early October 2026). None of the three can print euros. (builds on rb-09)
- Q: Is a country with high government debt but rich households poor or rich?
  A: Look at the whole national balance sheet. Japan: state debt 193% of output, yet a net creditor of 83% of output abroad. Switzerland: tiny state debt, households owe 123% of output, still the richest adults on Earth. (builds on rb-nation)
- Q: China is not in the G7 or the G10. Why does that change the picture?
  A: China holds about 16% of world household wealth (18.5% counting Hong Kong and Taiwan) and 22% of world nonfinancial debt, and it added more than $4.8T of the roughly $10T rise in world debt in the first half of 2026 (IIF, via press). Leave it out and you miss nearly half of the rise in world debt in 2026 so far. (builds on rb-leader)


### What would change the picture

[81 p] These are the signs to watch. Each one would change a number or a story in this chapter, and each has a date or a source.

[82 table]
| Watch | What it would change | When | Source |
|---|---|---|---|
| House prices fall 20% | Measured world net worth falls by roughly 13% (a model: real estate is about two thirds of it). Debt stays at face value, so it looks bigger | Any year | McKinsey, Level 1 "The titled world" |
| The dollar moves 10% either way | Every world total moves about 6% to 7% in dollars with nothing real changing (a model) | Check on 30 June 2027 | Fed broad dollar index |
| World debt above $375T, or the debt ratio rising for the first time since 2020 | Ends the "ratio falling" story | IIF release with Q3 2026 data, mid November 2026 to February 2027 | IIF |
| BIS world debt ratio above 250% | Confirms the 2025 rise was not a one-year quirk | BIS release with Q2 2026 data, early December 2026 | BIS |
| France's 10-year spread over Germany well above its early October 2026 level of about 1.4 points | A sovereign scare inside a currency union, where no member can print its way out | Weekly | Market data, press |
| Private credit growing much faster than output for several years | The warning sign post-Keynesian economists watch, measured by the BIS credit-to-GDP gap (country values not yet checked) | Quarterly | BIS |
| Inflation staying high, or falling back | High inflation keeps shrinking debt ratios at savers' expense. A fall back would stop the ratio falling | Monthly | National statistics |
| World household wealth below $500T for end 2026 | Prices, not piles, went into reverse | UBS report, about 30 June 2027 | UBS |


### What people say, and what the schools add

[84 table]
| What people say | Verdict |
|---|---|
| The world is in debt, but to whom? (a 14-second meme, 27 million views) | The right question. The world owes it to itself |
| Global debt is $300 trillion | Right for 2021 to 2024 (about $300T to $320T, IIF). Now $348T (end 2025) and over $365T (mid 2026, via press) |
| Debt is three times the world economy | True on the widest count, about 3.1 times. About 2.4 times without the financial sector |
| The global debt bomb is about to go off | Overstated as one bomb, wrong to dismiss. The IIF ratio fell five years running to 2025, but dollar debt rose about $46T from end 2024 to mid 2026 and the BIS ratio rose in 2025. The risks are specific: refinancing in emerging markets, dollar debt owed abroad, a few governments |
| Debt is bigger than wealth | Depends on the counter. On loans and bonds, wealth is 1.4 to 1.7 times debt (517.7 / 365 to 600 / 348.3). On everything owed on paper, about $1,200T, the reverse. Neither comparison should be a subtraction |
| We owe it to ourselves | True for the world in total and for debt held at home. Not true between families, and false for debt in a foreign currency and for net debtor nations |

[85 table]
| School | Strongest point | What it would add |
|---|---|---|
| Official (IMF, BIS, IIF) | Debt is high and shifting to governments. Interest bills are eating fiscal room | Watch debt to GDP and refinancing needs |
| Post-Keynesian and MMT | Government debt in its own currency is the private sector's asset. Private debt is the real danger | Look harder at Chinese firms and Canadian and Swiss households |
| Austrian and hard money | Unanchored money let debt outgrow output since 1971. Cheap credit inflates asset prices, so part of measured wealth is a bubble | Treat the fall in the debt ratio after 2020 as quiet default through inflation |
| Historians (Reinhart and Rogoff, This Time Is Different, 2009) | Crises cluster after rapid debt build-ups, above all debt owed abroad in a foreign currency | Watch fast debt growth and foreign-currency debt, not the world total |


### Say it back

[87 check] Q: A friend says the world is $500 trillion in debt and only worth $300 trillion. What would you ask first, and what two things would you tell them?
A: Ask: which debt? Then, first: on the usual meaning, loans and bonds, the world owes about $348T to $365T and is worth $518T to $600T net, so the order flips. Only the widest count, everything owed on paper including deposits, passes $500T, at about $1,200T. Second: whichever count they mean, it cannot be subtracted from wealth, because the world owes it to itself. What matters is who owes whom, in which currency, and how soon.

[88 check] Q: Why can Japan owe twice its output and still be a creditor nation?
A: Its government owes mostly its own central bank, banks, insurers and savers, in yen, while Japan as a whole owns $3.5T more abroad than it owes.

[89 check] Q: World debt to output fell in 2023 and 2024 while the dollar amount rose. What did the work?
A: Inflation. Nominal output grew faster than debt, so the ratio fell without anyone paying debt down.

Rules: Before you compare world wealth and world debt, ask which debt: loans and bonds, or every claim on paper. / Never subtract world debt from world wealth. Debts cancel at world level, so ask what real things are left. / Ask who owes whom, in which currency, and how soon. That decides danger, not the size of the total. / Before you believe a world total, check the counter, the year and the dollar.
