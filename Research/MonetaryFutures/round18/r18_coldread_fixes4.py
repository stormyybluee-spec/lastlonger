"""Round 18 cold-reader fixes, fourth set (retest 3): Bank Negara's 1998 rule stated once on the main path (it was
lost in the third set's rewrite), the scene's key point named, and four small fixes. No new facts. Verify after apply.
Usage: python3 -I round18/r18_coldread_fixes4.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-printers")
R = [
 ("In 1998 Malaysia's prices rose by about as much as Bank Negara's own rough rule predicted, far less", "In 1998 Bank Negara's own rough rule said a fall that big would add about 5 points to inflation. Prices rose 5.3%, close to the rule, and far less"),
 ("but in 1998 about as much as Bank Negara's rule predicted", "but in 1998 about as much as Bank Negara's rough rule said it would"),
 ("Keep that last point in mind. It is the key to this whole chapter.", "Keep this in mind: money that loses value is spent at once. That is the key to this whole chapter."),
 ("Rises about 2.1 points, so about 40% of the fall gets through", "Rises about 2.1%, so about 40% of the fall gets through"),
 ("But speed is a ratio, a result of trust, saving and interest rates as much as a cause.", "But speed is measured by dividing spending by money, so it is a result of trust, saving and interest rates as much as a cause."),
 ("Each test ends with a short line on what it does to the claim. This is the fifth of seven deeper chapters.", "Each test ends with a short line on what it does to the claim.")]
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
