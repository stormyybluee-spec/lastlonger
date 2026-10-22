"""Build claims.json from the claims tables in lane, calibration and reloop files.

Usage: python3 -I tools/build_ledger.py <research_root>
Re-run after every round. Each claim keeps its source file so diffs show what moved.
"""
import json, re, sys, pathlib, datetime

root = pathlib.Path(sys.argv[1])
files = sorted(root.glob("round*/lanes/*.md")) + sorted(root.glob("round*/calibration.md")) + sorted(root.glob("round*/RELOOP.md")) + sorted(root.glob("round*/DEBATE_R*.md"))
ID = re.compile(r"^(L\d-\d+|C\d+|R-\d+|R2[A-EX]-\d+)$")

def cells(line):
    return [c.strip() for c in line.strip().strip("|").split("|")]

claims = []
for f in files:
    header = None
    for line in f.read_text().splitlines():
        if not line.startswith("|"):
            header = None if not line.strip() else header
            continue
        row = cells(line)
        if row and row[0].lower() == "id":
            header = [h.lower() for h in row]
            continue
        if header is None or not row or not ID.match(row[0]):
            continue
        rec = dict(zip(header, row))
        claims.append({
            "id": rec.get("id"),
            "claim": rec.get("claim", ""),
            "tier": rec.get("tier", ""),
            "status": rec.get("status", ""),
            "source": rec.get("source (url)", rec.get("source url", rec.get("source", ""))),
            "source_date": rec.get("source date", rec.get("date", "")),
            "as_of": rec.get("as-of date", ""),
            "falsifier": rec.get("falsifier", ""),
            "file": str(f.relative_to(root)),
        })

def bucket(s):
    s = s.lower()
    for k in ("refuted", "speculative", "plausible", "confirmed", "unverified"):
        if k in s:
            return k
    return "other"

out = {
    "built": datetime.date.today().isoformat(),
    "count": len(claims),
    "by_status": {},
    "claims": claims,
}
for c in claims:
    b = bucket(c["status"])
    out["by_status"][b] = out["by_status"].get(b, 0) + 1
(root / "claims.json").write_text(json.dumps(out, indent=1, ensure_ascii=False))
print(out["count"], out["by_status"])
