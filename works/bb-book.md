---
title: Major League Baseball (pandoc title, not Zettel title)
author: Hank Aaron and Jackie Robinson
zettelgeist:
  db: mlb.db -> implies --database mlb.db
  show: document -> implies show document unless author uses different show flags
---

# MLB Encyclopedia

The idea of having a tags:Opening would be for a situation where you drafted an opening in Markdown.
This query probably returns only one result (speaking of which, I am thinking of adding a --max-results option to `zfind` for those zettels that are used for through-writing purposes.

```zq
zfind --query-string 'tags:MLB & tags:Opening'
```

And yes, it would be allowed to type text in the outline.

For example, you may want to have some *diagnostic* output from ZettelGeist, such as, how many MLB teams are there?

Number of MLB Teams:
```zq
zfind --query-string 'tags:MLB & tags:NL & tags:AL' --count
```

## The National League

```zq
zfind --query-string 'tags:MLB & tags:NL'
```
### East

```zq
zfind --query-string 'tags:MLB & tags:"NL East"'
```

### Central

```zq
zfind --query-string 'tags:MLB & tags:"NL Central"'
```

### West

```zq
zfind --query-string 'tags:MLB & tags:"NL West"'
```

## The American League

```zq
zfind --query-string 'tags:MLB & tags:AL'
```

### East
```zq
zfind --query-string 'tags:MLB & tags:"AL East"'
```

### Central

```zq
zfind --query-string 'tags:MLB & tags:"AL Central"'
```
### West

```zq
zfind --query-string 'tags:MLB & tags:"AL West"'
```

## World Series Winners

```zq
zfind --query-string 'tags:MLB & document:"World Series"
```


