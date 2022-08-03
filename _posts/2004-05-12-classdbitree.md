---
id: 820
title: 'Class::DBI::Tree'
date: '2004-05-12T00:56:08+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=820'
permalink: /2004/05/12/classdbitree/
typo_id:
    - '818'
mt_id:
    - '2032'
link_related:
    - ''
raw_content:
    - "<p>\nIn the ought to exist category, there ought to be a Perl module for automatically maintaining a tree structure using Celko\\'s <a href=\\\"http://www.anarchogeek.com/archives/000173.html\\\">modified pre-order traversal</a> method.  It\\'s not all that complicated, but it would be handy to have someone else build one.  Key features\n\n<li> your basic tree methods, insert, updated, remove (including either re-parenting, or trimming that branch), getChildren, getParent, pathToNode.  All pretty easy with MPTM.</li>\n\n<li> multiple trees per table, none of the examples model this, but one tree per table is an edge case not the norm.\n\n<li> be really nice if it did integrate smoothly with Class::DBI, nodes of the tree being Class::DBI objects, using the columns() method to identify primary keys, and lft and rgt columns.</li>\n\n<li> extra credit includes methods for balancing the tree, and support Celko\\'s suggestion to use ranges rather then sequential numbering <a href=\\\"http://searchdatabase.techtarget.com/tip/1,289483,sid13_gci537290,00.html\\\">for tables with frequent updates.</a> (I\\'ve created a <a href=\\\"http://bugmenot.com/\\\">bugmenot</a> account)</li>\n</ul>\n</p>"
---

In the ought to exist category, there ought to be a Perl module for automatically maintaining a tree structure using Celko’s [modified pre-order traversal](http://www.anarchogeek.com/archives/000173.html) method. It’s not all that complicated, but it would be handy to have someone else build one. Key features

2. your basic tree methods, insert, updated, remove (including either re-parenting, or trimming that branch), getChildren, getParent, pathToNode. All pretty easy with MPTM.
3. multiple trees per table, none of the examples model this, but one tree per table is an edge case not the norm.
4. be really nice if it did integrate smoothly with Class::DBI, nodes of the tree being Class::DBI objects, using the columns() method to identify primary keys, and lft and rgt columns.
5. extra credit includes methods for balancing the tree, and support Celko’s suggestion to use ranges rather then sequential numbering [for tables with frequent updates.](http://searchdatabase.techtarget.com/tip/1,289483,sid13_gci537290,00.html) (I’ve created a [bugmenot](http://bugmenot.com/) account)