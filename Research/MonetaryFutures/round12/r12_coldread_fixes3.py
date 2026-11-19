"""Round 12 cold-reader fixes, third set: retest 2 polish (7 fixes). Verify after apply.
Usage: python3 -I round12/r12_coldread_fixes3.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-credit")
R = [
 ("Part 3 gives a figure that this chapter cannot test.", "Part 3 has a figure this chapter cannot test, and the wrong cause."),
 ("A silver flood, higher prices, and no lasting riches. Why is still argued", "A silver flood brought higher prices, not lasting riches. Historians still argue about why"),
 ("About 210 million pesos of silver from the Americas landed in Spain in the 1500s", "About 210 million silver pesos, the coin of Spain, landed in Spain from the Americas in the 1500s"),
 ("The other side says future taxpayers carry a real burden (James Buchanan, 1958).", "The other side, James Buchanan in 1958, says future taxpayers carry a real burden."),
 ("on different poverty lines", "using different ways to measure poverty"),
 ("Part 4 of the claim holds, and more strongly than its author may like.", "Part 4 of the claim holds, and its warning about requirements is the strongest part."),
 ("through falling prices and saving alone", "by saving alone while prices fall")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(d["chapters"][k], ensure_ascii=False); miss = []
for a, b in R:
    if j(b) in s: continue
    if s.count(j(a)) == 1: s = s.replace(j(a), j(b))
    else: miss.append(("old count %d" % s.count(j(a)), a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if j(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
sys.exit(1 if miss else 0)
