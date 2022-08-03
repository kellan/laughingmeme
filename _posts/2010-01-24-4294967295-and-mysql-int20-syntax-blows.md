---
id: 4412
title: '4294967295 and MySQL INT(20) Syntax Blows'
date: '2010-01-24T23:01:39+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4412'
permalink: /2010/01/24/4294967295-and-mysql-int20-syntax-blows/
categories:
    - Uncategorized
tags:
    - 'big numbers'
    - flickr
    - mysql
---

[![Big Numbers 2 by pjern.](http://farm2.static.flickr.com/1156/1339311643_3acb54e40a.jpg)](http://www.flickr.com/photos/pjern/1339311643/)

When you’ve been working with a technology for a long time, it’s difficult not to develop Stockholm syndrome. Not sure when I started using MySQL, but I bought my first license in 1998. I think it wasn’t until mid-to-late ’98 when we had to call \[Monty\](http://monty-says.blogspot.com/) long distance to Sweden to get help with some tricky issues. Which is to say its been a long time since I thought about how confusing MySQL’s CREATE TABLE syntax can be.

Which is not to say that the documentation isn’t clear:

> *`M`* indicates the maximum display width for integer types. The maximum legal display width is 255. Display width is unrelated to the range of values a type can contain, as described in [Section 10.2, “Numeric Types”](http://dev.mysql.com/doc/refman/5.0/en/numeric-types.html "10.2. Numeric Types"). For floating-point and fixed-point types, *`M`* is the total number of digits that can be stored.

But last week Flickr had a hiccup. We hit [4,294,967,295](http://www.flickr.com/photos/oming91745/4294967295/) photos. Or as a geek might say it, the largest number that can be represented by a 32-bit unsigned integer. This didn’t exactly catch us by surprise. We’d switched to using 64-bit ids for some things January, Friday the 13th, 2006. That and we got bit a few years ago when we hit 2,147,483,647 photos (that’d be the max signed 32 bit integer). Shortly after that we did a full audit of our tables.

But somehow we went on writing code after that, and we managed to slip a couple of new tables into the mix. And some of those tables ended up with `INT(20)` columns. Which simply mean we were adding some non-significant zeros to pad the display but truncating photo ids over 4294967295.

INT(5), INT(10), INT(20), and INT(255) all store the same amount of data.

Funny thing is, when I told this story to folks last week, this caught them by surprise. Sophisticated engineers, some of whom had deployed quite large MySQL backed sites. Because they were right, that syntax is dumb. And confusing. And I’d been taking it for granted so long I hadn’t thought about it in a decade. Which is why I’d bother to write a blog post about a popular piece of software, behaving exactly as it’s extensively documented to work.

Also, it’s interesting to note how if you keep making the same mistakes they become easier and easier to fix.

If you’re ever debugging a problem and you see the number 42-mumble-mumble-mumble-7295 you’ve run out of 32-bit storage. If you see 2-mumble-mumble-mumble-647 (2147483647) you’ve run out of signed 32-bit storage. 167-mumble-mumble-15 (16777215) you’ve run out of 24-bits and 65-mumble-mumble-35 (65535) you’ve run out of 16-bits of integers.

Somehow those numbers just jump out at me after all this time, you ignore the numbers in the middle, and notice the significant bits at the front and the end.

Photo from [pjern](http://www.flickr.com/photos/pjern/)