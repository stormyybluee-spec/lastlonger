"""Round 16 cold-reader fixes, third set (retest 2, eight polish fixes). Verify after apply.
Usage: python3 -I round16/r16_coldread_fixes3.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-law")
R = [
 ("Hong Kong, linked to the US dollar at about 7.8 since 1983, as reported", "Hong Kong, linked to the US dollar at about 7.8 Hong Kong dollars for each US dollar since 1983, as reported"),
 ("with powers to steer credit toward development", "with powers to steer loans toward chosen industries, to help development"),
 ("stands behind its banks.", "stands behind its banks, which means it can lend to them when they are in trouble."),
 ("reserves locked up abroad, and what a passive board could not do", "reserves held abroad that could not be used at home, and a board that could only wait and could not act"),
 ("a debt fixed in money is easier to pay back", "a debt fixed as a set sum of money is easier to pay back"),
 ("whether a government can bring in a new kind of money from the top down", "whether a government can order its people to use a new kind of money"),
 ("The President, with the consent of the Senate", "The President, with the consent of the Senate, which is the upper house of lawmakers"),
 ("A government that prints its way out of its debts", "A government that creates new money to pay off its debts")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(d["chapters"][k], ensure_ascii=False); miss = []
for a, b in R:
    if j(b) in s: continue
    n = s.count(j(a))
    if n == 1: s = s.replace(j(a), j(b))
    else: miss.append(("old count %d" % n, a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if j(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
sys.exit(1 if miss else 0)
