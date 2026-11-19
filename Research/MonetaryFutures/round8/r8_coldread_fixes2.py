"""Apply the Round 8 cold-reader retest fixes (COLDREAD_R8.md, retest section) to rb-strc.
Usage: python3 -I round8/r8_coldread_fixes2.py site/rulebook.json  (writes in place)"""
import json, sys
p = sys.argv[1]
d = json.load(open(p, encoding="utf-8"))
ch = next(c for c in d["chapters"] if c["id"] == "rb-strc")
s = json.dumps(ch, ensure_ascii=False)
if "a credit rating agency" in s: sys.exit("already applied")
R = [
 ("holds cash, deposits or short bills, and may not pay holders interest.",
  "holds cash, deposits or short government bills (loans to the government that are paid back within a year), and may not pay holders interest."),
 ("The company's value divided by the value of the Bitcoin it holds.",
  "What the market says the company is worth (the price of all its shares, with or without its debt and preferred added) divided by the value of the Bitcoin it holds."),
 ("Above 1, selling new shares buys more Bitcoin per share. Below 1, it does the opposite, and the company has said it may then sell Bitcoin instead (reported December 2025).",
  "Above 1, selling new shares buys more Bitcoin per share. For example, if each share stands for $100 of Bitcoin but sells for $110, each new share brings in $110 of Bitcoin, so every share ends up with a little more. Below 1, it does the opposite: a new share sold for $90 brings in less Bitcoin than each old share already holds, so every share ends up with a little less. The company has said it may then sell Bitcoin instead (reported December 2025)."),
 ("B-, which is junk, by S&P (October 2025)",
  "B- from S&P, a credit rating agency (October 2025). That grade is called junk: riskier than the safer investment grades"),
 ("and behind another preferred, STRF",
  "and behind another preferred, STRF. Strategy's other preferreds (STRE, STRK and STRD) rank behind STRC"),
 ("and that falls to 1 time if Bitcoin drops to about $23,500.",
  "and that falls to 1 time if Bitcoin drops to about $23,500. If you remember one danger, take the note puts: from September 2027 holders can ask for $5.91 billion in cash, more than the dollars on hand, and a falling share price makes them more likely to ask."),
 ("and in Malaysia PIDM insures it up to RM250,000.",
  "and in Malaysia PIDM insures it up to RM250,000 (in the US, the FDIC insures up to $250,000)."),
 ("against Strategy's own SEC filings,", "against Strategy's own SEC filings (reports to the US market regulator),"),
 ("(about $14.7 billion: Strategy's preferreds plus Strive's SATA)",
  "(about $14.7 billion: Strategy's preferreds plus SATA, a similar preferred from another company, Strive)"),
 ("Bitcoin's 37% reproduces, MSTR's comes out near 46%",
  "Bitcoin's 37% checks out when we redo the sum. MSTR's comes out near 46%"),
]
for o, n in R:
    oj = json.dumps(o, ensure_ascii=False)[1:-1]; nj = json.dumps(n, ensure_ascii=False)[1:-1]
    assert s.count(oj) == 1, (s.count(oj), o)
    s = s.replace(oj, nj)
ch2 = json.loads(s); ch.clear(); ch.update(ch2)
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("em", s.count("—"), "en", s.count("–"), "semi", s.count(";"))
