"""Round 13, epilogue rb-promise, fifth version: retest 2 fixes (8) and a rocket scene. Follows the fourth version, which moved the closing table and the
reader's open points moved into go-deeper boxes so the main path ends on the story's last line. No new facts.
Run after v2, v3 and v4. Verify after apply. Usage: python3 -I round13/r13_epilogue_v4.py site/rulebook.json"""
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
 ("the official trading of dollars for gold is over", "the promise to swap dollars for gold is over"),
 ("While she saves, money gains value. But most of the money is already held by people who came before her.", "Under hard money, the coins she saves would buy a little more each year. But most of the money is already held by people who came before her."),
 ("Room to build, and room to overreach.", "Room to build, and room to overreach. So two things followed that weekend. There was far more room to borrow. And growth did not clearly speed up."),
 ("A ringgit buys what 18 sen bought in 1971, and there are 100 sen in a ringgit.", "A ringgit today buys only what 18 sen bought in 1971. There are 100 sen in a ringgit."),
 ("Do you have something to put up as security?", "Do you have something valuable to put up in case you cannot pay, like a house?"),
 ("Look at what the typical owner has, after debts. It is worth $396,200.", "Count what the typical owner has after paying off all debts. It comes to $396,200."),
 ("It was the same tool. A lever makes a small push big, in both directions.", "It was the same tool. A lever makes a small push big, in both directions. Here the loan is the lever. A rising house price becomes a big gain. A falling one becomes a big loss."),
 ("America holds most of the world's reported official gold", "America holds most of the gold that governments have reported"),
 ("The reader's example is a rocket, built for years before it earns anything.", "The reader's example is a rocket. Picture the people who build it for years, paid every month, before it earns anything at all. Somebody's promise is paying them."),
 ("She notices what the three have in common.", "She notices what the three questions have in common.")]
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
