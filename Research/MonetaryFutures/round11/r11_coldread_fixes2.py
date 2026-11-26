"""Round 11 cold-reader fixes, second set: the readers' confusions that the ranked list left open.
Usage: python3 -I round11/r11_coldread_fixes2.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-print")
R = [
 ("which wiped out most savings", "which wiped out most savings. That was a real loss for savers, but the reform stopped the inflation and got trade moving again"),
 ("A new currency and a monetary squeeze", "A new currency and tight money"),
 ("So by its features it is not a Ponzi. But economists have a strict version, and here the prosecution scores a point.",
  "So by its features it is not a Ponzi. That is the first of two answers. Economists also have a strict version, and here the prosecution scores a point."),
 ("Ponzi? Not by its features. By the strict test the US borrows to pay its interest, and its deficit before interest is now too large.",
  "Ponzi? Two answers. By its features, no: nobody is lied to and the debt is backed by taxes. By the strict test, a warning: the US borrows to pay its interest, and its deficit before interest is now too large."),
 ("Most investment was paid for at home.", "Most investment was paid for by each country's own work and saving."),
 ("Until 1879 the US dollar was unbacked paper, held back so it could return to gold, and from 1879 to 1897 it was on gold.",
  "Until 1879 the US dollar was paper with no gold behind it. The government kept that paper scarce so the dollar could go back to gold, and from 1879 to 1897 it was on gold."),
 ("Now a modern fixed money. Bitcoin's supply is capped at 21 million coins. A 2021 study found the top 10,000 investors, leaving out exchanges and miners, held a quarter to a third of all coins. The top 1% of US households hold about 32% of US net worth.",
  "Now a modern fixed money. Bitcoin is a digital coin whose supply is capped at 21 million. A 2021 study found the top 10,000 investors, leaving out exchanges and miners, held a quarter to a third of all coins. For a rough comparison, the top 1% of US households, over a million homes, hold about 32% of US net worth. So a fixed money has not spread wealth more evenly so far."),
 ("But credit money can shut new players out too.", "Yet the same cheap loans that help one newcomer start can shut the next one out."),
 ("A Bank of England study found falling real interest rates explained most of the UK rise.",
  "A Bank of England study found that falling interest rates, measured after inflation, explained most of the UK rise."),
 ("A collector pays 100,000 for a custom one. The blacksmith and the suppliers receive the 100,000 as income.",
  "A collector pays 100,000 ringgit for a custom one. The blacksmith and the suppliers receive the 100,000 ringgit as income.")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(d["chapters"][k], ensure_ascii=False); miss = []
for a, b in R:
    if j(b) in s:
        continue
    if s.count(j(a)) == 1:
        s = s.replace(j(a), j(b))
    else:
        miss.append(("old count %d" % s.count(j(a)), a[:60]))
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
