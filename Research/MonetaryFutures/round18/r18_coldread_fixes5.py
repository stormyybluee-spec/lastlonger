"""Round 18 cold-reader fixes, fifth set (retest 4, eight polish fixes). Verify after apply.
Usage: python3 -I round18/r18_coldread_fixes5.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-printers")
R = [
 ("We scored the match on a scale where 1 is a perfect match and 0 is no link at all.", "We scored the match from 0 to 1. A score of 1 means money and prices moved together perfectly. A score of 0 means no link at all."),
 ("People cannot spend reserves, and reserves are not in the velocity table.", "People and shops cannot spend reserves. Only banks hold them. So reserves are not in the velocity table."),
 ("Prices ran more than five times ahead of the printing press, because each note changed hands faster.", "Prices grew more than five times as much as the number of notes. Each note changed hands faster."),
 ("Because of the tie, Hong Kong's dollar rose with it, so imports got cheaper.", "Because of the tie, Hong Kong's dollar rose with the US dollar. So Hong Kong paid fewer of its own dollars for imports, and imports got cheaper."),
 ("So when times are hard at home, prices and wages have to fall instead.", "So when times are hard at home, the currency cannot fall to help. Prices and wages have to fall instead."),
 ("Its holdings grew from 0.87 trillion dollars in August 2007 to 4.50 trillion in January 2015", "Its holdings, mostly bonds bought with newly created money, grew from 0.87 trillion dollars in August 2007 to 4.50 trillion in January 2015"),
 ("In this chapter's own check of 144 countries the match was 0.88. Among low-inflation countries it was 0.51.", "In this chapter's own check of 144 countries the match was 0.88 out of 1. Among low-inflation countries it was 0.51 out of 1."),
 ("Rises only about 0.2 points on average, and about 0.4 points in past sharp falls", "Rises only about 0.2 points on average, and about 0.4 points in past sharp falls. One point means one percentage point of yearly inflation")]
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
