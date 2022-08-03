---
id: 723
title: 'PEAR::DB and MySQL&#8217;s AUTO_INCREMENT Fields'
date: '2004-01-31T16:23:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=723'
permalink: /2004/01/31/peardb-and-mysqls-auto_increment-fields/
typo_id:
    - '721'
mt_id:
    - '1701'
link_related:
    - ''
raw_content:
    - "In which our protagonist begins a more thorough exploration of PEAR, and quickly runs into a challenge.  Non-PHP hackers should feel free to avert their eyes.\nMaybe this is a well known hack, maybe (hopefully!) there is a better way to do this, but a quick Google search turned up a deafening silence, a marked dearth, of information on how to access a MySQL `insert_id` (the value created by inserting a row into a table with an `AUTO_INCREMENT` column).  \r\n\r\nI understand that using `AUTO_INCREMENT` columns is the \\\"wrong\\\" way to do things as far as PEAR is concerned, I\\'m supposed to use its implemented in PHP sequences, rather then the native and implemented in C method I\\'ve been using quite happily for years. (If I find myself migrating my MySQL app to Oracle sometime soon, I promise you `AUTO_INCREMENT` columns are going to be the least of my worries.)  \r\n\r\nPerl DBI faced a similar dilemma <em>many</em> years ago, and decided, wisely, to punt on the whole issue.  They didn\\'t provide a solution, and they didn\\'t preclude you from using your native solution.  Turns out sometimes doing less is more.  \r\n\r\nAnd lastly, when the hell did PHP get so high and holy that it refuses to let me code the way I want to code?  Stuff like this constantly turns me off of PEAR, the whole thing just kind of has a bad smell about it. \r\n\r\nBut enough with the ranting, so here is my current, hold-me-over-until-someone-points-out-the-error-of-my-ways solution.\r\n\r\nYour PEAR::DB object `$dbh` holds a reference to the MySQL connection object in `$dbh->connection`.  Which allows you take a stroll down memory lane to the bad old days with this little gem: \r\n\r\n    $id = mysql_insert_id($dbh->connection)\r\n\r\nFor all our veneer of OO civilization, it doesn\\'t take much to scratch away the surface and expose our naked barbarian PHP soul does it?"
tags:
    - abstraction
    - mysql
    - pear
    - php
    - programming
---

In which our protagonist begins a more thorough exploration of PEAR, and quickly runs into a challenge. Non-PHP hackers should feel free to avert their eyes. Maybe this is a well known hack, maybe (hopefully!) there is a better way to do this, but a quick Google search turned up a deafening silence, a marked dearth, of information on how to access a MySQL `insert_id` (the value created by inserting a row into a table with an `AUTO_INCREMENT` column).

I understand that using `AUTO_INCREMENT` columns is the “wrong” way to do things as far as PEAR is concerned, I’m supposed to use its implemented in PHP sequences, rather then the native and implemented in C method I’ve been using quite happily for years. (If I find myself migrating my MySQL app to Oracle sometime soon, I promise you `AUTO_INCREMENT` columns are going to be the least of my worries.)

Perl DBI faced a similar dilemma *many* years ago, and decided, wisely, to punt on the whole issue. They didn’t provide a solution, and they didn’t preclude you from using your native solution. Turns out sometimes doing less is more.

And lastly, when the hell did PHP get so high and holy that it refuses to let me code the way I want to code? Stuff like this constantly turns me off of PEAR, the whole thing just kind of has a bad smell about it.

But enough with the ranting, so here is my current, hold-me-over-until-someone-points-out-the-error-of-my-ways solution.

Your PEAR::DB object `$dbh` holds a reference to the MySQL connection object in `$dbh->connection`. Which allows you take a stroll down memory lane to the bad old days with this little gem:

```
$id = mysql_insert_id($dbh->connection)

```

For all our veneer of OO civilization, it doesn’t take much to scratch away the surface and expose our naked barbarian PHP soul does it?