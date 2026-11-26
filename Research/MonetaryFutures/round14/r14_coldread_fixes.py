"""Round 14 cold-reader fixes (COLDREAD_R14.md, first pass, 14 fixes), plus two long paragraphs split, blank table
cells filled and the two 56.7% figures told apart. No new facts. Verify after apply.
Usage: python3 -I round14/r14_coldread_fixes.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-1971")
ch = d["chapters"][k]; miss = []
def split(start, cuts):
    i = next((i for i, b in enumerate(ch["blocks"]) if b.get("type") == "p" and b["text"].startswith(start)), None)
    if i is None: return
    t = ch["blocks"][i]["text"]; parts = []
    for c in cuts:
        if t.count(c) != 1: return
        a, t = t.split(c); parts.append(a.strip()); t = c.strip() + t
    parts.append(t.strip())
    ch["blocks"][i:i + 1] = [{"type": "p", "text": x} for x in parts]
split("Put the two columns together.", [" Rules on interest rates and on money crossing borders"])
split("Neither story proves a cause.", [" The late developers changed many things at once", " A world of floating money"])
for b in ch["blocks"]:
    if b.get("type") == "table":
        for r in b["rows"]:
            for c in range(len(r)):
                if str(r[c]).strip() == "": r[c] = "No single figure"
R = [
 ("of about 12 billion dollars of gold, only 1.3 billion was still free", "of about 12 billion dollars of gold, only 1.3 billion was still free, meaning not already locked up as cover for banknotes"),
 ("New Zealand's came about twenty years later, America's after forty-one.", "New Zealand's came about twenty years later, in 1990. America announced its own in 2012, forty-one years after 1971."),
 ("Within days the interest rate on its 30-year bonds jumped by 1.6 percentage points.", "Within days the interest rate on its 30-year bonds, which are loans investors make to the government, jumped by 1.6 percentage points."),
 ("So, some economists stress, its true limit is inflation, not the size of its debt.", "So, some economists stress, the real limit is how fast prices rise, not how big the debt is."),
 ("it could not service about 80 billion dollars of debt", "it could not pay what was due on about 80 billion dollars of debt"),
 ("The peg lasted until 2005", "That fixed rate lasted until 2005"),
 ("So who can borrow almost without limit? The country whose money everyone else saves in.", "So who can borrow with the fewest limits? The country whose money everyone else saves in and trades in."),
 ("though not clearly longer, mostly because of currency crises", "mostly currency crises"),
 ("3.1 (1973 to 2017)", "3.1 (1973 to 2017, a longer span)"),
 ("What workers and machines make together, growth a year (Brookings)", "Productivity, meaning what workers and machines make together, growth a year (Brookings)"),
 ("The numbers cannot show which mattered more.", "The numbers cannot show which mattered more, because so many things changed at the same time."),
 ("The toll rose for a decade and then fell back, while income grew faster.", "The cost of rising prices, the toll, rose for a decade and then fell back, while income grew faster."),
 ("Arthur Burns, the head of the central bank", "Arthur Burns, the head of America's central bank, which sets interest rates"),
 ("But gold is a jumpy ruler,", "But gold is a poor yardstick because its own price jumps around,"),
 ("World trade rose from 25.8% of world output in 1970 to 56.7% in 2024.", "World trade rose from about a quarter of world output in 1970 to more than half in 2024.")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(ch, ensure_ascii=False)
for a, b in R:
    if j(b) in s: continue
    if s.count(j(a)) == 1: s = s.replace(j(a), j(b))
    else: miss.append(("old count %d" % s.count(j(a)), a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if j(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("blocks", len(d["chapters"][k]["blocks"]), "fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
