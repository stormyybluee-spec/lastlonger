"""Round 11 cold-reader fixes, sixth set: retest 4 fixes (8) and two court lines. Verify after apply.
Usage: python3 -I round11/r11_coldread_fixes6.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-print")
R = [
 ("One test passes and one fails. So by the strict test today's answer is a warning, not a collapse. Watch both numbers.",
  "One test passes and one fails. So by the strict test today's answer is a warning, not a collapse. If you keep only one number, keep the deficit before interest, 3.6% of income in 2024, against the safe size of about 2% to 2.6%. Watch both numbers."),
 ("Its far tail is hyperinflation, prices rising 50% or more a month, found 56 times by 2012 and 58 by 2019 in one count.",
  "Its far tail is hyperinflation, which means prices rising 50% or more in a month. One count found 56 cases by 2012 and 58 by 2019."),
 ("And a government creates it when it spends more than it taxes and the central bank or banks buy the debt.",
  "And a government creates it when it spends more than it taxes and the central bank or banks buy the bonds it sells to cover the gap."),
 ("A shortage of gold did not stop it.", "The lack of gold did not stop it either."),
 ("Now a modern fixed money. Bitcoin is a digital coin", "Now a modern fixed money, a cousin of gold. Bitcoin is a digital coin"),
 ("while the ringgit lost about 82% of its buying power.", "while the ringgit lost about 82% of its buying power. Both can be true, because pay and output grew faster than prices."),
 ("Cheap loans can push house prices up faster than pay, though later marriage and other changes matter too.",
  "Cheap loans can push house prices up faster than pay, though later marriage and other changes matter too. The table shows fewer young people owning homes."),
 ("Take hard money first.", "Hard money takes the stand first."),
 ("When wealth piles up in a few hands, many societies have looked for ways to deal the cards again.",
  "The court now turns to history. When wealth piles up in a few hands, many societies have looked for ways to deal the cards again.")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
ch = d["chapters"][k]; miss = []
t = next(b for b in ch["blocks"] if b.get("type") == "table" and b["cols"][0] == "The strict test")
a0 = "Rate 3.57% against growth of 5.9% in October 2026, lifted by inflation"
if t["rows"][0][2] == a0:
    t["rows"][0][2] = "Rate 3.57% against growth of 5.9% in October 2026. Growth is counted in dollars, so rising prices lift it"
s = json.dumps(ch, ensure_ascii=False)
for a, b in R:
    if j(b) in s: continue
    if s.count(j(a)) == 1: s = s.replace(j(a), j(b))
    else: miss.append(("old count %d" % s.count(j(a)), a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
for a, b in R + [("", "Growth is counted in dollars, so rising prices lift it")]:
    if j(b) not in final: miss.append(("new text missing", b[:60]))
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("fixes", len(R) + 1, "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
