"""Round 9 second-retest fixes (COLDREAD_R9.md, second retest). Usage: python3 -I round9/r9_coldread_fixes3.py site/rulebook.json
The working for the 1.5 / 0.75 and 150% rows goes in the paragraphs after the tables, not inside the cells."""
import json, sys
p = sys.argv[1]; d = json.load(open(p, encoding="utf-8"))
C = {c["id"]: c for c in d["chapters"]}
mv, mm = C["rb-moves"]["blocks"], C["rb-moneymake"]["blocks"]
def cell(blocks, first, col, new):
    hit = [r for b in blocks if b.get("type") == "table" for r in b["rows"] if str(r[0]).startswith(first)]
    assert len(hit) == 1, (first, len(hit)); hit[0][col] = new
def text(blocks, old, new):
    hit = [b for b in blocks if old in json.dumps(b, ensure_ascii=False)]
    assert len(hit) == 1, (old[:50], len(hit))
    s = json.dumps(hit[0], ensure_ascii=False).replace(json.dumps(old, ensure_ascii=False)[1:-1], json.dumps(new, ensure_ascii=False)[1:-1])
    hit[0].clear(); hit[0].update(json.loads(s))
text(mv, "Part of that fall, 5.1%, came in the year to December 2024.", "In the single year to December 2024 the index fell 5.1%.")
cell(mv, "Extra pay for risky borrowers", 0, "Extra pay for risky borrowers (high-yield spread): the extra interest weaker firms pay above the government")
cell(mv, "Extra pay for risky borrowers", 2, "Still small, but growing, so lenders are a little more nervous")
cell(mv, "Long rates minus short rates", 2, "Positive. Lenders are still paid more for lending longer, which is normal. When short rates rise above long rates, many investors treat it as a warning sign")
text(mv, "Two things that each go nowhere make about 6% a period together, in this made-up game.",
     "Where the 1.5 and 0.75 come from: start with $1, half in cash and half in the stock. If the stock doubles, the cash half stays $0.50 and the stock half becomes $1, so the pot is $1.50. If it halves, $0.50 plus $0.25 makes $0.75. Two things that each go nowhere make about 6% a period together, in this made-up game.")
text(mv, "Borrowing to hold more of a good bet can turn it into a losing one.",
     "At 150%, a double turns each $1 into $2.50 and a halving into $0.25. The typical result of one of each is the square root of 2.5 times 0.25, about 0.79, a loss of about 21% a period. Borrowing to hold more of a good bet can turn it into a losing one.")
text(mm, "So the bank loan part of those two columns gives a clue about which borrowers stand behind part of the money that exists today.",
     "So the bank loan part of those two columns hints at who borrowed some of today's money into existence.")
json.dump(d, open(p, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
for cid in ("rb-moves", "rb-moneymake"):
    s = json.dumps(C[cid], ensure_ascii=False); print(cid, s.count("—"), s.count("–"), s.count(";"))
