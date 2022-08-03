---
id: 3822
title: 'WeeWar needs XMPP'
date: '2008-05-14T06:46:41+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=3822'
permalink: /2008/05/14/weewar-needs-xmpp/
categories:
    - Uncategorized
tags:
    - api
    - jabber
    - 'real time web'
    - risk
    - weewar
    - xmpp
---

[WeeWar](http://weewar.com) broke in a wave across the office this afternoon. (thankfully late afternoon, or I might have gotten nothing done today). Its a Web-based turn based strategy game, thats very well done. Sort of a “Flickr for Risk”, with a nice value add pro account ($24.95/year), and APIs, social networking features, and a chatty tone.

### XMPP

But I’ve never run into an application that needed an [XMPP](http://www.xmpp.org/) interface more.

The most fundamental missing functionality is a convenient, light weight way of getting notified that your turn has rolled around again. WeeWar will send you email, but now your inboxes is even more cluttered, and you’re having to check your inbox constantly. (something I try to keep to 1-2 times an hour)

### Push

A Jabber interface you could trust to push to you the state changes news, and thereby remove the nagging, “Is it my turn?” and the [variable positive reinforcement](http://headrush.typepad.com/creating*passionate*users/2006/03/clicker\_trained.html) relationship it sets up with your inbox.

Additionally its a classic app where, if you’re polling, you want to keep the polling time very low, but the actual incident of change is fairly spare, which means WeeWar is going to at some point start resenting their polling based APIs.

### Payload

Ideally messages would also include an XML payload describing either the changes since your last turn, or the current state of the map, allowing for rich consuming clients to build alternate interfaces to the world.

### New Games

Orthogonally, a new games, and new games from your “preferred players” would also be excellent to get pushed out over Jabber.