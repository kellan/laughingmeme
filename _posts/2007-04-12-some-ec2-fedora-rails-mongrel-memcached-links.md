---
id: 3617
title: 'Some EC2, Fedora, Rails, Mongrel, Memcached Links'
date: '2007-04-12T23:19:53+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/04/12/some-ec2-fedora-rails-mongrel-memcached-links/'
permalink: /2007/04/12/some-ec2-fedora-rails-mongrel-memcached-links/
categories:
    - Uncategorized
tags:
    - amazon
    - apache2
    - aws
    - ec2
    - fedora
    - memcached
    - mongrel
    - rails
---

I had done some futzing around with \[EC2\](http://aws.amazon.com/ec2), but \[ExpoCal\](http://cal.web2expo.com) is the first web app I’ve brought up and run on it. Also my first outing with \[Fedora\](http://fedoraproject.org/). Some links:

- \[Amazon EC2 Getting Started Guide\](http://docs.amazonwebservices.com/AmazonEC2/gsg/2007-01-03/) – very approachable walk through on get EC2 up and running
- \[How I Set Up My EC2 Instance for Rails &amp; Litespeed\](http://niblets.wordpress.com/2007/02/16/how-i-set-up-my-ec2-instance-for-rails-litespeed/) – bit more specific instructions, not entirely accurate
- \[Fedora Core 6 Lite Base Image\](http://developer.amazonwebservices.com/connect/entry.jspa?externalID=554&amp;categoryID=101) – simple, actively used AMI. The Debian images came with too many caveats.
- \[Changing your mysql data directory \](http://niblets.wordpress.com/2007/03/23/changing-your-mysql-data-directory/) – `/mnt` is the new `/var`
- \[Dead Simple Deployment (with Mongrel and Rails)\](http://brainspl.at/articles/2006/04/26/dead-simple-deployment) – basic Mongrel cluster instructions.
- \[Time For A Grown-Up Server: Rails, Mongrel, Apache, Capistrano and You\](http://blog.codahale.com/2006/06/19/time-for-a-grown-up-server-rails-mongrel-apache-capistrano-and-you/) – never had much luck with Pen and co — Apache2’s proxying modules rawk!
- \[Fedora memcache + drupal walkthrough\](http://drupal.org/files/issues/memcache.txt) – memcached on Fedora
- \[Howto: rpmbuild\](http://fedoranews.org/tchung/rpmbuild/) – `sudo yum install fedora-rpmdevtools`
- \[My Rails Toolbox\](http://errtheblog.com/post/35)

Also some yum’ed packages:

`yum install sudo gcc ruby ruby-libs ruby-mode ruby-rdoc ruby-irb ruby-ri ruby-docs ruby-devel rsync ruby-mysql.i386 mysql mysql-devel mysql-server mysql-admin httpd-devel apr apr-devel apr-util-devel subversion libevent`