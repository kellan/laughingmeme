---
id: 114
title: 'IMC Global News, and Forking XML::RSS'
date: '2002-08-12T07:08:17+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=114'
permalink: /2002/08/12/imc-global-news-and-forking-xmlrss/
typo_id:
    - '112'
mt_id:
    - '122'
link_related:
    - ''
raw_content:
    - "<p>\r\nAbout 10 months ago, Indymedia started generating RSS feeds for its features column - a collection of stories that (hopefully) served as a hilight to the over whelming, and often spotty, open publishing newswire.\r\n</p>\r\n<p>\r\n6 months ago, we started aggregating those feeds into the IMC Global Newswire, which you can see on the front page, bottom right, on <a href=\\\"http://www.indymedia.org\\\">Indymedia.org</a>\r\n</p>\r\n<p>\r\nYesterday, I <b>finally</b> made available a <a href=\\\"http://www.indymedia.org/global.1-0.rss\\\">RSS feed for the Indymedia Global Newswire</a>, the cream if you will, from the 70+ sites publishing all over the world.\r\n</p>\r\n<p>\r\n<h3>Forking XML::RSS</h3>  \r\nWhy did it take so long?  Well, honestly, mostly life got in the way.  But for the last few weeks, what has been stopping me is a <b>bug</b> in XML::RSS \r\n</p>\r\n<p>\r\nXML::RSS is a great module, Perl is blessed to have such a good tool for working with RSS feeds, it not only parses all 3 versions of RSS into a simple, and easy to use datastructure (a very idiomatically Perl solution), but is capable of outputting RSS as well (rare is the library that does this) and all 3 versions. (Indymedia makes available RSS feeds as <a href=\\\"http://www.indymedia.org/features.0-9.rdf\\\">RSS .9</a>, <a href=\\\"http://www.indymedia.org/features.0-91.rdf\\\">RSS .91</a>, and <a href=\\\"http://www.indymedia.org/features.1-0.rdf\\\">RSS 1.0</a>)\r\n</p>\r\n<p>\r\n<h3>A Failure to Encode</h3>\r\nHowever, there is a fatal flaw with this facility.  XML::RSS automatically decodes HTML entties where it encouters them (thanks, I think to its underlying use of XML::Parser), however, its <b>does not encode entities on output!</b>  Meaning, if you take your parsed XML::RSS object, and try to create new RSS from it, and one url contains an <code>&amp;</code>, then you\\'ve got invalid XML.\r\n</p>\r\n<p>\r\nSo I\\'ve made a version of XML::RSS that does intelligent encoding.  Right now you can\\'t turn it off, though I\\'m not sure why you want to turn on the option to make invalid XML.  It uses a simple module I called XML::Encode which is really just a wrapper for some code from \r\n<a href=\\\"http://use.perl.org/~Matts/journal\\\">Matt Sergeant\\'s</a> script <a href=\\\" http://axkit.org/download/rssmirror.pl\\\">rssmirror.pl</a>.\r\n</p>\r\n<p>\r\nI don\\'t think XML::Encode is really CPAN worthy, and I\\'m not sure the next step on XML::RSS as the maintainers haven\\'t shown interest.  But I\\'ll make both available here, and feel free to contact me if you\\'re interested in getting this code.\r\n</p>"
---

About 10 months ago, Indymedia started generating RSS feeds for its features column – a collection of stories that (hopefully) served as a hilight to the over whelming, and often spotty, open publishing newswire.

6 months ago, we started aggregating those feeds into the IMC Global Newswire, which you can see on the front page, bottom right, on [Indymedia.org](http://www.indymedia.org)

Yesterday, I **finally** made available a [RSS feed for the Indymedia Global Newswire](http://www.indymedia.org/global.1-0.rss), the cream if you will, from the 70+ sites publishing all over the world.

### Forking XML::RSS

  
Why did it take so long? Well, honestly, mostly life got in the way. But for the last few weeks, what has been stopping me is a **bug** in XML::RSS XML::RSS is a great module, Perl is blessed to have such a good tool for working with RSS feeds, it not only parses all 3 versions of RSS into a simple, and easy to use datastructure (a very idiomatically Perl solution), but is capable of outputting RSS as well (rare is the library that does this) and all 3 versions. (Indymedia makes available RSS feeds as [RSS .9](http://www.indymedia.org/features.0-9.rdf), [RSS .91](http://www.indymedia.org/features.0-91.rdf), and [RSS 1.0](http://www.indymedia.org/features.1-0.rdf))

### A Failure to Encode

However, there is a fatal flaw with this facility. XML::RSS automatically decodes HTML entties where it encouters them (thanks, I think to its underlying use of XML::Parser), however, its **does not encode entities on output!** Meaning, if you take your parsed XML::RSS object, and try to create new RSS from it, and one url contains an `&`, then you’ve got invalid XML. So I’ve made a version of XML::RSS that does intelligent encoding. Right now you can’t turn it off, though I’m not sure why you want to turn on the option to make invalid XML. It uses a simple module I called XML::Encode which is really just a wrapper for some code from [Matt Sergeant’s](http://use.perl.org/~Matts/journal) script [rssmirror.pl](< http://axkit.org/download/rssmirror.pl>).

I don’t think XML::Encode is really CPAN worthy, and I’m not sure the next step on XML::RSS as the maintainers haven’t shown interest. But I’ll make both available here, and feel free to contact me if you’re interested in getting this code.