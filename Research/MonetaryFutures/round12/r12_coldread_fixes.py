"""Round 12 cold-reader fixes (COLDREAD_R12.md, first pass, 14 fixes) plus two plain labels in the laws table.
Verify after apply. Usage: python3 -I round12/r12_coldread_fixes.py site/rulebook.json"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-credit")
R = [
 ("Makes the state's money the money a creditor must accept to settle a debt", "Makes the state's money the money a lender must accept as payment of a debt"),
 ("because the children inherit the bonds as well as the tax bills", "because the children inherit the government's IOUs (bonds) as well as the tax bills"),
 ("Here are questions 4 to 10.", "Here are the next seven, numbered 4 to 10."),
 ("Now the defence. The net was built because life without it was worse.", "Now the case for the safety net. It was built because life without it was worse."),
 ("Still, when Swiss voters were asked in 2018", "One more fact points the same way. When Swiss voters were asked in 2018"),
 ("line by line, with the finding.", "line by line, with the finding. All four hold in part, for different reasons."),
 ("median debt service ratio of 41%: payments take that share of income", "median debt service ratio of 41%. That means loan payments take 41% of income"),
 ("the real day wages of those who lived rose", "what a day's pay could buy rose for those who lived"),
 ("kept money that stretches.", "kept money that banks can make by lending."),
 ("leans toward stretchy money because", "leans toward money that can be made by lending because"),
 ("Before it, gold put a ceiling somewhere above the system.", "Before it, the gold link was a cap on how much money could be made."),
 ("There is no clean figure here for bank lending then. In the rich countries it was about 30%",
  "There is no clean figure here for bank lending in those exact years. Across the rich countries, bank lending was about 30%"),
 ("3. About 80% could not save and compound", "3. About 80% could not save and grow their savings"),
 ("money stood in the dock and the jury found a toll, not a scam.", "money stood on trial in a courtroom and the jury found a toll, not a scam."),
 ("Legal tender. In Malaysia, only notes", "Legal tender, the money the law names for paying debts. In Malaysia, only notes")]
j = lambda x: json.dumps(x, ensure_ascii=False)[1:-1]
ch = d["chapters"][k]; miss = []
for b in ch["blocks"]:
    if b.get("type") == "table":
        for r in b["rows"]:
            if r[0] == "The bank licence": r[0] = "The bank licence, a permit from the state"
s = json.dumps(ch, ensure_ascii=False)
for a, b in R:
    if j(b) in s: continue
    if s.count(j(a)) == 1: s = s.replace(j(a), j(b))
    else: miss.append(("old count %d" % s.count(j(a)), a[:60]))
d["chapters"][k] = json.loads(s)
final = json.dumps(d["chapters"][k], ensure_ascii=False)
miss += [("new text missing", b[:60]) for a, b in R + [("", "The bank licence, a permit from the state")] if j(b) not in final]
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("fixes", len(R) + 1, "problems", len(miss))
for m in miss: print("  ", m)
print("em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if miss else 0)
