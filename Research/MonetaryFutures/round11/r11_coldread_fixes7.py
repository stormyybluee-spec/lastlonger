"""Round 11 cold-reader fixes, seventh set: retest 5 polish (6 of 7 fixes). Fix 7 is not applied: its wording
misdescribed how a price index treats quality. Verify after apply.
Usage: python3 -I round11/r11_coldread_fixes7.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-print")
R = [
 ("Doing this is not the same as collapsing. It is a warning light, not a crash.",
  "Doing this is not the same as collapsing. A country with strong enough growth can keep rolling its debt, which Ponzi never could. It is a warning light, not a crash."),
 ("One test passes and one fails.", "One test passes and one fails. So the strict charge sticks on test two only. That is why the word is a warning and not a verdict."),
 ("Fails. The gap is bigger than the safe size", "Fails. The gap is bigger than the safe size. This is the number to watch most"),
 ("So this is a story of work and credit under a gold anchor.", "So this is a story of work and credit between neighbours, under a gold anchor at the top."),
 ("In Monopoly every player gets $200 for passing Go. Real new money is not shared like that.",
  "In Monopoly every player gets $200 for passing Go, so new money reaches everyone equally. Real new money is not shared like that."),
 ("Notice that all five peaceful tools on the list use", "Notice that the first five tools on the list, the peaceful ones, all use")]
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
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
