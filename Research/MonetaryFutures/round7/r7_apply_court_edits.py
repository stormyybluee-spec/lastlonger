"""Apply the Round 7 court edits (r7_court_edits.json) to a copy of site/rulebook.json.
Usage: python3 -I r7_apply_court_edits.py site/rulebook.json out.json round7/r7_court_edits.json
Block numbers in the edits are the DRAFT_R7 numbers (original order). Nested numbers are parent.child.
Writes a new file. It never edits the site file in place."""
import json, sys, copy, re
def apply(ch, E):
    blocks = copy.deepcopy(ch["blocks"])
    n = len(blocks)
    # nested replaces and deletes first
    for e in E:
        b = e["block"]
        if re.fullmatch(r"\d+\.\d+", b):
            p, c = map(int, b.split("."))
            if e["action"] == "replace": blocks[p]["blocks"][c] = e["new"]
            elif e["action"] == "delete": blocks[p]["blocks"][c] = None
    for b in blocks:
        if b.get("type") == "deeper": b["blocks"] = [x for x in b["blocks"] if x is not None]
    # top-level replaces
    for e in E:
        b = e["block"]
        if e["action"] == "replace" and b.isdigit():
            i = int(b); new = copy.deepcopy(e["new"])
            if new.get("blocks") == "KEEP_CHILDREN": new["blocks"] = blocks[i]["blocks"]
            blocks[i] = new
    boxes = {}  # box ids for inserted deeper boxes
    inserts = {}
    for e in E:
        if e["action"] == "insert_after":
            new = copy.deepcopy(e["new"])
            if "box_id" in new: boxes[new.pop("box_id")] = new
            inserts.setdefault(int(e["block"]), []).append(new)
    removed = set()
    for e in E:
        if e["action"] == "delete" and e["block"].isdigit(): removed.add(int(e["block"]))
    # moves
    moves = [e for e in E if e["action"] == "move_into"]
    for e in moves:
        src = e["block"]
        item = copy.deepcopy(e["new"]) if "new" in e else blocks[int(src)]
        if src.isdigit(): removed.add(int(src))
        t = e["target"]
        tgt = boxes[t] if t in boxes else blocks[int(t)]
        if e["position"] == "start":
            tgt.setdefault("_start", []).append(item)
        else:
            tgt.setdefault("_end", []).append(item)
    out = []
    for i in range(n):
        if i not in removed: out.append(blocks[i])
        for x in inserts.get(i, []): out.append(x)
    def fin(b):
        if b.get("type") == "deeper":
            st = b.pop("_start", []); en = b.pop("_end", [])
            # "start" moves listed in order are each put at the very start, so later ones go first
            b["blocks"] = st + b["blocks"] + en
    for b in out: fin(b)
    ch2 = copy.deepcopy(ch); ch2["blocks"] = out
    for e in E:
        if e["action"] == "set_field": ch2[e["field"]] = e["new"]
    return ch2


if __name__ == "__main__":
    src, dst, ej = sys.argv[1], sys.argv[2], sys.argv[3]
    if src == dst: sys.exit("refusing to overwrite the source file")
    d = json.load(open(src)); allE = json.load(open(ej))
    for cid in ("rb-bonds", "rb-clubs"):
        E = [e for e in allE if e["chapter"] == cid]
        for k, c in enumerate(d["chapters"]):
            if c["id"] == cid: d["chapters"][k] = apply(c, E)
    json.dump(d, open(dst, "w"), ensure_ascii=False, indent=1)
    print("applied", len(allE), "edits")
