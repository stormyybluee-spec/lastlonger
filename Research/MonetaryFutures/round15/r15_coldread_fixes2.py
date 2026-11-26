"""Round 15 cold-reader fixes, second set (retest 1): idioms and new words made plain, the promises table turned
into two short paragraphs with the unchecked Japan loan dropped, the schooling paragraph split, and the Asia section
split and given a clear last line. No new facts. Verify after apply.
Usage: python3 -I round15/r15_coldread_fixes2.py site/rulebook.json  (refuses to run twice)"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-peasant")
ch = d["chapters"][k]; B = ch["blocks"]; miss = []
P = lambda t: {"type": "p", "text": t}
if any(b.get("type") == "p" and b["text"].startswith("First, a promise that was kept.") for b in B):
    sys.exit("already applied")
i = next((i for i, b in enumerate(B) if b.get("type") == "table" and b["cols"][0] == "A promise that was kept"), None)
if i is None: miss.append(("promises table not found", ""))
else:
    B[i:i + 1] = [
      P("First, a promise that was kept. New York built the Erie Canal from 1817 with borrowed money. When it began to borrow, it set aside taxes on salt and on auctions to pay the interest. The canal earned well, and the debt was repaid easily."),
      P("Then, promises that were broken. Pennsylvania and some other states copied the idea without setting taxes aside. In 1841 and 1842 eight states and the territory of Florida stopped paying their debts. Indiana issued over 10 million dollars of bonds for canals, a railway and roads, but received only about half of that in cash. Part had been sold on credit to a bank that failed in 1839, and the work stopped.")]
def split(start, cut):
    i = next((i for i, b in enumerate(B) if b.get("type") == "p" and b["text"].startswith(start)), None)
    if i is None or B[i]["text"].count(cut) != 1: miss.append(("split", start[:40])); return
    a, b = B[i]["text"].split(cut)
    B[i:i + 1] = [P(a.strip()), P(cut.strip() + b)]
split("Schooling. In 1820", " The Razak Report of 1956")
split("This chapter's numbers come mostly from Europe", " China took in huge amounts")
R = [
 ("The gain had been eaten.", "The gain was gone."),
 ("Why was the gain eaten?", "Why was the gain lost?"),
 ("If he needs cash now, a local bank pays him a little less than the bill's value. Some country banks went further.", "If he needs cash now, a local bank pays him a little less than the bill says. Then the bank waits for the buyer to pay. Some small local banks went further."),
 ("Its paper money worked for long stretches, then lost all trust when the Mongol rulers fell in the 1360s", "Its paper money worked for long stretches. Then people stopped trusting it when the Mongol rulers fell in the 1360s"),
 ("That matches the world in 1970.", "The data agree. It was 72% in 1970."),
 ("Read down that list. Money and credit lead in one row of six, and that row has strong critics.", "Read down that list. Six different causes are named. Money and credit lead in only one row, and that row has strong critics."),
 ("kept living standards there well above bare need", "kept living standards there well above the level of hunger"),
 ("So in these cases a promise worked when something real was pledged behind it.", "So in these cases a promise worked when something real stood behind it, something that would pay the lender back."),
 ("So for Asia the fair answer is: more money did come with more trade in some places, and why the take-off came elsewhere is not settled here.", "So for Asia the fair answer is short. More money did come with more trade in some places. Why the take-off came elsewhere is not settled here."),
 ("Starting many things at once takes money up front.", "Starting many things at once takes a lot of money before any of it pays back."),
 ("argued that countries that came late, such as Germany and Russia,", "argued that countries that built their industry later, such as Germany and Russia,"),
 ("The Razak Report of 1956 planned a national school system for Malaysia, and one rough data set", "Malaysia shows how fast this link can now be built. The Razak Report of 1956 planned a national school system, and one rough data set"),
 ("In King's reckoning they used up more than they earned.", "By King's count they used up more than they earned."),
 ("The big networks did borrow, and here the record is mixed.", "The big networks did borrow, and here the record is mixed. Two stories from America show both sides.")]
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
