#!/bin/bash

function emit_atx () {
  echo
  echo "${ATX} $1"
  echo
}

# MLB Encyclopedia

ATX="#" 
emit_atx "MLB Encyclopedia"

## The National League

ATX="##" 
emit_atx "The National League"

### Opening

ATX="###" 
emit_atx "Opening"
zfind $COMMON --query-string 'tags:MLB & tags:NL & tags:Opening' \
 | pandoc -f markdown -t markdown --shift-heading-level-by=${#ATX}

### Central

ATX="###" 
emit_atx "Central"
zfind $COMMON --query-string 'tags:MLB & tags:"NL Central"' \
 | pandoc -f markdown -t markdown --shift-heading-level-by=${#ATX}

### West

ATX="###" 
emit_atx "West"
zfind $COMMON --query-string 'tags:MLB & tags:"NL West"' \
 | pandoc -f markdown -t markdown --shift-heading-level-by=${#ATX}

### East

ATX="###" 
emit_atx "East"
zfind $COMMON --query-string 'tags:MLB & tags:"NL East"' \
 | pandoc -f markdown -t markdown --shift-heading-level-by=${#ATX}

## The American League

ATX="##" 
emit_atx "The American League"

### Opening

ATX="###" 
emit_atx "Opening"
zfind $COMMON --query-string 'tags:MLB & tags:AL & tags:Opening' \
 | pandoc -f markdown -t markdown --shift-heading-level-by=${#ATX}

### Central

ATX="###" 
emit_atx "Central"
zfind $COMMON --query-string 'tags:MLB & tags:"AL Central"' \
 | pandoc -f markdown -t markdown --shift-heading-level-by=${#ATX}

### West

ATX="###" 
emit_atx "West"
zfind $COMMON --query-string 'tags:MLB & tags:"AL West"' \
 | pandoc -f markdown -t markdown --shift-heading-level-by=${#ATX}

### East

ATX="###" 
emit_atx "East"
zfind $COMMON --query-string 'tags:MLB & tags:"AL East"' \
 | pandoc -f markdown -t markdown --shift-heading-level-by=${#ATX}

## World Series Winners

ATX="##" 
emit_atx "World Series Winners"
zfind $COMMON --query-string 'tags:MLB & document:"World Series"' \
 | pandoc -f markdown -t markdown --shift-heading-level-by=${#ATX}

## Database examples

ATX="##" 
emit_atx "Database Examples"

### zfind count in the output

ATX="###" 
emit_atx "zfind count in the output"

MLB_TEAMS=$(zfind $COMMON --query-string 'tags:MLB' --count)
echo "There are ${MLB_TEAMS} MLB Teams"
echo
