#! /usr/bin/env python
# -*- coding: utf-8 -*-

import json
import sys

assert len(sys.argv) > 1, "Missing CLI arguments"

args = sys.argv[1:]

with open("devcontainer-template.json") as f:
    data = json.load(f)

for key, arg in zip(data["options"], args):
    if arg.lower() == "true":
        arg = True
    elif arg.lower() == "false":
        arg = False
    print(f"Set {key} to {arg}")
    data["options"][key]["default"] = arg

with open("devcontainer-template.json", "w") as wf:
    json.dump(data, wf, ensure_ascii=False, indent=2)
