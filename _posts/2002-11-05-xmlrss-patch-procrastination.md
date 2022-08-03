---
id: 207
title: 'XML::RSS Patch &#038; Procrastination'
date: '2002-11-05T18:51:36+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=207'
permalink: /2002/11/05/xmlrss-patch-procrastination/
typo_id:
    - '205'
mt_id:
    - '215'
link_related:
    - ''
raw_content:
    - "<p>\r\nI have subtle clues when I\\'m procrastinating, not merely killing time, but in\r\nreal, deep avoidance mode:  \r\n<ul>\r\n<li>sent emails go up\r\n<li>cvs check ins go way up\r\n<li>un-read\r\nmessages go down\r\n<li>my documents directory clutters up with half finished\r\nmanifestos.  \r\n</ul>\r\nNot sure if I\\'m procrastinating from finding a house, or a job, or\r\napplying to school, or just planning whether I\\'m going to New York for\r\nThanksgiving, when life is up in the air, there are so many choices.\r\n</p>\r\n<p>\r\n<h3>XML::RSS, a bug, a patch</h3>\r\nAll the alarms are ringing today, but the one that might be interesting to\r\nanyone but me is I wrote a patch for \r\n<a href=\\\"http://cpan.org/modules/by-module/XML/XML-RSS-0.97.tar.gz\\\">\r\nXML::RSS 0.97</a>.\r\n</p>\r\n<p>\r\n<a href=\\\"http://search.cpan.org/dist/XML-RSS/\\\">XML::RSS</a> was the gold standard when it came out, an easy to use, complete,\r\nrelatively intuitive XML tool that parsed, and generated RSS cleanly.  Times\r\nchange,  XML::RSS hasn\\'t since March of last year, and what once seemed all\r\ngolden and shiny, feels like a hack. (which is why the maintainers are no longer\r\nmaintaining it, in favor of the mythical clean re-write)  Its an abandoned\r\nhouse, complete with \r\n<a href=\\\"http://c2.com/cgi/wiki?FixBrokenWindows\\\">broken windows</a>.\r\n</p>\r\n<p>\r\nWhile attempting to parse Kevin Burton\\'s \r\n<a href=\\\"http://www.peerfear.org/rss/index.rss\\\">baroque RSS feed</a>\r\n I ran into a bug\r\nwith XML::RSS.  It reasonably enough assumes that the RSS namespace (e.g.\r\nhttp://purl.org/rss/1.0/) will always be the default namespace for the document.\r\n Reasonable, but unfortunately incorrect.  My \r\n<a href=\\\"http://laughingmeme.org/~kellan/xmlrss_namespace_patch\\\">XML::RSS namespace patch</a> is a relatively simple fix\r\n for that assumption.\r\n</p>\r\n<p>\r\n<b>Note:</b>  for some reason search.cpan.org is showing XML::RSS 0.96 as the most\r\n recently version, it isn\\'t, and I have not tested if the patch applies cleanly\r\n to it.\r\n</p>\r\n<P>\r\n<h3>Todo</h3>\r\nDepending on how grim things get, other features which XML::RSS might sprout\r\nwould be:\r\n<ul>\r\n<li> support for attribute based tags, like \r\n<a href=\\\"http://web.resource.org/rss/1.0/modules/admin/\\\">\r\n&lt;admin:GeneratorAgent&gt;</a>, and\r\n<a href=\\\"http://purl.org/rss/1.0/modules/link/\\\">mod_link</a>\r\n\r\n<li> a cleaner implementation of my earlier patched \r\n<a href=\\\"http://protest.net/~kellan/XML-RSS-patched.tar.gz\\\">XML::RSS with\r\nXML encoded output</a>.\r\n</ul>\r\n<p>\r\n<h3>On Broken Windows</h3>\r\n\r\n<a href=\\\"http://c2.com/cgi/wiki?FixBrokenWindows\\\">Broken windows</a> was a term I stumbled \r\nupon over at the\r\n<a href=\\\" http://c2.com/cgi/wiki?PortlandPatternRepository\\\">Portland Pattern\r\nrepository</a>.  Its a pattern (an anti-pattern really) describing how buggy code,\r\naccumulates more bugs as the perception of of the code as being buggy lowers\r\npeoples\\' standards.  Last night Jasmine and I went and watched an excellent\r\nfilm, \r\n<a href=\\\"http://www.boomthemovie.org/\\\">Boom: the Sound of Eviction</a>\r\n at the equally excellent Milky Way, in\r\nJamacia Plains.\r\n</p>\r\n<p>\r\nI was horrified to find the \r\n<a href=\\\"http://www.manhattan-institute.org/\\\">Manhattan Policy Institute</a>, the\r\nultra right-wing fiscal conservatives that provided the intellectual framework\r\nand moral justification for Giuliani\\'s rein of terror, taking credit for\r\npopularizing the term.  I\\'m not sure if I can go on using it, at least without\r\nwashing my hands.\r\n</p>"
---

I have subtle clues when I’m procrastinating, not merely killing time, but in real, deep avoidance mode:

- sent emails go up
- cvs check ins go way up
- un-read messages go down
- my documents directory clutters up with half finished manifestos.

Not sure if I’m procrastinating from finding a house, or a job, or applying to school, or just planning whether I’m going to New York for Thanksgiving, when life is up in the air, there are so many choices. ### XML::RSS, a bug, a patch

All the alarms are ringing today, but the one that might be interesting to anyone but me is I wrote a patch for [XML::RSS 0.97](http://cpan.org/modules/by-module/XML/XML-RSS-0.97.tar.gz). [XML::RSS](http://search.cpan.org/dist/XML-RSS/) was the gold standard when it came out, an easy to use, complete, relatively intuitive XML tool that parsed, and generated RSS cleanly. Times change, XML::RSS hasn’t since March of last year, and what once seemed all golden and shiny, feels like a hack. (which is why the maintainers are no longer maintaining it, in favor of the mythical clean re-write) Its an abandoned house, complete with [broken windows](http://c2.com/cgi/wiki?FixBrokenWindows).

While attempting to parse Kevin Burton’s [baroque RSS feed](http://www.peerfear.org/rss/index.rss) I ran into a bug with XML::RSS. It reasonably enough assumes that the RSS namespace (e.g. http://purl.org/rss/1.0/) will always be the default namespace for the document. Reasonable, but unfortunately incorrect. My [XML::RSS namespace patch](http://laughingmeme.org/~kellan/xmlrss_namespace_patch) is a relatively simple fix for that assumption.

**Note:** for some reason search.cpan.org is showing XML::RSS 0.96 as the most recently version, it isn’t, and I have not tested if the patch applies cleanly to it.

### Todo

Depending on how grim things get, other features which XML::RSS might sprout would be: - support for attribute based tags, like [&lt;admin:GeneratorAgent&gt;](http://web.resource.org/rss/1.0/modules/admin/), and [mod\_link](http://purl.org/rss/1.0/modules/link/)
- a cleaner implementation of my earlier patched [XML::RSS with XML encoded output](http://protest.net/~kellan/XML-RSS-patched.tar.gz).

### On Broken Windows

[Broken windows](http://c2.com/cgi/wiki?FixBrokenWindows) was a term I stumbled upon over at the [Portland Pattern repository](< http://c2.com/cgi/wiki?PortlandPatternRepository>). Its a pattern (an anti-pattern really) describing how buggy code, accumulates more bugs as the perception of of the code as being buggy lowers peoples’ standards. Last night Jasmine and I went and watched an excellent film, [Boom: the Sound of Eviction](http://www.boomthemovie.org/) at the equally excellent Milky Way, in Jamacia Plains.

I was horrified to find the [Manhattan Policy Institute](http://www.manhattan-institute.org/), the ultra right-wing fiscal conservatives that provided the intellectual framework and moral justification for Giuliani’s rein of terror, taking credit for popularizing the term. I’m not sure if I can go on using it, at least without washing my hands.