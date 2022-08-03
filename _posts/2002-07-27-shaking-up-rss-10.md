---
id: 90
title: 'Shaking up RSS 1.0'
date: '2002-07-27T14:57:35+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=90'
permalink: /2002/07/27/shaking-up-rss-10/
typo_id:
    - '88'
mt_id:
    - '98'
link_related:
    - ''
raw_content:
    - "<p>\r\n<a href=\\\"http://peerfear.org\\\">Kevin Burton</a> posted two compelling broadsides to the RSS 1.0 orthodoxy last week.\r\n</p>\r\n<p>\r\n<h3><a href=\\\"http://www.peerfear.org/rss/permalink/1027551382.shtml\\\">To RDF or not to RDF</a></h3> \r\nBurton revisits some of RSS 1.0\\'s earliest design decisions\r\n regarding RDF, and the ugliest they have left in their wake.  \r\n<a href=\\\"http://groups.yahoo.com/group/rss-dev/files/Modules/Proposed/mod_content.html\\\">RSS 1.0 content module</a> is where most people encounter the raw, uncut RDF philosophy of RSS 1.0, and most people leave reeling, often gagging, asking themselves how such a simple question - \\\"How do I include more then just headlines in my RSS\\\", a question that hundreds have asked before - could have such an ugly answer.  What is a Seq?  What is Bag?  What does li mean here?  And why are you making me learn all of this!?!?\r\n</p>\r\n<p>\r\nI think those are legitimate questions.  RDF is compelling, and cool, but its also rarely used, and accessible only to a small elite crust.  Perhaps designing a format to maximize \r\nconvenience for wizards isn\\'t the right answer?  I personally have been procrastinating for months on adding content to the \r\n<a href=\\\"http://www.indymedia.org/syndication.php3\\\">IMC RSS feeds</a>, because I just don\\'t want to grapple with it.  And once I\\'m done, I know there will be a huge round of education to explain all the new features to people.\r\n</p>\r\n<p>\r\nBurton\\'s solution though, is not to throw out the out the RDF baby, with the complexity bath water.  He proposes a hybrid solution, where RSS modules ship with an <b>XSLT schema capable of transforming our new XML modules, into compliant RDF ones.</b>  Thats brilliant.\r\n</p>\r\n<p>\r\n<h3><a href=\\\"http://www.peerfear.org/rss/permalink/1027556725.shtml\\\">mod_link - RSS 1.0 linking module</a></h3>\r\nThen, as if to prove, no hard feelings against RDF, mod_link pays homage to the amazing descriptive power of a directed link.   Perhaps more revolutionary is the heavy use of attributes, traditionally avoided in RSS modules.  And Burton proves that they can look very clean indeed.  Sure it might break you PHP, regex based, screen scraping RSS parser, but, you wouldn\\'t be foolish enough to use one of these anyways, would you?\r\n</p>\r\n<p>\r\n<h3>So far, so good</h3>\r\nAnd it bears mentioning, that the high priest of said RSS 1.0 orthodoxy, are responding quite well, only recently heresiarch themselves.  This is why I love the RSS-DEV community.\r\n</p>"
---

[Kevin Burton](http://peerfear.org) posted two compelling broadsides to the RSS 1.0 orthodoxy last week.

### [To RDF or not to RDF](http://www.peerfear.org/rss/permalink/1027551382.shtml)

 Burton revisits some of RSS 1.0’s earliest design decisions regarding RDF, and the ugliest they have left in their wake.  
[RSS 1.0 content module](http://groups.yahoo.com/group/rss-dev/files/Modules/Proposed/mod_content.html) is where most people encounter the raw, uncut RDF philosophy of RSS 1.0, and most people leave reeling, often gagging, asking themselves how such a simple question – “How do I include more then just headlines in my RSS”, a question that hundreds have asked before – could have such an ugly answer. What is a Seq? What is Bag? What does li mean here? And why are you making me learn all of this!?!? I think those are legitimate questions. RDF is compelling, and cool, but its also rarely used, and accessible only to a small elite crust. Perhaps designing a format to maximize convenience for wizards isn’t the right answer? I personally have been procrastinating for months on adding content to the [IMC RSS feeds](http://www.indymedia.org/syndication.php3), because I just don’t want to grapple with it. And once I’m done, I know there will be a huge round of education to explain all the new features to people.

Burton’s solution though, is not to throw out the out the RDF baby, with the complexity bath water. He proposes a hybrid solution, where RSS modules ship with an **XSLT schema capable of transforming our new XML modules, into compliant RDF ones.** Thats brilliant.

### [mod*link – RSS 1.0 linking module*](http://www.peerfear.org/rss/permalink/1027556725.shtml)

Then, as if to prove, no hard feelings against RDF, modlink pays homage to the amazing descriptive power of a directed link. Perhaps more revolutionary is the heavy use of attributes, traditionally avoided in RSS modules. And Burton proves that they can look very clean indeed. Sure it might break you PHP, regex based, screen scraping RSS parser, but, you wouldn’t be foolish enough to use one of these anyways, would you? ### So far, so good

And it bears mentioning, that the high priest of said RSS 1.0 orthodoxy, are responding quite well, only recently heresiarch themselves. This is why I love the RSS-DEV community. 