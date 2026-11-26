"""Round 12 cold-reader fixes, second set: retest 1 fixes (8), question 7 opened with the link from bank loans to the
laws, plainer rows in the laws table, and distinct tags on the four epilogue findings. No new facts. Verify after apply.
Usage: python3 -I round12/r12_coldread_fixes2.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-credit")
R = [
 ("All four hold in part, for different reasons.",
  "All four hold in part, but each fails in a different place. Part 1 needs credit that builds. Part 2 mixes up scarce money with scarce output. Part 3 gives a figure that this chapter cannot test. Part 4 has the wrong date and is right that credit has a gate."),
 ("Money made from nothing is not an accident. It stands on laws. Each law has a date, and each has someone who gains from it.",
  "Recall how most money is made. When a bank lends, it types a new deposit into the borrower's account. That deposit is new money, made from nothing but a promise to repay. Why is a bank allowed to do that, and why does everyone accept the new deposit as real money? Because five laws stand behind it. Each law has a date, and each has someone who gains from it."),
 ("It was also chosen because the old way broke thousands of banks.",
  "The strongest case for the system is simple. Before the safety net, thousands of banks failed and took people's savings with them."),
 ("If it did not, the children really do pay.", "If it did not, or if foreigners hold the debt, the children really do pay."),
 ("Makes the state's money the money a lender must accept as payment of a debt", "A lender must accept the state's money when a debt is paid"),
 ("pushes everyone toward standing on their own feet through credit", "pushes everyone to look after themselves by borrowing"),
 ("Do you have something to pledge, such as a house?", "Do you have something to put up as security, such as a house?"),
 ("That means loan payments take 41% of income.", "That means the middle new borrower pays 41% of income on loans."),
 ("Only a licensed bank may take deposits. When it lends, it creates new deposits", "Only a bank with this permit may take deposits. So only such a bank can make new deposits by lending"),
 ("Lets the central bank lend to banks in a panic", "When savers panic and rush to take money out, the central bank can lend to the banks so they do not run dry"),
 ("Holds in part. Credit that builds is one engine of plenty. Credit by itself is not", "Holds in part: right about credit that builds. Credit that builds is one engine of plenty. Credit by itself is not"),
 ("Holds in part. Scarce coins hurt trade at times, but scarce output was the bigger cause", "Holds in part, and the weakest of the four. Scarce coins hurt trade at times, but scarce output was the bigger cause"),
 ("Holds in part. Most were very poor, but poverty does not prove they could not save.", "Holds in part: the fact is roughly right, the cause is not. Most were very poor, but poverty does not prove they could not save."),
 ("Holds in part. Credit is ancient. 1971 removed the last metal limit.", "Holds in part, and the strongest of the four: wrong date, right about the gate. Credit is ancient. 1971 removed the last metal limit.")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(d["chapters"][k], ensure_ascii=False); miss = []
for a, b in R:
    if j(b) in s: continue
    if s.count(j(a)) == 1: s = s.replace(j(a), j(b))
    else: miss.append(("old count %d" % s.count(j(a)), a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if j(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
