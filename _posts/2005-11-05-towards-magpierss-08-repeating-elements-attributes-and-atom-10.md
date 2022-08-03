---
id: 3086
title: 'Towards MagpieRSS 0.8:  repeating elements, attributes, and Atom 1.0'
date: '2005-11-05T19:54:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=3086'
permalink: /2005/11/05/towards-magpierss-08-repeating-elements-attributes-and-atom-10/
typo_id:
    - '3084'
mt_id:
    - ''
link_related:
    - ''
raw_content:
    - "Now that we\\'ve got the security release out of  the way, its time to move on top something a little more interesting.  I finally got a chance to add a **huge** patch from [RadGeek](http://radgeek.org/) (of [FeedWordPress](http://projects.radgeek.com/feedwordpress/) fame) that adds:\r\n\r\n* uniform access to attributes\r\n* support for repeating elements\r\n* Atom 1.0 support\r\n\r\nI\\'ve struggled for forever to figure out how to provide simple, uniform access to the increasingly rich data that people are syndicating (finally!). Eventually I gave up, and decided that the only solution was to rewrite the parser and make it simple to add per field custom logic. (kind of like the enclosure patch adds custom logic).  I never got past the initial sketches.\r\n\r\nSo I\\'m **thrilled** that RadGeek has come up with a syntax (and code!) to extend rss_parser.inc to add support, while staying transparently backwards compatible.  I\\'ve got out a [dev build](http://laughingmeme.org/code/magpierss-200511060046.tar.gz) for people to play with, and written up some of the new features.\n### Access Repeating Elements\r\n\r\nLets assume we have a basic RSS item, with several dc:subjects:\r\n\r\n    <item>\r\n    <title>Some Exciting Title</title>\r\n    <dc:subject>exciting</dc:subject>\r\n    <dc:subject>example</dc:subject>\r\n    <dc:subject>whoohoo</dc:subject>\r\n    </item>\r\n\r\n    echo $item[\\'title\\'] \r\n    => \\\"Some Exciting Title\\\"\r\n\r\n    echo $item[\\'dc\\'][\\'subject\\']\r\n    => \\\"exciting\\\"\r\n\r\nSo far, so normal.  Now we get special. \r\n\r\n    echo $item[\\'dc\\'][\\'subject#2\\']\r\n    => \\\"example\\\"\r\n\r\n    echo $item[\\'dc\\'][\\'subject#3\\']\r\n    => \\\"whoohoo\\\"\r\n\r\nSo how many dc:subjects do we have?\r\n\r\n    echo $item[\\'dc\\'][\\'subject#\\']\r\n    => 3\r\n\r\nAnd this isn\\'t just for `dc:subject`, it works with whatever elements you like to repeat.  (though we\\'ll need to decide what to do with the Atom link  reltype munging hack, I\\'ll touch on that in a future post)\r\n\r\n### Access Attributes\r\n\r\nLets assume, we now have an Atom item with a category like:\r\n\r\n    <category term=\\'atom\\' scheme=\\'http://del.cio.us/tags\\' label=\\'Atom\\' />\r\n\r\n    echo $item[\\'category@term\\']\r\n    => \\\"atom\\\"\r\n\r\n    echo $item[\\'category@scheme\\']\r\n    => \\\"http://del.cio.us/tags\\\"\r\n\r\n    echo $item[\\'category@label\\']\r\n    => \\\"Atom\\\"\r\n\r\n    echo $item[\\'category@\\']\r\n    => \\\"term,scheme,label\\\"   // that might want to change to an array\r\n\r\nAnd if we had a second category for that item?\r\n\r\n    <category term=\\'calendar\\' />\r\n\r\n    echo $item[\\'category#2@term\\']\r\n    => \\'calendar\\'\r\n\r\nor maybe an RSS 2.0 guid element\r\n\r\n    <guid isPermaLink=\\\"true\\\">http://inessential.com/2002/09/01.php#a2</guid>\r\n\r\n    echo $item[\\'guid\\']\r\n    => \\\"http://inessential.com/2002/09/01.php#a2\\\"\r\n\r\n    echo $item[\\'guid@ispermalink\\']\r\n    => \\\"true\\\"\r\n\r\n\r\n### Where from here\r\n\r\nSo give the [dev build](http://laughingmeme.org/code/magpierss-200511060046.tar.gz) a spin, kick the tires etc.  This is the largest new feature in a while, and would be good to give it a workout.  (ps. I\\'ve affair the normalization methods are throwing `notices` currently.)\r\n\r\nAlso any show stoppers people might see with this new syntax.\r\n\r\nOnce we\\'ve got this working smoothly, there are several other new features looking for inclusion in next release.\r\n\r\nAnd finally I\\'m debating whether to break backward compatibility with how we currently do Atom link munging, in order to get more consistency with this new syntax, and I\\'d like to get some feedback on that."
tags:
    - atom
    - magpie
    - php
    - rss
---

Now that we’ve got the security release out of the way, its time to move on top something a little more interesting. I finally got a chance to add a **huge** patch from [RadGeek](http://radgeek.org/) (of [FeedWordPress](http://projects.radgeek.com/feedwordpress/) fame) that adds:

- uniform access to attributes
- support for repeating elements
- Atom 1.0 support

I’ve struggled for forever to figure out how to provide simple, uniform access to the increasingly rich data that people are syndicating (finally!). Eventually I gave up, and decided that the only solution was to rewrite the parser and make it simple to add per field custom logic. (kind of like the enclosure patch adds custom logic). I never got past the initial sketches.

So I’m **thrilled** that RadGeek has come up with a syntax (and code!) to extend rss\_parser.inc to add support, while staying transparently backwards compatible. I’ve got out a [dev build](http://laughingmeme.org/code/magpierss-200511060046.tar.gz) for people to play with, and written up some of the new features.

### Access Repeating Elements

Lets assume we have a basic RSS item, with several dc:subjects:

```
<item>
<title>Some Exciting Title</title>
<dc:subject>exciting</dc:subject>
<dc:subject>example</dc:subject>
<dc:subject>whoohoo</dc:subject>
</item>

echo $item['title'] 
=> "Some Exciting Title"

echo $item['dc']['subject']
=> "exciting"

```

So far, so normal. Now we get special.

```
echo $item['dc']['subject#2']
=> "example"

echo $item['dc']['subject#3']
=> "whoohoo"

```

So how many dc:subjects do we have?

```
echo $item['dc']['subject#']
=> 3

```

And this isn’t just for `dc:subject`, it works with whatever elements you like to repeat. (though we’ll need to decide what to do with the Atom link reltype munging hack, I’ll touch on that in a future post)

### Access Attributes

Lets assume, we now have an Atom item with a category like:

```
<category term='atom' scheme='http://del.cio.us/tags' label='Atom' />

echo $item['category@term']
=> "atom"

echo $item['category@scheme']
=> "http://del.cio.us/tags"

echo $item['category@label']
=> "Atom"

echo $item['category@']
=> "term,scheme,label"   // that might want to change to an array

```

And if we had a second category for that item?

```
<category term='calendar' />

echo $item['category#2@term']
=> 'calendar'

```

or maybe an RSS 2.0 guid element

```
<guid isPermaLink="true">http://inessential.com/2002/09/01.php#a2</guid>

echo $item['guid']
=> "http://inessential.com/2002/09/01.php#a2"

echo $item['guid@ispermalink']
=> "true"

```

### Where from here

So give the [dev build](http://laughingmeme.org/code/magpierss-200511060046.tar.gz) a spin, kick the tires etc. This is the largest new feature in a while, and would be good to give it a workout. (ps. I’ve affair the normalization methods are throwing `notices` currently.)

Also any show stoppers people might see with this new syntax.

Once we’ve got this working smoothly, there are several other new features looking for inclusion in next release.

And finally I’m debating whether to break backward compatibility with how we currently do Atom link munging, in order to get more consistency with this new syntax, and I’d like to get some feedback on that.