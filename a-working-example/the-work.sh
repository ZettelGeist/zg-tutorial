#!/bin/bash

[ -f config/book-functions.sh ] && source config/book-functions.sh

PUBLISH="--publish config/publishing-template.md --publish-conf config/publishing-options.json"  
PUBLISH_SUMMARY_ONLY="--publish config/summary-only.md --publish-conf config/publishing-options.json"  

cat << PANDOC_FRONTMATTER
---
title:  'Baseball Encyclopedia'
subtitle: "Thank you, Steven Hawking"
author:
- George K. Thiruvathukal
- David B. Dennis
- Ian Cornelius
- Wikipedia
geometry: margin=1in
fontfamily: bookman
header-includes:
- \usepackage[document]{ragged2e}
---
PANDOC_FRONTMATTER

# MLB Encyclopedia
atx
heading "MLB Encyclopedia"

## The National League
atx
heading "The National League"

### Opening
atx
heading "Opening"

zfind $COMMON --query-string 'tags:MLB & tags:NL & tags:Opening' $PUBLISH  | pandoc_shift_headings

### Central
atx
heading "Central"

zfind $COMMON --query-string 'tags:MLB & tags:"NL Central"' $PUBLISH  | pandoc_shift_headings

### West
atx
heading "West"

zfind $COMMON --query-string 'tags:MLB & tags:"NL West"' $PUBLISH  | pandoc_shift_headings

### East
atx
heading "East"

zfind $COMMON --query-string 'tags:MLB & tags:"NL East"' $PUBLISH  | pandoc_shift_headings

## The American League
atx
heading "The American League"

### Opening
atx
heading "Opening"

zfind $COMMON --query-string 'tags:MLB & tags:AL & tags:Opening' $PUBLISH  | pandoc_shift_headings

### Central
atx
heading "Central"

zfind $COMMON --query-string 'tags:MLB & tags:"AL Central"' $PUBLISH  | pandoc_shift_headings

### West
atx
heading "West"

zfind $COMMON --query-string 'tags:MLB & tags:"AL West"' $PUBLISH  | pandoc_shift_headings

### East
atx
heading "East"

zfind $COMMON --query-string 'tags:MLB & tags:"AL East"' $PUBLISH  | pandoc_shift_headings

## World Series Winners
atx
heading "World Series Winners"

zfind $COMMON --query-string 'tags:MLB & document:"World Series"' $PUBLISH  | pandoc_shift_headings

## Database examples
atx
heading "Database Examples"

### zfind count in the output
atx
heading "zfind count in the output"

MLB_TEAMS=$(zfind $COMMON --query-string 'tags:MLB' --count)
echo "There are ${MLB_TEAMS} MLB Teams"
echo

### Listing of MLB Teams
atx

echo "This is an example of how to process the results of a zfind to generate a list..."
echo

zfind $COMMON --query-string 'tags:MLB & tags:AL' $PUBLISH_SUMMARY_ONLY | pandoc_shift_headings
