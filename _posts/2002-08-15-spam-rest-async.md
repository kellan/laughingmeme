---
id: 120
title: 'Spam, REST &#038; Async'
date: '2002-08-15T07:26:45+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=120'
permalink: /2002/08/15/spam-rest-async/
typo_id:
    - '118'
mt_id:
    - '128'
link_related:
    - ''
raw_content:
    - "<p>\r\nSomeone once asked me what the benefit of the REST model of web services over the\r\nRPC (Soap, & XML-RPC) model.  I\\'ve never been very good at answering, and I\\'m\r\nnot sure this does, but I think it hilights the simplicities possible with REST.\r\n</p>\r\n<p>\r\nWell as I was lying in the sweltering heat this morning thinking about how to\r\nhandle spam, and particularly web based spam, I thought of a simple, clear,\r\nasynchronous REST application.\r\n</p>\r\n<p>\r\nPosting to IMC is slow enough already,  what with the bandwidth sometimes\r\nsaturating, PHP talking to Postgres, and the obvious overhead of uploading\r\nvideo, we don\\'t want to do anything to slow down that process, even something\r\nrelatively light weight like querying a \r\n<a href=\\\"http://www.rhyolite.com/anti-spam/dcc/\\\">DCC</a> server.\r\n</p>\r\n<p>\r\nHowever, we could send the body of a message to the DCC server when the message\r\nis posted, perhaps adding it on the end of a queue of messages waiting to be\r\ninspected, and then if we hear back that it is spam, we can snag it back (a nice\r\nfeature of the web, that email lacks)\r\n</p>\r\n<p>\r\nImagine we have a new article posted to:<br />\r\nhttp://www.indymedia.org/article/45287\r\n</p>\r\n<p>\r\nWith the proper access one can edit this article at:<br />\r\nhttp://www.indymedia.org/article/45287/edit\r\n</p>\r\n<p>\r\nOr flag it as spam by visiting:<br />\r\nhttp://www.indymedia.org/article/45287/edit/is_spam\r\n</p>\r\n<p>\r\nNow we check if an message is spam by POSTing the body of the message to:<br />\r\nhttp://dcc.indymedia.org/tofu\r\n</p>\r\n<p>\r\nAlong with the body of the message we also send the URL:<br />\r\nhttp://www.indymedia.org/article/45287/edit/is_spam\r\n</p>\r\n<p>\r\nAnd if DCC decides its spam, then is GETs the included URL\r\n</p>"
---

Someone once asked me what the benefit of the REST model of web services over the RPC (Soap, &amp; XML-RPC) model. I’ve never been very good at answering, and I’m not sure this does, but I think it hilights the simplicities possible with REST.

Well as I was lying in the sweltering heat this morning thinking about how to handle spam, and particularly web based spam, I thought of a simple, clear, asynchronous REST application.

Posting to IMC is slow enough already, what with the bandwidth sometimes saturating, PHP talking to Postgres, and the obvious overhead of uploading video, we don’t want to do anything to slow down that process, even something relatively light weight like querying a [DCC](http://www.rhyolite.com/anti-spam/dcc/) server.

However, we could send the body of a message to the DCC server when the message is posted, perhaps adding it on the end of a queue of messages waiting to be inspected, and then if we hear back that it is spam, we can snag it back (a nice feature of the web, that email lacks)

Imagine we have a new article posted to:  
http://www.indymedia.org/article/45287

With the proper access one can edit this article at:  
http://www.indymedia.org/article/45287/edit

Or flag it as spam by visiting:  
http://www.indymedia.org/article/45287/edit/is*spam*

Now we check if an message is spam by POSTing the body of the message to:  
http://dcc.indymedia.org/tofu

Along with the body of the message we also send the URL:  
http://www.indymedia.org/article/45287/edit/isspam

And if DCC decides its spam, then is GETs the included URL