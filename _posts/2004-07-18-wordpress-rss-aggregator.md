---
id: 861
title: 'WordPress RSS Aggregator'
date: '2004-07-18T15:26:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=861'
permalink: /2004/07/18/wordpress-rss-aggregator/
typo_id:
    - '859'
mt_id:
    - '2203'
link_related:
    - ''
raw_content:
    - "<p>\r\nI\\'ve been playing with the idea of a devblog for a while, a place which collates the various feeds associated with a project into a simple location   for easy viewing, and commenting it.  <a href=\\\"http://www.cenqua.com/fisheye/\\\">Fisheye</a>, and <a href=\\\"http://cia.navi.cx/stats/project/debian-nonprofit\\\">CIA</a> are full blown attempts at solving this very problem for large open source projects.  This morning, unable to get back to sleep, seemed simpler and faster to write something new, then finish reading the install instructions.\r\n</p>\r\n<p>\r\nI present my quick and dirty <a href=\\\"http://laughingmeme.org/code/wp-rss-aggregate.php.txt\\\">RSS-to-Wordpress aggregator</a>.  There are a number of tools that allow you to display an RSS feed on your <a href=\\\"http://wordpress.org\\\">Wordpress</a> blog, and several that allow you to import an RSS into your blog, but I didn\\'t find any that worked as aggregators, periodically polling a feed, and creating new posts from the items found within.  So that is what I built.\r\n</p>\n<p>\r\n<h3>Some features:</h3>\r\n <ul> \r\n <li>dc:date becomes the post_date, dc:creator (or dc:contributor) becomes the post_author, title maps to title, description to post_content, dc:subject to category.</li>\r\n\r\n  <li>a postmeta variable is used to track which RSS items have been seen before, and only insert them once.</li>\r\n\r\n  <li>you can assign 1 or more categories to be automatically attached to each post per feed. (e.g. a \\'CVS Commits\\' category)</li>\r\n\r\n  <li>new authors, and new categories are auto-vivified if they don\\'t exist.</li>\r\n </ul>\r\n</p>\r\n<p>\r\n<h3>Limitations:</h3>\r\n<ul>\r\n  <li>I wrote this to parse our internal <a href=\\\"http://laughingmeme.org/cvs2rss/\\\">cvs2rss</a> feeds, and our <a href=\\\"http://laughingmeme.org/work/archives/001772.html\\\">Twiki feed</a>.  Those both produce RSS 1.0 feeds that conform to my particular RSS aesthetics.  As such the script doesn\\'t try to hard to support other versions of RSS.</li>\r\n\r\n  <li>Links are treated as perma-links, and unique identifiers.</li>\r\n\r\n  <li>Ignores content:encoded</li>\r\n\r\n  <li>Only handles inserts, not updates</li>\r\n\r\n  <li>I wrote this with <a href=\\\"http://wordpress.org/nightly/\\\">nightly build</a> 2004-7-14, your milage may vary.</li>\r\n</ul>\r\n\r\nNone of these would be hard to fix, but this was good enough for my needs this morning, in the short period of time I wanted to spend on it.\r\n</p>\r\n<p>\r\n<h3>Todo</h3>\r\nSome other features that would be nice to:\r\n  <ul>\r\n<li> Store config in the database and add WP UI for managing aggregated feeds (should be doable with option groups?)</li>\r\n  <li> Support adding categories by name instead of id. (and auto-vivify categories)</li>\r\n</ul>\r\nUses <a href=\\\"http://magpierss.sf.net\\\">Magpie</a> (surprise!), so you get to leverage support for fetching private RSS feeds. (which I\\'d recommend for serving up internal RSS feeds)  Expanding on the devlog theme, you might want to include the RSS from your project management tool, and bug tracker. (we aren\\'t currently using RSS enable tools for this, but if, for example, you were using <a href=\\\"http://www.taskspro.com/\\\">TasksProp</a> or <a href=\\\"http://www.basecamphq.com/\\\">Basecamp</a>, those would be good feed to include.)\r\n</p>\r\n<p>\r\n<h3>A Few Observations on WordPress</h3>\r\n<ul>\r\n  <li>Doesn\\'t support PHP5 yet.  I\\'m not sure how pervasive the problem is, but it uses a modified version of <a title=\\\"ick, requires email address to download\\\" href=\\\"http://www.jvmultimedia.com/home/articles.php?articleId=2\\\">ezSQL</a> for its DB abstraction layer, which isn\\'t PHP5 compatible.  Too bad they aren\\'t building on top of PEAR DB.</li>\r\n\r\n  <li>Excellent for whipping up an attractive, feature rich blog. </li>\r\n\r\n  <li>Faster then expected, really zippy in fact, at least without load.</li>\r\n  \r\n  <li>Code is kind of a mess (or at least old school PHP).  Very little OO, SQL, and HTML is scattered around, core use of global variables.</li>\r\n\r\n  <li>I\\'m not a fan of the \\\"PHP is already a template argument\\\", but I understand why some people are.</li>\r\n\r\n  <li>Doesn\\'t feel as polished as MT, but is certainly more hackable.  Reminds me of the <a href=\\\"http://kwiki.org\\\">Kwiki</a> \\\"every installation is a snowflake\\\" goal.  Interesting to see if this creates a surge of creativity, or just balkanization.</li>\r\n\r\n  <li>Option groups, and the postmeta table make it incredibly simple to add new features.</li>\r\n\r\n  <li>PHP5+SQLite support, and a one-click install could make WP the Kwiki of blogging tools.</li>\r\n\r\n</ul>\r\n</p>\r\n<p>\r\n<b>update [2004/10/28]</b>:  In Boston, but on Seattle time, fill in some extra details.  This quick hack is growing faqs, and might need to sprout a page of its own pretty soon.  In the mean time there is a <a href=\\\"http://laughingmeme.org/code/wp-rss-aggregate.php.txt\\\">new version</a> which uses a simple config file, and has expanded <a href=\\\"http://del.icio.us\\\">del.icio.us</a> support.\r\n</p>\r\n<p>\r\n<h3>FAQ</h3>\r\n<ol>\r\n<li>How do I print the link of the original RSS item? \r\n<pre><code>\r\n&lt;?php echo get_post_meta($id, \\'wp_agg_rss_id\\', true) ?&gt;\r\n</code></pre>\r\n<li>Dates aren\\'t working, all my posts are from 1969.  Currently wp-rss-agg only supports dates in dc:date field, however there is a feature in magpie-cvs that should make it simple to provide Atom and RSS 2.0 date compatibility as well.</li> \r\n</ol>\r\n</p>\r\n<p>\r\n<b>update</b>:  <a href=\\\"http://projects.radgeek.com/feedwordpress/\\\">FeedWordPress</a> is an actively developed and maintained version of this script.  Charles has taken it beyond my simple proof of concept, and it is almost certainly what you\\'re looking for.\r\n</p>"
tags:
    - cvs
    - hacks
    - magpie
    - opensource
    - php
    - rss
    - syndication
    - wordpress
---

I’ve been playing with the idea of a devblog for a while, a place which collates the various feeds associated with a project into a simple location for easy viewing, and commenting it. [Fisheye](http://www.cenqua.com/fisheye/), and [CIA](http://cia.navi.cx/stats/project/debian-nonprofit) are full blown attempts at solving this very problem for large open source projects. This morning, unable to get back to sleep, seemed simpler and faster to write something new, then finish reading the install instructions.

I present my quick and dirty [RSS-to-Wordpress aggregator](http://laughingmeme.org/code/wp-rss-aggregate.php.txt). There are a number of tools that allow you to display an RSS feed on your [WordPress](http://wordpress.org) blog, and several that allow you to import an RSS into your blog, but I didn’t find any that worked as aggregators, periodically polling a feed, and creating new posts from the items found within. So that is what I built.

### Some features:

- dc:date becomes the post*date, dc:creator (or dc:contributor) becomes the post*author, title maps to title, description to post\_content, dc:subject to category.
- a postmeta variable is used to track which RSS items have been seen before, and only insert them once.
- you can assign 1 or more categories to be automatically attached to each post per feed. (e.g. a ‘CVS Commits’ category)
- new authors, and new categories are auto-vivified if they don’t exist.
 
### Limitations:

- I wrote this to parse our internal [cvs2rss](http://laughingmeme.org/cvs2rss/) feeds, and our [Twiki feed](http://laughingmeme.org/work/archives/001772.html). Those both produce RSS 1.0 feeds that conform to my particular RSS aesthetics. As such the script doesn’t try to hard to support other versions of RSS.
- Links are treated as perma-links, and unique identifiers.
- Ignores content:encoded
- Only handles inserts, not updates
- I wrote this with [nightly build](http://wordpress.org/nightly/) 2004-7-14, your milage may vary.

None of these would be hard to fix, but this was good enough for my needs this morning, in the short period of time I wanted to spend on it.

### Todo

Some other features that would be nice to: - Store config in the database and add WP UI for managing aggregated feeds (should be doable with option groups?)
- Support adding categories by name instead of id. (and auto-vivify categories)

Uses [Magpie](http://magpierss.sf.net) (surprise!), so you get to leverage support for fetching private RSS feeds. (which I’d recommend for serving up internal RSS feeds) Expanding on the devlog theme, you might want to include the RSS from your project management tool, and bug tracker. (we aren’t currently using RSS enable tools for this, but if, for example, you were using [TasksProp](http://www.taskspro.com/) or [Basecamp](http://www.basecamphq.com/), those would be good feed to include.) ### A Few Observations on WordPress

- Doesn’t support PHP5 yet. I’m not sure how pervasive the problem is, but it uses a modified version of [ezSQL](http://www.jvmultimedia.com/home/articles.php?articleId=2 "ick, requires email address to download") for its DB abstraction layer, which isn’t PHP5 compatible. Too bad they aren’t building on top of PEAR DB.
- Excellent for whipping up an attractive, feature rich blog.
- Faster then expected, really zippy in fact, at least without load.
- Code is kind of a mess (or at least old school PHP). Very little OO, SQL, and HTML is scattered around, core use of global variables.
- I’m not a fan of the “PHP is already a template argument”, but I understand why some people are.
- Doesn’t feel as polished as MT, but is certainly more hackable. Reminds me of the [Kwiki](http://kwiki.org) “every installation is a snowflake” goal. Interesting to see if this creates a surge of creativity, or just balkanization.
- Option groups, and the postmeta table make it incredibly simple to add new features.
- PHP5+SQLite support, and a one-click install could make WP the Kwiki of blogging tools.

**update [2004/10/28]**: In Boston, but on Seattle time, fill in some extra details. This quick hack is growing faqs, and might need to sprout a page of its own pretty soon. In the mean time there is a [new version](http://laughingmeme.org/code/wp-rss-aggregate.php.txt) which uses a simple config file, and has expanded [del.icio.us](http://del.icio.us) support.

### FAQ

1. How do I print the link of the original RSS item? ```
    
    <?php echo get<em>post</em>meta($id, 'wp<em>agg</em>rss_id', true) ?>
    
    ```
2. Dates aren’t working, all my posts are from 1969. Currently wp-rss-agg only supports dates in dc:date field, however there is a feature in magpie-cvs that should make it simple to provide Atom and RSS 2.0 date compatibility as well.
 
**update**: [FeedWordPress](http://projects.radgeek.com/feedwordpress/) is an actively developed and maintained version of this script. Charles has taken it beyond my simple proof of concept, and it is almost certainly what you’re looking for.