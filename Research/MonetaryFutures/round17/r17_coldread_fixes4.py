"""Round 17 cold-reader fixes, fourth set (retest 3, ten polish fixes). Verify after apply.
Usage: python3 -I round17/r17_coldread_fixes4.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-future")
R = [
 ("In other words, the central bank made new money, and much of it went out as loans to exporters.", "In plain words, the central bank made new money, and banks lent much of it to firms that sold goods abroad."),
 ("The company that went on to build reusable rockets was paid 396 million dollars", "The company that went on to build reusable rockets, the reader's example, was paid 396 million dollars"),
 ("NASA had a model that guessed what the rocket alone would have cost to build.", "NASA made a guess, using a model, of what the rocket alone would have cost to build."),
 ("Government borrowing bought by a central bank was not tested.", "Whether a central bank bought government bonds that paid for research was not tested."),
 ("and banks and central banks are creating new money fast", "and banks and central banks are creating new money fast. Created money is money that did not exist until a bank made a loan or a central bank made it"),
 ("grew while America's main rate was between about 4.6% and 6.5%.", "grew while America's main rate was between about 4.6% and 6.5%. That is not cheap borrowing."),
 ("By 1997 the biggest groups are reported to have owed about five times what they owned, and Korea needed a rescue package of 58.4 billion dollars.", "By 1997 the biggest groups are reported to have owed about five times what they owned. Korea then needed a rescue package of 58.4 billion dollars."),
 ("Holds only in part. One road was not tested", "Holds only in part. Low rates matched two of three booms. One road, government borrowing, was not tested"),
 ("saved the economy about 4% of its yearly output in freight costs by 1865", "saved the economy about 4% of its yearly output in the cost of moving goods by 1865"),
 ("So the money was public and foreign, and it went into skills and a few firms.", "So the money came from the state and from abroad, and it went into skills and a few firms.")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(d["chapters"][k], ensure_ascii=False); miss = []
for a, b in R:
    if j(b) in s: continue
    n = s.count(j(a))
    if n == 1: s = s.replace(j(a), j(b))
    else: miss.append(("old count %d" % n, a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if j(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
sys.exit(1 if miss else 0)
