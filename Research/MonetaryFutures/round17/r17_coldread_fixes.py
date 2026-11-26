"""Round 17 cold-reader fixes (COLDREAD_R17.md, first pass): eleven fixes, and a short table of the three roads put
back on the main path after the Proton paragraph (the full table stays in its go-deeper box). No new facts: every cell
comes from the box table or the main-path text. Verify after apply.
Usage: python3 -I round17/r17_coldread_fixes.py site/rulebook.json  (refuses to run twice)"""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
k = next(i for i, c in enumerate(d["chapters"]) if c["id"] == "rb-future")
ch = d["chapters"][k]; B = ch["blocks"]; miss = []
if any(b.get("type") == "table" and b["cols"][0] == "Road" for b in B):
    sys.exit("already applied")
i = next((i for i, b in enumerate(B) if b.get("type") == "p" and b["text"].startswith("Malaysia's push into heavy industry did less well.")), None)
if i is None: miss.append(("Proton paragraph", ""))
else:
    B.insert(i + 1, {"type": "table", "cols": ["Road", "What it bought", "What it cost"], "rows": [
      ["Korea: bank loans aimed by the state, much of the money created by the central bank", "Steel, ships and chemicals that sell worldwide", "High inflation, heavy company debt, and a crisis in 1997"],
      ["Taiwan: public and foreign money for skills and a few firms", "A world-leading chip maker", "Not measured here against Korea's loans"],
      ["Malaysia, Penang: tax holidays and a state-built zone that drew foreign firms", "Electronics, about 40% of exports in 2023", "Taxes not collected, the cost of the zone, and hard factory work"]]})
R = [
 ("part of its dividends came out of the owners' own capital", "part of its dividends, the yearly payouts to owners, came out of the owners' own capital, the money they had put in"),
 ("it went into skills and a few firms.", "it went into skills and a few firms. Its cost was not measured here against Korea's loans."),
 ("The foreign firms paid for their own factories, as far as these sources show.", "The foreign firms paid for their own factories, as far as these sources show. The cost to Malaysia was the tax it did not collect and the cost of the zone."),
 ("The money supply grew about 6% a year from the end of 1994 to the end of 1999", "The amount of money in the economy grew about 6% a year from the end of 1994 to the end of 1999"),
 ("So money was cheap in two booms. The internet boom grew while", "So money was cheap in two booms, the railway fever and 2020 to 2021. The internet boom grew while"),
 ("The Nasdaq share index then fell", "The Nasdaq, an American index of share prices, then fell"),
 ("Yes, for these cases, which all won in the end.", "Yes, for these cases. In each one the technology itself worked in the end, even where investors lost."),
 ("The reader's hope about what may follow is a hope, and the record so far supports only its first steps.", "The reader's hope about what may follow cannot yet be tested, and the record so far supports only its first steps."),
 ("Prices often rose 10% to 20% a year, by one Korean account, and the rise began before the heavy industry push.", "Prices often rose 10% to 20% a year, by one Korean account. That rise began before the heavy industry push."),
 ("before the first booster landed safely in December 2015", "before the first rocket stage flew back and landed safely in December 2015"),
 ("and the loan creates new money", "and the bank creates the new money as it makes the loan")]
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
# Applied separately after the script above, by hand (one-off), to explain the NASA cost table:
# "Another company was paid 288 million dollars by 2013." gained four sentences on the old and new ways of using
# NASA's model, and the two table labels were changed to "the old way" and "the new way".
