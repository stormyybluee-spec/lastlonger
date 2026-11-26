"""Round 13, epilogue rb-promise, sixth version: retest 3 polish (8 fixes). Follows the fifth version and the fourth version, which moved the closing table and the
reader's open points moved into go-deeper boxes so the main path ends on the story's last line. No new facts.
Run after v2 to v5. Verify after apply. Usage: python3 -I round13/r13_epilogue_v4.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-promise")
ch = d["chapters"][k]
out = []
for b in ch["blocks"]:
    if b.get("type") == "table" and b["cols"][0] == "Question":
        out.append({"type": "deeper", "label": "The ten questions, and where the story met each one", "blocks": [b]})
    elif b.get("type") == "insider" and b.get("label") == "The argument goes on":
        out.append({"type": "deeper", "label": "The argument goes on: four new points from the reader, not yet tested", "blocks": [{"type": "p", "text": b["text"]}]})
    elif b.get("type") == "bridge":
        b["items"][0]["text"] = "The first chapter asked whether printing money is a scam. It found a toll, not a scam, and it found that hard money has a toll of its own."
        b["items"][1]["text"] = "The second chapter tested the claim that money made from promises is what lifted people out of poverty. It found that credit is a lever with a gate in front of it."
        out.append(b)
    else:
        out.append(b)
ch["blocks"] = out
R = [
 ("But most of the money is already held by people who came before her.", "But she must save first, and most of the money is already held by people who came before her."),
 ("It is the toll, the slow loss of what each coin can buy.", "It is the toll, like a fee paid on a road. Here the fee is the slow loss of what each coin can buy."),
 ("The last metal limit on money is gone.", "The last metal limit on money is gone. From now on the dollar is tied to no metal at all."),
 ("For every 100 dollars of things they own, they owe about 80.", "For every 100 dollars of things they own, they owe about 80, so only about 20 is truly theirs."),
 ("Plenty comes from what people make. Spain's silver could buy plenty.", "Think of the field and the ships. Plenty comes from what people make. Spain's silver could buy plenty."),
 ("The reader who wrote in has a sharper way to say what changed.", "The reader who wrote in, a real person and not one of our pictures, has a sharper way to say what changed."),
 ("Room to build, and room to overreach.", "Room to build, and room to overreach, like a family that can now borrow far more than before."),
 ("Money that stretches tells her to start now and owe.", "Money that stretches says she can start now, and she will owe.")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(ch, ensure_ascii=False); miss = []
for a, b in R:
    if j(b) in s: continue
    if s.count(j(a)) == 1: s = s.replace(j(a), j(b))
    else: miss.append(("old count %d" % s.count(j(a)), a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if j(b) not in final]
last = [b for b in d["chapters"][k]["blocks"] if b.get("type") == "p"][-1]["text"]
if not last.endswith("He made one every spring."): miss.append(("main path does not end on the last line", last[-40:]))
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("blocks", len(d["chapters"][k]["blocks"]), "fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
