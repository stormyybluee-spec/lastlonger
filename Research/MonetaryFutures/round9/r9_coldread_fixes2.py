"""Round 9: re-apply the first-pass cold-reader fixes that a bug in r9_coldread_fixes.py dropped for rb-moves,
then the retest fixes (COLDREAD_R9.md, retest section). Usage: python3 -I round9/r9_coldread_fixes2.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
C = {c["id"]: c for c in d["chapters"]}
R = {"rb-moves": [
 ("That is a reading to argue with, not a forecast.", "Today's mix points both ways, so this is a reading to argue with, not a forecast."),
 ("Real interest rate (10-year inflation-protected bond)", "Real interest rate: what a saver earns above inflation (10-year inflation-protected bond)"),
 ("Over many periods the stock typically goes nowhere.", "Over many periods the stock typically goes nowhere. Typical here means the result in the middle of many plays, not the plain average."),
 ("A headline that names one cause for a fall with at least two is telling you a story, not the record.", "If a headline gives one cause for a fall that had at least two, it is telling you a story, not the full record."),
 ("On its worst day the value tag moved almost eight times as much as the cash.", "On 5 November, the day with the biggest fall in value, the value tag moved almost eight times as much as the cash."),
 ("It fell 5.1% in the year to December 2024, which may overlap with the third above, and recovered about 9% in the year to June 2026, as reported. The fall was reported in the press. But",
  "Part of that fall, 5.1%, came in the year to December 2024. The index then recovered about 9% in the year to June 2026, as reported. But"),
 ("A lower price makes selling new shares raise less money (no size pulled)", "A lower price means new shares raise less money. No figure was found"),
 ("Creates or retires bank reserves by buying or letting bonds mature", "Creates or retires bank reserves (the banks' own accounts at the Fed) by buying bonds or letting them mature"),
 ("Planned $618 billion of net privately-held marketable borrowing for October to December 2026", "Plans to borrow a net $618 billion from private buyers in October to December 2026"),
 ("No single gauge tells you which season you are in. Six dials, read together, come close.",
  "No single gauge tells you which season you are in. Six dials, read together, come close. As a rough rule, rising inflation and fast credit growth point to a warm season, and falling prices and shrinking credit point to a cold one.")],
 "rb-moneymake": [
 ("and 70 of those points are bank loans (June 2025). The 85 also counts development banks and some other lenders. The chart's 70 is the BIS count, a different one. Check which lenders a number counts",
  "and about 70 of those points are bank loans (June 2025). The rest comes from development banks and some other lenders. The chart shows 69.5, which is a separate count by the BIS and only happens to be close to the 70. Always check which lenders a number counts"),
 ("The post is right that the burden is real.", "The post is right that household debt in Malaysia is a real burden.")]}
miss = []
for cid, pairs in R.items():
    s = json.dumps(C[cid], ensure_ascii=False)
    for a, b in pairs:
        aj = json.dumps(a, ensure_ascii=False)[1:-1]
        if s.count(aj) != 1:
            miss.append((cid, s.count(aj), a[:70])); continue
        s = s.replace(aj, json.dumps(b, ensure_ascii=False)[1:-1])
    C[cid].clear(); C[cid].update(json.loads(s))
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("missed:", miss)
