---
id: 1043
title: 'Rails, Data Models, and find_by_sql'
date: '2005-03-24T08:15:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1043'
permalink: /2005/03/24/rails-data-models-and-find_by_sql/
typo_id:
    - '1041'
mt_id:
    - '2872'
link_related:
    - ''
raw_content:
    - "Did a little more hacking on [Recipes on Rails](http://laughingmeme.org/archives/002842.html#002842) yesterday.  Haven\\'t decided if I\\'m doing something wrong, or if [ActiveRecord](http://ar.rubyonrails.org/) sacrifices a lot of flexibility in the quest for rapid development. I find myself using [`find_by_sql`](http://ar.rubyonrails.org/classes/ActiveRecord/Base.html#M000216) heavily, which seems wrong.  Could be a metaphor clash.\r\n\r\n### Mental Models and Metaphors\r\nWith [Enterprise](http://blog.groundspring.org/gs/2004/10/enterprise_our_.html) we used a heavily sub-classed [DB::DataObject](http://pear.php.net/package/DB_DataObject), also an [Active Record](http://www.martinfowler.com/eaaCatalog/activeRecord.html) implementation but with a different metaphor.  It doesn\\'t have AR\\'s awesome, and brain dead simple [declarative association](http://ar.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html) syntax, instead it takes a method oriented approach to query building which allows you to build up a domain model hiearchy where query logic accretes via polymorphism.\r\n\r\nThe simplest possible example of this is our use of a `domainId` key in Enterprise which is used to silo and segregate our data (development was primarily targeting ASP deployment).  Any DAO which descends from `GS::DataObject` will automatically insert domainId into the query.  In general it meant we could right powerful find methods that were actually very thin wrappers of a parent find, just permutating the query slightly with the addition of a few add conditions (e.g. wheres, sub-queries, left outer joins, whatever).\r\n\r\n### Caveat\r\nStill very much learning [Rails][rails] (and Ruby), so take it all with a grain of salt.  Maybe there is room for a mix-in somewhere that would refactor away the `find_by_sql` usage. \r\n\r\n### The Desperate PHP Hacker\r\nMuch of the current evangelism (of which [DHH](http://www.loudthinking.com/) and [37sigs](http://37signals.com) are an amazing, untiring source) seems to have targetted the Java developer community (or perhaps they\\'re just the most touchy?).  Seems like there is a need for a \\'Rails Eye for the PHP Guy\\' kind of series.  I wonder if my PHP style is too idiosyncratic.\r\n\r\n[rails]: http://rubyonrails.com"
tags:
    - abstraction
    - activerecord
    - oo
    - php
    - programming
    - rails
    - ruby
---

Did a little more hacking on [Recipes on Rails](http://laughingmeme.org/archives/002842.html#002842) yesterday. Haven’t decided if I’m doing something wrong, or if [ActiveRecord](http://ar.rubyonrails.org/) sacrifices a lot of flexibility in the quest for rapid development. I find myself using [`find_by_sql`](http://ar.rubyonrails.org/classes/ActiveRecord/Base.html#M000216) heavily, which seems wrong. Could be a metaphor clash.

### Mental Models and Metaphors

With [Enterprise](http://blog.groundspring.org/gs/2004/10/enterprise*our*.html) we used a heavily sub-classed [DB::DataObject](http://pear.php.net/package/DB\_DataObject), also an [Active Record](http://www.martinfowler.com/eaaCatalog/activeRecord.html) implementation but with a different metaphor. It doesn’t have AR’s awesome, and brain dead simple [declarative association](http://ar.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html) syntax, instead it takes a method oriented approach to query building which allows you to build up a domain model hiearchy where query logic accretes via polymorphism.

The simplest possible example of this is our use of a `domainId` key in Enterprise which is used to silo and segregate our data (development was primarily targeting ASP deployment). Any DAO which descends from `GS::DataObject` will automatically insert domainId into the query. In general it meant we could right powerful find methods that were actually very thin wrappers of a parent find, just permutating the query slightly with the addition of a few add conditions (e.g. wheres, sub-queries, left outer joins, whatever).

### Caveat

Still very much learning [Rails][rails] (and Ruby), so take it all with a grain of salt. Maybe there is room for a mix-in somewhere that would refactor away the `find_by_sql` usage.

### The Desperate PHP Hacker

Much of the current evangelism (of which [DHH](http://www.loudthinking.com/) and [37sigs](http://37signals.com) are an amazing, untiring source) seems to have targetted the Java developer community (or perhaps they’re just the most touchy?). Seems like there is a need for a ‘Rails Eye for the PHP Guy’ kind of series. I wonder if my PHP style is too idiosyncratic.