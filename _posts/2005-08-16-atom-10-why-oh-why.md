---
id: 1112
title: 'Atom 1.0: Why Oh Why?'
date: '2005-08-16T08:48:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1112'
permalink: /2005/08/16/atom-10-why-oh-why/
typo_id:
    - '1110'
mt_id:
    - '3046'
link_related:
    - ''
raw_content:
    - "Spent a little time with the [Atom 1.0 spec](http://www.ietf.org/internet-drafts/draft-ietf-atompub-format-10.txt) last night on the plane, and I\\'m coming to the conclusion that it was invented for the sole purpose of making my life difficult. (or perhaps less ego-centrically, making writing feed parsers more challenging)\r\n\r\nI don\\'t really have the expertise of having actually upgraded a parser to add support for this entirely new, utterly backwards incompatible to a degree that makes the so called [7 incompatible versions of RSS](http://diveintomark.org/archives/2004/02/04/incompatible-rss) look like a fond memory, but a handful of issues that are going to make my life unpleasant jumped out at me.  (Maybe I\\'ll update this list over time)\n### Arbitrary Renaming\r\n\r\nIs \\\"published\\\" really that much better then \\\"issued\\\"?  Sure its a small change, but there are literally dozens of seemingly arbitrary word smithing, that makes maintain both a Atom 0.3 and Atom 1.0 parsers in parallel annoyingly cluttered.\r\n\r\n### updated (nee modified) now under defined\r\n\r\nIn Atom 0.3 the \\\"modified\\\" element was strongly defined, in that it was required to updated with each edit.  This is no longer true.  And while we\\'ve all spent the last 5 years developing expertise trying to guess whether an element has been updated with weird hashing/diffing techniques, it would have been nice to start forgetting about such stuff.\r\n\r\n### I Miss version\r\n\r\nSure a namespace is \\\"proper\\\" way to do things, but I miss the pragmatism of the version attribute. (what little pragmatism survived to find its way into Atom 0.3 seems to have been beaten out of Atom 1.0)\r\n\r\n### dc:subject\r\n\r\nDublin Core is a noble piece of work.  At its heart it is trying to formally define some basic building blocks which can be universal truths in a digital age.  Its like running code version of Semantic Web.  So why is the use of dc:subject deprecated in favor of an overly complicated \\\"category\\\" element which, while being similar to the RSS 2.0 category element, has a different for the sake of being different feel to it.\r\n\r\nThe Atom \\\"category\\\" element\r\n\r\n    <category term=\\'MSFT\\' />\r\n    <category term=\\'MSFT\\' scheme=\\'http://www.fool.com/cusips\\' />\r\n\r\nvs. RSS 2.0\r\n\r\n    <category>MSFT</category>\r\n    <category domain=\\\"http://www.fool.com/cusips\\\">MSFT</category>\r\n\r\nNever thought I\\'d call an RSS 2.0 design decision[ clean and well thought out, but its all relative.\r\n\r\n### Content by Reference \r\n\r\nOne of Atom\\'s innovations is introducing a standard \\\"link\\\" element, allowing it to leverage and become a first class citizen of this Web thing which seems so popular.  (I\\'ve [written about this before](http://laughingmeme.org/archives/002071.html), and mourned Kevin Burton\\'s mod_link)\r\n\r\nSo why does the Atom \\\"content\\\" element now allowing for \\\"content by reference\\\", with the \\\"src\\\" attribute?  Honestly, this seems like a clear case of confusing duplication.  <acronym title=\\\"There is more then one way to do it\\\">TIMTOWTDI</acronym> is one the key factors people point to when claiming that Perl is an ugly, under designed, confusing mess.\r\n\r\nFor example, are there now [two, valid but disparate ways of encoding podcasts in Atom?](http://www.25hoursaday.com/weblog/PermaLink.aspx?guid=48888cc2-0c23-4621-b07c-cef35df8b563)\r\n\r\nAnd should a toolkit parsing Atom 1.0 automagically deference the URL defined in \\\"src\\\" attribute?  I mean, if I\\'m parsing a feed I expect to able to display the contents of the content element.  And if so, are we back to those wonderful bygone days (cough \\\"rss2:enclosure\\\" ) of baking dangerous required behaviour into our processing model?  (speaking of process model, shouldn\\'t the [Atom 1.0 processing model](http://atompub.org/2005/07/11/draft-ietf-atompub-format-10.html#rfc.section.4.1.3.3) address this?)"
tags:
    - atom
    - design
    - rant
    - rss
---

Spent a little time with the \[Atom 1.0 spec\](http://www.ietf.org/internet-drafts/draft-ietf-atompub-format-10.txt) last night on the plane, and I’m coming to the conclusion that it was invented for the sole purpose of making my life difficult. (or perhaps less ego-centrically, making writing feed parsers more challenging)

I don’t really have the expertise of having actually upgraded a parser to add support for this entirely new, utterly backwards incompatible to a degree that makes the so called \[7 incompatible versions of RSS\](http://diveintomark.org/archives/2004/02/04/incompatible-rss) look like a fond memory, but a handful of issues that are going to make my life unpleasant jumped out at me. (Maybe I’ll update this list over time)

### Arbitrary Renaming

Is “published” really that much better then “issued”? Sure its a small change, but there are literally dozens of seemingly arbitrary word smithing, that makes maintain both a Atom 0.3 and Atom 1.0 parsers in parallel annoyingly cluttered.

### updated (nee modified) now under defined

In Atom 0.3 the “modified” element was strongly defined, in that it was required to updated with each edit. This is no longer true. And while we’ve all spent the last 5 years developing expertise trying to guess whether an element has been updated with weird hashing/diffing techniques, it would have been nice to start forgetting about such stuff.

### I Miss version

Sure a namespace is “proper” way to do things, but I miss the pragmatism of the version attribute. (what little pragmatism survived to find its way into Atom 0.3 seems to have been beaten out of Atom 1.0)

### dc:subject

Dublin Core is a noble piece of work. At its heart it is trying to formally define some basic building blocks which can be universal truths in a digital age. Its like running code version of Semantic Web. So why is the use of dc:subject deprecated in favor of an overly complicated “category” element which, while being similar to the RSS 2.0 category element, has a different for the sake of being different feel to it.

The Atom “category” element

```
<category term='MSFT' />
<category term='MSFT' scheme='http://www.fool.com/cusips' />

```

vs. RSS 2.0

```
<category>MSFT</category>
<category domain="http://www.fool.com/cusips">MSFT</category>

```

Never thought I’d call an RSS 2.0 design decision\[ clean and well thought out, but its all relative.

### Content by Reference

One of Atom’s innovations is introducing a standard “link” element, allowing it to leverage and become a first class citizen of this Web thing which seems so popular. (I’ve \[written about this before\](http://laughingmeme.org/archives/002071.html), and mourned Kevin Burton’s mod\_link)

So why does the Atom “content” element now allowing for “content by reference”, with the “src” attribute? Honestly, this seems like a clear case of confusing duplication. <acronym title="There is more then one way to do it">TIMTOWTDI</acronym> is one the key factors people point to when claiming that Perl is an ugly, under designed, confusing mess.

For example, are there now \[two, valid but disparate ways of encoding podcasts in Atom?\](http://www.25hoursaday.com/weblog/PermaLink.aspx?guid=48888cc2-0c23-4621-b07c-cef35df8b563)

And should a toolkit parsing Atom 1.0 automagically deference the URL defined in “src” attribute? I mean, if I’m parsing a feed I expect to able to display the contents of the content element. And if so, are we back to those wonderful bygone days (cough “rss2:enclosure” ) of baking dangerous required behaviour into our processing model? (speaking of process model, shouldn’t the \[Atom 1.0 processing model\](http://atompub.org/2005/07/11/draft-ietf-atompub-format-10.html#rfc.section.4.1.3.3) address this?)