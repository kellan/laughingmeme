---
id: 347
title: 'Feed Not Found'
date: '2003-03-02T15:30:22+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=347'
permalink: /2003/03/02/feed-not-found/
typo_id:
    - '345'
mt_id:
    - '482'
link_related:
    - ''
raw_content:
    - "<p>\r\n<h3>A Pretty Puzzle with Straw and rssfinder</h3>\r\nOutside its pouring rain.  I like this.  This what winter is like at home. \r\nHowever I\\'m still not inclined to go out in it when the sidewalks are torrential\r\nrivers.  So I spent the day crossing minor todos off the list while avoid thinking of the big\r\nones.  One such item was adding &lt;content:encoded&gt;&lt;/content:encoded&gt; data to the IMC feeds.  Mostly\r\nfor my own selfish reasons of being able to read the feeds from Straw.  And in\r\ndoing so triggered a minor python exploration through the guts of \r\n<a href=\\\"http://www.nongnu.org/straw/\\\">Straw</a>, <a href=\\\"http://diveintomark.org/projects/rss_finder/index.html\\\">rssfinder</a>, and rss validation.\r\n</p>\n<p>\r\n<h3>Feed Not Found?</h3>\r\nAdding the &lt;content:encoded&gt; section was as simple as expected.  Tested the new feeds to\r\nmake sure \r\n<a href=\\\"http://search.cpan.org/dist/XML-RSS/\\\">XML::RSS</a> could parse them, gave them a once over, and them went to test how they looked in Straw.\r\n<ol>\r\n<li> clicked Add a New Feed\r\n<li> entered the URL for the feed (http://localhost/features_test.rdf)\r\n<li> clicked find\r\n<li> waited\r\n</ol>\r\nEventually Straw told me \\\"No feed was found at specified location\\\".  This\r\npuzzled me mightily.  I checked that the feed was viewable from within a\r\nbrowser, tried a couple of different name, tried copying it to a couple of\r\ndifferent server, made sure it validated, all to no avail.  I even added a few\r\nother feeds to see if Straw would add them.  It did, just not mine.\r\n</p>\r\n<p>\r\n<h3>Digging:  SGMLParseError: expected name token</h3>\r\n\r\nNothing like totally weird behaviour to make you go digging.  I spent a little\r\nwhile cruising around the Straw source, and eventually decided that my problem\r\nlay in SubscribeDialog.py, in particular with the line:\r\n\r\n<pre class=\\\"code\\\">\r\nfeeds = straw.rssfinder.getFeeds(site)\r\n</pre>\r\n\r\nWhen I removed this from the try/except block, I got a weird SGMLParseError. \r\nWhy the hell was Straw trying to use an SGML parser merely to confirm the\r\nexistence of my RSS file.\r\n</p>\r\n<p>\r\n<h3>When is RSS not RSS?</h3>\r\n\r\nSo while I was scratching my head, I realized that rssfinder must be trying to\r\nbe too smart, trying to do RSS auto-detect or something.  But why?  So I went\r\nlooking through the rssfinder code. And found\r\n\r\n<pre class=\\\"code\\\">\r\ndef isRSS(data):\r\n    data = data.lower()\r\n    if data.count(\\'&lt;html\\'): return 0\r\n    return data.count(\\'&lt;rss\\') + data.count(\\'&lt;rdf\\')\r\n</pre>\r\n\r\nAnd while I thought the <code>count() + count()</code> idiom was pretty cool, my debugging sense also told me here was my problem.   A quick grep\r\nover the test RSS feed turned up an entry testing an earlier bug fix in the IMC features code when people\r\ninsisted on wrapping new features in \\\"&lt;html&gt;....&lt;/html&gt;\\\".  And that was indeed\r\nthe problem.  rssfinder was finding my \\\"&lt;html&gt;\\\" tag (buried in a CDATA section)\r\nand deciding that this must be an HTML file, and kicking over to smart mode.\r\n</p>\r\n<p>\r\n<h3>In Conclusion</h3>\r\n\r\nI\\'m not sure what my conculsion is.  Haven\\'t decided if this is a bug in\r\nrssfinder, or if testing for an \\\"&lt;html&gt;\\\" tag is legitimate heurisitic and my feeds were badly formed, or if the\r\nproblem was in Straw\\'s reporting of the condition.  Just thought I would document it, in case someone else has the same problem someday.\r\n</p>"
---

### A Pretty Puzzle with Straw and rssfinder

Outside its pouring rain. I like this. This what winter is like at home. However I’m still not inclined to go out in it when the sidewalks are torrential rivers. So I spent the day crossing minor todos off the list while avoid thinking of the big ones. One such item was adding &lt;content:encoded&gt;&lt;/content:encoded&gt; data to the IMC feeds. Mostly for my own selfish reasons of being able to read the feeds from Straw. And in doing so triggered a minor python exploration through the guts of [Straw](http://www.nongnu.org/straw/), [rssfinder](http://diveintomark.org/projects/rss_finder/index.html), and rss validation. ### Feed Not Found?

Adding the &lt;content:encoded&gt; section was as simple as expected. Tested the new feeds to make sure [XML::RSS](http://search.cpan.org/dist/XML-RSS/) could parse them, gave them a once over, and them went to test how they looked in Straw. 1. clicked Add a New Feed
2. entered the URL for the feed (http://localhost/features\_test.rdf)
3. clicked find
4. waited

Eventually Straw told me “No feed was found at specified location”. This puzzled me mightily. I checked that the feed was viewable from within a browser, tried a couple of different name, tried copying it to a couple of different server, made sure it validated, all to no avail. I even added a few other feeds to see if Straw would add them. It did, just not mine. ### Digging: SGMLParseError: expected name token

Nothing like totally weird behaviour to make you go digging. I spent a little while cruising around the Straw source, and eventually decided that my problem lay in SubscribeDialog.py, in particular with the line:

```
<pre class="code">
feeds = straw.rssfinder.getFeeds(site)
```

When I removed this from the try/except block, I got a weird SGMLParseError. Why the hell was Straw trying to use an SGML parser merely to confirm the existence of my RSS file.

### When is RSS not RSS?

So while I was scratching my head, I realized that rssfinder must be trying to be too smart, trying to do RSS auto-detect or something. But why? So I went looking through the rssfinder code. And found

```
<pre class="code">
def isRSS(data):
    data = data.lower()
    if data.count('<html'): return 0
    return data.count('<rss') + data.count('<rdf')
```

And while I thought the `count() + count()` idiom was pretty cool, my debugging sense also told me here was my problem. A quick grep over the test RSS feed turned up an entry testing an earlier bug fix in the IMC features code when people insisted on wrapping new features in “&lt;html&gt;….&lt;/html&gt;”. And that was indeed the problem. rssfinder was finding my “&lt;html&gt;” tag (buried in a CDATA section) and deciding that this must be an HTML file, and kicking over to smart mode.

### In Conclusion

I’m not sure what my conculsion is. Haven’t decided if this is a bug in rssfinder, or if testing for an “&lt;html&gt;” tag is legitimate heurisitic and my feeds were badly formed, or if the problem was in Straw’s reporting of the condition. Just thought I would document it, in case someone else has the same problem someday.