---
id: 775
title: 'RSS Aggregator Popularity'
date: '2004-03-20T21:54:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=775'
permalink: /2004/03/20/rss-aggregator-popularity/
typo_id:
    - '773'
mt_id:
    - '1875'
link_related:
    - ''
raw_content:
    - "<p>\r\n9 months ago I ran a report on which of the RSS aggregators which hit LaughingMeme were <a href=\\\"http://laughingmeme.org/archives/000969.html\\\">most popular by total requests</a>.  Using some Perl, some awk, some cool shell-fu <a href=\\\"http://minutillo.com/steve/weblog/\\\">Steve</a> sent me last time, and <a href=\\\"http://www.hebig.org/\\\">Haiko Hebig\\'s</a> elegant CSS I whipped up some new graphs, most popular RSS aggregators by unique IP.  These stats are for the last month of traffic on LaughingMeme, for each of the RSS feeds associated with this blog.\r\n</p>\n<p>\r\nThe first graph is the 20 most popular RSS aggregators regardless of version.  The second graph treats each version of the aggregators as distinct.\r\n</p>\r\n<p>\r\nCouple of things to note.\r\n</p>\r\n<p>\r\n1.  NewNewsWire still <b>dominates</b>, after all this time, not only in popularity, but also in diversity with a total of 18 distinct versions (counting Lite, and paid as distinct) observed.\r\n</p>\r\n<p>\r\n2.  In the first graph Bloglines is listed twice.  The first number is treating all the subscribers for each of the 4 feeds I surveyed as unique, the second number is assuming that the subscribers for the less popular feeds are a subset of people who subscribe to the main feed.  The real number lies somewhere in between (as I think a large number of people only subscribe to MLPs, or to LM)\r\n</p>\r\n<style>\r\n.bargraphcontainer {\r\nfont-family:verdana,arial,helvetica,sans-serif;\r\nfont-size:9px;\r\nborder-left:1px solid #555;\r\nwidth:95%;\r\npadding:2px 0 8px 0;\r\nmargin:0 0 15px 0;\r\n}\r\n\r\n.bargraph {\r\ncolor:#555;\r\nbackground-color:transparent;\r\ntext-align:right;\r\npadding:0 1px;\r\nmargin:0 0 0 -1px;\r\nborder:1px solid #555;\r\nbackground-color:#ccc;\r\n}\r\n\r\n.bartitle {\r\npadding:4px 0 0 2px;\r\n}\r\n</style>\r\n<div class=\\\"bargraphcontainer\\\">\r\nMost popular RSS aggregators (all versions) by unique ip\r\n<!--#include virtual=\\\"stats.topaggs.allfeeds.20040318.htmlf\\\" --> \r\n</div>\r\n\r\n<div class=\\\"bargraphcontainer\\\">\r\nRSS aggregators by unique ip\r\n<!--# include virtual=\\\"stats.allfeeds.20040318.htmlf\\\"  -->\r\n</div>"
tags:
    - aggregation
    - rss
    - stats
---

9 months ago I ran a report on which of the RSS aggregators which hit LaughingMeme were [most popular by total requests](http://laughingmeme.org/archives/000969.html). Using some Perl, some awk, some cool shell-fu [Steve](http://minutillo.com/steve/weblog/) sent me last time, and [Haiko Hebig’s](http://www.hebig.org/) elegant CSS I whipped up some new graphs, most popular RSS aggregators by unique IP. These stats are for the last month of traffic on LaughingMeme, for each of the RSS feeds associated with this blog.

The first graph is the 20 most popular RSS aggregators regardless of version. The second graph treats each version of the aggregators as distinct.

Couple of things to note.

1\. NewNewsWire still **dominates**, after all this time, not only in popularity, but also in diversity with a total of 18 distinct versions (counting Lite, and paid as distinct) observed.

2\. In the first graph Bloglines is listed twice. The first number is treating all the subscribers for each of the 4 feeds I surveyed as unique, the second number is assuming that the subscribers for the less popular feeds are a subset of people who subscribe to the main feed. The real number lies somewhere in between (as I think a large number of people only subscribe to MLPs, or to LM)

<style>
.bargraphcontainer {
font-family:verdana,arial,helvetica,sans-serif;
font-size:9px;
border-left:1px solid #555;
width:95%;
padding:2px 0 8px 0;
margin:0 0 15px 0;
}

<p>.bargraph {
color:#555;
background-color:transparent;
text-align:right;
padding:0 1px;
margin:0 0 0 -1px;
border:1px solid #555;
background-color:#ccc;
}

<p>.bartitle {
padding:4px 0 0 2px;
}
</style><div class="bargraphcontainer">Most popular RSS aggregators (all versions) by unique ip  </div><div class="bargraphcontainer">RSS aggregators by unique ip </div>