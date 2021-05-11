#!/bin/bash

[ -f book-functions.sh ] && source book-functions.sh

# MLB Encyclopedia
atx
heading "MLB Encyclopedia"

## The National League
atx
heading "The National League"

### Opening
atx
heading "Opening"

zfind $COMMON --query-string 'tags:MLB & tags:NL & tags:Opening' --show-document \
 | pandoc_shift_headings

### Central
atx
heading "Central"

zfind $COMMON --query-string 'tags:MLB & tags:"NL Central"' --show-document \
 | pandoc_shift_headings

### West
atx
heading "West"

zfind $COMMON --query-string 'tags:MLB & tags:"NL West"' --show-document \
 | pandoc_shift_headings

### East
atx
heading "East"

zfind $COMMON --query-string 'tags:MLB & tags:"NL East"' --show-document \
 | pandoc_shift_headings

## The American League
atx
heading "The American League"

### Opening
atx
heading "Opening"

zfind $COMMON --query-string 'tags:MLB & tags:AL & tags:Opening' --show-document \
 | pandoc_shift_headings

### Central
atx
heading "Central"

zfind $COMMON --query-string 'tags:MLB & tags:"AL Central"' --show-document \
 | pandoc_shift_headings

### West
atx
heading "West"

zfind $COMMON --query-string 'tags:MLB & tags:"AL West"' --show-document \
 | pandoc_shift_headings

### East
atx
heading "East"

zfind $COMMON --query-string 'tags:MLB & tags:"AL East"' --show-document \
 | pandoc_shift_headings

## World Series Winners
atx
heading "World Series Winners"

zfind $COMMON --query-string 'tags:MLB & document:"World Series"' --show-document \
 | pandoc_shift_headings

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

rm -f al-by-title.dat
zfind $COMMON --query-string 'tags:MLB & tags:AL' --fileset al-by-title.dat
for file in $(cat al-by-title.dat); do
  echo -n "- "
  cat $file | ./extract-yaml.py | yq eval .summary -
done
