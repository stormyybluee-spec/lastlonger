"""Round 10 retest fixes for ls-14, with verify-after-apply. Also corrects the H4-02 figure to the hole file's 42%.
Usage: python3 -I round10/r10_coldread_fixes2.py site/landscape.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
ch = next(c for c in d["chapters"] if c["id"] == "ls-14")
R = [
 ("(levels 0 and 1 on a scale from 0 to 3, where 3 means one command, about 46%).",
  "(levels 0 and 1 on a scale from 0 to 3, where 3 means one command). The desk puts about 42% on shared interests and that public cue being the whole story."),
 ("| Who holds the government's debt, checked in 5 countries |", None),
 ("The desk puts about 46% on that result holding up (structural).", "The desk puts about 46% on this result, that the lens does no better than the plain one, still holding when more countries are added (structural)."),
 ("Undercount documented. Funded onshore: structural, about 55%", "Undercount documented. That these funds borrow from US money funds, inside the US: structural, about 55%"),
 ("the desk's leading scenario, the dollar extending onto new rails", "the desk's leading scenario for the big question, which is that the dollar stays central and spreads onto new payment systems"),
 ("Asia as a whole takes 84%", "Asia as a whole takes 84% of the crude shipped through Hormuz (2024)")]
s = json.dumps(ch, ensure_ascii=False); miss = []
for a, b in R:
    if b is None: continue
    aj = json.dumps(a, ensure_ascii=False)[1:-1]
    if s.count(aj) != 1: miss.append((s.count(aj), a[:60])); continue
    s = s.replace(aj, json.dumps(b, ensure_ascii=False)[1:-1])
ch2 = json.loads(s)
for b in ch2["blocks"]:
    if b.get("type") == "table":
        for r in b["rows"]:
            if str(r[0]) == "Who holds the government's debt, checked in 5 countries":
                r[0] = "Whether foreigners hold a large or small share of the government's debt, checked in 5 countries"
ch.clear(); ch.update(ch2)
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
final = json.dumps(ch, ensure_ascii=False)
lost = [b[:50] for a, b in R if b and json.dumps(b, ensure_ascii=False)[1:-1] not in final]
if "Whether foreigners hold a large or small share" not in final: lost.append("row label")
print("missed:", miss, "| not found:", lost, "| 46% left:", final.count("46%"), "| em", final.count("—"), "semi", final.count(";"))
