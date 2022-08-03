---
id: 3526
title: 'On Complexity'
date: '2006-12-01T14:08:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=3526'
permalink: /2006/12/01/on-complexity/
typo_id:
    - '3525'
mt_id:
    - ''
link_related:
    - ''
raw_content:
    - "On a list I\\'m on there was a proposal to do a quick salary survey among the members.  The proposed solution for handling this was\r\n\r\n> Everyone say \\'I\\'m in\\' to get onto a list of N people participating.  Then\r\nwrite down N numbers, positive or negative, that add up to your salary and\r\nsend 1 of them to everyone else on the list.  Add the N-1 numbers you\r\nreceive to the number you didn\\'t pass out, and announce that to the list.\r\nThe sum of those numbers is the total salary. If N-2 people gang up on you\r\nthey can\\'t guess yours.  As a bonus, you can always back out at the last\r\nminute before divulging your own sum without having given anything away.\r\n\r\nWhich you got to admit is a beautifully simple, and elegant solution to the problem of sharing sensitive information in a low trust environment.\r\n\r\nThe solution? A 7 line Perl CGI to just write salaries to a log, and a good faith promise not to track IP addresses."
tags:
    - collaboration
    - complexity
    - encryption
    - social
---

On a list I’m on there was a proposal to do a quick salary survey among the members. The proposed solution for handling this was

> Everyone say ‘I’m in’ to get onto a list of N people participating. Then write down N numbers, positive or negative, that add up to your salary and send 1 of them to everyone else on the list. Add the N-1 numbers you receive to the number you didn’t pass out, and announce that to the list. The sum of those numbers is the total salary. If N-2 people gang up on you they can’t guess yours. As a bonus, you can always back out at the last minute before divulging your own sum without having given anything away.

Which you got to admit is a beautifully simple, and elegant solution to the problem of sharing sensitive information in a low trust environment.

The solution? A 7 line Perl CGI to just write salaries to a log, and a good faith promise not to track IP addresses.