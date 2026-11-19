"""Round 14 cold-reader fixes, second set: retest 1 polish (7 of 8 fixes. The eighth changed a correct plural).
Verify after apply. Usage: python3 -I round14/r14_coldread_fixes2.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-1971")
R = [
 ("the world's official currency reserves", "the money that governments around the world keep in store, called reserves"),
 ("The country whose money everyone else saves in and trades in.", "The country whose money everyone else saves in and trades in. Today that is America, and its money is the US dollar."),
 ("Something did replace gold as the anchor.", "Something did replace gold as the anchor. Inflation means prices rising over time."),
 ("Crises are a second test, counted by Michael Bordo, Barry Eichengreen and two colleagues in 21 countries.", "Crises are a second test. Michael Bordo, Barry Eichengreen and two colleagues counted them in 21 countries. They count per country-year, which is one country in one year."),
 ("A limit that is lifted when it binds is a loose limit", "A limit that is lifted when it starts to hurt is a loose limit"),
 ("Bank lending in 18 rich countries was 53% of yearly output in 1970", "Bank lending in 18 rich countries was 53% of what those countries made in a year, in 1970"),
 ("freer movement of capital", "freer movement of money across borders")]
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
