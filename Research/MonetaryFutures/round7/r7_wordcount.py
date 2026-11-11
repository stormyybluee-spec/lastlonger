"""Court word count for one chapter: every text field outside go-deeper boxes, excluding the kicker and rules.
Usage: python3 -I r7_wordcount.py <rulebook.json> <chapter id>"""
import json,sys,re
from collections import Counter
d=json.load(open(sys.argv[1])); cid=sys.argv[2]
c=[c for c in d['chapters'] if c['id']==cid][0]
SKIP={'type','id','link','from','score','max','decimals','suffix','years','values','key'}
def words(o):
    if isinstance(o,str): return len(re.findall(r"[A-Za-z0-9$%£.,']+",o))
    if isinstance(o,dict): return sum(words(v) for k,v in o.items() if k not in SKIP)
    if isinstance(o,list): return sum(words(v) for v in o)
    return 0
cat=Counter()
for b in c['blocks']:
    t=b['type']
    if t=='deeper': continue
    g='prose' if t in ('p','tldr','callout','insider','myth','list','steps','cards','bridge','h','curiosity') else t
    if t in ('table','pairbars'): g='tables'
    if t in ('check',): g='checks'
    if t in ('radiant','diagram','widget'): g='pictures'
    cat[g]+=words(b)
print(cat, sum(cat.values()), 'without pictures', sum(v for k,v in cat.items() if k!='pictures'))
