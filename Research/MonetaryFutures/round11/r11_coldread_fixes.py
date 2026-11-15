"""Round 11 cold-reader fixes (COLDREAD_R11.md, first pass) for rb-print, with verify-after-apply.
Fix 11 is not applied: its added clause had no source in lane R11A.
Fix 3 arithmetic: (growth 5.9% minus rate 3.57%) / 1.059 times debt of 1.0 to 1.2 years of income = 2.2% to 2.6%.
Usage: python3 -I round11/r11_coldread_fixes.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-print")
R = [
 ("Three parts of the question need fixing. America's share of official gold peaked at about 70% in 1948, not 75%. The rebuild took about five years, not fifty.",
  "The question assumed three things that need fixing. It assumed America held 75% of the world's official gold, but the share peaked at about 70% in 1948. It assumed rebuilding takes fifty years, but it took about five."),
 ("Whether gold alone could have done it cannot be tested.",
  "So gold did not do the rebuilding, and a shortage of gold did not stop it. Whether a world fully on gold could have done it cannot be tested."),
 ("It fails the second: its deficit before interest, about 3.6% of income in 2024, was too big for that gap. Watch both.",
  "It fails the second. With debt a little over one year of income and growth a little over 2 points above the rate, the government can run a deficit before interest of only about 2% to 2.6% of income without debt growing against income (our arithmetic). The real figure was about 3.6% in 2024. So by the strict test today's answer is a warning, not a collapse. Watch both."),
 ("The rate beat growth in only 5 or 6 of the 25 years from 2001, but in 24 of the 64 years from 1962.",
  "The rate was above growth, which is the bad case, in only 5 or 6 of the 25 years from 2001, but in 24 of the 64 years from 1962."),
 ("Whether that can go on depends on two numbers: the interest rate against the growth of the economy in money terms, and the deficit before interest.",
  "Whether that can go on depends on two numbers: the interest rate against how fast the economy grows in dollars, price rises included, and the deficit before interest, which is spending minus taxes with the interest bill left out."),
 ("Does that explain why money must lose a little value each year?",
  "The defence says money is like this too, because once it is spent some of its value seems to vanish. Does that explain why money must lose a little value each year?"),
 ("Both systems tilt the board: hard money toward holders and lenders, credit money toward borrowers and owners.",
  "Both systems tilt the board. Hard money favours people who already hold coins or lend. Credit money favours people who already own houses and shares, and it makes newcomers borrow to catch up."),
 ("of reported official gold, not 75%.", "of reported official gold, less than the 75% some people claim."),
 ("in about five years, not fifty.", "in about five years, not the fifty some people expect."),
 ("Can fight a crisis, earns seigniorage in normal years, and its debt melts a little each year.",
  "Can fight a crisis, earns the profit on printing notes in normal years, and its debt melts a little each year."),
 ("Work and home saving paid for most of it, not gold and not new money.", "Work and saving inside each country paid for most of it, not gold and not new money."),
 ("The country had panics in 1873, 1893 and 1907, though it had no central bank and many banks could not open branches.",
  "The country had panics in 1873, 1893 and 1907. It had no central bank, and many banks could not open branches, which left them weak."),
 ("Since 2022 this has run in reverse", "Since 2022 the central bank has been shrinking its holdings, so this has run in reverse"),
 ("starting with a question from the owner of this project.", "starting with a question put to this site."),
 ("Does credit money provide wealth for everyone alive? Not as stated.", "Some say credit money has provided wealth for everyone alive. Is that true? Not as stated."),
 ("Growth happened under elastic money, which does not prove elastic money caused it or decided who shared it.",
  "Growth happened under credit money, which does not prove credit money caused it or decided who shared it."),
 ("Whether printing looks like a scam depends on which seat is yours.",
  "Whether printing looks like a scam depends on which seat is yours. There are three main seats, household, company and government, and the household seat splits into saver, home owner, renter and worker."),
 ("which leaves room to cut in a slump", "which leaves room to cut in a slump, since rates cannot go far below zero"),
 ("Later fixes cut it to near 0.8", "Later fixes cut it to near 0.8, so a measured 2% is nearer a true 1%"),
 ("but Britain repaid a 1927 war loan only in 2015", "but Britain repaid a 1927 war loan only in 2015, so it rolled that debt over for 88 years"),
 ("Bank of England: UK household wealth up just over 600 billion pounds by May 2012, with the top 5% holding about 40% of financial assets outside pensions",
  "Bank of England: after its bond buying, UK household wealth was up just over 600 billion pounds by May 2012, and the top 5% of households held about 40% of financial assets outside pensions"),
 ("A Malaysian sits in a fourth seat.", "A Malaysian sits in one more seat.")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(d["chapters"][k], ensure_ascii=False); miss = []
for a, b in R:
    n = s.count(j(a))
    if n >= 1:
        s = s.replace(j(a), j(b))
    else:
        miss.append(("old not found", a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
for a, b in R:
    if j(b) not in final:
        miss.append(("new text missing", b[:60]))
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
