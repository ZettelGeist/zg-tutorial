---
title: ZettelGeist Recent Changes
comment: to be moved to main repository but in tutorial since this is where most will learn about ZettelGeist
tags:
- ZettelGeist
- GitHub
- git
- ChangeLog
---
This is an annotated explanation of recent comments.

This will be helpful to those who are using ZettelGeist for day-to-day research and writing.

Broadly, the changes include the following:

- We're moving to Markdown with YAML frontmatter as our standard. [^65939bf7172de4caefd6b39dbaacb69ce12baad3].
  The `note` field is deprecated but will be supported until everyone gets `document` into their workflow. 
  We were able to accommodate the changes by separating fields into YAML (frontmatter) and extra fields (e.g. filename and document)
- `zfind` now supports options to get a list of all `mentions` and `tags`. [^423c82f0bf9f41ea3cda94f2d008162bff998116]
- `zettel` now supports a naming system where `.counter.dat` plays nicely with GitHub. We use JSON for this instead of YAML, because the default use is that it should never be directly edited by users (but still can be). [^d39210b39b49da6c4d8512b1312da1441fe423e6]
- `zcreate` is no longer needed. Just use `zimport --create --database db-name.db` [^5cc0f53a2247ba6765cbe3f5a1f7abcb019e3feb]
- `--append-tags` became smarter; duplicate tags will not be added (if present or listed in duplicate) [^7464329e8e25588ac333d88d3ae8c3b08c1bba83]


[^423c82f0bf9f41ea3cda94f2d008162bff998116]:

   [^423c82f0bf9f41ea3cda94f2d008162bff998116\
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Sun Apr 25 13:54:02 2021 -0500\
   \
   add --get-all-tags and --get-all-mentions to zfind command

[^d39210b39b49da6c4d8512b1312da1441fe423e6]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Sat Apr 24 23:42:08 2021 -0500\
   \
   remove use of pickle for counter info - use JSON instead

[^5cc0f53a2247ba6765cbe3f5a1f7abcb019e3feb]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Sat Apr 24 22:48:40 2021 -0500\
   \
   add deprecation warning for zcreate\

[^4deab35a1269d486f8801fd2fa2d7407bbd94938]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>
   Date:   Sat Apr 24 22:18:50 2021 -0500\

   beginning of the end for zcreate - now integrated with zimport via --create

[^bab12dd58e1982de889e79759a750ce2dee8a254]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Sat Apr 24 16:43:13 2021 -0500\
   \
   a few minor changes to output formatting / batch entry

[^7464329e8e25588ac333d88d3ae8c3b08c1bba83]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Sat Apr 24 14:36:25 2021 -0500\
   \
   no more duplicate tags on save and allow in-place with .md extension

[^37ff3405ae30c148047a257cd4597bbaac8962b8]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Sat Apr 17 23:05:59 2021 -0500\
   \
   only output YAML header if there is output

[^70a4c7f8bfb69b73ee26777a8bea0c0cc9f41b62]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Fri Apr 16 12:02:31 2021 -0500\
   \
   minor corrections and updating of requirements

[^df2a59df98afee3d2a38e257be221e6cc39c83c8]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Thu Apr 15 22:51:47 2021 -0500\
   \
   fix a couple of formatting problems in output

[^d67c99cc4ece49612e7fbc3a7f5274aa76bd59b2]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Thu Apr 15 18:30:42 2021 -0500\
   \
   allow extra fields to be loaded into a Zettel

[^65939bf7172de4caefd6b39dbaacb69ce12baad3]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Thu Apr 15 18:17:10 2021 -0500\
   \
   Markdown Zettels are working

[^51d05744990c392f943d24a1884ea560fef1473e]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Thu Apr 15 13:50:55 2021 -0500\
   \
   intermediate [^for supporting Markdown documents with frontmatter - Part II

[^394bf1a013b0561537d59e2693c312774f487d8a]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Thu Apr 15 13:49:25 2021 -0500\
   \
   intermediate [^for supporting Markdown documents with frontmatter

[^4ebde15f95cafd2e71f2a07f1f8ca1cf9e1ef133]:
   Author: George K. Thiruvathukal <gkt@cs.luc.edu>\
   Date:   Thu Apr 15 12:22:32 2021 -0500\
   \
   update ignore rules

