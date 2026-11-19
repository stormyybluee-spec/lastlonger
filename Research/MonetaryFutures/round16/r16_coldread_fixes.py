"""Round 16 cold-reader fixes (COLDREAD_R16.md, first pass): eleven fixes, with the governance facts brought back to the
main path as a short table (the full table stays in its go-deeper box), and the Zimbabwe, Venezuela and Turkey paragraph
split. No new facts: every cell comes from the box table. Verify after apply.
Usage: python3 -I round16/r16_coldread_fixes.py site/rulebook.json  (refuses to run twice)"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-law")
ch = d["chapters"][k]; B = ch["blocks"]; miss = []
P = lambda t: {"type": "p", "text": t}
if any(b.get("type") == "table" and b["cols"] == ["", "America", "Malaysia"] for b in B):
    sys.exit("already applied")
i = next((i for i, b in enumerate(B) if b.get("type") == "p" and b["text"].startswith("So there is control. But notice who holds it.")), None)
if i is None: miss.append(("control paragraph", ""))
else:
    B.insert(i, {"type": "table", "cols": ["", "America", "Malaysia"], "rows": [
      ["Who appoints the leader", "The President, with the consent of the Senate", "The Yang di-Pertuan Agong, the King, appoints the governor"],
      ["For how long", "14 years for a Board member", "Five years for the governor, and can be renewed"],
      ["Can they be removed?", "Only \"for cause\"", "Only on grounds the law lists, such as serious misconduct"],
      ["What must be published", "Minutes of each meeting after about three weeks", "A statement after each policy meeting, and accounts laid before Parliament"]]})
i = next((i for i, b in enumerate(B) if b.get("type") == "p" and b["text"].startswith("Here is what can happen when a government bends")), None)
cut = " Venezuela's own central bank"
if i is None or B[i]["text"].count(cut) != 1: miss.append(("split", ""))
else:
    a, b = B[i]["text"].split(cut); B[i:i + 1] = [P(a.strip()), P(cut.strip() + b)]
R = [
 ("The box below sets the three side by side.", "The table below shows the main rules in two of them. A box sets all three side by side, with more detail."),
 ("No voter chooses a governor directly.", "Britain's governor must write a public letter whenever inflation misses the target by more than one point. No voter chooses a governor directly."),
 ("and taxes are paid only in dollars.", "and taxes are paid only in dollars. The law could make Bitcoin legal money, but it could not make people use it."),
 ("It is a pattern, not a law, because each case has its own history.", "Hong Kong's link has held for over forty years. Argentina's ended in 2001 after output fell nearly 20%. It is a pattern, not a law, because each case has its own history."),
 ("Part 1. The body that issues money exists so that output and progress can grow.", "Part 1. The body that issues money exists so that output, meaning everything a country makes in a year, and progress can grow."),
 ("it could not ease credit when times were bad.", "it could not make loans easier to get when times were bad."),
 ("Fall in the real weight of state debt", "How much lighter the state's debt became"),
 ("By the end of 2025 the shortfall it must earn back before payments resume was 243.5 billion dollars", "It must first earn back a shortfall of 243.5 billion dollars, as at the end of 2025"),
 ("Stop banks from creating money when they lend?", "Stop banks from creating money when they lend, and leave that to the state?"),
 ("Scotland, competing banks issuing notes, until 1844 and 1845", "Scotland, with no central bank, and banks issuing their own notes, until 1844 and 1845")]
jj = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(ch, ensure_ascii=False)
for a, b in R:
    if s.count(jj(a)) == 1: s = s.replace(jj(a), jj(b))
    else: miss.append(("old count %d" % s.count(jj(a)), a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if jj(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("blocks", len(d["chapters"][k]["blocks"]), "fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
