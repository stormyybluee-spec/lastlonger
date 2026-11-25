"""Round 17 cold-reader fixes, second set (retest 1): nine fixes, and Test 3 rewritten in plainer words for a reader
with English as a second language. The boom table gets one plain column and the two paragraphs after it are rewritten
around one picture. No new facts. Verify after apply.
Usage: python3 -I round17/r17_coldread_fixes2.py site/rulebook.json  (refuses to run twice)"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-future")
ch = d["chapters"][k]; B = ch["blocks"]; miss = []
P = lambda t: {"type": "p", "text": t}
if any(b.get("type") == "table" and b["cols"] == ["Boom", "Was money cheap to borrow?", "What happened"] for b in B):
    sys.exit("already applied")
i = next((i for i, b in enumerate(B) if b.get("type") == "p" and b["text"].startswith("This is the boldest part of the claim.")), None)
if i is None: miss.append(("Test 3 opening", ""))
else:
    B[i] = P("This is the boldest part of the claim. Think of an interest rate as the price of borrowing money. When that price is low, borrowing is cheap, and banks and central banks are creating new money fast. If created money is what paid for new technology, the great technology booms should come when borrowing is cheap. Here is what happened in three booms.")
t = next((i for i, b in enumerate(B) if b.get("type") == "table" and b["cols"][0] == "Boom"), None)
if t is None: miss.append(("boom table", ""))
else:
    B[t] = {"type": "table", "cols": ["Boom", "Was money cheap to borrow?", "What happened"], "rows": [
      ["British railway fever, 1843 to 1845", "Yes. The Bank of England's rate was 2.5% to 3.5%, low for the time, as reported", "Railway shares broke in late 1845. In the crisis of 1847 the rate rose to 5.5% and then 8%"],
      ["The internet boom, 1995 to 2000", "Not especially. America's main rate stayed between about 4.6% and 6.5%, well above zero, with a short cut in late 1998", "The amount of money in the economy grew at an ordinary pace, about 6% a year to the end of 1999"],
      ["The boom in young firms, 2020 to 2021", "Yes, very. America's main rate was close to zero", "The amount of money in the economy grew 26.8% in the year to February 2021"]]}
j0 = next((i for i, b in enumerate(B) if b.get("type") == "p" and b["text"].startswith("So money was cheap in two booms")), None)
if j0 is None: miss.append(("after-table paragraph", ""))
else:
    B[j0] = P("So borrowing was cheap in two of the three booms, the railway fever and 2020 to 2021. But the internet boom, which left the most lasting technology of the three, grew while America's main rate was between about 4.6% and 6.5%. Carlota Perez, an economist who studies technology bubbles, wrote this in 2009.")
R = [
 ("In plain words, she says great technology booms start because people see a huge chance, not mainly because money is cheap.", "In plain words, she says great technology booms start because people see a huge chance to win, not mainly because borrowing is cheap. Cheap money can pour fuel on the fire once it is lit."),
 ("There were two ways to use it. The old way, NASA pays all the builder's costs. The new way, NASA pays a fixed price.", "The model gave two guesses. One was for the old way, where NASA pays all the builder's costs. The other was for the new way, where NASA pays a fixed price."),
 ("Now they were \"down at 20\".", "Now they were \"down at 20\". Each share was worth 20 pounds, less than half of the 50 pounds first paid."),
 ("Keep the sisters in mind.", "The sisters show one thing plainly. A railway can be built, and work, and still leave many of its owners with a loss. Keep them in mind."),
 ("by selling bonds, which a central bank can buy with money it creates.", "by selling bonds, which are promises to repay later. A central bank can buy those bonds with money it creates."),
 ("and the rest when the company called for it.", "and the rest when the company called for it. So owners could be asked for more money later."),
 ("Part 2. Promises about the future, credit, are what pay that price.", "Part 2. Promises about the future, called credit, are what pay that price. A promise to pay later is credit."),
 ("What is still unknown? A great deal.", "What is still unknown? A great deal. Nobody yet knows how much reuse itself saves, because the price fell before the first landing."),
 ("In other words, much of the money for export loans was created by the central bank.", "In other words, the central bank made new money, and much of it went out as loans to exporters.")]
jj = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(ch, ensure_ascii=False)
for a, b in R:
    n = s.count(jj(a))
    if n == 1: s = s.replace(jj(a), jj(b))
    else: miss.append(("old count %d" % n, a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R if jj(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("blocks", len(d["chapters"][k]["blocks"]), "fixes", len(R), "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
