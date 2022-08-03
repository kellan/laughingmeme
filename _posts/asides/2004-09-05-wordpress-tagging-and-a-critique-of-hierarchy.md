---
id: 903
title: 'WordPress, Tagging, and a Critique of Hierarchy'
date: '2004-09-05T02:15:16+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=903'
permalink: /2004/09/05/wordpress-tagging-and-a-critique-of-hierarchy/
typo_id:
    - '901'
mt_id:
    - '2360'
link_related:
    - ''
raw_content:
    - "<p>\r\nWe spent a while exploring the issue of controlled vocabularies for topical information in the context of both <a href=\\\"http://protest.net\\\">protest.net</a> and <a href=\\\"http://www.indymedia.org\\\">indymedia.org</a>.  One of the conclusions we came up with was that complex hierarchies of information suffer from many of the same problems that hierarchies in general suffer from.  In particular they\\'re brittle.  They adapt poorly as your domain/interests evolves and shifts, and lack the flexibility to deal with decision making/knowledge creation in diverse environments.  Some of these ideas were captured in a proposal to build an \\\"open editing system\\\" (seems to be offline currently), to complement IMC\\'s <a href=\\\"http://www.cat.org.au/maffew/cat/openpub.html\\\">open publishing</a>.  \r\n</p>\r\n<p>\r\n<h3>Tags</h3>\r\nAnd one of the core ideas was to build something which looked a lot like <a href=\\\"http://del.icio.us\\\">del.icio.us</a> (just one of the many reasons that I think <a href=\\\"http://del.icio.us\\\">del.icio.us</a> is so damn cool)  Whether it is easier or harder for an individual to maintain their personal information systems as opposed to organizations/networks really depends on the individual.  Email is going to have to wait (unless I start using <a href=\\\"http://gmail.google.com/\\\">Gmail</a> wholesale), but I thought I\\'d experiment with what would be involved with tag enabling a piece of blogging software.\r\n</p>\r\n<p>\r\n<h3>Buzz</h3>\r\nThere has been a ton of buzz about \\\"folksonomies\\\" from the internet chattering classes of late (<a href=\\\"http://peterme.com\\\">peterme</a> has a <a href=\\\"http://www.peterme.com/archives/000387.html\\\">good roundup</a>), but I\\'m personally not as interested in social aspect that has everyone hot under the collar, as the conceptual step forward to using tags and sets instead of categories and hierarchies.\r\n</p>\r\n<p>\r\n<h3>Tags and Blogging</h3>\r\nScanning my projects scatchpad, I see that last Fall I jotted down notes on adding this functionality to <a href=\\\"http://www.movabletype.org\\\">Movable Type</a>.  Well that never happened, but I spent a couple of hours tonight hacking it into <a href=\\\"http://wordpress.org\\\">WordPress</a>, plus yanking in some javascript from <a href=\\\"http://cheerleader.yoz.com\\\">Yoz\\'s</a> <a href=\\\"http://lists.burri.to/pipermail/delicious-dev/2004-July/000043.html\\\">avar.icio.us</a> to add auto-completion, and prompting of related categories.  \r\n</p>\r\n<p>\r\n<h3>An Aside On Architecture and Open Source</h3>\r\nI remember reading Karl Fogel\\'s <a href=\\\"http://cvsbook.red-bean.com/\\\">\\\"Open Source Development with CVS, 1st ed\\\"</a> a number of years ago (still waiting for that back Josh), and among the many excellent points he made was that systems which are a little bit dodgy often attract more developers because its easier to get started, and you don\\'t feel like you\\'re screwing up someone\\'s immaculate architecture.  Hacking this stuff low and lateral into <a href=\\\"http://wordpress.org\\\">WordPress</a> was a good case in point for me.\r\n</p>\r\n<p>\r\n<h3>WordPress\\'ed</h3>\r\nHere is the <a href=\\\"/code/wordpress-smart-tags.patch\\\">patch</a>, I built it against <a href=\\\"http://wordpress.org/nightly/\\\">nightly-2004-08-30</a>.  There are 2 new options to enable categories as tags, <code>use_category_tagging</code>, and <code>use_category_tagging_autocomplete</code>, you\\'ll need to add these directly to MySQL.  Btw the auto-completion works in Firefox, but not in Safari.\r\n</p>\r\n<p>\r\nAnd this is \\\"only the brave and resourceful\\\" territory, you should feel comfortable applying a patch, and inserting new options manually.  Feedback on how to organize the code to make it a better WP citizen would be great, though it is unlikely to produce short term results.\r\n</p>\r\n<p>\r\n(And yes this is apropos of an eventual shift to WordPress, just as soon as I have some free time [plus I want to do a re-design as part of the move])\r\n</p>\r\n<p>\r\n<h3>Next Steps</h3>\r\nBeing able to add and edit tags does not a tag enabled system make.  There is a whole another round of modifications enabling people to browse sets of related tags, and compose on the fly logical constructs.  And I\\'ve got some ideas about rich and flexible category archives.  But that is all going to have to wait for some future date.\r\n</p>\r\n<p>\r\n<h3>Some SQL</h3>\r\nAnd I used my first multi-table self join in order to count up the related tags.  Not sure how well that will scale to hundreds of categories and thousands of entries (or thousands of categories and hundreds of entries), but it\\'s suprisingly zippy on a small data set.\r\n<pre>\r\nSELECT \r\n  c1.cat_name, c1.cat_ID, c2.cat_ID as related_id, \r\n  c2.cat_name as related_cat, COUNT(w2.post_id) as weight \r\nFROM wp_post2cat w1, wp_post2cat w2, \r\n  wp_categories as c1, wp_categories as c2 \r\nWHERE \r\n  w1.post_id = w2.post_id and w1.category_id <> w2.category_id and\r\n  c1.cat_ID = w1.category_id and c2.cat_ID = w2.category_id\r\nGROUP BY related_id, c1.cat_ID \r\nORDER BY c1.cat_name, weight\r\n</pre>\r\n</p>"
categories:
    - Uncategorized
---

We spent a while exploring the issue of controlled vocabularies for topical information in the context of both [protest.net](http://protest.net) and [indymedia.org](http://www.indymedia.org). One of the conclusions we came up with was that complex hierarchies of information suffer from many of the same problems that hierarchies in general suffer from. In particular they’re brittle. They adapt poorly as your domain/interests evolves and shifts, and lack the flexibility to deal with decision making/knowledge creation in diverse environments. Some of these ideas were captured in a proposal to build an “open editing system” (seems to be offline currently), to complement IMC’s [open publishing](http://www.cat.org.au/maffew/cat/openpub.html).

### Tags

And one of the core ideas was to build something which looked a lot like [del.icio.us](http://del.icio.us) (just one of the many reasons that I think [del.icio.us](http://del.icio.us) is so damn cool) Whether it is easier or harder for an individual to maintain their personal information systems as opposed to organizations/networks really depends on the individual. Email is going to have to wait (unless I start using [Gmail](http://gmail.google.com/) wholesale), but I thought I’d experiment with what would be involved with tag enabling a piece of blogging software.

### Buzz

There has been a ton of buzz about “folksonomies” from the internet chattering classes of late ([peterme](http://peterme.com) has a [good roundup](http://www.peterme.com/archives/000387.html)), but I’m personally not as interested in social aspect that has everyone hot under the collar, as the conceptual step forward to using tags and sets instead of categories and hierarchies.

### Tags and Blogging

Scanning my projects scatchpad, I see that last Fall I jotted down notes on adding this functionality to [Movable Type](http://www.movabletype.org). Well that never happened, but I spent a couple of hours tonight hacking it into [WordPress](http://wordpress.org), plus yanking in some javascript from [Yoz’s](http://cheerleader.yoz.com) [avar.icio.us](http://lists.burri.to/pipermail/delicious-dev/2004-July/000043.html) to add auto-completion, and prompting of related categories.

### An Aside On Architecture and Open Source

I remember reading Karl Fogel’s [“Open Source Development with CVS, 1st ed”](http://cvsbook.red-bean.com/) a number of years ago (still waiting for that back Josh), and among the many excellent points he made was that systems which are a little bit dodgy often attract more developers because its easier to get started, and you don’t feel like you’re screwing up someone’s immaculate architecture. Hacking this stuff low and lateral into [WordPress](http://wordpress.org) was a good case in point for me.

### WordPress’ed

Here is the [patch](/code/wordpress-smart-tags.patch), I built it against [nightly-2004-08-30](http://wordpress.org/nightly/). There are 2 new options to enable categories as tags, `use_category_tagging`, and `use_category_tagging_autocomplete`, you’ll need to add these directly to MySQL. Btw the auto-completion works in Firefox, but not in Safari.

And this is “only the brave and resourceful” territory, you should feel comfortable applying a patch, and inserting new options manually. Feedback on how to organize the code to make it a better WP citizen would be great, though it is unlikely to produce short term results.

(And yes this is apropos of an eventual shift to WordPress, just as soon as I have some free time [plus I want to do a re-design as part of the move])

### Next Steps

Being able to add and edit tags does not a tag enabled system make. There is a whole another round of modifications enabling people to browse sets of related tags, and compose on the fly logical constructs. And I’ve got some ideas about rich and flexible category archives. But that is all going to have to wait for some future date.

### Some SQL

And I used my first multi-table self join in order to count up the related tags. Not sure how well that will scale to hundreds of categories and thousands of entries (or thousands of categories and hundreds of entries), but it’s suprisingly zippy on a small data set.

```

SELECT 
  c1.cat<em>name, c1.cat</em>ID, c2.cat<em>ID as related</em>id, 
  c2.cat<em>name as related</em>cat, COUNT(w2.post<em>id) as weight 
FROM wp</em>post2cat w1, wp<em>post2cat w2, 
  wp</em>categories as c1, wp<em>categories as c2 
WHERE 
  w1.post</em>id = w2.post<em>id and w1.category</em>id <> w2.category<em>id and
  c1.cat</em>ID = w1.category<em>id and c2.cat</em>ID = w2.category<em>id
GROUP BY related</em>id, c1.cat<em>ID 
ORDER BY c1.cat</em>name, weight
```