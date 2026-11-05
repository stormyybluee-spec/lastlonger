"""Export Rulebook or Landscape chapters to readable markdown for the verifier and red team.

Usage: python3 -I tools/export_chapters.py <research_root> <out.md> <chapter_id> [<chapter_id> ...]
Block numbers in [brackets] equal the block index in site/rulebook.json (nested "go deeper" blocks are
numbered parent.child), so a court edit list can refer to them.
"""
import json, sys, pathlib

root = pathlib.Path(sys.argv[1])
out_path, ids = sys.argv[2], sys.argv[3:]
chapters = {}
for f in ("site/rulebook.json", "site/landscape.json"):
    for c in json.load(open(root / f, encoding="utf-8")).get("chapters", []):
        chapters[c["id"]] = c

def cell(x):
    return str(x).replace("|", "/")

def block(b, tag):
    t = b["type"]
    tag = f"[{tag} {t}]"
    if t in ("p", "insider", "callout"):
        return f"{tag} {('(' + b['label'] + ') ') if b.get('label') else ''}{b['text']}"
    if t == "h":
        return f"\n### {b['text']}"
    if t in ("list", "steps", "tldr"):
        return tag + "\n" + "\n".join("- " + x for x in b["items"])
    if t == "cards":
        return tag + " " + b.get("label", "") + "\n" + "\n".join(f"- {x['t']}: {x['d']}" for x in b["items"])
    if t == "table":
        return tag + "\n| " + " | ".join(map(cell, b["cols"])) + " |\n|" + "---|" * len(b["cols"]) + "\n" + "\n".join("| " + " | ".join(map(cell, r)) + " |" for r in b["rows"])
    if t == "bars":
        return f"{tag} {b.get('title')}\n" + "\n".join(f"- {r['label']}: {r['value']}" for r in b["rows"]) + f"\nCaption: {b.get('caption', '')}\nSource: {b.get('source', '')}"
    if t == "pairbars":
        return f"{tag} {b.get('title')} series={b['series']}\n" + "\n".join(f"- {r['label']}: {r['values']}" for r in b["rows"]) + f"\nCaption: {b.get('caption', '')}\nSource: {b.get('source', '')}"
    if t == "timeline":
        return f"{tag} {b.get('title')} years={b['years']}\n" + "\n".join(f"- {s['name']}: {s['values']}" for s in b["series"]) + f"\nCaption: {b.get('caption', '')}\nSource: {b.get('source', '')}"
    if t == "curiosity":
        return tag + "\n" + "\n".join(f"- Q: {x['q']}\n  A: {x['a']} (builds on {x.get('from')})" for x in b["items"])
    if t == "bridge":
        return tag + " " + b.get("label", "") + "\n" + "\n".join(f"- {x['id']}: {x['text']}" for x in b["items"])
    if t == "radiant":
        return f"{tag} centre: {b['center']}\n" + "\n".join(f"- {r['t']}: {r.get('s', '')} ({r.get('link')})" for r in b["rays"])
    if t == "myth":
        return f"{tag} Myth: {b['myth']}\nReality: {b['reality']}"
    if t == "check":
        return f"{tag} Q: {b['q']}\nA: {b['a']}"
    if t == "quote":
        return f"{tag} \"{b['text']}\" ({b.get('by')})"
    if t in ("diagram", "widget"):
        return f"{tag} {b.get('key')}: {b.get('caption', '')}"
    if t == "gauge":
        lines = [f"{tag} {b.get('label', '')}: {b.get('intro', '')}"]
        for i, dl in enumerate(b.get("dials", []), 1):
            lines.append(f"- Q{i}: {dl['q']}")
            lines += [f"  - ({o.get('score', 0)}) {o['t']}: {o.get('note', '')}" for o in dl["options"]]
        lines += [f"- Band up to {x['max']}: {x['label']}: {x['text']}" for x in b.get("bands", [])]
        lines.append(f"- Footnote: {b.get('footnote', '')}")
        return "\n".join(lines)
    return f"{tag} (unrendered type)"

def walk(blocks, prefix):
    out = []
    for i, b in enumerate(blocks):
        tag = f"{prefix}{i}"
        if b["type"] == "deeper":
            out.append(f"[{tag} deeper] GO DEEPER BOX (collapsed by default): {b.get('label', '')}")
            out += walk(b.get("blocks", []), tag + ".")
            out.append(f"[{tag} end of deeper box]")
        else:
            out.append(block(b, tag))
        out.append("")
    return out

lines = ["# Chapter export for verifier and red team", "", "Numbers in [brackets] are block indexes. Nested go-deeper blocks are numbered parent.child.", ""]
for cid in ids:
    c = chapters[cid]
    lines += [f"## {('L' + str(c.get('level')) + '.' + str(int(c['num'])) + ' ') if c.get('level') else ''}{c['title']} (id {cid})", "", "Kicker: " + c.get("kicker", ""), ""]
    lines += walk(c["blocks"], "")
    lines += ["Rules: " + " / ".join(c.get("rules", [])), ""]
open(out_path, "w", encoding="utf-8").write("\n".join(lines))
print(out_path, len(lines), "lines")
