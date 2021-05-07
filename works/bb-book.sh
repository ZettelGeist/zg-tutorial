#!/bin/bash

if [ -f ~/zenv/bin/activate ]; then
  source ~/zenv/bin/activate
fi

if [ ! -f mlb.db ]; then
  zimport --dir ../zettels/baseball-md --fullpath --database mlb.db
fi

COMMON="--database mlb.db --show-document"

# MLB Encyclopedia

echo "# MLB Encyclopedia"

MLB_TEAMS=$(zfind $COMMON --query-string 'tags:MLB & tags:NL & tags:AL' --count)
echo "There are $(MLB_TEAMS) MLB Teams"

## The National League

echo "## The National League"

zfind $COMMON --query-string 'tags:MLB & tags:NL'

### Central

echo "### Central"
zfind $COMMON --query-string 'tags:MLB & tags:"NL Central"'

### West

echo "### West"
zfind $COMMON --query-string 'tags:MLB & tags:"NL West"'

### East

echo "### East"
zfind $COMMON --query-string 'tags:MLB & tags:"NL East"'

## The American League

echo "## The American League"
zfind $COMMON --query-string 'tags:MLB & tags:AL'

### East

echo "### East"
zfind $COMMON --query-string 'tags:MLB & tags:"AL East"'

### Central

echo "### Central"
zfind $COMMON --query-string 'tags:MLB & tags:"AL Central"'

### West

echo "### West"
zfind $COMMON --query-string 'tags:MLB & tags:"AL West"'

## World Series Winners

echo "## World Series Winners"
zfind $COMMON --query-string 'tags:MLB & document:"World Series"'

