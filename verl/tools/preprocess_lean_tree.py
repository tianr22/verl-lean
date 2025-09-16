import json
jsonl_path = "/data2/liguchan/Lean/prover/local/tree_search/tree_search_32.jsonl"
data = []
with open(jsonl_path,"r") as f:
    for line in f:
        item = json.loads(line)
        data.append(item)