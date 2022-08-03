---
id: 3592
title: 'Coding a Twitter killbot'
date: '2007-03-09T18:44:14+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/03/09/coding-a-twitter-killbot/'
permalink: /2007/03/09/coding-a-twitter-killbot/
categories:
    - Uncategorized
tags:
    - Code
    - jabber
    - ruby
    - twitter
    - xmpp
---

[![](http://laughingmeme.org/img/killbot.png)](http://twitter.com/kellan/statuses/6098611)

```
j = Jabber::Simple.new(jid, pass)

j.received_messages.each do |mesg|
    if mesg.body.match(/austin|sxsw/i)
        sender = mesg.elements['//screen_name'].text
        j.deliver('twitter@twitter.com', "leave #{sender}")
    end
end

```

Though truth be told, it isn’t running.