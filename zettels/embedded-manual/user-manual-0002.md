---
title: User Manual
tags:
- zettel
- user manual
---
Based on David's and my session.

You can use zfind to search for zettels, say, something like "world series" in the document.
Use the `--fileset` option to save the results to a file.

Here we found the World Series winners across all leagues. We save to a file named `world-series-winners.dat`. We note that this file, itself, could be kept under version control so you remember which files actually represent World Series winners.

```
zfind --database mlb.db --query-string 'document:"world series"' --count  --fileset world-series-winners.dat
```

Now we can iterate this file to tag the World Series winners.

```
for file in $(cat world-series-winners.dat); do                             
  zettel --in-place --file "$file" --append-tags "World Series"
done 
```

Using a for loop, we can then take each result of the fileset and transform the zettel "in place" by making
any desired alterations. Here, we simply added "World Series" as a tag. This allows us in the future to 
search for the tag "World Series" (or any way we may have decided to label World Series winners.

Now we also have a way of sharing "recipes" for using ZettelGeist and can eventually use this to update our
public documentation.
