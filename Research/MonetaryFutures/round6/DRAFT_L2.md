# Draft: Rulebook Level 2 chapters (Round 6), exported for verifier and red team

Block types: p paragraph, h heading, table, bars/pairbars/timeline charts (data shown), curiosity questions (q, a, builds-on chapter id), bridge, radiant map, myth, check, callout, insider.

## L2.1 Bonds: the backbone of today's money (id rb-bonds)

Kicker: If money is a building, government bonds are its foundation. Level 2 opens that foundation: how big it is, who owns it, how a bond is born, how it is pawned overnight, and the years the safe asset broke.

[0 tldr]
- A bond is a loan you give, usually to a government. It pays you a fixed rent on your money and gives the money back on a set date.
- Because the rent is fixed, the bond's price must move when new bonds pay more or less. Rates up, price down. Rates down, price up.
- The rent the market demands today is called the yield. Think of it as the price of patience.
- Almost every other interest rate in your life, from your mortgage to your savings account, is built on top of the government's yield.
- So when bond yields move, your loan, your rent, your job market and even your currency move with them.
- One last catch: every yield you see is a nominal number. Subtract tax and inflation to see what you really earn.

[1 bridge] Built on Level 1: recall these before you start
- rb-01: Money is a promise that others agree to accept. A bond is a promise with a date and a price.
- rb-04: Trade surpluses come back to the US as purchases of Treasuries, which is why foreigners hold about a third of them.
- rb-06: Treasuries are the third layer of dollars, after base money and bank deposits.
- rb-10: Every yield is a nominal number. A bond's real return is what is left after inflation.
- rb-13: Free of default is not free of risk. That is the rule a bank forgot in 2023.

[2 radiant] centre: A bond is a promise the whole system uses as cash
- The seesaw and the lever: Price falls as yield rises, measured (rb-10)
- Bigger than stocks: $160.7T of promises, priced daily (rb-buckets)
- Who holds the promise: Foreigners, funds, the Fed, banks (rb-04)
- How a bond is born: Auctions, dealers, bidders, settlement day (rb-moneymake)
- The pawnshop ticket: Repo turns bonds into overnight cash (rb-buckets)
- The weather report: Yield curve, inflation and real return (rb-08)
- When the safe asset broke: 1981, 1994, 2020, 2022, 2023, 2026 (rb-13)
- Smaller currencies, new rails: Malaysia's bonds, stablecoins holding bills (rb-em)

[3 cards]
- Bond: An IOU. You lend money, the borrower promises rent plus your money back.
- Coupon: The fixed rent the bond pays each year. Set on day one, it never changes on an ordinary fixed-rate bond. Floating-rate notes and inflation-linked bonds are the exceptions.
- Maturity: The day you get your original money back.
- Price: What someone would pay for your IOU today if you sold it early.
- Yield: The rent you really earn at today's price. The market's price of patience.


### Step 1. A bond is a rental contract for your money

[5 p] Forget finance for a moment. You have $1,000. The US government says: lend it to me for 10 years, I will pay you $50 every year as rent, and give your $1,000 back at the end. You agree, and you receive a contract that says exactly that. That contract is a bond.

[6 diagram] bond-ticket: The whole bond on one ticket. You pay once, collect rent every year, and get your money back at the end. Bar heights are not to scale.

[7 p] Bills, notes and bonds are the same ticket in different lengths. Treasury bills last a year or less and pay no yearly rent: you buy them a little below face value and collect the full amount at the end, so the discount is your rent. Notes last 2 to 10 years. Bonds last 20 to 30 years. The public holds about $32.57T of these tickets, and about 22% of the tradable ones are short-term bills.

[8 check] Q: You buy a 10-year bond for $1,000 that pays $50 a year. If you hold it to the end and the government pays as promised, how much do you collect in total?
A: $50 x 10 = $500 of rent, plus your $1,000 back, so $1,500. If you hold to the end, the price swings in between never touch you.


### Step 2. Why the price moves: the locked-rent apartment

[10 callout] (Picture this) You own an apartment rented out at a locked $500 a month for ten years. A year later, every similar apartment in town rents for $600. You decide to sell. The buyer inherits your tenant, still paying $500. Would anyone pay full price for that? No. You must cut the price until the deal makes sense. Now flip it: if town rents fall to $400, your locked $500 tenant makes your apartment the best deal around, and buyers pay extra. A bond is that apartment. The coupon is the locked rent.

[11 diagram] seesaw: The coupon is locked, so the price is the only thing that can move. When new bonds pay more, old bonds get cheaper.

[12 steps]
- You hold a 10-year bond bought for $1,000 that pays $50 a year. Your yield is 5%.
- New bonds start paying $60 a year on $1,000, a 6% yield. Town rents went up.
- A buyer will not pay $1,000 for your $50 when $60 is on offer. You cut the price until your bond also gives the buyer 6%, counting the $50 rent and the $1,000 at the end. That price is about $926.
- You lost about $74, or 7%, of market value, even though the government never missed a payment. Hold to the end and you still collect every $50 and your $1,000. Sell early and you take the loss. That is price risk.

[13 widget] bond-lab: Try it. Three bonds, all bought for $1,000 and all paying $50 a year. Drag the rate new bonds pay and watch their prices. The black line is the $1,000 you paid.

[14 insider] Longer bonds swing more, because more years of locked rent are affected. A one point rise in rates, from 5% to 6%, knocks about 7% off a 10-year bond and about 14% off a 30-year bond. That is how Silicon Valley Bank, holding long bonds bought when rates were low, lost enough value to fail in March 2023.


### Level 2 word: duration, the bond's lever

[16 p] Duration is the number that tells you how hard a bond swings. Roughly, a bond's price moves by its duration, in percent, for each one point move in yields, the other way. It is also about the average time until you get your money back, with near payments counting more than far ones. A 2-year Treasury has a duration near 2, a 10-year near 8, a 30-year near 15.

[17 table]
| Bond (yields of 21 October 2026) | Price per $100 | Duration (the lever) | If yields rise 1 point | If yields fall 1 point |
|---|---|---|---|---|
| 2-year, 4.75% coupon, yield 4.81% | $99.89 | 1.9 | -1.9% | +1.9% |
| 10-year, 4.625% coupon, yield 5.13% | $96.09 | 7.9 | -7.5% | +8.3% |
| 30-year, 5.00% coupon, yield 5.42% | $93.81 | 15.0 | -13.4% | +16.8% |

[18 p] Look at the last two columns. For the same one point move, the gain when yields fall is bigger than the loss when they rise: +16.8% against -13.4% on the 30-year. That bend is called convexity. It is why long bonds are loved in a crash and feared in an inflation. Duration figures are a model computed for this chapter with half-yearly coupons. Coupons for the 2-year and 30-year are illustrative, the 10-year is the real note auctioned on 7 October 2026.


### Step 3. What sets the rent: a tug of war

[20 p] The yield is the price of patience: what the market demands for handing over money today and waiting for it to come back. It is set every second by a tug of war between forces pulling it up and forces pulling it down.

[21 diagram] yield-tug: The yield is the knot in the rope. In October 2026 the up team was winning, and the 10-year yield sat at 5.13%.

[22 table]
| Force | What it means | Which way it pushes |
|---|---|---|
| 1. The Fed's rate path | Short yields track where the Fed sets overnight rates now and where markets expect it to go | Expected hikes push yields up, expected cuts pull them down |
| 2. Expected inflation | Lenders want compensation for prices rising while they wait | More expected inflation means higher yields |
| 3. Term premium | Extra pay for locking money up for years when the future is uncertain | More uncertainty about deficits, inflation or policy pushes long yields up |
| 4. Supply | How much the Treasury must borrow and in what lengths | Bigger deficits and more long bonds push yields up |
| 5. Demand | Who must or wants to buy: foreign central banks, banks, money funds, pensions, stablecoins | Captive or eager buyers pull yields down, a big seller pushes them up |
| 6. Growth | A strong economy competes for money, a weak one frees it up | Booms raise yields, recessions lower them |
| 7. Trust | Confidence in repayment and in the value of the currency repaid | Any doubt raises yields, a crisis elsewhere can lower them as money flees to safety |

[23 diagram] yield-parts: Split the 10-year yield in two. The gold part pays you back for expected inflation. The blue part is the real reward for waiting.

[24 p] You can see several forces at once in 2026. The Fed hiked in September (force 1). Oil above $100 kept inflation worries alive (force 2). A $1.99T deficit meant heavy issuance (force 4). Japan's recorded holdings of Treasuries fell $171B from February to August while it spent a similar sum defending the yen (force 5). Meanwhile French stress pushed some European money into Treasuries for safety (force 7 in reverse). The result: a 10-year yield of 5.13% on 21 October 2026, after a peak of 5.31% on 5 October.


### Step 4. Why bonds sit under everything

[26 diagram] bond-tower: Picture a champagne tower at a wedding. Government bonds are the bottom row of glasses. Every glass above rests on them.

[27 list]
- The Fed's money rests on them. The Fed creates bank reserves and cash, and the main asset it holds against them is Treasuries: $4.57T of its $6.47T of securities, about 71% (21 October 2026).
- They are the financial system's pawnshop ticket. In repo markets, banks and funds hand over Treasuries overnight to borrow cash. Trillions move this way every day.
- Banks and money funds park cash in them, because rules treat them as the safest liquid asset.
- Stablecoins must hold them. Under the GENIUS Act, compliant dollar tokens must be backed by cash-like reserves: deposits, central bank money, government money funds, repo, or Treasuries with 93 days or less left. Short bills are the dominant choice.
- Foreign central banks keep their savings in them. That is how the world holds dollars without holding cash.
- They set the base price of money. Mortgages, car loans and company loans are priced as the Treasury yield plus a margin for risk.


### Measured: is backbone the right word?

[29 p] Level 2 does not take a title on trust. Here is a number on each job a Treasury does.

[30 table]
| Job | Measure | Size |
|---|---|---|
| Base under the Fed's money | Treasuries as a share of the Fed's securities | 71% ($4.57T of $6.47T, 21 Oct 2026) |
| The world's savings | Treasuries held by foreign governments, as a share of all world currency reserves | about 28% ($3.76T of $13.22T, mid 2026) |
| The pawnshop ticket | US repo lent against bonds each day, mostly Treasuries | $12.6T a day (Q3 2025) |
| Bank survival kit | Treasuries, agency bonds and cash at US banks | $7.88T, 30% of bank assets (Sep 2026) |
| Money funds | Total money fund assets, mostly government paper | $7.98T (Sep 2026) |
| New rails | Treasury bills held by the largest stablecoin issuer, Tether | about $115B (mid 2026, press) |
| Price of all other credit | Mortgages and company loans are priced as a Treasury yield plus a margin | every day |

[31 p] The title passes, with one correction. Bonds are the backbone of the system's plumbing: collateral, reserves, liquidity and stablecoin backing. They are not what most bank deposits lean on. At US banks, loans are $14.1T of $25.9T of assets, Treasuries and agency bonds $4.8T. One sentence keeps both truths: deposits are born from loans, but the system settles, pledges and saves in Treasuries.


### How big is the bond world, and who owns it

[33 bars] The world's bonds and shares, end of 2025
- All the world's bonds: 160.7
- All the world's listed shares: 157.8
- US bonds (38.1% of the world): 61.2
- US Treasuries (marketable): 31.8
Caption: 
Source: SIFMA Capital Markets Fact Book 2026, US Treasury Monthly Statement of the Public Debt (30 Sep 2026)

[34 p] At the end of 2025 the world's bonds were worth slightly more than all its listed shares, $160.7T against $157.8T. Most people picture the stock market as the giant. The gap is small and flips with prices, but the point holds: the market for promises is as large as the market for ownership. About 38% of the world's bonds are American, and the Treasury market alone trades about $1.2T a day.

[35 timeline] Who owns America's IOUs: share of all Treasuries held, 1970 to 2025 years=[1970, 1980, 1990, 2000, 2007, 2014, 2019, 2021, 2023, 2025]
- Foreigners: [8.3, 20.9, 20.8, 36.0, 54.5, 48.8, 40.9, 33.7, 32.8, 32.5]
- The Fed: [15.2, 12.4, 5.8, 11.7, 11.8, 21.7, 14.0, 25.0, 17.3, 12.7]
- Banks: [30.6, 20.6, 9.7, 7.1, 2.8, 4.0, 5.2, 7.2, 6.3, 6.9]
- Money funds: [0.0, 0.6, 2.2, 3.3, 4.2, 3.8, 6.6, 7.9, 9.4, 12.4]
Caption: Foreigners rose from 8% to a peak of 54.5% in 2007 and fell back to 32.5%, while their dollar holdings kept rising. Banks fell from 31% to 7%. Money funds grew from almost nothing to about the Fed's share.
Source: Federal Reserve Financial Accounts (Z.1) table L.210, year-end, via DBnomics. Shares use market values, so the Fed's level differs from its weekly balance sheet.

[36 insider] (Insider eye-opener) Your cash in a money market fund is mostly lent to the government. Money funds held 0.6% of all Treasuries in 1980 and 12.4% in 2025, almost exactly the Fed's 12.7%. The quiet giant of the bond market is ordinary savers' cash, pooled.

[37 curiosity]
- Q: Which is bigger, the world's stock market or its bond market?
  A: Bonds, just: $160.7T against $157.8T of listed shares at the end of 2025 (SIFMA). Most people guess stocks by a mile. A market value is a price tag, so the order can flip in a big sell-off. (builds on rb-buckets)
- Q: In 1970 US banks owned almost a third of all Treasuries. What do they own now?
  A: About 7% (2025). Banks moved from lending to the government to lending to households and firms, while foreigners and funds took over. (builds on rb-06)
- Q: Japan cut its US Treasuries by $171B in six months. Did foreigners flee US debt?
  A: No. Total foreign holdings were $9.33T in August 2026, near the record, and the UK ($1,010B) is now almost level with Japan ($1,068B) (Treasury TIC data). The foreign share fell because everyone else bought even more. (builds on rb-leader)
- Q: A private token company holds about $115B of Treasury bills. Where would that rank among countries?
  A: Around 20th, close to the UAE and Bermuda in the August 2026 TIC table. The figures are two months apart and Tether's is from press reports of its attestation, so treat the rank as rough. A stablecoin issuer now owns more Treasuries than most nations. (builds on rb-crypto)


### How a bond is born: one real auction

[39 steps]
- Announcement. The Treasury offered $39.0B of a 10-year note with a 4.625% coupon, maturing 15 August 2036, for auction on 7 October 2026.
- Bidding. Bids came in for $109.0B, 2.77 times the amount offered. The 25 primary dealers must bid for their share every time, so a sale never fails for lack of buyers.
- One price for all. Every winner pays the same yield, the highest one accepted: 5.300%, a price of $94.86 per $100. It was the highest yield at a 10-year auction since at least 2008.
- Who won. Indirect bidders (foreign and domestic investors bidding through dealers) took 79.6%. Direct bidders took 17.0%. The dealers kept only 2.5%, the smallest share in the data.
- Settlement on 15 October. Buyers' banks pay, and the money goes up into the Treasury's account at the Fed. If the buyer was a fund or a person, their deposit is gone until the Treasury spends it (chapter 2 of this level).

[40 timeline] Who wins the 10-year auction: share of the bonds sold, 2008 to 2026 years=[2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026]
- Primary dealers: [71.8, 57.3, 44.2, 41.6, 41.8, 40.0, 38.6, 29.2, 27.3, 29.1, 27.2, 26.1, 25.4, 17.2, 16.6, 14.3, 14.6, 11.0, 8.8]
- Indirect bidders: [27.1, 37.8, 42.3, 48.5, 38.2, 40.3, 46.1, 58.8, 63.3, 63.8, 64.2, 60.0, 60.7, 65.9, 65.3, 66.9, 68.5, 70.5, 73.3]
- Direct bidders: [1.1, 4.9, 13.5, 9.9, 20.0, 19.8, 15.3, 12.0, 9.4, 7.2, 8.6, 13.9, 14.0, 16.9, 18.0, 18.7, 16.9, 18.5, 17.9]
Caption: The dealers' job has shifted from buyer to backstop. Indirect bidders, foreign and domestic investors bidding through dealers, now take most of each sale. 2026 is to date.
Source: US Treasury auction results (fiscaldata), 10-year notes including reopenings.

[41 check] Q: At the October 2026 auction the dealers, who must bid, kept only 2.5%. Is that a good or a bad sign for the Treasury?
A: Good in the short run. It means investors wanted the bonds at that price, so the backstop was barely needed. The cost was the price itself: the Treasury had to pay 5.30% to get that demand.


### The pawnshop ticket: repo, walked through the books

[43 p] Repo is a loan secured by a bond. You sell a bond for cash today and agree to buy it back tomorrow at a slightly higher price. The difference is the interest. The lender keeps a cushion called a haircut, for example lending $98 against $100 of bonds. Here a hedge fund buys a $100 Treasury and funds it in repo through a dealer, and a money market fund supplies the cash.

[44 table]
| Who | What they now own | What they now owe | What changed |
|---|---|---|---|
| Hedge fund | $100 Treasury (pledged) | $98 repo loan, plus $2 of its own money | It holds a $100 bond with only $2 of its own money |
| Dealer (a bank's arm) | $98 loan to the fund | $98 borrowed from the money fund | It is the middleman and nets the two |
| Money market fund | $98 repo loan, safe and overnight | nothing new | It swapped a bank deposit for a loan backed by a Treasury |
| The two floors | Reserves move between banks | Deposits move from the fund to the bond's seller | Public money only moved. Nothing was created |

[45 p] The US repo market averaged about $12.6T of loans outstanding each day in the third quarter of 2025 (Office of Financial Research). That is why a Treasury is worth more than its coupons: it can be turned into cash overnight at a small haircut. It is also where the system breaks. When haircuts jump or dealers run out of room, funds must sell bonds, prices fall, haircuts rise again. That loop drove March 2020.

[46 curiosity]
- Q: Why is a Treasury worth more than the interest it pays?
  A: Because it is a pawnshop ticket. About $12.6T a day is lent against bonds in US repo, mostly Treasuries. Being able to turn a bond into cash overnight is worth something, so investors accept a slightly lower yield for it. (builds on rb-01)
- Q: Why would the Fed buy more Treasuries in five weeks than it owned in total in 2007?
  A: In March and April 2020 even Treasuries froze as everyone sold to raise cash. The Fed bought $1.27T in five weeks, against total Treasury holdings of $0.76T at the end of 2007 (Fed H.4.1). (builds on rb-buckets)


### Step 5. How a bond move reaches your life

[48 diagram] bond-ripple: One move in the 10-year yield, four ripples.

[49 p] Take a $400,000 mortgage over 30 years. At 6.40% the monthly payment is about $2,502. At 7.40%, roughly where US mortgages sat in October 2026, it is about $2,770. One point on the bond market costs that family about $267 a month, about $3,210 a year, for thirty years.

[50 diagram] yield-curve: The yield curve: yields lined up from short to long. Normal curves slope up. An inverted curve, drawn here as an example, often warns of a slowdown.

[51 p] Line up yields from short to long and you get the yield curve. Normally it slopes up, because waiting longer deserves more pay. In October 2026 it does: about 4.81% at 2 years, 5.13% at 10 years and 5.42% at 30 years. When short yields rise above long ones (an inverted curve), markets are betting the Fed will have to cut, usually because a slowdown is coming. Inversions have come before many US recessions, though the timing is loose. The longest inversion of the 2s and 10s on record, 541 trading days from April 2022 to September 2024, has not been followed by a recession so far, and by 22 October 2026 the curve sloped up again by 0.31 points.

[52 myth] Myth: Government bonds are safe, so you cannot lose money on them.
Reality: They are safe from default, not from price changes. In 2022 bonds had one of their worst years on record. In March 2023 Silicon Valley Bank failed largely because the long Treasuries and mortgage bonds it held had fallen in price as rates rose. Safe means the promise will be kept, not that the price will hold.

[53 quote] "I used to think if there was reincarnation, I wanted to come back as the president or the pope or as a .400 baseball hitter. But now I would want to come back as the bond market. You can intimidate everybody." (James Carville, adviser to President Clinton, 1993)

[54 insider] The bond market is the only voter that votes every second. When it dislikes a government's plans, yields rise and the government's own interest bill rises with them. US net interest reached $1,051.8B in FY2026, more than defense. That bill is the bond market's running verdict, and it is why Treasury secretaries watch auctions more closely than polls.


### When the safe asset broke

[56 p] A Treasury is safe from default in dollars. It is not safe from price. Every few years the market reminds people of the difference.

[57 table]
| Episode | 10-year yield, low to high | Price change on a 10-year bond (model) | What broke |
|---|---|---|---|
| 1979 to 1981, Volcker | 8.76% to 15.84% | -35% | Inflation above 13%. The Fed let rates rise until it broke |
| 1994, the bond massacre | 5.19% to 8.05% | -19% | A surprise Fed hiking cycle. Orange County went bankrupt |
| 2008, the crisis | 4.27% to 2.08% | +20% (a gain) | Everything else fell and Treasuries rose. The safe asset worked |
| March 2020, dash for cash | 0.54% to 1.18% in seven trading days | -6% | Even Treasuries could not be sold easily. The Fed bought $1.27T |
| 2021 to 2023 | 1.35% to 4.98% | -28% | Stocks and bonds fell together. UK pension funds needed the Bank of England in September 2022 |
| 2023, SVB |  |  | US banks carried $620B of unrealized bond losses (end 2022). One became a run |
| 2026 | 3.97% to 5.31%, the highest since 2007 | -10% | A Fed hike, oil, heavy issuance. The 30-year hit 5.67% on 7 October |

[58 p] Price changes are a model: a 10-year bond bought at par at the low yield and priced at the high one, coupons ignored. Yields are daily closes from the Fed's H.15 release. Notice the one gain: in 2008 Treasuries did their job as everything else fell. Notice too that 2022 was different. Stocks and bonds fell together, which broke the old idea that one always rescues the other.

[59 p] How can a bank fail holding bonds that never missed a payment? Walk through a bank shaped like Silicon Valley Bank.

[60 table]
| Step | The bank owns | The bank owes |
|---|---|---|
| 2021: deposits flood in | $100 of 10-year bonds bought at 1.5% | $100 of deposits, and $8 of owners' money |
| 2022: yields rise to 4.5% | The bonds are now worth about $78 | Still $100 of deposits. Marked to market, owners' money is -$14 |
| 2023: depositors leave | Bonds must be sold to pay them | The hidden loss becomes real. Owners' money is gone |

[61 p] Accounting rules let the loss stay hidden while the bank promised to hold the bonds to the end. A run forced a sale, and the paper loss became real in a day. The bonds were never in default. SVB's held-to-maturity losses were about $15.1B, close to all of its owners' money.

[62 curiosity]
- Q: How much could a risk-free 10-year Treasury lose?
  A: About 35% of its price as yields went from 8.76% in 1979 to 15.84% in September 1981, and about 28% from 2021 to 2023 (model, Fed H.15 data). Risk-free means free of default, not free of price swings. (builds on rb-13)
- Q: Someone bought a 10-year Treasury at 0.625% in 2020. What is it worth now, and did they lose money?
  A: About $84 per $100 at today's yields with four years left (model). They lose nothing in dollars if they hold to 2030, but they lose buying power: inflation peaked at 9.1% in 2022. (builds on rb-10)
- Q: A bank failed in 2023 holding bonds that never missed a payment. How?
  A: Its bonds had lost value as yields rose, about $15.1B at SVB, close to its owners' money, and US banks together carried $620B of such losses at the end of 2022 (FDIC). When depositors ran, the paper loss became real. (builds on rb-07)


### The view from a smaller currency: Malaysia's bonds

[64 table]
| Malaysia's government bonds | Value | Date |
|---|---|---|
| All government bonds (conventional MGS plus Islamic GII sukuk) | RM1.31T | March 2026 |
| Share held by foreigners | about 21.6% | March 2026 |
| 10-year MGS yield | 3.985%, against about 4.8% for the US 10-year | end August 2026 |
| Bank Negara's reserves | US$130.6B | end May 2026 |
| Main domestic holder | EPF, with 46% of its assets in fixed income, mostly MGS | end 2024 |

[65 p] Here is a Level 2 surprise. At the end of August 2026 Malaysia could borrow for ten years at 3.985%, about 0.8 points cheaper than the United States. Lower inflation, a large captive saver in the EPF and a central bank with reserves all help, while the US is selling bonds in record amounts. Almost half of Malaysia's government debt is Islamic sukuk, a structure the US does not have.

[66 p] The weak spot is the foreign fifth. When US yields jump, foreign money leaves ringgit bonds, the ringgit weakens and Bank Negara may sell dollars to steady it. Malaysia's bond market lives by the US 10-year, as Level 1 chapter 12 described for its savers.

[67 curiosity]
- Q: Why can Malaysia borrow for ten years more cheaply than the United States?
  A: At the end of August 2026 the 10-year MGS yielded 3.985% against about 4.8% for the US 10-year. Lower inflation and a captive domestic saver (the EPF) help. The risk is the foreign fifth of holders, who leave when US yields jump. (builds on rb-em)


### Two stories, both half true

[69 table]
| Story | When it is right | When it is wrong |
|---|---|---|
| Treasuries are safe | Safe from default in dollars. In 2008 they rose 20% while other assets fell | Not safe from price: -35% from 1979 to 1981, -28% from 2021 to 2023. Not safe from inflation |
| China and Japan are dumping, the bond market is breaking | Japan's holdings fell $171B in six months and China's $109B in a year. The foreign share fell from 54.5% to 32.5% since 2007 | Total foreign holdings were $9.33T in August 2026, near the record. The UK added $108B in a year. The October 10-year auction was covered 2.77 times |


### Step 6. The catch: a yield is a nominal number

[71 p] Every yield you see quoted, 5.13% on the 10-year or 4.81% on the 2-year (21 October 2026), is nominal. It counts dollars, not what dollars buy. Level 1 chapter 13 called this the shrinking ruler. Your real return is what is left after inflation and, for most savers, after tax.

[72 steps]
- Start with the nominal yield: 5.13% on a 10-year Treasury in October 2026, or $51.30 a year on $1,000.
- Take out tax. In a 24% federal bracket about $39 is left. Treasury interest is free of state income tax, but not of federal tax.
- Take out inflation. If prices rise 2.4% a year, about what the bond market expects, $24 of that $39 only keeps up with prices. Your real gain is about 1.5% a year.
- If inflation turns out higher than expected, the real return drops below zero, even though every payment arrives on time.

[73 widget] real-lab: Try it. Set the bond yield, your tax rate and inflation. The bottom bar is what you really earn in buying power. Push inflation up and watch it turn red.

[74 p] This is not theory. In the 1940s the Fed held long-term yields near 2.5% while inflation ran in double digits after the war, quietly shrinking the war debt in real terms. In the 1970s inflation often ran above bond yields. And anyone who bought a 10-year Treasury at its record low closing yield of 0.52% in August 2020 earned about half a percent a year, while US consumer inflation peaked at 9.1% in June 2022.

[75 insider] This is the quietest way governments shrink debt. Keep the nominal yield below inflation for long enough and the real value of the debt melts, paid for by bondholders and savers who only look at the nominal number. Level 1 chapter 8 called it financial repression. The cure is the split in step 3: always separate a yield into the part that only keeps up with inflation and the part that is truly yours.


### Step 7. Say it back

[77 p] Close the page for a moment and explain these out loud. If you can, you understand bonds better than many people who use the word.

[78 check] Q: Rates on new bonds fall from 5% to 3%. What happens to the price of the bond you already own, and why?
A: It rises. Your bond pays $50 when new ones pay only $30, so buyers pay extra for your locked, higher rent. Rates down, price up.

[79 check] Q: Why does a 30-year bond lose more than a 2-year bond when rates rise?
A: Because it has 30 years of locked rent below the new market rate, not 2. The longer the lock, the bigger the price change. Try it on the slider.

[80 check] Q: If the Treasury suddenly has to sell far more long bonds while its biggest foreign buyer is selling, what happens to long yields and to mortgage rates?
A: Supply rises and demand falls, so bond prices drop and yields rise. Mortgages are priced off long Treasury yields, so mortgage rates rise too.

[81 check] Q: A bond yields 5% and inflation is 4%. You pay 24% tax on the interest. What is your real return?
A: 5% minus 24% tax leaves 3.8%. Subtract 4% inflation and you are at about minus 0.2% a year. Your balance grows, but your buying power shrinks.

Rules: Government bonds are the bottom row of the money tower. Learn them and the rest of the tower makes sense. / Price and yield move in opposite directions. Safe from default is not safe from loss. / A yield is the price of patience, set by the Fed path, inflation, uncertainty, supply, demand, growth and trust. / The longer the bond, the bigger the swing. / A yield is nominal. Subtract tax and inflation before you call it a gain. / Know your bond's lever. Duration tells you how much a one point move in yields will cost or pay you. / Free of default is not free of price. Check what a forced sale would fetch before you count a bond as cash.

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

[1 cards]
- Reserves: Banks' own accounts at the Fed. Upstairs money. About $2.96 trillion in October 2026. Only banks and a few institutions can hold them.
- Deposits: The money in your bank account. Downstairs money, a promise from your bank. About $19.6 trillion at US commercial banks.
- Treasury General Account: The government's checking account at the Fed. About $952 billion in late October 2026. Money in it is out of public hands.
- Primary dealer: One of 25 big dealers that must bid at every Treasury auction and that trade directly with the Fed.
- Open market: The market where bonds already issued change hands. The only place the Fed may buy Treasuries.

[2 p] Level 1 chapter 6 showed that a bank loan creates a deposit. In normal years that is the most common way money is born, but not the only one. This chapter finishes the picture. It adds the Fed, the Treasury and the dealers in between, and shows exactly which moves create money you can spend and which only shuffle money that banks use among themselves.

[3 bridge] Built on Level 1: recall these before you start
- rb-06: A bank loan creates a deposit and repaying it destroys one. There is no fixed money multiplier.
- rb-01: Money is a ledger of who owes what, so always ask whose ledger a dollar sits on: the Fed's or a bank's.
- rb-nation: Taxes are the state's subscription fee. Here you see them leave the public's books.
- rb-03: Wars suspend money rules, as the 1942 to 1951 yield cap did.
- rb-bonds: Treasuries are what the Fed buys, the Treasury sells and stablecoins hold. Read chapter 1 of this level first.

[4 radiant] centre: Two floors, two printers, many drains
- The everyday printer: Banks create deposits when they lend (rb-06)
- The upstairs printer: Fed reserves reach you through nonbanks (rb-bonds)
- The Treasury's staircase: Taxes up, spending down, deficits netted (rb-nation)
- The sponges: Treasury account and reverse repo absorb (rb-buckets)
- The shredders: Repayments, taxes, auctions, QT destroy (rb-07)
- The brakes: Capital, mandate, law, inflation (rb-03)
- Money outside banks: Money funds, repo, stablecoins, eurodollars (rb-crypto)
- Other printers abroad: ECB, Bank of Japan, Bank Negara (rb-em)


### The whole map on one page

[6 p] Level 2 starts with the full table, then explains each row. Every channel that adds to or drains the public's bank deposits is here, with its size in four kinds of year. Read across a row to see a channel change jobs. Read down a column to see which one ran the show.

[7 table]
| Channel | Adds (+) or drains (-) the public's deposits | Normal year 2019 | Emergency 2020 to 2021 | Shrinking 2022 to 2023 | Latest year |
|---|---|---|---|---|---|
| Bank loans, net of repayments | + when lending beats repayment | +$0.45T | +$0.68T | +$1.56T | +$1.00T |
| Banks buying (selling) securities from nonbanks | + buy, - sell | +$0.33T | +$1.86T | -$0.61T | +$0.14T |
| Fed buying (QE) or shrinking (QT) | Reserves always. Deposits only when the seller is a nonbank | -$0.13T | +$4.52T | -$1.04T | +$0.16T |
| Federal deficit, spending minus taxes | + when spent, then netted by who buys the bonds | $0.98T | $5.90T | $3.07T | $1.99T |
| Treasury account at the Fed | - when it rises, + when it falls | fell $0.02T | fell $0.07T | rose $0.43T | rose $0.23T |
| Money funds' cash parked at the Fed (reverse repo) | drains reserves when it rises | flat | rose $1.64T | fell $0.82T | flat |
| Result: bank deposits |  | +$0.79T (+6.4%) | +$4.71T (+35.7%) | -$0.50T (-2.8%) | +$1.23T (+6.7%) |
| Result: M2 |  | +$0.96T | +$6.15T | -$0.72T | +$1.17T |

[8 p] Windows run December to December, except the latest year (September 2025 to September 2026). Sources: Fed H.8 (banks), H.4.1 (the Fed), H.6 (M2), Treasury Monthly Statement (deficits). The rows do not add exactly to the result, because some channels have no clean series: banks buying back their own shares, fees and interest, and foreign official purchases. In 2019 bank lending and bank bond buying explain the whole rise. In 2020 to 2021 the Fed's channel was 6.6 times bank lending. In 2022 to 2023 deposits fell even though banks lent $1.56T, because QT, bank bond sales and a rising Treasury account drained more.

[9 curiosity]
- Q: In 2020 and 2021 bank deposits rose $4.71T while bank loans rose only $0.68T. Who printed the rest?
  A: The emergency printer. The Fed bought $4.52T of bonds and banks bought $1.86T of securities while the Treasury ran $5.90T of deficits (Fed H.8 and H.4.1, Treasury statements). (builds on rb-06)


### Two floors of money

[11 p] Picture the dollar system as a building with two floors. Upstairs are the Fed's books. Banks hold reserves there, the Treasury holds its account there, and money funds can park cash there overnight. Downstairs are the public's books: deposits at banks, plus paper cash. When you pay rent or buy groceries, you move downstairs money. Banks settle with each other upstairs.

[12 callout] (Picture this) Think of a big market hall. Upstairs is the wholesale floor, where only licensed traders deal, and they settle in special tokens issued by the hall's owner, the Fed. Downstairs is the shop floor, where everyone shops with receipts issued by the traders, which are bank deposits. Some deals happen only upstairs, between traders and the owner. Some happen only downstairs. And some go through the staircase and change the amount of receipts on the shop floor. This chapter is a guide to the staircase.

[13 diagram] mc-two-tier: Upstairs: reserves, the Treasury's account and cash parked at the Fed. Downstairs: deposits and cash held by the public. Arrows show which moves cross the staircase.

[14 table]
| Floor | What is there | Size, October 2026 |
|---|---|---|
| Upstairs (the Fed's books) | Bank reserves | $2.96T |
| Upstairs | Treasury General Account | $952B |
| Upstairs | Cash parked by money funds at the Fed (overnight reverse repo) | $0.3B (it peaked at about $2.4T in late 2022) |
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

[26 insider] The primary dealer in the middle is only the pipe. Nearly all primary dealers belong to big banking groups, and many act for customers. To know whether a Fed purchase added money you can spend, follow the cash to whoever holds it at the end. In 2020 to 2022 much of the selling came from nonbanks, which is why quantitative easing then added deposits as well as reserves.

[27 check] Q: The Fed buys $1 billion of Treasuries, and the sellers turn out to be three banks. How much new money can the public spend?
A: None directly. Bank reserves rose $1 billion, which is upstairs money. Public deposits change only if the sellers are nonbanks, or later when banks spend or lend.


### Step 3. The Treasury moves money between the floors

[29 p] The Treasury keeps its account at the Fed, upstairs. When a fund buys a new Treasury bond at auction, the fund's deposit falls, its bank's reserves fall, and the Treasury's account rises. Money has gone upstairs. When the Treasury pays a Social Security check, the reverse happens: the account falls, and the retiree's deposit and the bank's reserves rise. Taxes work like an auction: deposits go up the stairs. You can watch it happen. In the week to 21 October 2026 the Treasury's account rose $69 billion, and bank reserves fell $60 billion.

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


### Step 4. Drains, new pipes and the Fed's own bills

[35 list]
- The overnight reverse repo facility: money funds can lend cash to the Fed overnight. While it sits there, it is out of the banks. It peaked at about $2.4 trillion in late September 2022. By October 2026 the domestic part was $0.3 billion, so this drain is empty.
- The Treasury General Account: every rise drains reserves and often deposits, every fall adds them back.
- Stablecoins: buying a dollar token moves your deposit to the issuer, who buys Treasury bills. Bank deposits do not grow, and if the bill comes from a bank or the Treasury, they shrink. The token is a new private dollar outside M2.
- Interest on reserves: the Fed pays banks interest by creating new reserves, about $115 billion a year at current rates (desk estimate). Deposits grow only if banks pass it on.
- Fed profits and losses: when the Fed earns more than it pays, it sends the profit to the Treasury. From late 2022 it paid more than it earned and built up a $245.9 billion IOU to itself by January 2026. That IOU is now shrinking ($232.7 billion), so it again earns slightly more than it pays, and payments to the Treasury restart once the IOU is cleared. The 'taxes go to the Fed's owners' story has it backwards.

[36 check] Q: A money fund pulls $50 billion out of the Fed's reverse repo facility to buy new Treasury bills, and the Treasury spends the cash. What happens downstairs?
A: Deposits rise about $50 billion. The cash was upstairs at the Fed, it passed through the Treasury's account, and the spending landed in public accounts.


### The puzzle of the missing shrinkage

[38 table]
| Date | Fed's bonds | Reverse repo (money funds' cash at the Fed) | Treasury account | Bank reserves |
|---|---|---|---|---|
| 26 Feb 2020 | $3.85T | $0.00T | $0.39T | $1.68T |
| 29 Dec 2021 | $8.27T | $1.64T | $0.28T | $4.04T |
| 1 Jun 2022, QT starts | $8.48T | $1.97T | $0.78T | $3.36T |
| 28 Sep 2022 |  | $2.37T, the peak |  |  |
| 31 Dec 2025 | $6.27T | $0.11T | $0.87T | $2.85T |
| 21 Oct 2026 | $6.47T | $0.0002T | $0.95T | $2.97T |

[39 p] From June 2022 to October 2026 the Fed's bonds fell $2.01T, yet bank reserves fell only $0.39T. Where did the shrinkage go? Into the sponge. Money funds pulled $1.97T out of the Fed's reverse repo pool to buy Treasury bills, and the cash came back into the banks as the Treasury spent it. QT mostly emptied the sponge, not the banks. Now the sponge is dry, so any further drain hits bank reserves one for one. That is a large part of why the Fed stopped shrinking its Treasuries in December 2025 and has added $0.34T since.


### The shredders: six ways money is destroyed

[41 steps]
- Repaying a bank loan. The loan and the deposit both vanish.
- Paying taxes. The deposit goes upstairs into the Treasury's account and comes back only when the Treasury spends.
- Buying a new Treasury at auction with a deposit. The same as taxes, until the Treasury spends.
- Fed QT. When a bond the Fed holds matures and the Treasury repays it with money raised from a nonbank, a deposit and reserves both disappear.
- A bank selling a bond to a nonbank, or buying back its own shares or bonds. The buyer pays with a deposit, which the bank cancels.
- Money moving into the Fed's reverse repo pool. It leaves the banks while it sits there. This was the largest single drain in 2021 and 2022.

[42 curiosity]
- Q: The Fed shrank its bonds by $2.01T from mid 2022, yet bank reserves fell only $0.39T. Where did the shrinkage go?
  A: Into an empty sponge: money funds drained $1.97T from the Fed's reverse repo pool to buy bills (Fed H.4.1). The sponge is now dry. (builds on rb-buckets)
- Q: When you pay your taxes, does the money still exist?
  A: It leaves the public's books and sits upstairs in the Treasury's account at the Fed, $945B on 21 October 2026, until it is spent again. (builds on rb-nation)
- Q: The Fed lost money for three years. Did anyone have to rescue it?
  A: No. It booked an IOU to itself, a deferred asset, which peaked at $245.9B in January 2026 and is now shrinking ($232.7B). It is earning slightly more than it pays again. (builds on rb-01)


### Why the Fed cannot just buy from the Treasury

[44 p] Section 14 of the Federal Reserve Act says US government bonds may be bought "only in the open market". Congress added that rule in 1935 so that the Treasury would have to face market buyers and could not finance itself at its own central bank. A wartime exception from 1942 allowed up to $5 billion of direct purchases. It was renewed several times, last in 1979, and lapsed in 1981. The Fed can still roll over bonds it already owns by taking new ones at auction, which gives the Treasury no new cash.

[45 insider] A ban on direct buying is not a ban on financing. From 1942 to 1951 the Fed promised to keep bill rates at 0.375% and long bond yields under 2.5%, buying whatever the market sold at those prices. That financed the war debt cheaply without a single direct purchase. The Treasury-Fed Accord of 4 March 1951 ended the deal.


### The brakes on each printer

[47 table]
| Printer | Hard limit (law or rule) | Soft limit (price or demand) |
|---|---|---|
| Banks | Capital rules: owners' money of at least 4.5% of risk-weighted assets plus buffers. Liquidity rules: enough safe assets for 30 days of stress. Reserve requirement: 0% since 26 March 2020 | Borrowers must want loans and pass checks. A loan must beat the bank's funding cost, which the Fed anchors by paying 3.90% on reserves |
| The Fed | May buy Treasuries only in the open market (Federal Reserve Act section 14, since 1935). Its mandate: maximum employment, stable prices, moderate long-term rates | Inflation. Buying bonds while inflation runs high fights its own mandate. The current chair calls QE a tool to use sparingly, if at all |
| The Treasury | Congress must approve spending. The debt limit caps total debt | Auctions must clear. The bond market sets the price, and net interest passed $1T in fiscal 2026 |
| Government plus Fed together | Both keys must turn: Congress spends, the Fed buys from nonbanks | Inflation and the bond market. 2020 to 2021 shows how fast it runs when both keys turn |

[48 p] Notice the reserve requirement: zero since March 2020. The old textbook picture of banks lending out each deposit ten times over has no legal base in the US today. What stops banks is owners' capital, liquidity rules, the price of money and borrowers who must repay. What stops the emergency printer is a law that makes the Fed shop in the open market, a mandate that puts inflation first, and the bond market's price.

[49 curiosity]
- Q: US banks have had to hold zero reserves since March 2020. So what stops them lending forever?
  A: Capital rules (owners' money absorbs losses), liquidity rules, the 3.90% the Fed pays on reserves, which sets the cost of money, and borrowers who must want and repay loans. (builds on rb-06)
- Q: The Fed has been banned from buying bonds straight from the Treasury since 1935. How did it end up with more than half of the new debt of 2020 and 2021?
  A: It bought in the open market from dealers and investors, days or months after the auctions. In wartime, 1942 to 1951, it got the same result by capping yields. (builds on rb-03)


### Money outside the banks

[51 table]
| Money-like claim | Size | Counted in M2? |
|---|---|---|
| Money market fund shares | $7.98T (Sep 2026) | Retail funds yes, institutional funds no |
| Repo, cash lent against bonds | $12.6T a day (Q3 2025) | No |
| Stablecoins | about $308B (Aug 2026) | No |
| Dollars borrowed outside the US by non-US firms and governments (eurodollars) | $14T, 55% as bonds (Sep 2025) | No |

[52 p] Who prints the $14 trillion of dollars borrowed outside America? Mostly banks abroad, in London, Singapore or Kuala Lumpur, writing dollar loans and deposits on their own books exactly as a US bank does. They settle through accounts at US banks, and in a crisis they need dollars from the Fed's swap lines. So the Fed is the last-resort supplier, but private foreign banks are the everyday printers of offshore dollars.

[53 curiosity]
- Q: Money market funds hold $7.98T, about 40% as much as all US bank deposits. Is that money?
  A: Partly. Retail funds are counted in M2, institutional funds are not, and both are mostly lent to the government. They work like money for their owners, but they rest on Treasuries and on bank deposits. (builds on rb-01)
- Q: Who prints the dollars borrowed outside America?
  A: Mostly banks and bond markets abroad, about $14T at the end of September 2025 (BIS). The Fed steps in only in a crisis, through swap lines with other central banks. (builds on rb-04)


### Other printers abroad

[55 table]
|  | Fed (US) | ECB (euro area) | Bank of Japan | Bank Negara Malaysia |
|---|---|---|---|---|
| Reserve requirement | 0% since 2020 | 1% since 2012, paid 0% since September 2023 | Small ratios still apply | 1% since May 2025 |
| Ban on financing the state | Open market only | EU Treaty Article 123 bans direct purchase of government debt | Barred from underwriting new bonds without the Diet's approval | Central bank credit to the government is limited by law |
| Extra door |  | Large loans to banks (mostly repaid now) | Yield curve control 2016 to 2024, and 49% of all government bonds held (end 2025) | The currency door: buying dollars creates ringgit, selling dollars destroys it |

[56 p] The two-floor picture works everywhere, but the doors differ. In Malaysia a large share of changes in central bank money comes through the currency door: when Bank Negara buys dollars to steady the ringgit, it pays with new ringgit reserves, then usually soaks them back up. In Japan the central bank owns so much of the bond market that who sold a bond matters less than how much the Bank of Japan chose to buy.

[57 curiosity]
- Q: When Bank Negara buys dollars to steady the ringgit, does it create ringgit?
  A: Yes, at first: it pays with new ringgit reserves. It then usually soaks them back up in its money market operations, so the ringgit money stock need not change. (builds on rb-em)
- Q: The Bank of Japan owns about half of its government's bonds. Who is the printer in Japan?
  A: The central bank, on a scale no other big economy matches. Its share fell just below 50% at the end of 2025 for the first time since 2022 (Ministry of Finance flow of funds). (builds on rb-leader)


### What the critics add

[59 table]
| School | Its strongest point | What it adds to this chapter |
|---|---|---|
| MMT and post-Keynesian | Treat the Fed and the Treasury as one. The state spends first, taxes and bond sales drain afterwards. The limit is inflation, not money | Deficit spending is the only source of net financial assets for the private sector as a whole (Stephanie Kelton, The Deficit Myth, 2020) |
| Austrian and hard money | New money enters unevenly. The first receivers, banks and asset owners, gain before prices rise. Credit without savings breeds booms that end in busts | Ask who receives new money first, not only which floor it lands on (Murray Rothbard, The Case Against the Fed, 1994) |
| Monetarist | The quantity of money matters for inflation, with a lag of one to two years | M2 rose about 40% in 2020 to 2021 and inflation peaked at 9.1% in June 2022. Then M2 fell in 2022 and 2023 (Tim Congdon, 2025) |
| Official view (Fed, Bank of England) | Central banks set the price of money. Banks and borrowers choose the quantity | QE works mainly through bond yields and portfolios, not only through the deposit count |

[60 p] None of the three critical schools points to a missing channel in this chapter. Each points to a missing consequence. The Austrian asks who got the money first. The monetarist asks what it did to prices. The MMT economist asks why we pretend the Treasury needs to borrow its own currency. A complete Level 2 reader can hold all three questions at once.

[61 curiosity]
- Q: M2 fell in 2022 and 2023, the first full-year falls since the record starts in 1959. Why was there no deflation?
  A: Prices respond with a lag, and the stock of money was still about 35% to 40% above early 2020. Inflation slowed but stayed positive. (builds on rb-defl)
- Q: Is today's two-printer system the old empire habit of debasing money, or a safeguard against it?
  A: Both readings have evidence. M2 grew about 37 times since 1970 (Fed H.6). But the open market rule, the 1951 Accord and the 2022 to 2023 contraction show a brake that empires lacked. (builds on rb-09)


### Putting sizes on it

[63 diagram] mc-channels: Every channel that creates or destroys the public's deposits, with rough sizes for the latest year and for 2020 to 2021.

[64 table]
| Channel | Latest year (to Sept or Oct 2026) | 2020 to 2021 |
|---|---|---|
| Bank loans | +$1.0T | small, apart from a short burst in early 2020 |
| Bank purchases of securities | +$0.14T | +$1.9T (all securities) |
| Fed purchases | +$0.19T net | +$4.6T (Treasuries and mortgage bonds) |
| Deficit spending | $1.99T deficit | $5.9T of new Treasury debt, 72% bought by the Fed and banks |
| Cash withdrawn into wallets | -$0.07T | -$0.45T |
| Result: bank deposits | +$1.2T (+6.7%) | +$4.71T (+36%) |

[65 p] In an ordinary year, bank lending is the biggest engine. In the pandemic it was the government and the central bank: the Treasury spent borrowed money straight into household accounts, and the Fed and banks ended up holding about 68% to 72% of the new bonds, so nothing drained the deposits back. M2 rose about 40% in two years, from $15.5 trillion in February 2020 to $21.7 trillion in February 2022.

[66 myth] Myth: All money is created by banks making loans.
Reality: Loans are the main channel most years, but banks also create money when they buy securities, the Fed creates reserves whenever it buys and deposits when the seller is a nonbank, and Treasury spending adds deposits unless the public funded it from its own accounts. In 2020 to 2021 the Treasury and Fed channel created most new deposits.

[67 myth] Myth: The Fed prints money and hands it to the government.
Reality: The Fed may not lend to the Treasury or buy at auction. It buys bonds from dealers in the open market and pays the sellers. That holds down yields and can turn bonds held by the public into deposits, which finances deficits indirectly. Its profits go back to the Treasury, and since 2022 it has been running losses.


### So who is printing? The everyday printer and the emergency printer

[69 p] Put all of this together. In a normal year, banks are the main printer: new spendable money appears mostly because people and firms borrow. In the year to September 2026, bank loans grew by about $1.0 trillion and deposits by about $1.2 trillion. But the government and the Fed together can do the same job, and in some years they do it far more than the banks. That combination is printing money in everything but name.

[70 diagram] mc-two-printers: Two ways new spendable money is made. The banks run every day. The government and the Fed switch on in emergencies, and then they are bigger.

[71 steps]
- The government spends more than it collects in taxes. When it pays a salary, a pension or a stimulus check, a new deposit lands in someone's bank account. Spending is what actually puts the money in public hands.
- To cover the gap, the Treasury sells bonds.
- Whether new money is left over depends on who ends up holding those bonds. If households and funds buy them with savings they already had, money only moves around and nothing new is left. If banks buy them, or the Fed buys them in the market from dealers and pension funds, the public keeps the new deposits and the bonds sit with the banks or the Fed. New money remains.

[72 table]
| Who ends up holding the new bonds | Is new spendable money left over? |
|---|---|
| Households and funds, paying with savings they already had | No. Money moves to the government and comes back |
| Banks | Yes. The public has the deposit, the bank has the bond |
| The Fed, buying from dealers and pension funds in the market | Yes. The Fed has paid for it with new reserves it created |

[73 callout] (Picture this) Think of two printers in an office. The banks' printer runs all day, printing a little each time someone signs a loan, and it shreds the pages again as loans are paid back. The government and the Fed share a second printer kept in a locked room. It needs two keys: Congress must approve the spending, and the Fed must choose to buy the bonds. When both keys turn, as in 2020, it prints faster than anything the banks can do.

[74 p] The clearest case is 2020 to 2021. Bank deposits jumped $4.7 trillion, about 36% (December 2019 to December 2021). Most of it came from government spending on stimulus checks, business support loans and unemployment benefits, while the Fed ended up with about 56% to 59% of the new marketable Treasury debt, depending on the source. Bank loans rose only $0.68 trillion, a seventh of the deposit rise.


### Then why do people say the government cannot just print?

[76 list]
- The Fed decides, not the Treasury. The law lets the Fed buy only in the open market, for its own reasons such as interest rates or market stability, and it can stop or reverse. Since 2022 it has been shrinking its bond holdings, which pulls money back out.
- The bond market votes. If investors think a government is leaning on the printer, they demand higher interest rates. That is part of why the US 10-year yield is near 5% and the interest bill passed $1 trillion a year.
- There is friction. Congress must approve the spending, the debt ceiling has to be dealt with, and every auction has to find buyers.

[77 insider] The two kinds of money behave differently over time. Bank-loan money is temporary: when the loan is repaid, the money disappears. Deficit money tends to stay, because the government rarely pays its debt down overall. It rolls the bonds over, so the money it spent remains in circulation. That is why the old worry that governments finance themselves by creating money is basically right, even though some of the old explanations of how it happens are outdated.

[78 check] Q: In 2020 bank deposits rose by trillions while bank lending barely grew. Which printer was running, and what two things had to happen?
A: The emergency printer. The government had to spend far more than it taxed, and the Fed and banks had to end up holding much of the new debt. Together that left trillions of new deposits in public hands.


### Fifty-five years of money creation: downstairs banks versus the upstairs printer, 1971 to 2026

[80 p] Since the dollar left gold in 1971, how much new money came from banks lending, and how much from the Fed buying bonds upstairs? The chart below puts the two printers side by side for every year, using the Federal Reserve's own data. The gold bars are the yearly change in commercial bank loans. The blue bars are the yearly change in the bonds the Fed holds (Treasuries plus mortgage bonds). The dots are the actual change in the money supply (M2).

[81 diagram] mc-history: Yearly change in commercial bank loans (gold) and in the Fed's bond holdings (blue), with the change in M2 (dots), 1971 to 2026. Bars below the line mean that printer was shrinking. 2026 runs to September for loans, 21 October for the Fed and August for M2.

[82 table]
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

[83 list]
- 1971 to 2007: the banks did almost all of it. In every decade the Fed's share of the two printers was only 4% to 13%. Its bond buying in those years mostly supplied the paper cash people wanted to hold.
- 2008 to 2014: the first emergency. Bank loans actually fell by $481 billion in 2009, while the Fed bought bonds worth $3.44T over the period. Upstairs took about 75% of the work.
- 2015 to 2019: the banks took over again, adding $2.43T of loans while the Fed shrank its holdings by about $449B.
- 2020 to 2021: the biggest switch-on ever. The Fed bought $4.52T of bonds against $681B of new bank loans, about 87% upstairs. M2 jumped $6.15T in two years, the fastest rise in the record.
- 2022 to 2025: the printer ran backwards. The Fed shrank its bonds by about $2.00T while banks lent $2.60T. M2 rose only $853B over four years, and fell in 2022 and 2023, the first full-year falls in the official M2 record, which starts in 1959.
- 2026 so far: both printers are adding again, banks about $784B and the Fed about $201B.
- The whole period: banks added about $13.79T of loans and the Fed about $6.43T of bonds. Roughly two thirds downstairs and one third upstairs, but the upstairs third came in two short bursts. M2 grew from about $0.63 trillion at the end of 1970 to about $23.3 trillion in August 2026, roughly 37 times.

[84 insider] How to read the bars fairly. They are the two main engines, not a complete accounting, so they do not add up exactly to the change in M2. Banks also create deposits by buying Treasuries themselves (about $1.9 trillion over the period), the Treasury's cash balance at the Fed swings up and down, and people move money in and out of cash. The blue bar is also the upper limit of upstairs money reaching the public, because Fed buying adds spendable deposits only when the seller is not a bank. Bank loans here are commercial banks only.

[85 check] Q: Looking at the chart, in which two periods did the upstairs printer do most of the work, and what happened to the money supply right after the second one?
A: 2008 to 2014 and 2020 to 2021. After 2021 the Fed shrank its bonds by about $2 trillion, and M2 fell in 2022 and 2023 for the first time in the official record.

Rules: Ask which floor moved. Reserves are money for banks. Deposits are money for you. / The Fed creates reserves whenever it buys. It creates spendable deposits only when the seller is not a bank. / Auctions and taxes pull money up into the Treasury's account. Spending pushes it back down. / A deficit adds to your money only if banks, the Fed or parked cash fund it. / Banks create money by lending and by buying. Repayments and sales destroy it. / Banks are the everyday printer. The government plus the Fed is the emergency printer. / Before you say who printed money, name the year: banks in normal years, the government plus the Fed in emergencies. / Watch the sponges. When the reverse repo pool is empty, every drain hits bank reserves directly.

## L2.3 The world's balance sheet: what it owns, what it owes, and how countries are built (id rb-worldbs)

Kicker: The world owns about $520 trillion to $600 trillion and owes about $350 trillion to $365 trillion. This chapter makes those numbers fit in your head, shows why you cannot subtract one from the other, and takes apart how each big country is built.

[0 tldr]
- The world owns more than it owes: about $518T of household wealth (UBS) to $600T of national net worth (McKinsey), against about $348T to $365T of debt (IIF).
- You cannot subtract one from the other. Every debt is somebody's asset, so at world level the debts cancel. What is left is real things, mostly land and buildings.
- Most new wealth is a higher price, not a bigger pile. In 2025 only about a fifth of the rise in household wealth came from new investment.
- Debt grew from about 1 year of world output in 1971 to about 2.5 years (3 counting banks' own debts). It jumps in crises: 2008 and 2020.
- The dollar is the ruler. Japan's debt fell by a third in dollars from 2020 to 2025 while it rose in yen. Nobody repaid anything.
- Countries are built differently. The US is rich and owes the world. Japan's state owes its own people. Italy's state is in debt, its families are not. China borrowed to grow and saved at home.

[1 bridge] Built on Levels 1 and 2: recall these before you start
- rb-titled: Most wealth is a price, not a pile, and every financial asset is someone's debt.
- rb-07: Debt is a claim on future income, and the musical chairs stop when everyone wants cash at once.
- rb-10: The ruler stretches. Always ask what a number is measured in.
- rb-leader: Money flows to the deepest market, which is why the world holds dollar assets.
- rb-moneymake: Every new loan creates a deposit, so new debt always arrives with a new asset attached.

[2 radiant] centre: Every debt is someone's asset. So what is the world worth?
- Four measures, one table: Wealth, net worth, assets, debt differ (rb-13)
- The great cancellation: Every IOU has two equal sides (rb-07)
- Price, not pile: Most new wealth is higher prices (rb-titled)
- The ruler moves: Dollar swings resize the whole world (rb-10)
- Two crisis jumps: 2008 and 2020 lifted every ratio (rb-08)
- Countries built differently: Debtor, creditor, saver, borrower, hub (rb-leader)
- Who holds the paper: Central banks, foreigners, or the family (rb-bonds)
- Brain-sized numbers: Village, household, per person, per dollar (rb-13)


### The question that started this chapter

[4 quote] "If the world wealth is 300T+ and 500T+ world debt, now show others a brief timeline of how others, maybe the G7 or G10, are different in structure, so users can understand and quantify the numbers around the world." (The owner of this guide, October 2026 (lightly edited))

[5 p] It is exactly the right question, and it hides a trap that catches almost everyone, so we start there. The two numbers are real numbers, but they have swapped places. On every main measure the world owns more than it owes.

[6 bars] One world, seven numbers: what the world owns and owes ($ trillions)
- National net worth (McKinsey, 2025): 600
- Household net wealth (UBS, end 2025): 517.7
- Financial assets of financial firms (FSB, end 2024): 503.7
- Debt, all four sectors (IIF, mid 2026): 365
- Debt, all four sectors (IIF, end 2025): 348.3
- Debt without the financial sector (BIS, end 2025): 262.7
- Debt without the financial sector (IMF, 2024): 251
Caption: Blue bars measure what is owned, orange bars what is owed. Every measure of wealth is bigger than every measure of debt.
Source: UBS Global Wealth Report 2026, McKinsey Global Institute global balance sheet 2026 (via press), FSB Global Monitoring Report 2025, IIF Global Debt Monitor (Feb and Sep 2026), BIS total credit statistics, IMF Global Debt Database (blog, Sep 2025).

[7 p] Where do the owner's numbers come from? $500 trillion is the asset side of the ledger. The financial firms of the world held $503.7 trillion of financial assets at the end of 2024 (Financial Stability Board), and people held $517.7 trillion of net wealth at the end of 2025 (UBS). $300 trillion is how world debt was reported from 2021 to 2024, when the IIF put it at $305 trillion to $320 trillion and many popular videos quoted it. Both numbers were true. They were just describing different things, from different years.

[8 myth] Myth: The world owes more than it owns: about $500 trillion of debt against about $300 trillion of wealth.
Reality: The world owns about $518 trillion to $600 trillion and owes about $348 trillion to $365 trillion. And the two cannot be subtracted, because almost every debt is also someone's asset.

[9 cards]
- Net wealth: What you own minus what you owe. A $500k house, $100k of savings and a $300k mortgage make $300k.
- National net worth: The net wealth of a whole country or the world, all sectors together.
- Financial asset: A claim on someone else: a deposit, a bond, a loan, a share. One side's asset is the other side's debt.
- Gross debt: Every IOU counted once, from the borrower's side, with nothing subtracted.
- Nonfinancial debt: Debt of governments, firms and households only. Bank debt is left out, because it is mostly the others' deposits.
- Yardstick: World totals are in dollars. When the dollar moves 10%, non-US numbers move about 10% with nothing real changing.

[10 table]
| Measure | Value | What it counts | What it leaves out |
|---|---|---|---|
| Household net wealth (UBS) | $517.7T, end 2025 | People's houses, savings, shares and private pensions, minus their debts | Wealth of governments and firms not owned by people, state pension promises |
| National net worth (McKinsey) | $600T, 2025 (5.1 times world GDP) | Real assets of every sector plus net claims | Human and natural capital |
| Financial assets of financial firms (FSB) | $503.7T, end 2024 | Assets of central banks, banks and nonbanks in 29 jurisdictions | Real assets. It counts claims, which cancel against debts |
| Debt, four sectors (IIF) | $348.3T at end 2025, over $365T by mid 2026 | Households $64.6T, firms $100.6T, governments $106.7T, financial sector $76.4T | Shares, derivatives, unfunded pensions |
| Nonfinancial debt (IMF, BIS) | $251T (2024) to $262.7T (end 2025) | Governments, firms and households | The financial sector's own debts |

[11 insider] Every one of these numbers comes from a different counter with a different purpose. UBS counts people's wealth for a wealth manager's report. The IIF is a bank industry body and counts banks' own debts, so its debt figure is the biggest. The FSB counts financial firms' assets to watch for risk. When two headlines disagree, first ask which counter they used.


### The great cancellation: why the world cannot be in debt

[13 p] Every debt has two sides. When a family owes a bank $300,000, the bank owns a $300,000 claim. When the US Treasury owes $1,000 on a bond, a pension fund, a bank, the Fed or a foreign central bank owns that claim. Add up every balance sheet on Earth and each IOU appears once as a debt and once as an asset. They cancel. There is no bank on Mars that the world owes.

[14 callout] Imagine a family of four who lend each other money all year: the teenager owes the parents for a phone, a parent owes the grandmother for a car, the grandmother owes the teenager for help with the shop. At the end of the year the IOUs on the fridge add up to $50,000. Is the family $50,000 poorer? No. The IOUs are owed from one member to another. The family is worth its house, its car and its shop. The IOUs only matter if one member cannot pay another.

[15 p] Walk through two real kinds of deal. First, a young family buys an existing flat from a retired couple with a $300,000 mortgage.

[16 table]
| Who | Owns | Owes | Net wealth |
|---|---|---|---|
| Young family | + the flat, $300,000 | + mortgage, $300,000 | No change |
| Bank | + the mortgage loan, $300,000 | + the sellers' new deposit, $300,000 | No change |
| Retired couple | - the flat, + a $300,000 deposit | nothing | No change. The asset changed form |
| The world | + $300,000 of claims | + $300,000 of debt | Unchanged. Debt rose, wealth only moved |

[17 p] Debt went up and nobody got richer or poorer. Now the second deal: the US government runs a $1 trillion deficit, and half the new bonds are bought by a US pension fund, half by Japanese investors.

[18 table]
| Who | What happens | Net wealth |
|---|---|---|
| US government | Owes $1T of new bonds, spends the money on wages and transfers | Falls $1T |
| US households | Receive $1T of deposits, and put $0.5T into a pension fund that buys bonds | Rise $1T |
| Japanese investors | Buy $0.5T of bonds with dollars earned selling goods to the US | No change, they swapped dollars for bonds |
| The US as a nation | Now owes $0.5T more to the rest of the world | Its foreign position falls $0.5T |
| The world | Every IOU has an owner | Unchanged |

[19 p] Inside the US, the government's new debt is the private sector's new asset, so "we owe it to ourselves" is right for that half. The foreign half is a real claim of Japan on future US income. That is why only countries, not the world, can owe outside: the US owes the rest of the world a net $26.5 trillion (end 2024), while Japan is owed a net $3.5 trillion.

[20 p] So what survives the cancellation? Three things. Real assets: land, houses, offices, factories, machines, roads and software, about $620 trillion in 2025 by McKinsey's count. Assets that are nobody's IOU, like gold bullion and bitcoin, which are small next to property. And the earning power of companies above what their books show. World wealth, measured in dollars, is mostly the price of real things.

[21 curiosity]
- Q: If every debt is somebody's asset, who is the world in debt to?
  A: Itself. The $348T of debt the IIF counts is matched by $348T of claims held by people, pension funds, banks and central banks. Only countries can owe outside: the US owes the rest of the world a net $26.5T, Japan is owed a net $3.5T. (builds on rb-07)
- Q: Why is the richest country also the biggest debtor?
  A: Because lenders lend against assets and income, and because the world wants dollar assets. The US holds about 35% of world household wealth and owes about 29% of world nonfinancial debt, and its net foreign debt of $26.5T is mostly in its own currency. (builds on rb-leader)


### Price, not pile

[23 p] Debt and wealth can both grow at once, for four reasons. A loan that builds a new house adds a debt and a new real asset. A loan that buys an existing house adds a debt and a deposit, and more credit chasing the same houses lifts their price, which shows up as more wealth. Inflation lifts both in dollars. And the two are counted differently: debt is a gross count of IOUs, net worth is what is left after they cancel.

[24 p] How much of new wealth is new things? McKinsey's 2026 report, as summarized in the press, found that only about 20% of the rise in household wealth in 2025 came from net new investment, and about 58% came from higher valuations above inflation. The rest was inflation itself. The report was not opened for this chapter, so treat the split as approximate. The direction matches Level 1 chapter 19: the same buildings became worth more.

[25 curiosity]
- Q: World wealth rose about 10.8% in 2025 (UBS). Did the world build 10% more things?
  A: No. Only about a fifth of the household gain came from new investment, and most of the rest from higher prices. A weaker dollar also lifted the dollar value of non-US wealth. (builds on rb-10)
- Q: Real estate is about two thirds of world net worth. What happens to world wealth if house prices fall 20%?
  A: Measured wealth falls by roughly 13% of net worth (two thirds times 20%). No house is lost and no debt is repaid. Debt stays at face value, so everyone's debt looks bigger next to what they own. (builds on rb-titled)


### The ruler moves: the dollar resizes the world

[27 p] Every world total is counted in dollars. When the dollar rises, everything outside the US looks smaller, and when it falls, everything looks bigger, with nothing real changing. Japan shows how large this effect can be.

[28 table]
| Japan's nonfinancial debt | End 2020 | End 2025 | Change |
|---|---|---|---|
| In yen | 2,273 trillion | 2,340 trillion | +3% |
| In US dollars | $22.05T | $14.94T | -32% |
| As a share of Japan's GDP | 410% | 351% | -59 points |

[29 p] Japan's debt rose 3% in yen and fell 32% in dollars, because the yen fell from about 103 to about 157 per dollar. Its debt also fell as a share of its economy, because inflation returned and lifted nominal output. Nobody repaid anything. The same ruler worked the other way in 2025: the euro rose almost 9% against the dollar, which is part of why European wealth grew 17.5% in dollars that year (UBS).

[30 curiosity]
- Q: Japan's debt fell by a third in dollars from 2020 to 2025. Did Japan repay?
  A: No. In yen it rose 3% (2,273 to 2,340 trillion yen, BIS). The yen fell against the dollar, so the ruler shrank the number. (builds on rb-10)


### A brief timeline, 1971 to 2026

[32 timeline] The world's output, debt and net worth, 1971 to 2025 ($ trillions) years=[1971, 1980, 2000, 2001, 2005, 2007, 2008, 2020, 2021, 2024, 2025]
- Net worth: [None, None, 156, None, None, None, None, 514, None, None, 600]
- Debt: [3.3, 11.5, None, 60.1, 88.2, 113.5, 118.6, 222.0, 228.3, 237.0, 262.7]
- World GDP: [3.33, 11.48, 33.97, 33.75, 47.94, 58.57, 64.38, 86.39, 98.78, 111.67, 118.35]
Caption: Debt is nonfinancial debt (governments, firms, households). 1971 and 1980 are model estimates from the IMF's finding that it sat near 100% of world output until about 1980, then BIS data from 2001. Net worth is McKinsey's national net worth (2000, 2020, 2025). Output grew about 36 times since 1971, debt about 80 times.
Source: World Bank (GDP, current dollars), BIS total credit statistics (aggregate of reporting countries), IMF Global Debt Database (model years), McKinsey Global Institute.

[33 table]
| Year | What was happening | World debt | Debt as % of world output | World wealth |
|---|---|---|---|---|
| 1971 | The dollar leaves gold | about $3T (estimate) | about 100% | about $6T to $10T (model) |
| 1980 | Interest rates near 20% | about $11.5T (estimate) | about 100% | about $20T to $34T (model, a floor) |
| 2000 | Rates falling, credit booming | $60T (2001, BIS) | 191% | $156T (McKinsey) |
| 2008 | The global financial crisis | $119T (BIS) | 202%, rising to 229% by 2010 | a fall of about $21T in 2007 to 2008 (press) |
| 2020 | Covid | $222T (BIS). A record $35T added in one year (IIF, four sectors) | 285% | $514T (McKinsey) |
| 2025 | Weak dollar, fiscal push, AI borrowing | $263T (BIS) or $348T with the financial sector (IIF) | 246% (BIS) or about 308% (IIF) | $518T (UBS, people) to $600T (McKinsey, all) |
| Mid 2026 | Health, energy, AI and defense spending | over $365T (IIF, press) | about 305% to 310% | no estimate yet |

[34 p] Three things stand out. Debt grew faster than output in almost every period since 1971, from about one year of world output to about two and a half. It grew in jumps, in 2008 to 2010 and above all in 2020, when a record $35 trillion was added in one year. And from 2021 to 2025 the ratio fell five years in a row while the dollar amount set a new record every year. Inflation, not repayment, did that.

[35 insider] The sources do not always agree on direction. In 2025 the BIS measure of world debt to output rose (235% to 246%) while the IIF's fell (to about 308%). The likely reason is how each converts currencies when the dollar falls during a year. It is a reminder that a single year's move in a world ratio can depend on who is counting.

[36 curiosity]
- Q: Debt to GDP fell for five years while debt hit a record every year. How can both be true?
  A: Inflation raised nominal output faster than debt. On the BIS measure world nonfinancial debt went from $222T (285% of output) in 2020 to $237T (235%) in 2024. Nobody paid it down. (builds on rb-08)
- Q: When did world debt jump most: 1971, 2008 or 2020, and who borrowed?
  A: 2020: a record $35T in one year, with governments borrowing about $14T of it (IIF). In 2008 to 2010 the BIS ratio rose from 202% to 229%. In 1971 there was no jump: debt sat near 100% of world output (IMF). (builds on rb-05)


### Who contributes the numbers: G7, G10 and the giant left out

[38 p] The owner asked about the G7 or the G10. The G7 is the US, Japan, Germany, the UK, France, Italy and Canada. The G10 is, confusingly, eleven countries: the G7 plus Belgium, the Netherlands, Sweden and Switzerland. Neither includes China, which now holds about 16% to 18.5% of the world's household wealth and about 22% of its nonfinancial debt. So China and India are added here.

[39 pairbars] Who contributes: each country's share of the world (%) series=['Share of world wealth', 'Share of world debt', 'Share of world output', 'Share of world people']
- United States: [35.09, 29.03, 26.0, 4.16]
- China: [16.18, 22.09, 16.47, 17.12]
- Japan: [4.25, 5.74, 3.75, 1.5]
- Germany: [4.56, 3.87, 4.27, 1.02]
- United Kingdom: [3.02, 3.51, 3.38, 0.85]
- France: [3.51, 4.27, 2.84, 0.84]
- Italy: [2.65, 2.26, 2.16, 0.72]
- Canada: [2.56, 2.78, 1.96, 0.51]
- India: [3.13, 2.57, 3.34, 17.82]
Caption: Debt here is nonfinancial debt. Country wealth is derived from UBS wealth per adult times adults, and China's and India's use end-2022 wealth figures, so treat them as rough.

[40 table]
| Group | Share of world wealth | Share of world debt | Share of world output | Share of world people |
|---|---|---|---|---|
| G7 (US, Japan, Germany, UK, France, Italy, Canada) | 56% | 52% | 44% | 10% |
| G10 (really 11: the G7 plus Belgium, Netherlands, Sweden, Switzerland) | 60% | 56% | 48% | 10% |
| G10 plus China, India and Malaysia | 79% | 81% | 68% | 46% |

[41 p] Read the chart in pairs. The rich are also the big borrowers: the G7 holds about 56% of world household wealth and owes about 52% of world nonfinancial debt, with under 10% of the world's people. Lenders lend against assets and income, so debt follows wealth. The US has a bigger share of world wealth (35%) than of world debt (29%) or output (26%). China's share of debt (22%) is above its share of wealth and output: it grew on borrowing more than on rising asset prices. India has 18% of the world's people and about 3% of everything else, and its low debt mostly reflects a small formal financial system.


### Six ways to build a country's balance sheet

[43 table]
| Country | Government debt, % of GDP | Household debt, % of GDP | Company debt, % of GDP | Who holds the state's debt | Owns abroad minus owes abroad |
|---|---|---|---|---|---|
| United States | 116% | 68% | 72% | Fed 14%, foreigners 29% | -$26.5T (-91% of GDP) |
| Japan | 193% | 61% | 113% | Bank of Japan 43%, foreigners 13% | +$3.5T (+83%) |
| Germany | 63% | 48% | 87% | Bundesbank 20%, outside Germany 51% | +$3.6T (+77%) |
| Italy | 137% | 36% | 58% | Bank of Italy 19%, outside Italy 34% | +$0.35T (+15%) |
| France | 116% | 59% | 155% | Bank of France 17%, outside France 54% | -$0.7T (-22%) |
| United Kingdom | 102% | 74% | 58% | foreigners about a third | -$0.35T (-10%) |
| Canada | 100% | 100% | 119% | non-residents about 45% of the bond market | +$1.3T (+59%) |
| Switzerland | 25% | 123% | 129% | not confirmed | +$1.15T (+119%) |
| China | 99% | 58% | 143% | mostly Chinese banks | +$3.3T (+18%) |
| Malaysia | 65% | 70% | 89% | foreigners about 20% | about zero |

[44 callout] (The US and Japan) The US is the richest country and the largest net debtor to the rest of the world, about minus $26.5T. It can borrow abroad in its own currency because the world wants dollars. Japan's government owes about twice its output, yet Japan as a nation is owed $3.5T by the world. The Bank of Japan holds about 43% of the government's debt and foreigners only about 13%, so Japan's debt is mostly owed from one Japanese pocket to another, in yen. The risk shows up as a weak yen, not as foreign creditors walking away.

[45 callout] (Germany and Italy) One currency, opposite structures. Germany's state owes 63% of output, Italy's 137%. Yet the typical Italian adult is richer than the typical German one: median wealth $131,001 against $53,485 (UBS). Italian families owe little and mostly own their homes, while Germany has one of the lowest home-ownership rates in Europe. Italy's state is the debtor, its families are not. Because neither country prints its own currency, Italy pays a risk premium a country with its own central bank would not.

[46 callout] (The UK and Canada) House-rich households with heavy mortgages. Canadian household debt is about 100% of output and British about 74%, among the highest in the G7. When interest rates rise, these families feel it first, because their mortgages reset within a few years. Canada is a large net creditor abroad, partly thanks to big pension funds investing overseas, while the UK is a small net debtor.

[47 callout] (Switzerland) A tiny state and heavy private balance sheets. The Swiss government owes only 25% of output, Swiss households 123%, the highest in the table, mostly mortgages that owners keep rather than repay. Yet Swiss adults are the richest on Earth on average ($910,382) and the country owns far more abroad than it owes. High gross debt, very high net wealth: proof that gross debt alone says little.

[48 callout] (China) Debt-built growth, saved at home. China's total nonfinancial debt is about 300% of output, above the US, and its companies, including local government financing vehicles, carry most of it (143%). Yet China is a net creditor abroad, because its savings are lent at home, through Chinese banks, in yuan. Falling property prices have dragged on its household wealth.

[49 callout] (Malaysia) A smaller currency with a foreign window. Malaysia's nonfinancial debt is about 224% of output: government 65%, households 70% (high for an emerging market, mostly mortgages and car loans), companies 89%. It owes the world about as much as it owns abroad. Foreigners hold about a fifth of government bonds, enough that a jump in US yields can pull money out and push the ringgit down, as Level 1 chapter 12 described.

[50 curiosity]
- Q: Japan's government owes about twice its GDP. Why is it not treated like Greece was?
  A: Its debt is in yen, the Bank of Japan holds about 43% of it, foreigners only about 13%, and Japan as a whole is owed $3.5T by the world. Greece borrowed in a currency it could not print, much of it from foreigners. (builds on rb-em)
- Q: Germany and Italy share the euro. Why do Italian families look richer than German ones?
  A: The median Italian adult has $131,001, the German $53,485 (UBS). Italian households owe little and mostly own their homes. Italy's state is the debtor (137% of output), Germany's is not (63%). (builds on rb-09)
- Q: Is a country with high government debt but rich households poor or rich?
  A: Look at the whole national balance sheet. Japan: state debt 193% of output, yet a net creditor of 83% of output abroad. Switzerland: tiny state debt, households owe 123% of output, still the richest adults on Earth. (builds on rb-nation)
- Q: China is not in the G7 or the G10. Why does that change the picture?
  A: China holds about 16% to 18.5% of world household wealth and 22% of world nonfinancial debt, and it added more than $4.8T of the roughly $10T rise in world debt in the first half of 2026 (IIF, press). Leave it out and you miss the biggest change in the world balance sheet since 2008. (builds on rb-11)


### Make the numbers brain-sized

[52 p] A trillion is too big to picture, so shrink it. One trillion seconds is about 31,700 years. Counting the IIF's $348 trillion at a dollar a second would take about 11 million years. Here are three better ways to hold the world in your head.

[53 bars] If the world were 100 adults: share of all wealth held by each group
- 42 adults with under $10k: 0.6
- 41 adults with $10k to $100k: 12.2
- 15 adults with $100k to $1m: 38.8
- 1.5 adults with over $1m: 48.4
Caption: 
Source: UBS Global Wealth Report 2026 wealth pyramid, end 2025.

[54 p] Of every 100 adults on Earth, 42 own under $10,000 and together hold 0.6% of all wealth. The one or two millionaires hold almost half. Averages hide this: wealth per adult is about $93,000, yet most adults own a small fraction of that.

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

[56 p] In household terms, the $294,300 of IOUs are owed from one member of the household to another. The household as a whole owes nobody outside. Its true worth is the house, the land, the tools and the business, about five years of income. The danger is not that the household owes more than it owns. It does not. The danger is that one member cannot pay another and the chain of IOUs breaks.

[57 table]
| Split across 8.2 billion people | Each |
|---|---|
| Household wealth per person | $63,000 |
| Household wealth per adult | $93,000 |
| Debt per person, all four sectors | $42,000 |
| Output per person per year | $14,400 |

[58 curiosity]
- Q: Split world wealth and debt across 8.2 billion people. What does each own and owe, and why is that misleading?
  A: About $63,000 of household wealth and $42,000 of debt each. But 42 of every 100 adults own under $10,000, and the debt is owed between governments, firms, banks and households, not by each person. (builds on rb-13)


### What people say, and what the schools add

[60 table]
| What people say | Verdict |
|---|---|
| The world is in debt, but to whom? (a 14-second meme, 27 million views) | The right question. The world owes it to itself |
| Global debt is $300 trillion | Right for 2022 to 2024. Now $348T (end 2025) and over $365T (mid 2026) |
| Debt is three times the world economy | True on the widest count, about 3.1 times. About 2.4 times without the financial sector |
| The global debt bomb is about to go off | Overstated as one bomb. The world ratio fell five years running. The risks are specific: refinancing in emerging markets, dollar debt, a few governments |
| Debt is bigger than wealth | Wrong. Wealth is 1.5 to 1.7 times debt, and the two should not be subtracted |
| We owe it to ourselves | True for the world and for debt held at home. False for debt in a foreign currency and for net debtor nations |

[61 table]
| School | Strongest point | What it would add |
|---|---|---|
| Official (IMF, BIS, IIF) | Debt is high and shifting to governments. Interest bills are eating fiscal room | Watch debt to GDP and refinancing needs |
| Post-Keynesian and MMT | Government debt in its own currency is the private sector's asset. Private debt is the real danger | Look harder at Chinese firms and Canadian and Swiss households |
| Austrian and hard money | Unanchored money let debt outgrow output since 1971. Cheap credit inflates asset prices, so part of measured wealth is a bubble | Treat the five-year fall in the ratio as quiet default through inflation |
| Mainstream and historians (Reinhart and Rogoff) | Debt moves wealth around rather than destroying it | Crises cluster where debt is owed abroad and in a foreign currency |


### Say it back

[63 check] Q: A friend says the world is $500 trillion in debt and only worth $300 trillion. What two things would you tell them?
A: First, the numbers are swapped: the world owns about $518T to $600T and owes about $348T to $365T. Second, they cannot be subtracted, because every debt is someone's asset. At world level the debts cancel and what is left is real things.

[64 check] Q: Why can Japan owe twice its output and still be a creditor nation?
A: Its government owes mostly its own central bank, banks, insurers and savers, in yen, while Japan as a whole owns $3.5T more abroad than it owes.

[65 check] Q: World debt to output fell in 2023 and 2024 while the dollar amount rose. What did the work?
A: Inflation. Nominal output grew faster than debt, so the ratio fell without anyone paying debt down.

Rules: Never subtract world debt from world wealth. Debts cancel at world level, so ask what real things are left. / Ask who owes whom, in which currency, and how soon. That decides danger, not the size of the total. / Before you believe a world total, check the counter, the year and the dollar.
