"""Round 15 cold-reader fixes, fourth set (retest 3, ten polish fixes). Verify after apply.
Usage: python3 -I round15/r15_coldread_fixes4.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-peasant")
R = [
 ("The leading accounts point to people, rules, prices, knowledge, the state, and coal and colonies.", "The leading accounts point to people, rules, prices, knowledge and the state."),
 ("(an index, so compare the rows, and a higher number is better)", "(an index number. A higher number means a day's pay bought more. Compare the rows)"),
 ("About 30% of men could sign their names in the 1640s, and about 50% by 1714.", "About 30% of men could sign their names in the 1640s, and about 50% by 1714. Signing is a rough sign of who could read."),
 ("Chapter 03 found that gold was a loose limit on lending, and that elastic money is not unlimited.", "Chapter 03 found that gold only loosely limited how much banks could lend. Money that can stretch is still not unlimited."),
 ("Part 4. A country that started and was stopped by war, famine or old habit fell back into a loop, and did not progress as a whole.", "Part 4. A country that started to grow and was stopped by war, famine or old habit fell back into a loop. It went round the same poor cycle again and did not progress as a whole."),
 ("Per person, at most three days of an Istanbul labourer's pay each year, and usually under two, 1500 to 1914", "This is counted per person, not as a share of output. At most three days of an Istanbul labourer's pay each year, and usually under two, 1500 to 1914"),
 ("Safe government bonds drew the money of rich landowners away from poor farm projects, and left room for new industry.", "Safe government bonds gave rich landowners a better place for their money than weak farm projects. That left room for new industry."),
 ("Coins per person rose 2.7 times", "Coins per person rose 2.7 times, so there was much more money to use"),
 ("Starting many things at once takes a lot of money before any of it pays back.", "Starting many things at once takes a lot of money before any of it pays back. That is why the idea fits the reader's claim."),
 ("Still, about three in five families had nothing left over each year.", "Still, about three in five of the families in King's table had nothing left over each year.")]
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
