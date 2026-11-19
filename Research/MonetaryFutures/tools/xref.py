"""Find where the desk already says something: claims ledger, site pages, round data and top-level docs.

Usage: python3 -I tools/xref.py <research_root> <regex> [<regex> ...]
A line or claim is a hit when any regex matches (case-insensitive). Use "|" inside one regex for alternatives.
Used by the Librarian (what does the desk already believe, and how old is it) and the
Propagator (which pages still carry a view the court just changed). See engine/ROLES.md.
"""
import json, re, sys, pathlib, datetime

if len(sys.argv) < 3:
    sys.exit(__doc__)
root = pathlib.Path(sys.argv[1])
pats = [re.compile(p, re.I) for p in sys.argv[2:]]
today = datetime.date.today()
CAP = 20

def match(s):
    for p in pats:
        m = p.search(s)
        if m:
            return m
    return None

def snip(s, m, w=90):
    a, b = max(0, m.start() - w), min(len(s), m.end() + w)
    return ("..." if a else "") + s[a:b].replace("\n", " ") + ("..." if b < len(s) else "")

def age(d):
    try:
        return f"{(today - datetime.date.fromisoformat(d[:10])).days}d"
    except (TypeError, ValueError):
        return "?"

def walk(x, label, path):
    if isinstance(x, dict):
        if isinstance(x.get("id"), str):
            label = x["id"]
        for k, v in x.items():
            yield from walk(v, label, f"{path}.{k}" if path else k)
    elif isinstance(x, list):
        for i, v in enumerate(x):
            yield from walk(v, label, f"{path}[{i}]")
    elif isinstance(x, str):
        yield label, path, x

def report(name, hits):
    if not hits:
        return
    print(f"\n== {name} ({len(hits)} hits)")
    for h in hits[:CAP]:
        print("  " + h)
    if len(hits) > CAP:
        print(f"  ... {len(hits) - CAP} more")

# 1. Claims ledger
ledger = root / "claims.json"
if ledger.exists():
    hits = []
    for c in json.load(open(ledger, encoding="utf-8"))["claims"]:
        m = match(c.get("claim", ""))
        if m:
            hits.append(f"{c['id']} [{c.get('tier')}, {c.get('status')}, as of {c.get('as_of')}, age {age(c.get('as_of'))}] {snip(c['claim'], m)}  ({c.get('file')})")
    report("Claims ledger", hits)

# 2. Site pages and round data (JSON)
files = sorted(root.glob("site/*.json")) + sorted(root.glob("round*/**/*.json"))
for f in files:
    try:
        data = json.load(open(f, encoding="utf-8"))
    except ValueError:
        continue
    hits = []
    for label, path, s in walk(data, "", ""):
        m = match(s)
        if m:
            hits.append(f"{label or '-'} @ {path}: {snip(s, m)}")
    report(str(f.relative_to(root)), hits)

# 3. Top-level docs and the site source (line based)
for f in [root / "PLAN.md", root / "REPORT.md", root / "site" / "index.html"]:
    if not f.exists():
        continue
    hits = []
    for n, line in enumerate(f.read_text(encoding="utf-8").splitlines(), 1):
        m = match(line)
        if m:
            hits.append(f"line {n}: {snip(line, m)}")
    report(str(f.relative_to(root)), hits)
