#!/bin/bash

[ -f book-functions.sh ] && source book-functions.sh

# MLB Encyclopedia
ATX=$(get_level $SCRIPT $LINENO)
heading "MLB Encyclopedia"

## The National League
ATX=$(get_level $SCRIPT $LINENO)
heading "The National League"

### Opening
ATX=$(get_level $SCRIPT $LINENO)
heading "Opening"

zfind $COMMON --query-string 'tags:MLB & tags:NL & tags:Opening' --show-document \
 | pandoc --wrap=none -f markdown -t markdown --shift-heading-level-by=${#ATX}

### Central
ATX=$(get_level $SCRIPT $LINENO)
heading "Central"

zfind $COMMON --query-string 'tags:MLB & tags:"NL Central"' --show-document \
 | pandoc --wrap=none -f markdown -t markdown --shift-heading-level-by=${#ATX}

### West
ATX=$(get_level $SCRIPT $LINENO)
heading "West"

zfind $COMMON --query-string 'tags:MLB & tags:"NL West"' --show-document \
 | pandoc --wrap=none -f markdown -t markdown --shift-heading-level-by=${#ATX}

### East
ATX=$(get_level $SCRIPT $LINENO)
heading "East"

zfind $COMMON --query-string 'tags:MLB & tags:"NL East"' --show-document \
 | pandoc --wrap=none -f markdown -t markdown --shift-heading-level-by=${#ATX}

## The American League
ATX=$(get_level $SCRIPT $LINENO)
heading "The American League"

### Opening
ATX=$(get_level $SCRIPT $LINENO)
heading "Opening"

zfind $COMMON --query-string 'tags:MLB & tags:AL & tags:Opening' --show-document \
 | pandoc --wrap=none -f markdown -t markdown --shift-heading-level-by=${#ATX}

### Central
ATX=$(get_level $SCRIPT $LINENO)
heading "Central"

zfind $COMMON --query-string 'tags:MLB & tags:"AL Central"' --show-document \
 | pandoc --wrap=none -f markdown -t markdown --shift-heading-level-by=${#ATX}

### West
ATX=$(get_level $SCRIPT $LINENO)
heading "West"

zfind $COMMON --query-string 'tags:MLB & tags:"AL West"' --show-document \
 | pandoc --wrap=none -f markdown -t markdown --shift-heading-level-by=${#ATX}

### East
ATX=$(get_level $SCRIPT $LINENO)
heading "East"

zfind $COMMON --query-string 'tags:MLB & tags:"AL East"' --show-document \
 | pandoc --wrap=none -f markdown -t markdown --shift-heading-level-by=${#ATX}

## World Series Winners
ATX=$(get_level $SCRIPT $LINENO)
heading "World Series Winners"

zfind $COMMON --query-string 'tags:MLB & document:"World Series"' --show-document \
 | pandoc --wrap=none -f markdown -t markdown --shift-heading-level-by=${#ATX}

## Database examples
ATX=$(get_level $SCRIPT $LINENO)
heading "Database Examples"

### zfind count in the output
ATX=$(get_level $SCRIPT $LINENO)
heading "zfind count in the output"

MLB_TEAMS=$(zfind $COMMON --query-string 'tags:MLB' --count)
echo "There are ${MLB_TEAMS} MLB Teams"
echo
