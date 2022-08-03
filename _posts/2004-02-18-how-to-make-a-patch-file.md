---
id: 735
title: 'How to make a patch file'
date: '2004-02-18T21:49:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=735'
permalink: /2004/02/18/how-to-make-a-patch-file/
typo_id:
    - '733'
mt_id:
    - '1753'
link_related:
    - ''
raw_content:
    - "<p>\r\nThis post is in the \\\"things which should have been easy for someone to find with Google but aren\\'t\\\" department, because sometimes you\\'d like to be able to tell someone <a href=\\\"http://journal.dajobe.org/journal/archives/2003_11.html#001604\\\">DTFG</a>, but you can\\'t.  (previous examples included <a href=\\\"http://laughingmeme.org/archives/000479.html\\\">how to do conditional GETs in Perl</a>).   All material is lifted from excellent <a href=\\\"http://linux.ctyme.com/man/man2328.htm\\\">patch man pages</a>, see \\\"Notes for Patch Senders\\\".\r\n</p>\r\n<p>\r\n<h3>Whats a patch?</h3>\r\nA patch is the best and easiest way to submit changes back to an open source project.  It\\'s a summary of changes you made to file or files formatted in a way that can easily be used by the excellent program, named, unsurprisingly, \\'patch\\'.  Now because patch was written by the inestimable Larry Wall, patches can come in a wide range of shapes, sizes, and formats, and they will apply with a high degree of \\\"do what I mean\\\"-ness.  However, there are some tips to produce high quality patches.\r\n</p>\r\n<p>\r\n<h3>How to: the Short Answer</h3>\r\n<pre>\r\ndiff -Naur old new > patch_file\r\n</pre>\r\ne.g.\r\n<pre>\r\ndiff -Naur rss_parse.inc rss_fetch_gopher.inc > add_gopher_support.patch\r\n</pre>\r\n</p>\r\n<p>\r\n<h3>Slightly Longer Answer</h3>\r\n<blockquote>\r\nThe diff command\\'s headers should\r\nhave dates and times in Universal Time  using  traditional\r\nUnix  format,  so  that patch recipients can use the -Z or\r\n--set-utc option.   Here  is  an  example  command,  using\r\nBourne shell syntax:\r\n</blockquote>\r\n<pre>\r\nTZ=UTC0 diff -Naur gcc-2.7 gcc-2.8\r\n</pre>\r\n</p>\r\n<p>\r\n<h3>Tips for Generating Usable Patch Files</h3>\r\n<ol>\r\n<li>Tell  your  recipients  how to apply the patch by telling them which directory to cd to, and which patch options to use. </li>\r\n<li>State clearly what the patch is suppose to accomplish, and which version it is meant to be applied to.</li>\r\n<li>Your patch will be easier to apply if you place the original and patched sources next to each other in the file hierarchy so that the path depths to the files will be the same.</li>\r\n<li>You can produce patches for entire directories of files, not just a single file, however try to keep your patches relatively straightforward, and thematically linked.  This makes it easier to understand when something goes wrong.</li>\r\n<li>I\\'m sure there are others.  Did I miss your favorite?</li>\r\n</ol>\r\n</p>\r\n<p>\r\nCode improvements, and bug fixes are great, are wonderful, but patches make it much much easier to use them.\r\n</p>"
categories:
    - Uncategorized
tags:
    - howto
    - opensource
    - programming
---

This post is in the “things which should have been easy for someone to find with Google but aren’t” department, because sometimes you’d like to be able to tell someone [DTFG](http://journal.dajobe.org/journal/archives/2003_11.html#001604), but you can’t. (previous examples included [how to do conditional GETs in Perl](http://laughingmeme.org/archives/000479.html)). All material is lifted from excellent [patch man pages](http://linux.ctyme.com/man/man2328.htm), see “Notes for Patch Senders”.

### Whats a patch?

A patch is the best and easiest way to submit changes back to an open source project. It’s a summary of changes you made to file or files formatted in a way that can easily be used by the excellent program, named, unsurprisingly, ‘patch’. Now because patch was written by the inestimable Larry Wall, patches can come in a wide range of shapes, sizes, and formats, and they will apply with a high degree of “do what I mean”-ness. However, there are some tips to produce high quality patches. ### How to: the Short Answer

```
diff -Naur old new > patch_file

```

e.g.

```
diff -Naur rss_parse.inc rss_fetch_gopher.inc > add_gopher_support.patch

```

### Slightly Longer Answer

> The diff command’s headers should have dates and times in Universal Time using traditional Unix format, so that patch recipients can use the -Z or –set-utc option. Here is an example command, using Bourne shell syntax:

```
TZ=UTC0 diff -Naur gcc-2.7 gcc-2.8

```

### Tips for Generating Usable Patch Files

1. Tell your recipients how to apply the patch by telling them which directory to cd to, and which patch options to use.
2. State clearly what the patch is suppose to accomplish, and which version it is meant to be applied to.
3. Your patch will be easier to apply if you place the original and patched sources next to each other in the file hierarchy so that the path depths to the files will be the same.
4. You can produce patches for entire directories of files, not just a single file, however try to keep your patches relatively straightforward, and thematically linked. This makes it easier to understand when something goes wrong.
5. I’m sure there are others. Did I miss your favorite?

Code improvements, and bug fixes are great, are wonderful, but patches make it much much easier to use them.