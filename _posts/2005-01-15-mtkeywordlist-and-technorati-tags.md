---
id: 1001
title: 'MTKeywordList and Technorati Tags'
date: '2005-01-15T17:54:23+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1001'
permalink: /2005/01/15/mtkeywordlist-and-technorati-tags/
typo_id:
    - '999'
mt_id:
    - '2717'
link_related:
    - ''
raw_content:
    - "[Technorati Tags][tags] is the latest tag implementation, mixing blog content into the slurry of tagged links and photos.  You can either use some special snippets of HTML to signify tag membership to their crawler, or you use the [\\\"category system\\\" of your RSS/Atom feed][tag help].\n\nWhile they don\\'t go into great detail about which \\\"category system\\\" they support, we can hope they support looking in dc:subject, one of the few elements that is explicitly repeatable in an RSS 1.0 item. (and if they don\\'t, I hope they take this as a hint.  Additionally I really wish [del.icio.us][del] RSS feeds would stop wodging all the tags for a given link into a single dc:subject, but instead go the multiple dc:subject route)\n\n### Making it Work w/ MT ###\nAnyway, that isn\\'t what I sat down to write about, <a href=\\\"http://del.icio.us/tag/technorati\\\">plenty of other people</a> have chronicled Technorati\\'s tags sufficiently.  I just wanted to offer up a [trivial little MT plugin][plugin] that I use to split the keywords field into a list, thereby making the field suitable for use as a low rent tag system.  I do this with my [MLP feed](http://laughingmeme.org/feed/mlp.rdf) to simulate tagging for import into del.icio.us (being contrary, I go the opposite direction of everyone else, and publish my [linkblog](http://laughingmeme.org/mlp) locally, and then submit it to [del.icio.us][del])\n\n[tag help]: http://www.technorati.com/help/tags.html\n[plugin]: http://laughingmeme.org/code/keywordlist.pl.txt\n[del]: http://del.icio.us\n[tags]: http://www.technorati.com/tag/\nThe [plugin][plugin] provides a container tag `MTKeyWordList`, and a content tag `MTKeyWord`, that I use like so in my RSS template:\n\n    <item>\n    ...\n     <MTKeyWordList>\n        <dc:subject><$MTKeyWord$></dc:subject>\n      </MTKeyWordList>\n    ...\n    </item>\n\nAlternately if you wanted to use keywords to add the [custom Technorati HTML][tag help] you could do it like so\n\n    <MTKeyWordList>\n     <a href=\\\"http://technorati.com/tag/<$MTKeyWord$>\\\" rel=\\\"tag\\\"><$MTKeyWord$></a>\n    </MTKeyWordList>\n\nYou can grab the [keyword list plugin here][plugin].\n\nBtw. I really wanted to use the following link to follow [TechTags][tags] discussion, but unfortunately it doesn\\'t actually work, maybe some day:\n\nhttp://del.icio.us/tag/technorati+tags|tag|folksonomy\n\n<b>update:</b> alternately George\\'s <a href=\\\"http://george.hotelling.net/90percent/projects/technoratitags.php\\\">TechnoratiTags plugin</a> works just as well, though I personally prefer the flexibility of my approach.\n\n[tag help]: http://www.technorati.com/help/tags.html\n[plugin]: http://laughingmeme.org/code/keywordlist.pl.txt\n[del]: http://del.icio.us\n[tags]: http://www.technorati.com/tag/"
tags:
    - tags
    - technorati
---

\[Technorati Tags\]\[tags\] is the latest tag implementation, mixing blog content into the slurry of tagged links and photos. You can either use some special snippets of HTML to signify tag membership to their crawler, or you use the \[“category system” of your RSS/Atom feed\]\[tag help\].

While they don’t go into great detail about which “category system” they support, we can hope they support looking in dc:subject, one of the few elements that is explicitly repeatable in an RSS 1.0 item. (and if they don’t, I hope they take this as a hint. Additionally I really wish \[del.icio.us\]\[del\] RSS feeds would stop wodging all the tags for a given link into a single dc:subject, but instead go the multiple dc:subject route)

### Making it Work w/ MT

Anyway, that isn’t what I sat down to write about, [plenty of other people](http://del.icio.us/tag/technorati) have chronicled Technorati’s tags sufficiently. I just wanted to offer up a \[trivial little MT plugin\]\[plugin\] that I use to split the keywords field into a list, thereby making the field suitable for use as a low rent tag system. I do this with my \[MLP feed\](http://laughingmeme.org/feed/mlp.rdf) to simulate tagging for import into del.icio.us (being contrary, I go the opposite direction of everyone else, and publish my \[linkblog\](http://laughingmeme.org/mlp) locally, and then submit it to \[del.icio.us\]\[del\])

The \[plugin\]\[plugin\] provides a container tag `MTKeyWordList`, and a content tag `MTKeyWord`, that I use like so in my RSS template:

```
<item>
...
 <MTKeyWordList>
    <dc:subject><$MTKeyWord$></dc:subject>
  </MTKeyWordList>
...
</item>

```

Alternately if you wanted to use keywords to add the \[custom Technorati HTML\]\[tag help\] you could do it like so

```
<MTKeyWordList>
 <a href="http://technorati.com/tag/<$MTKeyWord$>" rel="tag"><$MTKeyWord$></a>
</MTKeyWordList>

```

You can grab the \[keyword list plugin here\]\[plugin\].

Btw. I really wanted to use the following link to follow \[TechTags\]\[tags\] discussion, but unfortunately it doesn’t actually work, maybe some day:

http://del.icio.us/tag/technorati+tags|tag|folksonomy

**update:** alternately George’s [TechnoratiTags plugin](http://george.hotelling.net/90percent/projects/technoratitags.php) works just as well, though I personally prefer the flexibility of my approach.