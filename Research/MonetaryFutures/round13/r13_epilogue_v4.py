"""Round 13, epilogue rb-promise, fourth version: retest 1 fixes (10), plain bridge lines, and the closing table and the
reader's open points moved into go-deeper boxes so the main path ends on the story's last line. No new facts.
Run after v2 and v3. Verify after apply. Usage: python3 -I round13/r13_epilogue_v4.py site/rulebook.json"""
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
 ("Now picture another woman, a little further up the same line. Her bank opens.", "Now picture another woman, a little further up the same line. The first woman's bank stays shut, but hers opens."),
 ("Two chapters tested both voices with numbers.", "Two chapters tested both voices with numbers. One word will come back again and again. It is the toll, the slow loss of what each coin can buy."),
 ("It was the same tool.", "It was the same tool. A lever makes a small push big, in both directions."),
 ("anger at the toll.", "anger at the toll of rising prices."),
 ("Neither gives her an even start.", "Neither gives her an even start. Saving means a long wait while others move ahead. Owing means she can start now, but she begins by paying."),
 ("Does the sword explain the 2% target?", "Does the sword explain why prices are meant to rise a little each year?"),
 ("A ringgit buys what 18 sen bought in 1971.", "A ringgit buys what 18 sen bought in 1971, and there are 100 sen in a ringgit."),
 ("Years later, everything the typical owner has, after debts, is worth $396,200.", "Look at what the typical owner has, after debts. It is worth $396,200."),
 ("to lend the Crown 1.2 million pounds", "to lend the king 1.2 million pounds"),
 ("And the rising prices stop, and trade begins to move again.", "Yet the rising prices stop, and trade begins to move again."),
 ("A table at the end ties each scene to its question.", "A box at the end ties each scene to its question.")]
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
