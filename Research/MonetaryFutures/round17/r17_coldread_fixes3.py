"""Round 17 cold-reader fixes, third set (retest 2): eight fixes, and the rocket cost passage split in two with a plain
one-line summary. No new facts. Verify after apply.
Usage: python3 -I round17/r17_coldread_fixes3.py site/rulebook.json  (refuses to run twice)"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-future")
ch = d["chapters"][k]; B = ch["blocks"]; miss = []
P = lambda t: {"type": "p", "text": t}
if any(b.get("type") == "p" and b["text"].startswith("Was that cheap?") for b in B):
    sys.exit("already applied")
i = next((i for i, b in enumerate(B) if b.get("type") == "p" and b["text"].startswith("In 2006 NASA, America's space agency")), None)
cut = " Was that cheap?"
if i is None or B[i]["text"].count(cut) != 1: miss.append(("rocket split", ""))
else:
    a, b = B[i]["text"].split(cut); B[i:i + 1] = [P(a.strip()), P(cut.strip() + b)]
R = [
 ("And the two sides differ: the 396 million also paid for a capsule, while the model priced the rocket alone.", "So the two sides do not match exactly. The 396 million paid for a rocket and a capsule. The model priced only the rocket. Even so, on NASA's own guesses, building the rocket the old way would have cost several times what was paid."),
 ("That firm is reported to have made 61%", "The second firm is reported to have made 61%"),
 ("came out of the owners' own capital, the money they had put in.", "came out of the money the owners had put in."),
 ("price per kilogram to low orbit fell about 20 times", "price per kilogram to reach an orbit close to Earth fell about 20 times"),
 ("From 1973 to 1981 its banks relied on the central bank for 89% of the money they lent to exporters.", "From 1973 to 1981 the central bank supplied 89% of the money Korea's banks lent to exporters."),
 ("and the rest when the company called for it.", "and the rest later, when the company asked for it."),
 ("61% of the world's chips made to order in late 2023", "61% of the world's chips made to order for other companies in late 2023"),
 ("How business raises its share was not checked here.", "Where business gets its money was not checked here.")]
jj = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(ch, ensure_ascii=False)
for a, b in R:
    n = s.count(jj(a))
    if n == 1: s = s.replace(jj(a), jj(b))
    else: miss.append(("old count %d" % n, a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if jj(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("blocks", len(d["chapters"][k]["blocks"]), "fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
