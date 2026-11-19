# Chapter export for verifier and red team

Numbers in [brackets] are block indexes. Nested go-deeper blocks are numbered parent.child.

## L4.1 Digital credit, dissected: Saylor's 12% and money moving between baskets (id rb-strc)

Kicker: Michael Saylor pitches Bitcoin as digital capital, STRC as digital credit paying 12%, and a future dollar token paying 8%. This chapter takes the pitch apart claim by claim, follows the money step by step, and asks what really moves when money moves between baskets.

[0 tldr]
- In late October 2026 Michael Saylor, who runs Strategy (once MicroStrategy), pitched a ladder of new money: Bitcoin as digital capital, STRC as digital credit paying 12%, the company's shares as digital equity, and one day digital money: a dollar token paying 8%.
- STRC is a preferred stock, not a loan or a deposit. It has no end date, no right to get your $100 back, and its 12% is set each month by the company. It is backed by Bitcoin the company owns, about four to six times over today.
- Of 26 claims checked, 10 hold, 9 are spin, 4 are wrong and 3 cannot be checked. The numbers about today are mostly right. The labels are where it slips: "strongest credit in the world" for a junk-rated issuer, and a dollar token paying 8% that US law does not allow.
- The flywheel runs both ways. In 2025 it bought more Bitcoin than was mined. In the third quarter of 2026 it raised $5.41 billion but spent only $0.59 billion on Bitcoin, and sold Bitcoin to help pay dividends.
- Money moving between baskets? No dollar actually enters Bitcoin. Savers' dollars end with whoever sold the Bitcoin. What crosses the line is ownership of Bitcoin, into a listed company, and Bitcoin's risk, onto the saver.
- Before you believe any account paying 12%, ask who promises the $100, where the 12% comes from, and what happens if the asset behind it halves.

[1 bridge] Built on Levels 1 and 2: recall these before you start
- rb-crypto: The project splits money into baskets: Set 1, the old anchors of gold, government bonds and bank credit, and Set 2, the new rails of stablecoins, tokens and crypto.
- rb-12: Every new compliant stablecoin dollar is new demand for short US government bills, and stablecoins may not pay holders interest.
- rb-bonds: A bond is a ticket you can resell. Its price moves with yields, and free of default is not free of price.
- rb-moneymake: Most deals only move money between people. Ask who ends up holding the dollars.
- rb-clubs: Game theory asks what each player's best move is, given what the others might do.

[2 radiant] centre: Digital credit: a pipe between baskets
- The pitch: Capital, credit, equity, money (rb-crypto)
- What STRC really is: A preferred stock, not a deposit (rb-bonds)
- Claim by claim: 10 hold, 9 spin, 4 wrong (rb-13)
- The flywheel: Eight links, both directions (rb-buckets)
- The stress test: Bitcoin down 30%, 50%, 70% (rb-08)
- Where the dollars go: To the Bitcoin sellers (rb-moneymake)
- The players: Three payoff boxes (rb-clubs)
- Before you believe 12%: Questions for any saver (rb-em)

[3 p] This chapter comes in four parts of about ten minutes each. Each part ends with a stop box. Nothing here is advice. The aim is to make you a sharper judge of a big pitch.


### Part 1 of 4. The pitch, and what STRC really is


### 1. The pitch in five layers

[6 p] In a talk recorded in October 2026, Michael Saylor, executive chairman of Strategy, laid out a ladder. It is worth knowing because it is one of the boldest ideas about future money in circulation.

[7 table]
| Layer | What he means | His example |
|---|---|---|
| Digital capital | Bitcoin as digital gold: scarce, capped at 21 million, something a robot cannot make | Bitcoin itself |
| Digital credit | A security paying a steady income, backed by Bitcoin, the way gold once backed credit | STRC, paying 12% a year |
| Digital equity | Whatever is left after the credit is paid: the company's ordinary shares | MSTR, Strategy's common stock |
| Digital money | A future dollar token with no price swings, paying 6% to 8% | Not yet built |
| Digital yield | Income from all of the above, paid as often as daily | STRC has paid daily since 3 November 2026 |

[8 p] His argument in one line: if gold rising 10% a year let you sell credit paying 5%, then Bitcoin rising 20% a year lets you sell credit paying 10%. Strategy sells that credit to the public, buys Bitcoin with the money, and keeps the difference for its shareholders.


### 2. What STRC really is

[10 p] Read the contract, not the label. STRC is preferred stock: a share in a company that gets paid before the ordinary shares but after every lender. It is not a loan, a bond or a bank account.

[11 table]
| Question | The answer in STRC's own documents |
|---|---|
| Does it end? | No. It is perpetual. There is no date when you get your money back |
| Can I demand $100 back? | No. Only if someone takes over the company. Otherwise you sell to another investor at the market price |
| Who sets the 12%? | The company, each month, at its "sole and absolute discretion". It can cut by up to 0.25 point a month, plus any fall in the short-term dollar rate, but never below that rate (3.97% in early November 2026) |
| Must it pay? | Only "when, as and if declared" by the board. Missed dividends pile up and must be paid before any dividend on junior shares |
| Where does it rank? | Behind about $6.75 billion of convertible notes and behind another preferred, STRF. Ahead of three other preferreds and the common shares |
| What backs it? | Strategy's 849,327 Bitcoin (about $68 billion at $80,500) and a $4.79 billion dollar reserve. No asset is pledged to STRC alone |
| How big is it? | About $8 billion now, down from about $10.5 billion at its peak in mid 2026, after buybacks |
| How is the issuer rated? | B-, which is junk, by S&P (October 2025) |

[12 p] So why does it trade so close to $100? Because the company works to hold it there. It sells new STRC when the price is above $100 and buys it back below, and it raises the rate when buyers lose interest. That $100 is a target held by the company's own actions, not a promise.

[13 myth] Myth: STRC is like a bank account that pays 12%.
Reality: A bank account is a debt the bank must repay, and in Malaysia PIDM insures it up to RM250,000. STRC is a share with no repayment date, no insurance and a price that fell to $74.57 in June 2026. It is well backed today, but it is not a deposit.

[14 curiosity]
- Q: STRC's daily dividends started on 3 November 2026. Did the change raise what it pays?
  A: No. The shareholder vote of 28 October (about 99.3% in favour, with the founder's super-voting shares counted) only changed the timing. The company's filing says the total paid, the rate and its obligations are unchanged. (builds on rb-bonds)
- Q: Can you get exactly $100 back from Strategy?
  A: Not on demand. You can sell to another investor at whatever the market pays, which was $99.98 on 4 November 2026 and $74.57 on 26 June. The company may buy all of it back at $101 if it chooses. (builds on rb-13)

[15 deeper] GO DEEPER BOX (collapsed by default): Eight instruments compared: where STRC fits
[15.0 table]
| Instrument | What backs it | Who promises par | Worst loss on record |
|---|---|---|---|
| STRC | Strategy's Bitcoin and dollar reserve, after all debt and STRF | Nobody. The company aims at $100 | Closed at $74.57 on 26 June 2026, 25% below par |
| British consol (perpetual government debt) | The UK state's power to tax | Nobody had to repay. Redeemed in 2015 | About 85% below its peak by 1974, before inflation |
| Gold-standard credit | Gold reserves plus the issuer | The issuer, by law | The US cancelled gold clauses in 1933 and raised gold from $20.67 to $35, a 41% loss in gold terms |
| Bank preferred stock | The bank's assets after depositors and lenders | Nobody | Fannie Mae and Freddie Mac preferreds lost about 95% in 2008. Lehman's went to zero |
| Closed-end fund preferred | A diversified portfolio, at least twice the preferred by law | Nobody, but the law forces the fund to cut leverage | Some froze in 2008, but holders were mostly repaid in full |
| Money market fund | Short government bills and loans | The fund aims at $1, no guarantee | The Reserve Primary Fund fell to $0.97 in 2008 |
| Payment stablecoin | Cash, insured deposits, short bills, by law | The issuer, one for one | USDC fell to about $0.87 for a few days in March 2023 |
| High-yield bond | The company's cash flow, ahead of all shares | The company must repay at the end date | The US junk bond index fell about 26% in 2008 |

[15.1 p] What STRC does better than most of this table: its backing is published every Monday in SEC filings, it is large today against the claims ahead of it, it is not pledged to anyone else, and it trades more each day than any other US preferred stock checked (about $156 million a day).

[15 end of deeper box]

[16 callout] (Stop here) Part 1 of 4 done. You know the five layers of the pitch and what STRC really is. Try these three before Part 2.

[17 check] Q: Is STRC a loan, a bond, a bank account or a share?
A: A share: preferred stock. It is paid after every lender and has no repayment date.

[18 check] Q: Who decides STRC's rate each month?
A: Strategy, at its own discretion, within limits: no more than about 0.25 point down a month, and never below the short-term dollar rate.

[19 check] Q: Why does STRC usually trade near $100?
A: Because the company sells new STRC above $100, buys it back below, and raises the rate when demand falls. It is a target, not a promise.


### Part 2 of 4. Claim by claim

[21 p] Our two research lanes checked 26 of the talk's claims against Strategy's own SEC filings, market data and the law. The pattern: the numbers about today are mostly right. The words wrapped around them are where it slips.

[22 table]
| What he said | Verdict | The honest version |
|---|---|---|
| STRC is "six times over-collateralized" | Holds, on his method | 6.1 times if you subtract the company's cash first, 4.2 times without, and nothing is pledged to STRC itself |
| About 48 years of dividends are covered | Spin | About 46 years if you count the Bitcoin, but only 3.2 to 3.4 years in actual dollars. Using the Bitcoin years means selling Bitcoin |
| It is "the strongest credit in the world" | Wrong | The issuer is rated junk (B-) and STRC is a share behind about $8 billion of claims. Fair version: well covered for now |
| For a New Yorker it is like a bank account paying 24% | Spin | About right only for a top-bracket New York City taxpayer, and only as a delay: the tax comes back when you sell. For a tax-free account the edge is zero |
| Credit on a stock index would be illegal under the 1940 Act | Wrong | Registered funds issue preferred stock on stock portfolios every day, as long as assets cover it at least twice |
| A Bitcoin-backed dollar token could pay 6% to 8% | Wrong under US law | The 2025 stablecoin law (GENIUS Act) bans issuers from paying holders yield and does not allow Bitcoin or preferred stock as reserves |
| Selling $10 billion of credit and beating the hurdle "means you just made $10 billion" | Wrong | Money raised is not profit. Shareholders gain only the yearly gap between Bitcoin's return and the 12% cost, which can be negative |
| $10 billion of credit buys a year of new Bitcoin | Holds, at one price | At $80,500 it buys about nine months of new coins. It is exactly a year near $61,000 |
| Since August 2020, Bitcoin returned 37% a year and MSTR 51% | Spin | True from that start date. Start at the November 2021 peak and gold and the S&P 500 beat both. Start in January 2025 and MSTR is last, at minus 33% a year |
| STRC fell below par in early summer and a dollar reserve fixed it | Spin | It closed as low as $74.57 on 26 June 2026. The repair took a rate rise to 12%, a reserve rebuilt mostly from new share sales, Bitcoin sales and about $2.1 billion of buybacks |
| The Bank of England raised capital, bought gold and issued credit against it | Spin | It was founded in 1694 to lend £1.2 million to the government for a war. Consols, from 1751, were backed by taxes. Britain's legal gold standard ran from 1821 to 1931 |
| STRC is the most liquid preferred stock in the world | Holds | About $156 million a day, far ahead of the preferreds of JPMorgan, Citigroup and Boeing |

[23 insider] (The pattern behind the verdicts) Every claim that holds is about today's numbers on the company's own method. Every claim that fails is a label: credit, bank account, stablecoin, strongest. Labels carry feelings from one product to another. That is why the first question about any pitch is what the thing is in law, before what it pays.

[24 p] And in fairness, the critics' sharpest claim, that it is a Ponzi scheme, also fails the test. Strategy owns a real, public asset worth several times STRC, and discloses every week where the dividend money comes from. The true point inside the criticism is narrower: the dividends depend on the company continuing to raise new money, because its software business earned only $14.3 million of operating cash in nine months.

[25 deeper] GO DEEPER BOX (collapsed by default): The full audit: 26 claims, sources and what each flips on
[25.0 p] The full table, with the primary source and date for each claim, is in the research file round8/lanes/R8A-instrument-claims.md (section D2). Tally: 10 hold, 9 spin, 4 wrong, 3 cannot be checked (the 20 times liquidity gain from monthly dividends, the claim that a third of all capital was once preferred stock, and the $10 trillion to $100 trillion scale).

[25.1 table]
| Recomputed | Result | Inputs |
|---|---|---|
| Coverage of STRC, company method (Bitcoin over debt, STRF and STRC, less dollar assets) | 6.1 times | 849,327 BTC at $80,536, debt $6.75B, dollar assets $4.92B, STRC about $8.2B, STRF about $1.2B (model) |
| Coverage of the whole stack, gross | 3.4 times | All debt and all preferred, about $20B |
| Bitcoin price where STRC coverage falls to 1 time | about $13,000 to $13,500 | Two lane models |
| Years of dividends and interest in dollars | 3.2 to 3.4 years | About $1.5B a year against $4.79B to $5.07B |
| Volatility, last 90 days and last 12 months | Bitcoin 39 and 44, MSTR 85 and 81, STRC 9 and 22 | Daily closes to 4 November 2026 |
| Tax-equivalent yield of 12% as return of capital | 27% top-bracket New York City, 19.5% against a qualified dividend, 12% tax-free account | Federal, state and city top rates |

[25 end of deeper box]

[26 callout] (Stop here) Part 2 of 4 done. You can separate the numbers from the labels. Try these three before Part 3.

[27 check] Q: Why is "48 years of dividends covered" spin and not a lie?
A: It is about 46 years if you count the Bitcoin, but paying from Bitcoin means selling it. In dollars the cover is about 3.2 to 3.4 years.

[28 check] Q: Why can a US dollar stablecoin not pay 8% backed by Bitcoin today?
A: The 2025 stablecoin law bans issuers from paying holders yield and allows only cash-like reserves, not Bitcoin or preferred stock.

[29 check] Q: What does the return table depend on most?
A: The start date. From August 2020 Bitcoin and MSTR lead. From the November 2021 peak, gold and the S&P 500 beat both.


### Part 3 of 4. The flywheel, and what turns it backwards

[31 p] Saylor calls it a triple flywheel. Sell credit, buy Bitcoin, the price rises a little, the shares trade above the Bitcoin they hold, so selling shares buys even more Bitcoin per share, the cushion under the credit grows, and the credit gets cheaper to sell. Each link pushes the next.

[32 diagram] flywheel-loop: Eight links. In a bull market each pushes the next. In a bear market every link runs backwards, and the question is which brake holds first.

[33 p] The key link is the premium, called mNAV: how much the company's shares are worth compared with the Bitcoin it holds. Above 1, selling new shares buys more Bitcoin per share for everyone. Below 1, it does the opposite. The premium was about 3 to 4 in November 2024. In early November 2026 it was about 1.08 on the company's own measure, and about 0.86 on the shares alone.

[34 table]
| Brake | Where it bites | Reading in early November 2026 |
|---|---|---|
| Bitcoin against what Strategy paid | Below $75,451 the whole pile is worth less than it cost | $80,500, only 6.7% above cost. The 2026 low was $57,740 in late June |
| The premium (mNAV) | Below 1, selling shares to pay dividends shrinks Bitcoin per share | About 1.08 on the company's measure, 0.86 on the shares alone |
| Dollars on hand | Company rule: keep at least 12 months of dividends | $4.92 billion, about 39 months |
| STRC's price | Below about $99 the company stops selling and starts buying back | $99.98 (4 November) |
| Convertible notes | Holders can demand cash when the share price is below the conversion price | $5.91 billion can be put back for cash from September 2027 to September 2028. Every conversion price is above today's share price |

[35 insider] (The real stress point) Not the 12% dividends. The convertible notes. Two years of dividends plus the notes holders can cash in come to about $8.91 billion, against $4.92 billion of dollars on hand, a gap of about $4 billion. Strategy can refinance, sell shares or sell Bitcoin. A put is a refinancing test, not a default, as long as markets stay open.

[36 table]
| If Bitcoin falls | Price | Bitcoin over all debt and preferred | Months of dollar dividends | Bitcoin to sell a year once the reserve runs low, if no shares are sold |
|---|---|---|---|---|
| Today | $80,500 | 3.4 times | 39 | about 19,000 (11% of a year's new coins) |
| Down 30% | $56,400 | 2.4 times | 39 | about 27,000 (16%) |
| Down 50% | $40,300 | 1.7 times | 39 | about 37,000 (23%) |
| Down 70% | $24,200 | 1.0 times | 39 | about 62,000 (38%) |

[37 p] This is a model, not a forecast, with the company's debts and reserve held fixed. Three things stand out. No scenario forces a Bitcoin sale to pay dividends for about 27 months, thanks to the reserve. The preferred stack stays covered in every case, and falls below 1 time only near $18,000 Bitcoin. But in a deep bear the company would be selling a large slice of each year's new Bitcoin, which is exactly when buyers are scarce.


### It already ran backwards once

[39 p] In the third quarter of 2026 Strategy raised $5.41 billion by selling shares, but spent only $0.59 billion on Bitcoin. The rest went into its dollar reserve, buying back STRC below $100, and dividends. It sold $348.6 million of Bitcoin in the quarter, $239.9 million of it to pay dividends. The share sales were defending the credit instead of buying Bitcoin. The talk did not mention it.

[40 curiosity]
- Q: Does Strategy really buy all the Bitcoin that is mined?
  A: Sometimes. In 2025 it bought 225,030 against 164,250 mined, 137%. In the third quarter of 2026 it bought about 4%. Its buying swings with the premium. (builds on rb-crypto)
- Q: What is the biggest bill Strategy faces before 2029: the 12% dividends or something else?
  A: Something else: $5.91 billion of convertible notes that holders can cash in from September 2027, because every conversion price is above today's share price. (builds on rb-bonds)

[41 deeper] GO DEEPER BOX (collapsed by default): Precedents: when reflexive structures turned
[41.0 table]
| Case | What powered it | What broke it | What is different now |
|---|---|---|---|
| South Sea Company, 1720 | Shares above their asset value let the company take in government debt cheaply | The price fell from about £1,000 in June to about £135 by November | The company had almost no real asset. Strategy holds a public, liquid one |
| Mississippi Company, 1719 to 1720 | The issuer defended its own share price by printing notes | The defence ended and shares fell about 90% | Strategy defends STRC with a finite reserve, so the defence ends when the reserve does |
| Goldman Sachs Trading Corporation, 1928 to 1932 | Trusts stacked on trusts, financed with preferred stock and debt | Shares fell from about $104 to under $2 | Strategy holds one asset directly, with no cross-holdings |
| MicroStrategy itself, March 2000 | A dot-com valuation | A restatement of results cut the stock 62% in one day | The asset today can be checked on the blockchain by anyone |
| UK split-capital zero shares, 2001 to 2002 | Low-risk shares sold to savers, backed by trusts that held each other | A bear market plus hidden cross-holdings. Average compensation about 40% of losses | Zeros had an end date. STRC has none, and Strategy's holdings are public |
| GBTC premium to discount, 2021 to 2022 | The only easy wrapper for Bitcoin in a brokerage account | Rival wrappers. The premium became a discount of about 50% | Spot Bitcoin ETFs now offer the same wrapper at no premium |
| Celsius and Terra, 2022 | Double-digit yields on crypto, payable on demand | Runs within days. Withdrawals frozen | STRC has no right to redeem, so a run shows up as a lower price, not a frozen account |

[41.1 p] What is the same: the premium is the engine, the premium rests on one volatile asset, the issuer defends its own paper with a finite pool, and the product is sold to savers as near-cash.

[41 end of deeper box]

[42 callout] (Stop here) Part 3 of 4 done. You know the loop, its brakes and where it bit in 2026. Try these three before Part 4.

[43 check] Q: What is mNAV, and why does it matter if it falls below 1?
A: The company's value compared with the Bitcoin it holds. Below 1, selling new shares to pay dividends or buy Bitcoin shrinks the Bitcoin each share owns.

[44 check] Q: What happened to Strategy's new money in the third quarter of 2026?
A: It raised $5.41 billion from shares but spent only $0.59 billion on Bitcoin. Most went to the dollar reserve, STRC buybacks and dividends, and it sold Bitcoin to help pay them.

[45 check] Q: What is the binding stress point before 2029?
A: About $5.91 billion of convertible notes that holders can cash in from 2027, more than the dollars on hand.


### Part 4 of 4. Money moving between baskets

[47 p] Here is the big idea to test. The pitch says digital credit pulls money out of the old dollar basket (money funds, government bills, bank deposits, stablecoins) and into the new one (Bitcoin). Follow the dollars step by step and a different picture appears.

[48 diagram] basket-pipe: The dollars never leave the dollar basket. They pass through the wrapper to whoever sold the Bitcoin. What crosses the line is Bitcoin, into a listed company, and Bitcoin's risk, onto the saver.

[49 steps]
- A saver moves $10,000 from a money market fund into STRC. The fund sells $10,000 of government bills. The saver's dollars go to Strategy. The bill goes to another buyer. The dollar basket is the same size.
- Strategy buys $10,000 of Bitcoin from a miner or an early holder. The dollars go to the seller, who spends them or parks them in a bank, a bill or a money fund. No dollar enters Bitcoin.
- Strategy pays the saver a daily dividend from its dollar reserve. Dollars move from Strategy to the saver. That reserve was raised mostly by selling new shares, so in effect new shareholders are paying the preferred holders.
- In a bear market Strategy sells Bitcoin to pay the dividend. A Bitcoin buyer's dollars go to the saver, and Bitcoin leaves the wrapper. This happened in the third quarter of 2026.

[50 insider] (What really crosses the line) In all four steps, dollars only change hands. Digital credit does not take dollars out of the dollar basket. It changes two things: who holds the Bitcoin (a listed company in bull years, outside buyers in bear years), and what the saver holds (a claim on government bills becomes a share whose value rests on Bitcoin). Money does not move between baskets. Ownership and risk do.

[51 table]
| Dollar-basket pool | Size (late 2026) | Digital credit (about $14.7 billion) as a share |
|---|---|---|
| US money market funds | $7.9 trillion | 0.19% |
| US government bills | $7.1 trillion | 0.21% |
| US bank deposits | $19.6 trillion | 0.08% |
| Dollar stablecoins | $295 billion | 5.0% |
| New Bitcoin mined in a year | about $13 billion | about 110% |

[52 p] Read the last two rows together. Against the dollar basket, digital credit is a rounding error. Against the trickle of new Bitcoin, it is huge. That is the whole trick in one line: a tiny slice of a giant pool, pointed at a small and fixed supply, can move the smaller market a lot.

[53 p] And there is a pipe running the other way, much bigger. Every new stablecoin dollar must sit in government bills or cash. In 2025 stablecoins grew by $100.5 billion while Strategy raised $25.3 billion, so the net flow ran into the old basket by about four to one. In 2026 stablecoins shrank by $9.1 billion.

[54 table]
| Box 1. The treasury-company race | Others buy Bitcoin with new paper | Others hold back |
|---|---|---|
| You buy Bitcoin with new paper | Middle: everyone's premium shrinks toward 1 as Bitcoin exposure becomes common | Best: you keep the premium and become the default wrapper |
| You hold back | Worst: your premium vanishes as rivals grow | Middle: nothing changes |

[55 p] Settles: everyone issues while any premium exists, so the premium is competed away. By June 2026 two rivals, Metaplanet and Nakamoto, traded near 0.9 times their Bitcoin. Misses: Strategy's size gave it an edge, and Bitcoin ETFs cap plain exposure at 1 time.

[56 table]
| Box 2. A run on the preferred | Other holders sell | Other holders hold |
|---|---|---|
| You sell | Middle: you take the lower price, about $71 to $74 in June 2026 | Best for you: you exit near $100 before the fall |
| You hold | Bad: the price gaps, but dividends continue while the reserve lasts | Good: 12% at a steady price |

[57 p] Settles: with no right to redeem, a run only moves the price. The issuer can change the payoffs by raising the rate and buying back below $100. That worked in 2026, at the cost of the reserve and new shares. Misses: funds that must mark prices daily sell regardless, which is why June gapped.

[58 table]
| Box 3. The regulator's choice on stablecoin yield | Industry pays yield through exchanges and affiliates | Industry pays no yield |
|---|---|---|
| Regulator allows yield | Stablecoins compete with money funds and deposits, and an 8% Bitcoin-backed token becomes possible in form | Same, with less friction |
| Regulator bans yield, affiliates included | Fights over enforcement. Yield moves into tokenized funds or tokenized STRC | Today's rule: issuers keep the bill income, banks keep deposits |

[59 p] Settles: banks want a full ban, exchanges a narrow one. The winner decides whether "digital money paying 8%" can ever be a payment stablecoin or only an investment product.

[60 table]
| If this happens | What the pipe does | Tell to watch |
|---|---|---|
| Bitcoin bull market, premium above 1.2 | Toward Bitcoin: shares and credit sold, Bitcoin bought, perhaps more than is mined | The premium above 1.2 for a month, in Strategy's weekly filings |
| Bitcoin bear market, premium at or below 1 | Backwards: buybacks, a bigger dollar reserve, Bitcoin sold to pay dividends | Bitcoin sales in a weekly filing, or the reserve below 12 months |
| Interest rates fall | Easier: 12% looks better against 4% bills | Federal Reserve decisions |
| Interest rates rise | Harder: savers compare 12% with 4% to 5% risk-free | The 10-year yield above 5% (4.90% on 4 November) |
| Stablecoin yield allowed | A competing yield, but also a door to Bitcoin-backed digital money | The final stablecoin rules and the market-structure bill in Congress |
| Tax treatment changes | STRC's tax edge shrinks if its payments become taxable dividends | Strategy's 2026 annual report and tax notice, early 2027 |

[61 insider] (Verdict on an old belief) In Round 1 this project concluded that Set 1 is absorbing Set 2. Digital credit mostly supports that, with one twist. Set 1 is absorbing Bitcoin into its legal wrappers: listed companies now hold about 1.3 million Bitcoin, 6.5% of all supply. The dollars never leave Set 1. But some Set 1 savers now carry Bitcoin's risk dressed as credit, and in a bear market the wrapper sells Bitcoin back into dollars. Our confidence in that reading is about 70 out of 100.

[62 curiosity]
- Q: You pay $100 for STRC. Where are your dollars a week later?
  A: With whoever sold Strategy its Bitcoin, or in Strategy's dollar reserve. In the third quarter of 2026 most new money never reached Bitcoin sellers at all. (builds on rb-moneymake)
- Q: If ten companies copied Strategy, would Bitcoin's price keep rising?
  A: Only while each can sell its shares above the Bitcoin it holds. The race in Box 1 competes that premium away, as rivals near 0.9 in June 2026 showed. Fixed supply helps the price only while new money keeps arriving. (builds on rb-clubs)
- Q: Will a dollar token paying 8% ever exist?
  A: Not as a US payment stablecoin under today's law. It could exist as a tokenized fund or security, outside the stablecoin rules, with the risks of what backs it. Watch the final stablecoin rules and the market-structure bill. (builds on rb-12)
- Q: Is digital credit a new asset class or one company's funding tool?
  A: Today it is about $14.7 billion, mostly one issuer plus a few copies. Saylor himself says credit investors want three years of unbroken dividends. STRC has about 15 months. Ask again in 2028, after the convertible notes come due. (builds on rb-crypto)

[63 callout] (Before you believe any account paying 12%) Ask six questions. Is it a deposit, or a share? Who promises the $100, if anyone? Who sets the rate, and can they cut it? Where does the money come from: profits, new investors, or selling the asset? What happens if the asset behind it halves? And for a Malaysian: PIDM does not cover shares, there is no US and Malaysia tax treaty so 30% US withholding can apply, US estate tax can apply above $60,000 of US assets, and the ringgit moved 18% against the dollar between February 2024 and January 2026, more than a year and a half of a 12% dividend.

[64 deeper] GO DEEPER BOX (collapsed by default): The full player map, and the classic yield traps
[64.0 table]
| Player | Wants | Best move in a bull | Best move in a bear |
|---|---|---|---|
| Strategy's management | More Bitcoin per share, an unbroken dividend record | Sell shares and credit, buy Bitcoin | Build the dollar reserve, buy back STRC, sell Bitcoin if needed |
| Common shareholders | Bitcoin per share up faster than Bitcoin | Hold | They pay for the reserve through dilution |
| STRC buyers | 12% near $100, liquidity, a tax delay | Buy near par | Hold through price gaps, or sell at a discount |
| Convertible note holders | Their money back | Convert into shares | Demand cash from 2027 |
| Bitcoin sellers | Dollars at a good price | Sell into Strategy's demand | Buy back cheaply from forced sellers |
| Copycat companies | A premium of their own | Issue and buy Bitcoin | Trade below their Bitcoin |
| Bitcoin ETFs | Fees | Offer plain Bitcoin at no premium | Absorb redemptions |
| Stablecoin issuers | Keep the bill income | Grow supply | Shrink, as in 2026 |
| Regulators | Disclosure and stability | Few moves | Scrutiny of words like credit and bank account |

[64.1 table]
| Yield trap | Promised | What happened |
|---|---|---|
| Goldman Sachs Trading Corporation, 1928 to 1932 | Leveraged returns on stacked trusts | Shares fell from about $104 to under $2 |
| UK split-capital zeros, 2000 to 2002 | Low-risk fixed growth | Many lost most of their value. Buyers were not told about cross-holdings |
| Terra's Anchor, 2021 to 2022 | About 19.5% on a dollar stablecoin | Fell to near zero in May 2022 |
| Celsius, 2020 to 2022 | Double-digit yields on crypto deposits | Froze withdrawals in June 2022 |

[64.2 p] What STRC is not, in fairness: a hidden-leverage scheme. Its terms, holdings, reserve and dividend funding are disclosed in SEC filings every week. Its yield is high because its risk is real, and the prospectus says so.

[64 end of deeper box]

[65 deeper] GO DEEPER BOX (collapsed by default): Tripwires: dates that would change the picture
[65.0 table]
| Tripwire | When | What it would mean |
|---|---|---|
| Strategy sells Bitcoin to pay dividends in two quarters in a row | Quarterly reports, next early 2027 | The reverse valve is the normal state, not a one-off |
| The dollar reserve falls below 12 months (about $1.5 billion) | Any weekly filing | The company's own floor is breached |
| STRC below $90 for 20 trading days while Bitcoin is above Strategy's cost | Any month | Buyers price STRC as equity, not credit |
| Convertible note holders demand cash | From 15 September 2027 | The first real refinancing test |
| Strategy's payments become taxable dividends | 2026 annual report and tax notice, early 2027 | STRC's tax edge shrinks for US holders |
| A US rule allows stablecoin yield, or bans it through affiliates too | Stablecoin rules and the market-structure bill, 2026 to 2027 | Decides whether digital money paying 8% can exist |

[65 end of deeper box]


### Say it back

[67 check] Q: When a saver buys STRC and Strategy buys Bitcoin, where do the saver's dollars end up?
A: With whoever sold the Bitcoin, who usually puts them back into deposits, bills or money funds. No dollar leaves the dollar basket.

[68 check] Q: So what does move between baskets?
A: Ownership of Bitcoin, into a listed company, and Bitcoin's risk, onto the saver who holds STRC. In a bear market the wrapper can sell Bitcoin back into dollars.

[69 check] Q: Name three questions to ask before believing an account that pays 12%.
A: For example: is it a deposit or a share, who promises the $100, where does the 12% come from, can they cut it, and what happens if the asset halves.

Rules: Read the contract before the label. Credit, bank account and stablecoin are claims to test, not facts. / Ask who ends up holding the dollars. Most deals only move money between people. / A 12% yield on a 4% world is pay for risk. Find the risk before you take the yield. / Coverage in the asset is not coverage in dollars. Paying from the asset means selling it. / Reflexive structures run both ways. Watch the brake that bites first.
