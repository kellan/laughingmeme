---
id: 4084
title: 'WordPress: Resetting your password the &#8220;hard&#8221; way.'
date: '2008-11-19T16:09:53+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4084'
permalink: /2008/11/19/wordpress-resetting-your-password-the-hard-way/
categories:
    - Uncategorized
tags:
    - Code
    - hashing
    - wordpress
---

[![more yarnings](http://farm3.static.flickr.com/2288/1937032483_41c5f3965b.jpg)](http://www.flickr.com/photos/sarabbit/1937032483/ "more yarnings by Sarabbit, on Flickr")

If you’ve forgetten your password to your \[Wordpress\](http://wordpress.org) install it has a nifty email-a-one-time-key-to-retrieve-password flow built in. Which for some reason never works on my box. (probably has to do with how I have Postfix setup doing 2ndary MXing) In the olden days the solution to this problem was to connect your database and `UPDATE` the `user_pass` field with an `MD5` of your desired new password.

But now we’re living in the future, so things are more complicated. I still connect to my database, and manually `UPDATE users set user_pass=$hashed where ID=1`, but now I need this \[handy script to generate the hashed password\](http://laughingmeme.org/code/wp\_hasher.php.txt) for me. Hopefully the 3 other people in the world this is useful for will find this blog post.

(And now I might start blogging again)

Photo from [sarabbit](http://www.flickr.com/photos/sarabbit)