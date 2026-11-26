"""Round 16 cold-reader fixes, second set (retest 1): a worked example of how inflation makes a fixed debt lighter (an
illustration with round numbers, not a fact), plus eleven fixes in plainer words. No new facts. Verify after apply.
Usage: python3 -I round16/r16_coldread_fixes2.py site/rulebook.json  (refuses to run twice)"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-law")
ch = d["chapters"][k]; B = ch["blocks"]; miss = []
if any(b.get("type") == "table" and b["cols"][0] == "A loan of 100 for one year" for b in B):
    sys.exit("already applied")
i = next((i for i, b in enumerate(B) if b.get("type") == "p" and b["text"].startswith("The second collector is the government as a borrower.")), None)
if i is None: miss.append(("second collector paragraph", ""))
else:
    B.insert(i + 1, {"type": "table", "cols": ["A loan of 100 for one year", "Lenders expect prices to rise 2%, so they ask 2% interest", "Prices really rise 4%"],
      "rows": [["What the borrower pays back", "102", "102"],
               ["What 102 buys, in last year's prices", "About 100. The lender is no worse off", "About 98. The lender has lost about 2, and the borrower has gained it"]]})
    B.insert(i + 2, {"type": "p", "text": "This is a made-up example with round numbers. The same thing happens to a government's debt, on a much larger scale."})
R = [
 ("That part works like a hidden tax on the lender.", "The lender is paid back in money that buys less than expected, so the lender loses and the borrower gains. That works like a hidden tax on the lender."),
 ("When prices rise, old debts at fixed rates become lighter,", "When prices rise, a debt fixed in money is easier to pay back, because each unit of money buys less,"),
 ("3% to 4% of output a year, on average, by one estimate", "By one estimate, each year the debt got lighter by an amount equal to 3% to 4% of everything the country made that year"),
 ("It was paying out more interest than it earned. It must first earn back a shortfall", "It was paying out more interest than it earned. Before it can pay the government again, it must earn back a shortfall"),
 ("Stability \"conducive to the sustainable growth of the Malaysian economy\".", "Stability \"conducive to the sustainable growth of the Malaysian economy\". Conducive means helpful."),
 ("Now, with the rate fixed and many debts in dollars, the only way left to adjust was through lost output and jobs.", "Now the rate was fixed and many debts were in dollars. The money could not give way, so output and jobs gave way instead."),
 ("The Swiss kept their banks in 2018.", "In 2018 the Swiss kept the right of banks to make money when they lend."),
 ("But the board kept issuing the money until 1967, because the places that shared it hoped to keep one currency.", "But for eight more years the board still issued the notes, because the places that shared it hoped to keep one currency. Bank Negara was open, but it did not yet issue the money."),
 ("Taxpayers, who may need to pay less tax to service the debt", "Taxpayers, who may need to pay less tax to pay the interest on the debt"),
 ("So there is control. But notice who holds it.", "So there is control. But notice who holds it. Appointing a governor is not the same as running the bank: Malaysia's law says the Bank sets monetary policy on its own."),
 ("It is a pattern, not a law, because each case has its own history.", "It is a pattern, not a law. Each case has its own history, so no single case proves the rule.")]
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
