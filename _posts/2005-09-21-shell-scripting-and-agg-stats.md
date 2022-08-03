---
id: 1136
title: 'Shell Scripting and Agg Stats'
date: '2005-09-21T16:22:50+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1136'
permalink: /2005/09/21/shell-scripting-and-agg-stats/
typo_id:
    - '1134'
mt_id:
    - '3116'
link_related:
    - ''
raw_content:
    - "Been a while since I dug into my aggregator stats (intrigued by FeedBurner mentioning their [tracking 2000 aggregators](http://www.burningdoor.com/feedburner/archives/001422.html)), and while I\\'ve got [my Perl script](http://laughingmeme.org/code/parse_apache.pl), but I was alarmed to realize that I had forgotten the shell for doing the equivalent.  \n\nSo killing time waiting for J I re-created it.  Assumes you\\'re using Apache\\'s \\\"full\\\" log format (and that your feed is \\\"index.rdf\\\")\n\n    sudo grep \\'/index.rdf\\' access.log | cut --delimiter=\\\\\\\" -f6,1 --output-delimiter=\\\"=\\\" | \n    sed \\'s/ - - \\\[[^=]*//\\' | sort | uniq | cut --delimiter=\\\"=\\\" -f2 | sort | uniq -c | sort -n\n\nReturns a count of unique IPs per User-Agent.  Tack on a little awk to get aggregate counts.\n\n    | awk \\'{sum += $1; print sum}\\'\n\nOf course folks like [Bloglines](http://bloglines.com), [Rojo](http://rojo.com), Yahoo FeedSeeker, Feedster, and FeedLounge (among others I\\'m sure) are rolling up the user counts. Of course FeedLounge and FeedSeeker are counted multiple times as they add time sensitive info to their User-Agent (that has got to be against some best practices!), and Bloglines comes from a couple of different IPs.\n\nInterestingly, Google Desktop is showing up as generating not only the highest number of hits, but the highest number of 200s."
tags:
    - aggregation
    - hack
    - rss
    - shell
    - stats
    - unix
---

Been a while since I dug into my aggregator stats (intrigued by FeedBurner mentioning their [tracking 2000 aggregators](http://www.burningdoor.com/feedburner/archives/001422.html)), and while I’ve got [my Perl script](http://laughingmeme.org/code/parse\_apache.pl), but I was alarmed to realize that I had forgotten the shell for doing the equivalent.

So killing time waiting for J I re-created it. Assumes you’re using Apache’s “full” log format (and that your feed is “index.rdf”)

```
sudo grep '/index.rdf' access.log | cut --delimiter=\" -f6,1 --output-delimiter="=" | 
sed 's/ - - [[^=]*//' | sort | uniq | cut --delimiter="=" -f2 | sort | uniq -c | sort -n

```

Returns a count of unique IPs per User-Agent. Tack on a little awk to get aggregate counts.

```
| awk '{sum += $1; print sum}'

```

Of course folks like [Bloglines](http://bloglines.com), [Rojo](http://rojo.com), Yahoo FeedSeeker, Feedster, and FeedLounge (among others I’m sure) are rolling up the user counts. Of course FeedLounge and FeedSeeker are counted multiple times as they add time sensitive info to their User-Agent (that has got to be against some best practices!), and Bloglines comes from a couple of different IPs.

Interestingly, Google Desktop is showing up as generating not only the highest number of hits, but the highest number of 200s.