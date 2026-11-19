"""Round 11 cold-reader fixes, fifth set: retest 3 fixes (8) and three plain rewrites. Verify after apply.
Usage: python3 -I round11/r11_coldread_fixes5.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-print")
R = [
 ("Doing this is not the same as collapsing.", "Doing this is not the same as collapsing. It is a warning light, not a crash."),
 ("which is the bad case, in only", "which is the bad case for the debt, in only"),
 ("Price indexes miss some quality gains.", "Price indexes miss some quality gains, such as a phone that gets better at the same price."),
 ("So gold did not do the rebuilding, and a shortage of gold did not stop it.", "So gold did not do the rebuilding. A shortage of gold did not stop it."),
 ("A fixed money does not remove the first-comer advantage.", "A fixed money does not remove the advantage of people who got in first."),
 ("Being easy to pass on is the first job of money.", "Being easy to pass on is the first job of money. A sword fails that test, so it is not money."),
 ("And inflation strips the rich of little, since shares and property tend to keep pace with prices.",
  "And inflation takes little from the rich, because their shares and property tend to rise with prices."),
 ("Neither starts the new player level.", "Neither gives a new player an even start."),
 ("So by the strict test today's answer is a warning, not a collapse. Watch both numbers.",
  "One test passes and one fails. So by the strict test today's answer is a warning, not a collapse. Watch both numbers."),
 ("Here is the twist. The world was tied to gold only at the top: the dollar for foreign central banks, other currencies to the dollar. So this is a story of work and credit inside a gold anchor, and hard-money writers note that US inflation stayed near 2% to 3% under it.",
  "Here is the twist. Only the top of the system was tied to gold. The dollar was tied to gold for foreign central banks, and other currencies were tied to the dollar. Ordinary people used paper money and bank money. So this is a story of work and credit under a gold anchor. Hard-money writers note that US inflation stayed near 2% to 3% under it.")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
ch = d["chapters"][k]; miss = []
t = next(b for b in ch["blocks"] if b.get("type") == "table" and b["cols"][0] == "The strict test")
if t["rows"][1][3] == "Fails":
    t["rows"][1][3] = "Fails. The gap is bigger than the safe size"
s = json.dumps(ch, ensure_ascii=False)
for a, b in R:
    if j(b) in s: continue
    if s.count(j(a)) == 1: s = s.replace(j(a), j(b))
    else: miss.append(("old count %d" % s.count(j(a)), a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
for a, b in R + [("", "Fails. The gap is bigger than the safe size")]:
    if j(b) not in final: miss.append(("new text missing", b[:60]))
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("fixes", len(R) + 1, "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
