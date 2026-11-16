"""Turn the Round 12 lane tables into ledger rows (the lanes were written without claim ids).
Usage: python3 -I round12/r12_ledger_rows.py .   Writes round12/lanes/R12_LEDGER.md, read by tools/build_ledger.py.
Status map: verified becomes confirmed, secondary becomes plausible, memory or gap becomes unverified."""
import re, sys, pathlib
root = pathlib.Path(sys.argv[1])
out = ["# Round 12 ledger rows, generated from the two lane files by round12/r12_ledger_rows.py", "",
       "| id | claim | tier | status | source URL | source date | as-of date | falsifier |", "|---|---|---|---|---|---|---|---|"]
for lane, name in (("R12A", "R12A-history-data.md"), ("R12B", "R12B-law-access.md")):
    n = 0; header = None
    for line in (root / "round12/lanes" / name).read_text(encoding="utf-8").splitlines():
        if not line.startswith("|"):
            header = None; continue
        row = [c.strip() for c in line.strip().strip("|").split("|")]
        if row[0].lower() == "claim":
            header = [h.lower() for h in row]; continue
        if header is None or set(row[0]) <= set("-: ") or len(row) < 2:
            continue
        rec = dict(zip(header, row))
        st = rec.get("status", "").lower()
        status = "confirmed" if st.startswith("verified") else "plausible" if st.startswith("secondary") else "unverified"
        num = next((v for kk, v in rec.items() if kk.startswith("number")), "")
        claim = (rec.get("claim", "") + (" (" + num + ")" if num else "")).replace("|", "/")
        n += 1
        out.append(f"| {lane}-{n:02d} | {claim} | T2 | {status} | {rec.get('url', '')} | {rec.get('year', '')} | 2026-11-16 | |")
    print(lane, n, "rows")
(root / "round12/lanes/R12_LEDGER.md").write_text("\n".join(out) + "\n", encoding="utf-8")
