# When markets fall: buckets, collateral and rotation

Rulebook Level 1 (Foundations), chapter 17. Stack: Fundamentals. Id: rb-buckets.

Web page: https://neetmonetary.netlify.app/#rb-buckets . Text built 2026-11-11. Guide for AI readers: https://neetmonetary.netlify.app/llms.txt

*A 20% crash does not hand 20% to someone else. But money really does slosh between buckets, and the timing of when you enter a bucket is most of the game.*

Every big market drop brings the same post: the market lost a trillion dollars today, so someone on the other side must have made a trillion. It feels like conservation of money. If value left one place, it must have arrived somewhere. That intuition is mostly wrong, and understanding why it is wrong is one of the most useful things in this whole rulebook.

### Market cap is a price tag, not a pile of cash

Market capitalization is a simple multiplication: the last price anyone traded at, times every share that exists. It is a valuation. It is not money sitting in a vault. When the price moves, the whole tag is rewritten, even though only a few shares actually changed hands.

*[Picture on the web page: A company with 1,000 shares. Ten shares trade at a lower price and the value of all 1,000 shares is rewritten.]*

1. A company has 1,000 shares. The last trade was at $100, so its market cap is $100,000.
2. Bad news arrives. A nervous seller offers 10 shares and the best bid is $80. They trade.
3. The last price is now $80, so the market cap is now $80,000. Twenty thousand dollars of value is gone.
4. How much cash changed hands? Ten shares at $80, which is $800. The seller got $800 in cash. The buyer paid $800 in cash and got shares.
5. Nobody received the missing $20,000. It was never cash. It was an estimate of what all the shares were worth, and the estimate went down.

- **Myth:** When the stock market drops 20%, someone on the other side profited by that same 20%.
- **Reality:** Most of the drop is a repricing of paper value that nobody collects. Every share sold had a buyer who paid cash for it, so cash only changes hands, it does not appear from the crash. The people who do profit from a fall (short sellers, buyers of put options) win only what the other side of those specific contracts loses, which is a small slice of the headline number.

> **Picture this.** Your street has 100 houses. One neighbor sells in a hurry for 20% below what similar houses fetched last month. An appraiser now marks every house on the street 20% lower. The street lost millions on paper in one afternoon, yet only one family actually sold, and one family actually bought. Nobody walked away with the millions. That is what a market crash headline is.

### So does money just circulate? Not quite. It moves between buckets

The owner of this project put the next idea well: money is not a fixed pie that only circulates. It moves through different buckets, at different times, and each bucket sits on top of other buckets as collateral. That is right, with two refinements. First, the pie is not fixed: banks create money when they lend and it disappears when loans are repaid (chapter 6), so the total in the buckets can grow or shrink. Second, valuations move far more than money does, because a small flow of cash into a bucket can reprice everything already in it.

*[Picture on the web page: Money rotates between buckets, and the buckets are stacked: one bucket's value is pledged to borrow money that fills the next.]*

- Cash and bills: the safe bucket. It fills up when people are scared.
- Bonds: fill up when people expect rates to fall or want steady income.
- Stocks: fill up when people expect profits to grow.
- Property: fills up when credit is cheap, because most of it is bought with loans.
- Gold: fills up when people distrust the system or the currency.
- Crypto and frontier assets: fill up last in a boom and empty first in a bust.

### Collateral on top of collateral

Here is where the owner's phrase is exactly right. A bucket's value is often pledged to borrow money that fills another bucket. Stocks are pledged for a margin loan. Bonds are pledged in repo (a short loan backed by bonds) to buy more bonds. A house is pledged for a mortgage, and the bank pledges the mortgage to borrow from someone else. When prices rise, the collateral is worth more, so you can borrow more, so prices rise further. When prices fall, the same chain runs backwards: the lender asks for more collateral (a margin call), you must sell, the selling pushes prices lower, and the next borrower gets a margin call. That is why falls are often faster than rises.

> The scary days in markets are rarely about people changing their minds. They are about collateral. In 2008 it was mortgage bonds pledged in repo. In 2022 British pension funds had to sell government bonds to meet margin calls on their hedges, which pushed bond prices down, which caused more margin calls, until the Bank of England stepped in. Watch who is forced to sell, not who wants to sell.

### Early, late, and the price of being first

Because money rotates, timing matters. The first money into a bucket buys before the crowd, when the story is uncertain and the bucket might stay empty. It takes the most risk and, when it is right, earns the largest return, sometimes an outlier return. The last money in buys after prices have risen, when the story is obvious and everybody agrees. It takes a different risk: that it is buying from the early money on its way out. Neither is free money. The early buyer is paid for carrying uncertainty and being wrong often. The late buyer pays for comfort.

| When you enter a bucket | What you are paid for | Main risk |
|---|---|---|
| Early (before the crowd) | Carrying uncertainty and illiquidity | Being wrong or too early, the bucket stays empty |
| Middle (as flows arrive) | Riding the repricing as others join | Mistaking a crowded trade for a safe one |
| Late (after the story is obvious) | Comfort and confirmation | Buying from early money that is leaving |

### What moves money between buckets

- Interest rates and liquidity: when central banks make money cheap, it flows outward toward riskier buckets. When money gets dear, it flows back toward cash and bills.
- Credit: lending creates new money that lands in some bucket first, usually property and financial assets (the Cantillon effect from chapter 16).
- Supply and demand: new shares, new bonds and new coins dilute a bucket. Buybacks and scarcity concentrate it.
- Fear and narrative: stories move flows faster than numbers do.
- Rules: laws that force holders into a bucket (like stablecoin reserves that must hold Treasury bills) fill that bucket by design.
- Rigging: it exists (insider trading, pump and dump schemes, spoofing) and is illegal in most markets, but most rotation is explained by the five forces above.

**Check yourself.** Q: The stock market falls 20% and headlines say $10 trillion was wiped out. Where did the $10 trillion go?
A: Mostly nowhere. It was the paper value of all shares at the last traded price. The cash that changed hands in the selling went from buyers to sellers. Short sellers and put buyers gained only what their direct counterparties lost, a small fraction of the headline.
