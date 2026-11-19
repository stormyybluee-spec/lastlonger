"""Apply the Round 9 court edits (round9/DEBATE_R9.md section 3) to a copy of site/rulebook.json.
Usage: python3 -I round9/r9_apply_court_edits.py site/rulebook.json out.json round9/DEBATE_R9.md
Block numbers are the DRAFT_R9 numbers (original order). Nested numbers are parent.child. "kicker" is the
chapter kicker, "heading N" is the heading block just before block N. Replacements run first on the original
numbering, then the new blocks are inserted from the highest position down. Each old text must occur exactly once
in its block. Writes a new file, never the site file in place, and prints any edit it could not apply."""
import json, re, sys

src, out, debate = sys.argv[1:4]
d = json.load(open(src, encoding="utf-8"))
C = {c["id"]: c for c in d["chapters"]}
text = open(debate, encoding="utf-8").read()
sec = text[text.index("## 3. Edits for the Editor"):text.index("## 4. Open items")]

parts = re.split(r"\n### (rb-moves, new blocks|rb-moves|rb-moneymake[^\n]*)\n", sec)
edits, inserts = [], []
for i in range(1, len(parts), 2):
    head, body = parts[i], parts[i + 1]
    cid = "rb-moneymake" if head.startswith("rb-moneymake") else "rb-moves"
    if head == "rb-moves, new blocks":
        for m in re.finditer(r"\*\*(N\d+)\*\* \| insert after block (\d+)[^\n]*\n```json\n(.*?)\n```", body, re.S):
            inserts.append((cid, int(m.group(2)), json.loads(m.group(3)), m.group(1)))
        continue
    for m in re.finditer(r"\*\*(E\d+)\*\* \| block ([^|]+?) \|[^\n]*\n- old: `(.*?)`\n- new: `(.*?)`", body, re.S):
        edits.append((cid, m.group(2).strip(), m.group(3), m.group(4), m.group(1)))

fail = []
def target(cid, ref):
    ch = C[cid]
    if ref == "kicker":
        return ch, "kicker"
    if ref.startswith("heading "):
        n = int(ref.split()[1])
        k = n - 1
        while ch["blocks"][k].get("type") != "h":
            k -= 1
        return ch["blocks"], k
    if "." in ref:
        a, b = map(int, ref.split("."))
        return ch["blocks"][a]["blocks"], b
    return ch["blocks"], int(ref)

for cid, ref, old, new, eid in edits:
    old = re.sub(r"^#+ ", "", old)
    new = re.sub(r"^#+ ", "", new)
    cont, key = target(cid, ref)
    cur = cont[key]
    s = json.dumps(cur, ensure_ascii=False)
    o = json.dumps(old, ensure_ascii=False)[1:-1]
    n = json.dumps(new, ensure_ascii=False)[1:-1]
    if s.count(o) == 1:
        cont[key] = json.loads(s.replace(o, n))
        continue
    # export formats: table rows, Q:/A: lines, (builds on id), (label)
    if old.startswith("|") and isinstance(cur, dict) and cur.get("type") == "table":
        cells = lambda r: [x.strip() for x in r.strip().strip("|").split("|")]
        oc, nc = cells(old), cells(new)
        if oc == [str(x) for x in cur["cols"]]:
            cur["cols"] = nc
            continue
        hit = [k for k, r in enumerate(cur["rows"]) if [str(x) for x in r] == oc]
        if len(hit) == 1:
            cur["rows"][hit[0]] = nc
            continue
    if isinstance(cur, dict) and cur.get("type") == "curiosity":
        m1 = re.match(r"^(?:.*?)\(builds on (rb-[\w-]+)\)$", old.strip())
        m2 = re.match(r"^(?:.*?)\(builds on (rb-[\w-]+)\)$", new.strip())
        if m1 and m2:
            body = re.sub(r"\s*\(builds on rb-[\w-]+\)$", "", old.strip())
            hit = [x for x in cur["items"] if x.get("from") == m1.group(1) and x["a"].endswith(body)]
            if len(hit) == 1:
                hit[0]["from"] = m2.group(1)
                nb = re.sub(r"\s*\(builds on rb-[\w-]+\)$", "", new.strip())
                hit[0]["a"] = hit[0]["a"][: len(hit[0]["a"]) - len(body)] + nb
                continue
        for pre, key2 in (("Q: ", "q"), ("A: ", "a")):
            if old.startswith(pre) and new.startswith(pre):
                ob, nb = old[len(pre):], new[len(pre):]
                hit = [x for x in cur["items"] if x[key2].count(ob) == 1]
                if len(hit) == 1:
                    hit[0][key2] = hit[0][key2].replace(ob, nb)
                    break
        else:
            hit = []
        if hit:
            continue
    if isinstance(cur, dict) and cur.get("type") == "check":
        for pre, key2 in (("Q: ", "q"), ("A: ", "a")):
            if old.startswith(pre) and new.startswith(pre) and cur[key2].count(old[len(pre):]) == 1:
                cur[key2] = cur[key2].replace(old[len(pre):], new[len(pre):])
                break
        else:
            pre = None
        if pre:
            continue
    if old.startswith("|") and isinstance(cur, dict) and cur.get("type") == "table":
        oc, nc = cells(old), cells(new)
        hit = [k for k, r in enumerate(cur["rows"]) if [str(x) for x in r[-len(oc):]] == oc and len(oc) == len(nc)]
        if len(hit) == 1:
            cur["rows"][hit[0]] = cur["rows"][hit[0]][: -len(oc)] + nc
            continue
    if old.startswith("(") and old.endswith(")") and isinstance(cur, dict) and cur.get("label") == old[1:-1]:
        cur["label"] = new[1:-1]
        continue
    fail.append((eid, cid, ref, s.count(o), old[:80]))

for cid, after, blk, nid in sorted(inserts, key=lambda x: -x[1]):
    C[cid]["blocks"].insert(after + 1, blk)

json.dump(d, open(out, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print(f"parsed {len(edits)} edits and {len(inserts)} new blocks. applied {len(edits) - len(fail)}. failed {len(fail)}")
for f in fail:
    print("  FAIL", f)
for cid in ("rb-moves", "rb-moneymake"):
    s = json.dumps(C[cid], ensure_ascii=False)
    print(cid, "blocks", len(C[cid]["blocks"]), "em", s.count("—"), "en", s.count("–"), "semi", s.count(";"))
