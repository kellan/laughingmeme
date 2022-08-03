---
id: 202
title: 'RSS autodiscovery bookmarklet'
date: '2002-11-04T00:10:06+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=202'
permalink: /2002/11/04/rss-autodiscovery-bookmarklet/
typo_id:
    - '200'
mt_id:
    - '210'
link_related:
    - ''
raw_content:
    - "<p>\n<a                href=\\\"http://dmoz.org/Reference/Libraries/Library_and_Information_Science/Technical_Services/Cataloguing/Metadata/RDF/Applications/RSS/Autodiscovery/\\\">\nRSS auto-discovery</a> \nis a neat idea.  \nShortly after <a href=\\\"http://diveintomark.org/archives/2002/06/02.html#important_change_to_the_link_tag\\\">the original spec was published</a> a profusion of bookmarklets to auto-detect an RSS feed, and subscribe you to this or that aggregator service flourished.\n</p>\n<p>\nHowever, this evening, as I collected urls for my own aggregator service, I\\'m unable to find a bookmarklet that simply finds a site\\'s RSS feed, without trying to lock you into a particular service.  So, standing on the backs of giants, an RSS auto-detect bookmarklets, that merely returns the url of the RSS feed.  As usual, drag the below link to your link toolbar to install.\n</p>\n<p align=center>\n<a href=\\\"javascript:void(d=document); void(el=d.getElementsByTagName(\\'link\\')); for(i=0;i<el.length;i++){ if( el[i].getAttribute(\\'rel\\').indexOf(\\'alternate\\')!=-1 && (el[i].getAttribute(\\'type\\').indexOf(\\'application/rss+xml\\')!=-1 || el[i].getAttribute(\\'type\\').indexOf(\\'text/xml\\')!=-1)){ void(prompt(\\'RSS:\\', el[i].getAttribute(\\'href\\')))}}\n\\\">Detect RSS</a>\n</p>\n<p>\nIt supports both the old and new formats of the auto-detect standard the third website I tried (<a href=\\\"http://boingboing.net\\\">boingboing</a>) was still using the earlier spec.\n</p>"
---

[RSS auto-discovery](http://dmoz.org/Reference/Libraries/Library_and_Information_Science/Technical_Services/Cataloguing/Metadata/RDF/Applications/RSS/Autodiscovery/) is a neat idea. Shortly after [the original spec was published](http://diveintomark.org/archives/2002/06/02.html#important_change_to_the_link_tag) a profusion of bookmarklets to auto-detect an RSS feed, and subscribe you to this or that aggregator service flourished.

However, this evening, as I collected urls for my own aggregator service, I’m unable to find a bookmarklet that simply finds a site’s RSS feed, without trying to lock you into a particular service. So, standing on the backs of giants, an RSS auto-detect bookmarklets, that merely returns the url of the RSS feed. As usual, drag the below link to your link toolbar to install.

[Detect RSS](<javascript:void(d=document); void(el=d.getElementsByTagName('link')); for(i=0;i<el.length;i++){ if( el[i].getAttribute('rel').indexOf('alternate')!=-1 && (el[i].getAttribute('type').indexOf('application/rss+xml')!=-1 || el[i].getAttribute('type').indexOf('text/xml')!=-1)){ void(prompt('RSS:', el[i].getAttribute('href')))}}
\>)

It supports both the old and new formats of the auto-detect standard the third website I tried ([boingboing](http://boingboing.net)) was still using the earlier spec.