#!/bin/bash

if [ -f ~/zenv/bin/activate ]; then
  # This activates a user's zenv, if present
  source ~/zenv/bin/activate
fi

if [ ! -f mlb.db ]; then
  # This creates mlb.db so the zfind's can do their thing
  zimport --create --dir ../zettels/baseball-md --fullpath --database mlb.db
fi

COMMON="--database mlb.db --show-document" # establishes database & what you want to show (modifiable or optional)

# MLB Encyclopedia

echo "# MLB Encyclopedia"  # The above comment is showing in Voom, this echo shows in the output doc

## The National League

echo "## The National League"

### Opening

 # This idiom is a here document. This string, DBD, can be anything as long as it appears before/after. 
 # Comment is 1-char indented so Voom markdown safely ignores it. Quit ok since the intent of this script
 # is to create a book outline!

cat << DBD
<!--
This could be a comment about something we need "todo"
-->
DBD

zfind $COMMON --query-string 'tags:MLB & tags:NL'
 # Here I am using zfind to find zettels matching MLB and NL tags.
 # The --database mlb.db is implied by $COMMON as is the --show-document option (to display the document)

### Central

echo "### Central"
zfind $COMMON --query-string 'tags:MLB & tags:"NL Central"'
 # You could also avoid $COMMON and write --database mlb.db --show-document
 # (or --show-comment/--show-note/--show-cite)

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

## Database examples

### zfind count in the output

MLB_TEAMS=$(zfind $COMMON --query-string 'tags:MLB' --count)
echo "There are *${MLB_TEAMS}* MLB Teams"
