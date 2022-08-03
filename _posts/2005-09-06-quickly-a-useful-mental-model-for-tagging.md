---
id: 1123
title: 'Quickly:  A Useful Mental Model for Tagging'
date: '2005-09-06T11:24:09+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1123'
permalink: /2005/09/06/quickly-a-useful-mental-model-for-tagging/
typo_id:
    - '1121'
mt_id:
    - '3083'
link_related:
    - ''
raw_content:
    - "Lots has now been written on schemas for storing tags (mostly in relational databases).  In fact [Tag Schema](http://tagschema.com/) is a blog and mailing list devoted entirely to exploring that space further.  (maintained by Nitin Borwankar, working at [Odeo](http://odeo.com) these days).\n\nSo what happens when we take off our DBA hat, and put back on our programmer hats? (because really, who has seperate DBAs these days?)\n\nMost implementations I\\'ve seen treat tags as something you put in a bucket attached to an object.  (could be most implementations I\\'ve seen are in Rails which encourages this)\n\nBut tags aren\\'t something an object has, their something an actor said about an object.  An actor is key.  Tags without someone/something behind them are devoid of context and meaningless.  So rather then coding it as:\n\n    object.tags << sometags\n\nconsider\n\n    user.tags(object, sometags)\n\nwhere `tags` is no longer a noun (a collection), but a verb.\n\nAt some point I don\\'t care how you store it in your database, but you need to be thinking about it as something a user is doing to the object."
tags:
    - programming
    - ruby
    - tagging
    - tags
---

Lots has now been written on schemas for storing tags (mostly in relational databases). In fact \[Tag Schema\](http://tagschema.com/) is a blog and mailing list devoted entirely to exploring that space further. (maintained by Nitin Borwankar, working at \[Odeo\](http://odeo.com) these days).

So what happens when we take off our DBA hat, and put back on our programmer hats? (because really, who has seperate DBAs these days?)

Most implementations I’ve seen treat tags as something you put in a bucket attached to an object. (could be most implementations I’ve seen are in Rails which encourages this)

But tags aren’t something an object has, their something an actor said about an object. An actor is key. Tags without someone/something behind them are devoid of context and meaningless. So rather then coding it as:

```
object.tags << sometags

```

consider

```
user.tags(object, sometags)

```

where `tags` is no longer a noun (a collection), but a verb.

At some point I don’t care how you store it in your database, but you need to be thinking about it as something a user is doing to the object.