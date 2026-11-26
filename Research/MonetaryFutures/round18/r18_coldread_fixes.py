"""Round 18 cold-reader fixes (COLDREAD_R18.md, first pass): twelve fixes, a plain one-line takeaway before each of the
three dense tables, the imported falling prices explained step by step, and "policy autonomy" glossed. No new facts.
Verify after apply. Usage: python3 -I round18/r18_coldread_fixes.py site/rulebook.json  (refuses to run twice)"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-printers")
ch = d["chapters"][k]; miss = []
R = [
 ("A strong US dollar was one cause, and a crash in property prices was another.", "A strong US dollar was one cause. Because of the tie, Hong Kong's dollar rose with it, so imports got cheaper. A crash in property prices was another cause."),
 ("The next table counts a narrower kind of money: what central banks bought with money they created.", "The next table counts the money central banks created and used to buy bonds, which are loans to a government or a company. The short version: they created huge sums, and for years shop prices barely moved."),
 ("Prices ran more than five times ahead of the printing press.", "Prices ran more than five times ahead of the printing press, because each note changed hands faster."),
 ("the year by year match was even below zero, at -0.33", "the year by year match was even below zero, at -0.33, which means money and prices tended to move opposite ways"),
 ("which set a floor under interest rates", "which stopped interest rates from falling lower"),
 ("ran a record deficit of 3.1 trillion dollars", "spent a record 3.1 trillion dollars more than it took in"),
 ("asked for an advance on his royalties for ten thousand copies", "asked his publisher to pay him early for ten thousand copies"),
 ("a housewife named Meena Tharshini", "a shopper named Meena Tharshini"),
 ("own rule of thumb said", "own rough rule said"),
 ("Firms often absorb some of the cost", "Firms often take some of the cost themselves"),
 ("Hold on to that last point.", "Keep that last point in mind."),
 ("Hong Kong ties its dollar to the US dollar.", "Hong Kong ties its dollar to the US dollar at a fixed rate."),
 ("But look closer and the picture changes.", "But look closer and the picture changes. The short version of the next table: the link is strong in high inflation and weak in calm times."),
 ("Look at what each one printed for, and what else was going on.", "Look at what each one printed for, and what else was going on. The short version: each printed to pay its government's bills, and each was hit by another heavy blow at the same time."),
 ("though countries \"should not be starved of policy autonomy\"", "though countries \"should not be starved of policy autonomy\", meaning the freedom to set their own policy"),
 ("It takes away the choice to let the currency fall, so a shock at home comes out through falling prices and wages.", "It takes away the choice to let the currency fall. So when times are hard at home, prices and wages have to fall instead.")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(ch, ensure_ascii=False)
if j(R[0][1]) in s: sys.exit("already applied")
for a, b in R:
    n = s.count(j(a))
    if n == 1: s = s.replace(j(a), j(b))
    else: miss.append(("old count %d" % n, a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if j(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
