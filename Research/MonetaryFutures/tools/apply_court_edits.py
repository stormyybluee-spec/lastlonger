"""Apply a court's edit list (DEBATE_RN.md, section "## 3. Edits for the Editor") to one chapter, then verify.

Usage: python3 -I tools/apply_court_edits.py <site json> <out json> <DEBATE file> <chapter id> [<section heading>]
  <site json>        site/rulebook.json or site/landscape.json
  <section heading>  the "### ..." heading that holds this chapter's edits (default: the chapter id).
                     New blocks are read from "### <heading>, new blocks".
Edit format, as the court card asks:
  **E01** | block N | (point ids)          N, N.M (inside a go-deeper box), "kicker" or "heading N"
  - old: `exact old text`                  table rows may be quoted as | a | b |, check and curiosity
  - new: `new text`                        lines as "Q: ..." or "A: ...", labels as "(label)"
  **N1** | insert after block N | (ids)  followed by a ```json block
Block numbers are those of the draft export (tools/export_chapters.py) before any edit. Replacements run first,
then new blocks are inserted from the highest position down. Writes a new file and never edits the site in place.
Verify after apply (PLAN 6.5): every new text is searched for in the output, and any edit whose new text is missing
is reported as a failure even if the replacement seemed to run. Exit code 1 on any failure."""
import json, re, sys

src, out, debate, cid = sys.argv[1:5]
head = sys.argv[5] if len(sys.argv) > 5 else cid
d = json.load(open(src, encoding="utf-8"))
ch = next(c for c in d["chapters"] if c["id"] == cid)
text = open(debate, encoding="utf-8").read()
sec = text[text.index("## 3. Edits for the Editor"):]
m = re.search(r"\n## 4\.", sec)
sec = sec[:m.start()] if m else sec

def section(name):
    m = re.search(r"\n### " + re.escape(name) + r"[^\n]*\n(.*?)(?=\n### |\Z)", sec, re.S)
    return m.group(1) if m else ""

edits = [(e.group(1), e.group(2).strip(), e.group(3), e.group(4)) for e in re.finditer(
    r"\*\*(E\d+)\*\* \| block ([^|]+?) \|[^\n]*\n- old: `(.*?)`\n- new: `(.*?)`", section(head), re.S)]
inserts = [(int(e.group(2)), json.loads(e.group(3)), e.group(1)) for e in re.finditer(
    r"\*\*(N\d+)\*\* \| insert after block (\d+)[^\n]*\n```json\n(.*?)\n```", section(head + ", new blocks"), re.S)]

def target(ref):
    if ref == "kicker":
        return ch, "kicker"
    if ref.startswith("heading "):
        k = int(ref.split()[1]) - 1
        while ch["blocks"][k].get("type") != "h":
            k -= 1
        return ch["blocks"], k
    if "." in ref:
        a, b = map(int, ref.split("."))
        return ch["blocks"][a]["blocks"], b
    return ch["blocks"], int(ref)

cells = lambda r: [x.strip() for x in r.strip().strip("|").split("|")]
fail = []
for eid, ref, old, new in edits:
    old, new = re.sub(r"^#+ ", "", old), re.sub(r"^#+ ", "", new)
    cont, key = target(ref)
    cur = cont[key]
    s = json.dumps(cur, ensure_ascii=False)
    o, n = json.dumps(old, ensure_ascii=False)[1:-1], json.dumps(new, ensure_ascii=False)[1:-1]
    if s.count(o) == 1:
        cont[key] = json.loads(s.replace(o, n))
        continue
    done = False
    if isinstance(cur, dict) and cur.get("type") == "table" and ("|" in old) and not done:
        oc, nc = cells(old), cells(new)
        # any contiguous run of cells in one row, quoted with or without the outer bars
        if len(oc) == len(nc):
            hits = [(k, j) for k, r in enumerate(cur["rows"]) for j in range(len(r) - len(oc) + 1)
                    if [str(x) for x in r[j:j + len(oc)]] == oc]
            if len(hits) == 1:
                k, j = hits[0]
                cur["rows"][k][j:j + len(oc)] = nc
                done = True
        if oc == [str(x) for x in cur["cols"]]:
            cur["cols"], done = nc, True
        else:
            hit = [k for k, r in enumerate(cur["rows"]) if [str(x) for x in r] == oc]
            if len(hit) == 1:
                cur["rows"][hit[0]], done = nc, True
            else:
                hit = [k for k, r in enumerate(cur["rows"]) if len(oc) == len(nc) and [str(x) for x in r[-len(oc):]] == oc]
                if len(hit) == 1:
                    cur["rows"][hit[0]] = cur["rows"][hit[0]][:-len(oc)] + nc
                    done = True
    if not done and isinstance(cur, dict) and cur.get("type") in ("check", "curiosity"):
        items = [cur] if cur["type"] == "check" else cur["items"]
        m1 = re.match(r"^(.*?)\s*\(builds on (rb-[\w-]+)\)$", old.strip())
        m2 = re.match(r"^(.*?)\s*\(builds on (rb-[\w-]+)\)$", new.strip())
        if m1 and m2:
            hit = [x for x in items if x.get("from") == m1.group(2) and x["a"].endswith(m1.group(1).replace("A: ", ""))]
            if len(hit) == 1:
                body_o, body_n = m1.group(1).replace("A: ", ""), m2.group(1).replace("A: ", "")
                hit[0]["a"] = hit[0]["a"][: len(hit[0]["a"]) - len(body_o)] + body_n
                hit[0]["from"], done = m2.group(2), True
        for pre, k2 in (("Q: ", "q"), ("A: ", "a")):
            if not done and old.startswith(pre) and new.startswith(pre):
                hit = [x for x in items if x[k2].count(old[len(pre):]) == 1]
                if len(hit) == 1:
                    hit[0][k2] = hit[0][k2].replace(old[len(pre):], new[len(pre):])
                    done = True
    if not done and isinstance(cur, dict) and old.startswith("(") and old.endswith(")") and cur.get("label") == old[1:-1]:
        cur["label"], done = new[1:-1], True
    if not done:
        fail.append((eid, ref, s.count(o), old[:80]))

for after, blk, nid in sorted(inserts, key=lambda x: -x[0]):
    ch["blocks"].insert(after + 1, blk)

# verify after apply: each new text must now be present
final = json.dumps(ch, ensure_ascii=False)
failed_ids = {f[0] for f in fail}
for eid, ref, old, new in edits:
    if eid in failed_ids:
        continue
    probe = re.sub(r"^#+ ", "", new)
    pieces = cells(probe) if "|" in probe else [re.sub(r"^(Q: |A: )", "", re.sub(r"\s*\(builds on rb-[\w-]+\)$", "", probe)).strip("()")]
    for piece in pieces:
        if piece and json.dumps(piece, ensure_ascii=False)[1:-1] not in final:
            fail.append((eid, ref, "applied but new text not found", piece[:80]))
            break

json.dump(d, open(out, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
print(f"{cid}: parsed {len(edits)} edits and {len(inserts)} new blocks. failed {len(fail)}")
for f in fail:
    print("  FAIL", f)
print(cid, "blocks", len(ch["blocks"]), "em", final.count("—"), "en", final.count("–"), "semi", final.count(";"))
sys.exit(1 if fail else 0)
