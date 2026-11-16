"""Round 15 cold-reader fixes, third set (retest 2): nine fixes, the scholars' names taken off the main-path table of
explanations (they stay in the go-deeper box with the full list), and the Asia section given its own closing
paragraph. No new facts. Verify after apply.
Usage: python3 -I round15/r15_coldread_fixes3.py site/rulebook.json  (refuses to run twice)"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-peasant")
ch = d["chapters"][k]; B = ch["blocks"]; miss = []
P = lambda t: {"type": "p", "text": t}
t = next((b for b in B if b.get("type") == "table" and b["cols"][0] == "The explanation"), None)
if t is None or len(t["cols"]) != 3: sys.exit("already applied or table not found")
t["cols"] = ["The cause", "In one line"]; t["rows"] = [[r[0], r[2]] for r in t["rows"]]
i = next((i for i, b in enumerate(B) if b.get("type") == "p" and b["text"].startswith("India was the world's great maker")), None)
cut = " So for Asia the fair answer is short."
if i is None or B[i]["text"].count(cut) != 1: miss.append(("Asia split", ""))
else:
    a, b = B[i]["text"].split(cut); B[i:i + 1] = [P(a.strip()), P(cut.strip() + " It is a limit of this chapter, not a finding." + b)]
R = [
 ("What a day's pay could buy (a higher number is better)", "What a day's pay could buy (an index, so compare the rows, and a higher number is better)"),
 ("This is the trap that Thomas Malthus described in 1798.", "Thomas Malthus described this trap in 1798. More food led to more people, and then food ran short again."),
 ("Do not try to learn the list. Just notice how many different causes are named. A box at the end gives four more, with the critics of each.", "Just notice how many different causes are named. A box at the end gives four more, with the names of the scholars behind each one."),
 ("Two stories from America show both sides. Canals and railways were far bigger, too big for most families alone.", "Canals and railways were far bigger, too big for most families alone. Two stories from America show both sides."),
 ("Then people stopped trusting it when the Mongol rulers fell in the 1360s", "People stopped trusting it in the 1360s, when the Mongol rulers fell"),
 ("In Britain it was about 33.", "In Britain it was about 33. Even in the richer country, one child in three died."),
 ("By King's count they used up more than they earned.", "The 400,000 poorest families were among them. By King's count they used up more than they earned."),
 ("One view is that it hurt. When the state borrowed so much, banks had less left to lend to others,", "One view is that it hurt. The state borrowed so much that banks had less left to lend to others,"),
 ("Six different causes are named.", "Six different causes are named, and each has scholars behind it.")]
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
