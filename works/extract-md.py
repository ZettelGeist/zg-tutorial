#!/usr/bin/env python3

# A simple script that takes a document on standard input (stdin) and extracts the YAML front matter.
# The incoming document must be in Markdown format with an optional YAML header.
# We need this to be able to use the `yq` tool to extract fields from Markdown + YAML documents.

# example
# cat file.md | python extract-yaml.py | yq eval .tags -
# This will give you the tags: in a Zettel.

# cat file.md | python extract-yaml.py | yq eval .note -
# This will give you the note: in a Zettel.

import frontmatter
import sys
import yaml

fm = frontmatter.load(sys.stdin)
print(fm.content)
