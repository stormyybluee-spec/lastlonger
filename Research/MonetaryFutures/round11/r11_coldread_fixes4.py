"""Round 11 cold-reader fixes, fourth set: retest 2 fixes, and block 16 (the strict Ponzi test) rebuilt as
a short paragraph, a two-row table and a closing paragraph. No new facts or numbers. Verify after apply.
Usage: python3 -I round11/r11_coldread_fixes4.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-print")
ch = d["chapters"][k]
i16 = next(i for i, b in enumerate(ch["blocks"]) if b.get("type") == "p" and b["text"].startswith("Passing means growth beats the rate"))
new16 = [
 {"type": "p", "text": "Think of a household with a loan. Test one asks: does your pay grow faster than the interest rate on the loan? Test two asks: before the loan costs, do you spend more than you earn? Pass both and the loan stays small against your pay. Fail, and the loan outgrows your pay until something stops it. For a country that something is higher taxes, spending cuts or inflation."},
 {"type": "table", "cols": ["The strict test", "What it asks", "The US today", "Result"], "rows": [
  ["Test one: the rate against growth", "Is the interest rate on the debt below the growth of the economy?", "Rate 3.57% against growth of 5.9% in October 2026, lifted by inflation", "Passes"],
  ["Test two: the deficit before interest", "Is the gap between spending and taxes small enough?", "About 3.6% of income in 2024. With debt a little over one year of income, the most that keeps debt steady is about 2% to 2.6% (our arithmetic)", "Fails"]]},
 {"type": "p", "text": "Test one does not always pass. The rate was above growth, which is the bad case, in only 5 or 6 of the last 25 years, counting from 2001. Over the longer stretch from 1962 it was the bad case in 24 of 64 years. So by the strict test today's answer is a warning, not a collapse. Watch both numbers."}]
ch["blocks"][i16:i16 + 1] = new16
R = [
 ("It assumed America held 75% of the world's official gold, but the share peaked at about 70% in 1948. It assumed rebuilding takes fifty years, but it took about five. And gold was not money for ordinary people in 1945, only for central banks.",
  "First, some say America held 75% of the world's official gold. The share peaked at about 70% in 1948. Second, some say rebuilding takes fifty years. It took about five. Third, gold was not money for ordinary people in 1945, only for central banks."),
 ("though by the strict test the US borrows to pay its interest.",
  "though by the strict test the US borrows to pay its interest. The two numbers to watch are the interest rate against growth, and the deficit before interest."),
 ("Both systems tilt the board. Hard money favours people who already hold coins or lend. Credit money favours people who already own houses and shares, and it makes newcomers borrow to catch up.",
  "Both systems tilt the board, toward different people. Hard money favours people who already hold coins or lend, and it hurts borrowers and the young. Credit money favours people who already own houses and shares, and it makes newcomers borrow to catch up. Neither starts the new player level."),
 ("That is a point for neither side. Whether a world fully on gold could have done it cannot be tested.",
  "That is a point for neither side. Gold was not the engine, and its lack was not the brake. Whether a world fully on gold could have done it cannot be tested."),
 ("Here is why it does not explain the 2%. Its loss is one object losing resale value. Inflation is money itself losing value against goods and services in general.",
  "Here is why it does not explain the 2%. The sword loses value because it is one object that is hard to resell. Inflation is different. It is money itself buying less of everything."),
 ("Not a scam in the plain sense. The US target has been published since 2012,", "The jury's finding: not a scam in the plain sense. The US target has been published since 2012,"),
 ("No. Both sides agree", "No. Borrower and bank both agree to the deal")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
s = json.dumps(ch, ensure_ascii=False); miss = []
for a, b in R:
    if s.count(j(a)) == 1:
        s = s.replace(j(a), j(b))
    else:
        miss.append(("old count %d" % s.count(j(a)), a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
for a, b in R:
    if j(b) not in final:
        miss.append(("new text missing", b[:60]))
for t in ("Think of a household with a loan.", "Test two: the deficit before interest", "Test one does not always pass."):
    if final.count(t) != 1:
        miss.append(("block 16 rebuild", t))
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("fixes", len(R), "plus block 16 rebuild. problems", len(miss))
for m in miss: print("  ", m)
print("blocks", len(d["chapters"][k]["blocks"]), "em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
