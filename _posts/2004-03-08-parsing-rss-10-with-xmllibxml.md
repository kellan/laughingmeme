---
id: 763
title: 'Parsing RSS 1.0 with XML::LibXML'
date: '2004-03-08T15:06:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=763'
permalink: /2004/03/08/parsing-rss-10-with-xmllibxml/
typo_id:
    - '761'
mt_id:
    - '1822'
link_related:
    - ''
raw_content:
    - "I needed an RSS parser that could handle multiple <a href=\\\"http://purl.org/rss/1.0/modules/dc/\\\">dc:subject</a> fields for a project.  And I\\'m starting to think about what the next generation of <a href=\\\"http://search.cpan.org/dist/XML-RSS/\\\">XML::RSS</a> should look like. (the current thinking is to break it into separate parser and write elements, and hopefully delegate all the hard work to great modules which have developed since XML::RSS was originally written.  Also I\\'m not convinced that parsing the RSS to a data structure vs. an object is still a good design decision.  Hopefully discussions of this will happen on <a href=\\\"http://lists.sourceforge.net/lists/listinfo/perl-rss-workers\\\">Perl RSS Workers</a> list.)\nI started to hack out something quick using <a href=\\\"http://search.cpan.org/dist/XML-LibXML/\\\">XML::LibXML</a>.  A couple of hours of work turned out something that was described as \\\"kind of like XML::Atom, but, um, with bugs.\\\"  So I spent the flight Seattle -> Oakland copying <a href=\\\"http://search.cpan.org/dist/XML-Atom\\\">XML::Atom::Feed</a>, and I\\'ve got the first hints of a RSS 1.0 parser based on <a href=\\\"http://www.xmlsoft.org/\\\">libxml2</a>.  I <b>don\\'t</b> like the way I\\'m handling namespaces, it was just quick and easy, but writing this has given me a few ideas.  I\\'ll write about them soon. (though maybe not until the flight back to Seattle next weekend)\r\n\r\nIn the meantime, <a href=\\\"/RSS-Feed-0.001a.tar.gz\\\">RSS::Feed 0.001a</a>."
tags:
    - perl
    - rss
---

I needed an RSS parser that could handle multiple [dc:subject](http://purl.org/rss/1.0/modules/dc/) fields for a project. And I’m starting to think about what the next generation of [XML::RSS](http://search.cpan.org/dist/XML-RSS/) should look like. (the current thinking is to break it into separate parser and write elements, and hopefully delegate all the hard work to great modules which have developed since XML::RSS was originally written. Also I’m not convinced that parsing the RSS to a data structure vs. an object is still a good design decision. Hopefully discussions of this will happen on [Perl RSS Workers](http://lists.sourceforge.net/lists/listinfo/perl-rss-workers) list.) I started to hack out something quick using [XML::LibXML](http://search.cpan.org/dist/XML-LibXML/). A couple of hours of work turned out something that was described as “kind of like XML::Atom, but, um, with bugs.” So I spent the flight Seattle -&gt; Oakland copying [XML::Atom::Feed](http://search.cpan.org/dist/XML-Atom), and I’ve got the first hints of a RSS 1.0 parser based on [libxml2](http://www.xmlsoft.org/). I **don’t** like the way I’m handling namespaces, it was just quick and easy, but writing this has given me a few ideas. I’ll write about them soon. (though maybe not until the flight back to Seattle next weekend)

In the meantime, [RSS::Feed 0.001a](/RSS-Feed-0.001a.tar.gz).