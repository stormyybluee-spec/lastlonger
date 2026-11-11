"""Build the AI reading pack: plain-text copies of the whole site that any AI assistant can read
without running JavaScript. Run after tools/build_site.py.

Usage: python3 -I tools/build_ai_pack.py <research_root> [--base https://example.netlify.app] [--date YYYY-MM-DD] [--dist DIR]

Writes into <research_root>/site/:
  llms.txt            the entry point (the llms.txt convention): what the site is, the two stacks, and a link to every file
  llms-full.txt       everything in one file, for tools that want a single document
  ai/brief.md         how another AI should use this site, plus the current headline findings
  ai/method.md        the method: PLAN.md section 4 (evidence ladder, the seven moves, Unseen mode)
  ai/rulebook/*.md    one file per Rulebook chapter, plus index.md, rules.md and glossary.md
  ai/intelligence.md  the Desk: the report, scenario odds and every thesis card
  ai/landscape/*.md   one file per Landscape chapter
  ai/index.html       the same entry point as a plain HTML page
  ai/manifest.json    file list with sizes and the build date
  robots.txt, sitemap.xml
It also refreshes the static block inside site/index.html (between the AI-PACK markers) so a reader
with no JavaScript sees where the pack is.
--dist DIR copies a complete, deployable site into DIR (drag the folder or its zip onto a static host).
"""
import json, re, sys, os, shutil, html, datetime, pathlib

args = sys.argv[1:]
def opt(name, default):
    return args[args.index(name) + 1] if name in args else default
root = pathlib.Path(args[0])
BASE = opt("--base", "https://neetmonetary.netlify.app").rstrip("/")
DATE = opt("--date", datetime.date.today().isoformat())
DIST = opt("--dist", None)
site = root / "site"
out = site / "ai"
for d in (out, out / "rulebook", out / "landscape"):
    d.mkdir(parents=True, exist_ok=True)

book = json.load(open(site / "rulebook.json", encoding="utf-8"))
land = json.load(open(site / "landscape.json", encoding="utf-8"))
plan = open(root / "PLAN.md", encoding="utf-8").read()
report = open(root / "REPORT.md", encoding="utf-8").read()
page = open(site / "index.html", encoding="utf-8").read()
version = re.search(r"Version ([0-9.]+)\.", plan).group(1)
titles = {c["id"]: c["title"] for c in book["chapters"]}
titles.update({c["id"]: c["title"] for c in land["chapters"]})
levels = {l["n"]: l for l in book["levels"]}


def cell(x):
    return str(x).replace("|", "/").replace("\n", " ")

def table(cols, rows):
    return "| " + " | ".join(map(cell, cols)) + " |\n|" + "---|" * len(cols) + "\n" + "\n".join("| " + " | ".join(map(cell, r)) + " |" for r in rows)

def ref(cid):
    if cid in titles:
        folder = "landscape" if cid.startswith("ls-") else "rulebook"
        return f"[{titles[cid]}]({BASE}/ai/{folder}/{cid}.md)"
    return str(cid)

def block(b, depth=3):
    t = b.get("type")
    lab = f"**{b['label']}.** " if b.get("label") else ""
    if t == "p":
        return b["text"]
    if t in ("insider", "callout"):
        return "> " + lab + b["text"]
    if t == "h":
        return "#" * depth + " " + b["text"]
    if t in ("list", "tldr"):
        return ("**In short**\n" if t == "tldr" else "") + "\n".join("- " + x for x in b["items"])
    if t == "steps":
        return "\n".join(f"{i}. {x}" for i, x in enumerate(b["items"], 1))
    if t == "cards":
        return lab + "\n" + "\n".join(f"- **{x['t']}:** {x['d']}" for x in b["items"])
    if t == "table":
        return table(b["cols"], b["rows"])
    if t == "bars":
        return f"**Chart: {b.get('title', '')}**\n" + table(["Item", "Value"], [[r["label"], r["value"]] for r in b["rows"]]) + f"\n{b.get('caption', '')} Source: {b.get('source', '')}"
    if t == "pairbars":
        return f"**Chart: {b.get('title', '')}**\n" + table(["Item"] + list(b["series"]), [[r["label"]] + list(r["values"]) for r in b["rows"]]) + f"\n{b.get('caption', '')} Source: {b.get('source', '')}"
    if t == "timeline":
        return f"**Chart: {b.get('title', '')}**\n" + table(["Series"] + list(b["years"]), [[s["name"]] + list(s["values"]) for s in b["series"]]) + f"\n{b.get('caption', '')} Source: {b.get('source', '')}"
    if t == "curiosity":
        return "**Curiosity questions**\n" + "\n".join(f"- Q: {x['q']}\n  A: {x['a']}" + (f" (builds on {ref(x['from'])})" if x.get("from") else "") for x in b["items"])
    if t == "bridge":
        return lab + "\n" + "\n".join(f"- {ref(x['id'])}: {x['text']}" for x in b["items"])
    if t == "radiant":
        return f"**Map of this chapter: {b['center']}**\n" + "\n".join(f"- {r['t']}: {r.get('s', '')}" + (f" (see {ref(r['link'])})" if r.get("link") else "") for r in b["rays"])
    if t == "myth":
        return f"- **Myth:** {b['myth']}\n- **Reality:** {b['reality']}"
    if t == "check":
        return f"**Check yourself.** Q: {b['q']}\nA: {b['a']}"
    if t == "quote":
        return f"> \"{b['text']}\" ({b.get('by', '')})"
    if t in ("diagram", "widget"):
        return f"*[{'Picture' if t == 'diagram' else 'Interactive tool'} on the web page: {b.get('caption', b.get('key', ''))}]*"
    if t == "gauge":
        lines = [f"**Self-check: {b.get('label', '')}.** {b.get('intro', '')}"]
        for i, dl in enumerate(b.get("dials", []), 1):
            lines.append(f"{i}. {dl['q']}")
            lines += [f"   - ({o.get('score', 0)} points) {o['t']}" + (f": {o['note']}" if o.get("note") else "") for o in dl["options"]]
        lines += [f"- Score up to {x['max']}: {x['label']}. {x['text']}" for x in b.get("bands", [])]
        if b.get("footnote"):
            lines.append(b["footnote"])
        return "\n".join(lines)
    if t == "deeper":
        inner = "\n\n".join(block(x, depth + 1) for x in b.get("blocks", []))
        return "#" * depth + f" Go deeper: {b.get('title', b.get('label', ''))}\n\n" + inner
    return ""

def chapter_md(c, kind):
    lv = c.get("level", 1)
    head = [f"# {c['title']}"]
    if kind == "rulebook":
        head.append(f"Rulebook Level {lv} ({levels[lv]['name']}), chapter {c.get('num', '')}. Stack: Fundamentals. Id: {c['id']}.")
    else:
        head.append(f"Landscape chapter {c.get('num', '')}. Stack: Intelligence (graded, dated findings). Id: {c['id']}. Facts as of {land.get('asOf', 'see text')}.")
    head.append(f"Web page: {BASE}/#{c['id']} . Text built {DATE}. Guide for AI readers: {BASE}/llms.txt")
    if c.get("kicker"):
        head.append(f"*{c['kicker']}*")
    body = "\n\n".join(x for x in (block(b) for b in c["blocks"]) if x)
    return "\n\n".join(head) + "\n\n" + body + "\n"

def first_line(c):
    if c.get("kicker"):
        return c["kicker"]
    for b in c["blocks"]:
        if b.get("type") == "tldr":
            return b["items"][0]
        if b.get("type") == "p":
            return b["text"].split(". ")[0] + "."
    return ""

files = {}
def write(rel, text):
    p = site / rel
    p.parent.mkdir(parents=True, exist_ok=True)
    open(p, "w", encoding="utf-8").write(text)
    files[rel] = len(text.encode("utf-8"))

# ---- rulebook
for c in book["chapters"]:
    write(f"ai/rulebook/{c['id']}.md", chapter_md(c, "rulebook"))
idx = [f"# Rulebook index (Fundamentals)\n\nOne file per chapter. Read a level in order. Built {DATE}.\n"]
for lv in sorted(levels):
    L = levels[lv]
    chs = [c for c in book["chapters"] if c.get("level", 1) == lv]
    idx.append(f"## Level {lv}: {L['name']}\n\n" + " ".join(L.get("blurb", [])))
    idx.append("\n".join(f"- [{c.get('num', '')}. {c['title']}]({BASE}/ai/rulebook/{c['id']}.md): {first_line(c)}" for c in chs) or "- Empty for now.")
write("ai/rulebook/index.md", "\n\n".join(idx) + "\n")
rules = ["# The rules, the mistakes and the questions (Fundamentals)\n", "## The rules\n\n" + "\n".join(f"{r['n']}. **{r['rule']}** {r['why']}" for r in book["rulebook"]),
         "## Mistakes each generation made\n\n" + table(["When", "Mistake", "Lesson"], [[m["generation"], m["mistake"], m["lesson"]] for m in book["mistakes"]]),
         "## Questions readers ask\n\n" + "\n\n".join(f"**{q['q']}**\n{q['a']}" for q in book["questions"])]
write("ai/rulebook/rules.md", "\n\n".join(rules) + "\n")
write("ai/rulebook/glossary.md", "# Glossary (Fundamentals)\n\n" + "\n".join(f"- **{g['t']}:** {g['d']}" for g in book["glossary"]) + "\n")

# ---- landscape
for c in land["chapters"]:
    write(f"ai/landscape/{c['id']}.md", chapter_md(c, "landscape"))

# ---- intelligence
cards = re.findall(r'\["([A-Z][a-z]-\d+N?)","(\w+)","([^"]+)","(\w+)",(\d+),"(H\d)"\]', page)
clusters = dict(re.findall(r'(\w+): "([^"]+)"', re.search(r"const CLUSTERS = \{(.*?)\};", page, re.S).group(1)))
scen = re.findall(r'(H\d): \{ label: "([^"]+)", S1: (\d+), S2: (\d+), S3: (\d+), S4: (\d+) \}', page)
intel = ["# Intelligence: will energy replace money? (the Desk)",
         f"Stack: Intelligence. These are graded, dated findings, not settled facts. Check each as-of date and fetch current data before relying on a number. Web page: {BASE}/#desk . Text built {DATE}.",
         "## Scenario odds by horizon\n\nS1 dollar extension, S2 neutral reserve layer, S3 energy or compute standard, S4 disorderly reset. Percent, as of the report date below.\n\n" + table(["Horizon", "S1", "S2", "S3", "S4"], [[f"{h} ({lab.split(' · ')[-1]})", a, b_, c_, d] for h, lab, a, b_, c_, d in scen]),
         "## Thesis cards\n\nStatus comes from the best evidence tier behind the card. Confidence is the desk's probability in percent.\n\n" + table(["Id", "Topic", "Statement", "Status", "Confidence", "Horizon"], [[i, clusters.get(cl, cl), st, status, conf, h] for i, cl, st, status, conf, h in cards]),
         "## The report\n\n" + re.sub(r"^# .*\n", "", report, count=1).replace("\n## ", "\n### ").strip(),
         "## Landscape chapters (the findings reorganized as one story)\n\n" + "\n".join(f"- [{c.get('num', '')}. {c['title']}]({BASE}/ai/landscape/{c['id']}.md): {first_line(c)}" for c in land["chapters"]),
         f"## Every claim with its source\n\n{BASE}/claims.json holds the full ledger. Each entry has an id, the claim, an evidence tier, a status, a source URL, a source date, an as-of date and a falsifier."]
write("ai/intelligence.md", "\n\n".join(intel) + "\n")

# ---- method
m = re.search(r"\n## 4\. The framework.*?(?=\n---\n\n## 5\. )", plan, re.S)
write("ai/method.md", f"# The method (from the Plan, version {version})\n\nStack: Fundamentals. How the desk turns a raw question into an answer. Built {DATE}. The full plan, with the origin cases and the agent architecture, is at {BASE}/PLAN.md\n" + m.group(0).replace("\n## 4. The framework: Revealed Intent Engine", "") + "\n")

# ---- brief
guide = open(root / "engine" / "AI_BRIEF.md", encoding="utf-8").read().replace("{BASE}", BASE)
one_par = re.search(r"## The answer in one paragraph\n(.*?)\n\n", report, re.S).group(1)
asof = re.search(r"Facts as of ([0-9-]+)", report).group(1)
index_lines = [
    f"- [How to use this site (the brief)]({BASE}/ai/brief.md)",
    f"- [The method: evidence ladder, seven moves, reasoning about the undisclosed]({BASE}/ai/method.md)",
    f"- [Rulebook index, every chapter with a one-line summary]({BASE}/ai/rulebook/index.md)",
    f"- [The rules, the mistakes and common questions]({BASE}/ai/rulebook/rules.md)",
    f"- [Glossary]({BASE}/ai/rulebook/glossary.md)",
    f"- [Intelligence: the report, scenario odds and every thesis card]({BASE}/ai/intelligence.md)",
    f"- [Claims ledger with sources (JSON)]({BASE}/claims.json)",
    f"- [The full plan]({BASE}/PLAN.md)",
    f"- [Everything in one file]({BASE}/llms-full.txt)"]
brief = guide + f"\n## The current headline, Intelligence stack (as of {asof})\n\n{one_par}\n\nScenario odds, thesis cards and round summaries: {BASE}/ai/intelligence.md\n\n## Where everything is\n\n" + "\n".join(index_lines) + f"\n\nPlan version {version}. Pack built {DATE}.\n"
write("ai/brief.md", brief)

# ---- llms.txt
def chapter_list(chs, folder):
    return "\n".join(f"- [{c['title']}]({BASE}/ai/{folder}/{c['id']}.md): {first_line(c)}" for c in chs)
ll = [f"# Monetary Futures", f"> A working knowledge base on how money works and where it is heading, built by a multi-agent research desk. Two stacks: Fundamentals (a four-level Rulebook and the method) and Intelligence (one live question: will energy replace money?). Every claim carries an evidence tier and a date. General education and research, not financial advice. Plan version {version}, built {DATE}.",
      f"Read {BASE}/ai/brief.md first. It says how far to trust each part and how to build on it. Fundamentals are stable reference. Intelligence findings are graded hypotheses that age: check the as-of dates and fetch current data.",
      "## Start here\n\n" + "\n".join(index_lines[:2] + index_lines[5:6]),
      ]
for lv in sorted(levels):
    chs = [c for c in book["chapters"] if c.get("level", 1) == lv]
    ll.append(f"## Fundamentals: Rulebook Level {lv}, {levels[lv]['name']}\n\n" + (chapter_list(chs, "rulebook") or "- Empty for now."))
ll.append("## Fundamentals: reference\n\n" + "\n".join(index_lines[2:5]))
ll.append("## Intelligence: the Landscape (findings as one story)\n\n" + chapter_list(land["chapters"], "landscape"))
ll.append("## Optional\n\n" + "\n".join(index_lines[6:]))
write("llms.txt", "\n\n".join(ll) + "\n")

# ---- llms-full.txt
full = [open(site / "llms.txt", encoding="utf-8").read(), brief, open(site / "ai/method.md", encoding="utf-8").read(), open(site / "ai/rulebook/rules.md", encoding="utf-8").read()]
full += [open(site / f"ai/rulebook/{c['id']}.md", encoding="utf-8").read() for c in book["chapters"]]
full += [open(site / "ai/rulebook/glossary.md", encoding="utf-8").read(), open(site / "ai/intelligence.md", encoding="utf-8").read()]
full += [open(site / f"ai/landscape/{c['id']}.md", encoding="utf-8").read() for c in land["chapters"]]
write("llms-full.txt", "\n\n---\n\n".join(full))

# ---- plain HTML entry, robots, sitemap, manifest
def md_to_html(md):
    o = []
    for line in md.split("\n"):
        e = html.escape(line)
        e = re.sub(r"\[([^\]]+)\]\((https?://[^)]+)\)", r'<a href="\2">\1</a>', e)
        e = re.sub(r"\*\*([^*]+)\*\*", r"<b>\1</b>", e)
        if line.startswith("# "): o.append(f"<h1>{e[2:]}</h1>")
        elif line.startswith("## "): o.append(f"<h2>{e[3:]}</h2>")
        elif line.startswith("- "): o.append(f"<li>{e[2:]}</li>")
        elif line.startswith("&gt; "): o.append(f"<blockquote>{e[5:]}</blockquote>")
        elif line.strip(): o.append(f"<p>{e}</p>")
    return "\n".join(o)
write("ai/index.html", "<!doctype html>\n<html lang=\"en\"><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"><title>Monetary Futures: guide for AI readers</title>"
      "<style>body{font:16px/1.55 system-ui,sans-serif;max-width:760px;margin:0 auto;padding:24px 16px;color:#1c1a17;background:#f7f4ee}a{color:#1d4ed8;overflow-wrap:anywhere}li{margin:4px 0}blockquote{margin:12px 0;padding:8px 14px;border-left:3px solid #b58900;background:#fff}@media(prefers-color-scheme:dark){body{background:#17150f;color:#ece7dc}a{color:#8ab4ff}blockquote{background:#211e16}}</style></head><body>\n"
      + md_to_html(open(site / "llms.txt", encoding="utf-8").read()) + f"\n<p><a href=\"{BASE}/\">Back to the site for people</a></p>\n</body></html>\n")
write("robots.txt", f"User-agent: *\nAllow: /\n\nSitemap: {BASE}/sitemap.xml\n")
urls = [f"{BASE}/", f"{BASE}/llms.txt", f"{BASE}/llms-full.txt", f"{BASE}/PLAN.md", f"{BASE}/claims.json"] + [f"{BASE}/{f}" for f in sorted(files) if f.startswith("ai/")]
write("sitemap.xml", "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n" + "\n".join(f"  <url><loc>{u}</loc><lastmod>{DATE}</lastmod></url>" for u in urls) + "\n</urlset>\n")
write("ai/manifest.json", json.dumps({"site": BASE, "plan_version": version, "built": DATE, "stacks": {"fundamentals": ["ai/method.md", "ai/rulebook/"], "intelligence": ["ai/intelligence.md", "ai/landscape/", "claims.json"]}, "files": dict(sorted(files.items()))}, indent=1))

# ---- static block inside index.html (for readers with no JavaScript)
static = ("<!-- AI-PACK:START -->\n<noscript><div style=\"max-width:760px;margin:24px auto;padding:16px;font:16px/1.5 system-ui,sans-serif\">\n"
          "<h1>Monetary Futures</h1>\n<p>This page needs JavaScript to show its chapters. The full text is also published as plain files.</p>\n"
          f"<p>AI assistants and other readers without JavaScript: start at <a href=\"{BASE}/llms.txt\">llms.txt</a> or <a href=\"{BASE}/ai/index.html\">the plain index</a>. "
          f"Read <a href=\"{BASE}/ai/brief.md\">the brief</a> first. Rulebook: <a href=\"{BASE}/ai/rulebook/index.md\">index of all chapters</a>. "
          f"Intelligence (will energy replace money?): <a href=\"{BASE}/ai/intelligence.md\">report, odds and thesis cards</a>. "
          f"Method: <a href=\"{BASE}/ai/method.md\">how the desk reasons</a>. Everything in one file: <a href=\"{BASE}/llms-full.txt\">llms-full.txt</a>.</p>\n"
          "<p>Two stacks: Fundamentals (the Rulebook and the method, stable reference) and Intelligence (dated, graded findings on one live question). General education and research, not financial advice.</p>\n"
          "</div></noscript>\n<!-- AI-PACK:END -->")
head_tags = (f"<!-- AI-HEAD:START --><meta name=\"description\" content=\"How money works and where it is heading: a four-level Rulebook, a research method, and a live desk on whether energy will replace money. Plain-text copy for AI assistants at /llms.txt\">"
             f"<link rel=\"alternate\" type=\"text/markdown\" href=\"{BASE}/llms.txt\" title=\"Guide for AI assistants\"><!-- AI-HEAD:END -->")
if "<!-- AI-PACK:START -->" in page:
    page = re.sub(r"<!-- AI-PACK:START -->.*?<!-- AI-PACK:END -->", lambda _: static, page, flags=re.S)
elif re.search(r"<body[^>]*>", page):
    page = re.sub(r"(<body[^>]*>)", lambda mm: mm.group(1) + "\n" + static, page, count=1)
else:  # an artifact page is a fragment with no body tag: put the block before the first visible element
    page = page.replace('<header class="sitebar">', static + '\n<header class="sitebar">', 1)
foot = f'<!-- AI-FOOT:START --><span>For AI assistants: the full text is at <a href="{BASE}/llms.txt">llms.txt</a>. Read <a href="{BASE}/ai/brief.md">the brief</a> first.</span><!-- AI-FOOT:END -->'
if "<!-- AI-FOOT:START -->" in page:
    page = re.sub(r"<!-- AI-FOOT:START -->.*?<!-- AI-FOOT:END -->", lambda _: foot, page, flags=re.S)
else:
    page = page.replace("  </div>\n</footer>", "    " + foot + "\n  </div>\n</footer>", 1)
if "<!-- AI-HEAD:START -->" in page:
    page = re.sub(r"<!-- AI-HEAD:START -->.*?<!-- AI-HEAD:END -->", lambda _: head_tags, page, flags=re.S)
else:
    page = page.replace("</title>", "</title>\n" + head_tags, 1)
open(site / "index.html", "w", encoding="utf-8").write(page)

total = sum(files.values())
print(f"AI pack: {len(files)} files, {total // 1024} KB. Entry: site/llms.txt ({files['llms.txt']} bytes). Largest chapter: {max((v, k) for k, v in files.items() if k.startswith('ai/rulebook/rb'))}")

if DIST:
    d = pathlib.Path(DIST)
    if d.exists():
        shutil.rmtree(d)
    d.mkdir(parents=True)
    # The page in site/ is a fragment (the artifact host adds the document shell). A static host needs the shell.
    shell = ('<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
             '<style>:root{color-scheme:light;box-sizing:border-box}body{margin:0;padding:0;font:14px -apple-system,BlinkMacSystemFont,sans-serif;background:#fff;color:#000}'
             'img{max-width:100%}[hidden]:not([hidden=until-found i]){display:none!important}</style></head><body>\n')
    open(d / "index.html", "w", encoding="utf-8").write(shell + page + "\n</body></html>\n")
    for f in ("PLAN.md", "REPORT.md", "claims.json"):
        shutil.copy(root / f, d / f)
    for rel in files:
        (d / rel).parent.mkdir(parents=True, exist_ok=True)
        shutil.copy(site / rel, d / rel)
    z = shutil.make_archive(str(d), "zip", d)
    print("dist:", d, "zip:", z, os.path.getsize(z) // 1024, "KB")
