"""Apply the Round 8 cold-reader fixes (COLDREAD_R8.md) to chapter rb-strc.
Usage: python3 -I round8/r8_coldread_fixes.py site/rulebook.json
Each old string must occur exactly once in the chapter. Writes the file in place."""
import json, sys
p = sys.argv[1]
d = json.load(open(p, encoding="utf-8"))
C = {c["id"]: c for c in d["chapters"]}
ch = C["rb-strc"]
s = json.dumps(ch, ensure_ascii=False)
if "A Ponzi scheme pays old investors" in s:
    sys.exit("already applied")
R = [
 ("because its software business earned only $14.3 million of operating cash in nine months.",
  "because its software business earned only $14.3 million of cash from its normal business in nine months. So the 12% is paid in dollars from three places: the dollar reserve, money from selling new shares (ordinary or preferred) and, when those run short, selling Bitcoin. Bitcoin's rise pays nothing unless Bitcoin is sold."),
 ("that it is a Ponzi scheme, also fails the test.",
  "that it is a Ponzi scheme, also fails the test. A Ponzi scheme pays old investors only with new investors' money and hides that it has no real asset."),
 ("The last price revalues every unit, with no dollar crossing",
  "The last trade sets the price of every unit. If one buyer pays $1,000 more for one coin, all the coins are counted as worth $1,000 more each, though only one buyer paid"),
 ("Here is the big idea to test, in the owner's words: future money moving between baskets.",
  "Here is the big idea to test. It comes from the person who runs this site, not from Saylor: future money moving between baskets."),
 ("In step 5 the owner's picture is literally true", "In step 5 this site's picture is literally true"),
 ("buys Bitcoin with the money, and keeps the difference for its shareholders.",
  "buys Bitcoin with the money, and hopes Bitcoin rises faster than the 12% it pays. Any gap goes to its ordinary shareholders, and the gap can be negative. The 12% itself is owed in dollars."),
 ("The company's value over the Bitcoin it holds:",
  "The company's value divided by the value of the Bitcoin it holds. Above 1, the market values the company at more than its Bitcoin. Today it is"),
 ("Two years of dividends plus the notes holders can cash in come to about $8.9 billion",
  "Two years of dividends (about $3 billion) plus the $5.91 billion of notes holders can cash in come to about $8.9 billion"),
 ("A put is a refinancing test, not a default, as long as lenders and share buyers are still willing.",
  "When note holders ask for their cash, it tests whether Strategy can borrow again or sell new shares to pay them. It is not a default, as long as lenders and share buyers are still willing."),
 ("A loan that can turn into shares. The put lets the lender ask for cash back on set dates, which it does when the share price is below the conversion price.",
  "A loan the lender can swap for shares at a set price, the conversion price. The put lets the lender ask for cash back on set dates instead. Lenders do that when the share price is below the conversion price, because swapping would give them less."),
 ("The saver's dollars pass through the wrapper to whoever sold the Bitcoin",
  "The saver's dollars pass through the wrapper (the legal package around an asset, here STRC and Strategy) to whoever sold the Bitcoin"),
 ("$4.92 billion, about 39 months",
  "$4.92 billion of dollar assets (the $4.79 billion reserve plus $0.13 billion of other cash), about 39 months"),
 ("Months of dollar dividends (held fixed)",
  "Months of dividends the dollars on hand can pay (does not change with the Bitcoin price)"),
 ("the reserve could pay about 27 months of dividends before it reaches the 12-month floor.",
  "the reserve could pay about 27 months of dividends before it reaches the 12-month floor (39 months on hand minus the 12 months the company keeps)."),
 ("stories with the dates bent (the Bank of England, the return table), and sums that skip a step ($10 billion \"made\").",
  "stories with the dates bent (the return table above), and sums that skip a step (the claim that selling $10 billion of credit \"made\" $10 billion). The full audit box has more of each."),
 ("the shares trade above the Bitcoin they hold, so selling shares buys even more Bitcoin per share",
  "the company's shares are worth more than the Bitcoin it holds, so selling shares buys even more Bitcoin per share"),
 ("This chapter comes in four parts of about ten minutes each.",
  "This chapter comes in four parts. Parts 1 to 3 take about ten minutes each. Part 4 is about twice as long."),
 ("It can cut by up to 0.25 point a month, plus any fall in one-month SOFR (a short-term dollar rate, about 4%), but never below that rate",
  "It can cut by up to 0.25 point a month. If one-month SOFR (a short-term dollar rate, about 4%) also falls, it can cut by that fall too. It can never go below SOFR"),
 ("only as a delay: each payment lowers your cost price, so the tax returns when you sell",
  "only as a delay: each payment is treated as part of your own money handed back, so the price you are counted as having paid goes down, and the tax comes back when you sell"),
 ("and consols paid 3% from taxes", "and British consols (government bonds with no end date) paid 3% from taxes"),
 ("when the ringgit rose about 22% against the dollar from February 2024 to February 2026, a dollar asset lost about 18% in ringgit.",
  "when the ringgit rose about 22% against the dollar from February 2024 to February 2026 (from 4.77 to 3.91 ringgit per dollar), a dollar asset lost about 18% in ringgit. Fewer ringgit per dollar means a stronger ringgit."),
 ("US estate tax can apply above $60,000 of US shares.",
  "US estate tax (a tax on what a person leaves when they die) can apply above $60,000 of US shares."),
 ("(check the latest LHDN guideline)", "(check the latest guideline from LHDN, Malaysia's tax office)"),
 ("11 hold, 11 are spin, 3 are wrong and 3 cannot be checked.",
  "11 hold, 11 are spin (true facts in a misleading frame), 3 are wrong and 3 cannot be checked."),
 ("Times the Bitcoin covers the claims.",
  "How many times over the Bitcoin could pay the claims, meaning what the company owes to lenders and preferred holders."),
 ("A share paid before the ordinary shares but after every lender.",
  "A share paid before the ordinary shares (also called common stock, traded as MSTR) but after every lender."),
 ("on the company's measure, which adds debt and preferred less cash, and about 0.9 on the shares alone.",
  "on the company's measure, which adds its debt and preferred to the share value and takes away its cash, and about 0.9 on the shares alone."),
 ("Missed dividends pile up and must be paid before any on junior shares",
  "Missed dividends pile up and must be paid before any dividend on shares ranked below STRC, such as the ordinary shares"),
 ("and it closed at $74.57 on 26 June 2026.", "and its price at the end of trading on 26 June 2026 was $74.57."),
 ("Read it by regime.", "Read it by period: boom, turn and bust."),
 # larger items: one layer count (five, as in the layer table)
 ("pitched a ladder of new money: Bitcoin as digital capital, STRC as digital credit paying 12%, the company's shares as digital equity, and one day a dollar token paying 8%.",
  "pitched a ladder of new money in five layers: Bitcoin as digital capital, STRC as digital credit paying 12%, the company's shares as digital equity, one day a dollar token paying 8%, and digital yield, income paid as often as daily."),
 ("Capital, credit, equity, money", "Capital, credit, equity, money, yield"),
]
for o, n in R:
    oj = json.dumps(o, ensure_ascii=False)[1:-1]; nj = json.dumps(n, ensure_ascii=False)[1:-1]
    assert s.count(oj) == 1, (s.count(oj), o)
    s = s.replace(oj, nj)
ch2 = json.loads(s)
# after the one backing ladder table, say which number to remember
B = ch2["blocks"]
idx = [i for i, b in enumerate(B) if b.get("type") == "table" and b.get("cols", [""])[0].startswith("One backing ladder")]
assert len(idx) == 1
B.insert(idx[0] + 1, {"type": "p", "text": "If you remember one number, take the last row: everything the company owes is covered 3.4 times today, and that falls to 1 time if Bitcoin drops to about $23,500."})
ch.clear(); ch.update(ch2)
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
t = json.dumps(ch, ensure_ascii=False)
print("blocks", len(ch["blocks"]), "em", t.count("—"), "en", t.count("–"), "semi", t.count(";"))
