"""Round 9 cold-reader fixes (COLDREAD_R9.md) for rb-moves and the new rb-moneymake section.
Usage: python3 -I round9/r9_coldread_fixes.py site/rulebook.json (in place). Each old text must occur once in its chapter."""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
C = {c["id"]: c for c in d["chapters"]}
R = {"rb-moneymake": [
 ("So by the figures found, Malaysian households owe about 85% of output and hold documented financial assets of 177%.",
  "So by the figures found, Malaysian households owe about 70% of output on the BIS count, or 85% on Bank Negara's wider count, and hold documented financial assets of 177%, which is the figure to compare with the 85%."),
 ("Malaysia: 70 of its 85 points of household debt are bank loans (Bank Negara, June 2025). Bank Negara's 85 also counts development banks and some other lenders.",
  "Malaysia: Bank Negara counts household debt at 85 points of output, and 70 of those points are bank loans (June 2025). The 85 also counts development banks and some other lenders. The chart's 70 is the BIS count, a different one."),
 ("Three checks change the answer.", "The short answer is that Malaysia is clearly ahead on income, but this data cannot say who holds more household wealth. Low debt is not the same as being wealthy. Three checks lead there."),
 ("Vietnam borrows a lot. More of it is counted as business.", "Vietnam borrows a lot overall, and more of it may be counted as business debt. So the low household figure does not show that families there owe little."),
 ("shows which borrowers stand behind much of the money that exists today", "gives a clue about which borrowers stand behind part of the money that exists today"),
 ("The table is a stock built up over decades, while money is created and destroyed as a flow, year by year.",
  "The table is a stock built up over decades, like the water level in a bath. Money is created and destroyed as a flow, year by year, like the tap and the drain."),
 ("Yet firms still owe more than households in South Korea and Malaysia.", "Even so, firms owe more than households in South Korea and Malaysia.")],
 "rb-moves": [
 ("That is a reading to argue with, not a forecast.", "A simple way to read the dials: rising prices with low real rates usually mean a warm season, and falling prices with credit drying up a cold one. Today's mix points both ways, so this is a reading to argue with, not a forecast."),
 ("Real interest rate (10-year inflation-protected bond)", "Real interest rate: what a bond pays after inflation (10-year inflation-protected bond)"),
 ("Over many periods the stock typically goes nowhere.", "Over many periods the stock typically goes nowhere. Typical here means the result in the middle of many plays, not the plain average."),
 ("A headline that names one cause for a fall with at least two is telling you a story, not the record.", "A headline that names one cause when there were at least two is telling you a story, not the record."),
 ("On its worst day the value tag moved almost eight times as much as the cash.", "On 5 November, the day with the biggest fall in value, the value tag moved almost eight times as much as the cash."),
 ("which may overlap with the third above, and recovered about 9% in the year to June 2026, as reported. The fall was reported in the press. But no index fund",
  "which may be part of the same third, and recovered about 9% in the year to June 2026, as reported. But no index fund"),
 ("A lower price makes selling new shares raise less money (no size pulled)", "A lower price means selling new shares raises less money. No size was found"),
 ("Creates or retires bank reserves by buying or letting bonds mature", "Creates or retires bank reserves (the banks' own accounts at the Fed) by buying bonds or letting them mature"),
 ("or the central bank buys | US bank loans grew", None),
 ("Four parts of about ten minutes each.", "Four parts, about 40 minutes in all.")]}
miss = []
for cid, pairs in R.items():
    s = json.dumps(C[cid], ensure_ascii=False)
    for a, b in pairs:
        if b is None:  # table cell edit: the Created row of the three-verbs table
            for blk in C[cid]["blocks"]:
                if blk.get("type") == "table" and blk["rows"] and blk["rows"][0][0] == "Created":
                    blk["rows"][0][1] = blk["rows"][0][1].replace("or the central bank buys", "or the central bank buys from someone who is not a bank", 1)
                    break
            else:
                miss.append(a)
            s = json.dumps(C[cid], ensure_ascii=False)
            continue
        aj = json.dumps(a, ensure_ascii=False)[1:-1]
        if s.count(aj) != 1:
            miss.append((cid, s.count(aj), a[:60])); continue
        s = s.replace(aj, json.dumps(b, ensure_ascii=False)[1:-1])
    C[cid].clear(); C[cid].update(json.loads(s))
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print("missed:", miss)
