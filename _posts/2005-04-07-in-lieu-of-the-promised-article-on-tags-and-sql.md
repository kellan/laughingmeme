---
id: 1065
title: 'In Lieu of the Promised Article on Tags and SQL'
date: '2005-04-07T07:19:11+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=1065'
permalink: /2005/04/07/in-lieu-of-the-promised-article-on-tags-and-sql/
typo_id:
    - '1063'
mt_id:
    - '2918'
link_related:
    - ''
raw_content:
    - "For the folks I promised an article on how to implements tags in SQL.  Sorry, I never finished it.  I got sucked into some more esoteric problems, and never got back to writing down the basics.  However, all is not lost.  [Peter](http://www.petercooper.co.uk) has done a very nice job of writing about how he implemented tagging for his [snippets code libraries](http://www.bigbold.com/snippets/).\n\n1. [Matching on data intersection across a many-to-many join](http://www.petercooper.co.uk/archives/000648.html) - aka, how to find an object (e.g. a post or a recipe) with two or more tags (i.e. show my all posts tagged with `tagging` and `sql`).  For the lazy, skip to bottom for a solution. (but it\\'s worth reading through) This is what enables [tag combos](http://laughingmeme.org/archives/002734.html#002734). (Also available [from snippets](http://www.bigbold.com/snippets/posts/show/32))\n\n2. [Find items with similar (or as many as possible) relationships - for a \\'related posts\\' box etc](http://www.bigbold.com/snippets/posts/show/35) - aka, find other recipes tagged with similar tags to the recipe I\\'m currently looking at I\\'m currently looking at.  In [Recipes on Rails](http://laughingmeme.org/archives/002842.html#002842), if I\\'m looking at my recipe for hot chocolate (tags: `beverage`, `hot`, `chocolate`), use this query to also show tea and coffee. (both tagged `beverage` and `hot`)\n\n3. [Find all many-to-many relationships which are tied to an arbitrary number of other many-to-many relationships](http://www.bigbold.com/snippets/posts/show/34) - I\\'m looking at all recipes with the tags `easy`, and `hot`, what are related tags I could use?  How about `carrot`, and `curry` (my curry carrot soup is tagged `easy`, `soup`, `carrot`, and `curry`, not to mention `winter` and `favorite`), or maybe `silly` with which I\\'ve tagged my boiled water recipe.  \n    After some futzing I came up with the same query that Peter did, but I was really hoping there was another solution, as I\\'ve been seeing some of the same [worrying numbers using MySQL 4.1.x\\'s subqueries](http://www.peerfear.org/rss/permalink/2005/04/02/BrokenMySQLSubqueries/) that Kevin is.\n\nThere you go, you no longer have any excuse for building a sub-par tagging system.\n\nfyi, [Peter](http://www.petercooper.co.uk/), from whom all those tips originate, on top of being the creator of the [snippets](http://bigbold.com/snippets/) site, is [available for hire](http://www.petercooper.co.uk/archives/000662.html)."
tags:
    - rails
    - sql
    - tagging
    - tags
---

For the folks I promised an article on how to implements tags in SQL. Sorry, I never finished it. I got sucked into some more esoteric problems, and never got back to writing down the basics. However, all is not lost. [Peter](http://www.petercooper.co.uk) has done a very nice job of writing about how he implemented tagging for his [snippets code libraries](http://www.bigbold.com/snippets/).

1. [Matching on data intersection across a many-to-many join](http://www.petercooper.co.uk/archives/000648.html) – aka, how to find an object (e.g. a post or a recipe) with two or more tags (i.e. show my all posts tagged with `tagging` and `sql`). For the lazy, skip to bottom for a solution. (but it’s worth reading through) This is what enables [tag combos](http://laughingmeme.org/archives/002734.html#002734). (Also available [from snippets](http://www.bigbold.com/snippets/posts/show/32))
2. [Find items with similar (or as many as possible) relationships – for a ‘related posts’ box etc](http://www.bigbold.com/snippets/posts/show/35) – aka, find other recipes tagged with similar tags to the recipe I’m currently looking at I’m currently looking at. In [Recipes on Rails](http://laughingmeme.org/archives/002842.html#002842), if I’m looking at my recipe for hot chocolate (tags: `beverage`, `hot`, `chocolate`), use this query to also show tea and coffee. (both tagged `beverage` and `hot`)
3. [Find all many-to-many relationships which are tied to an arbitrary number of other many-to-many relationships](http://www.bigbold.com/snippets/posts/show/34) – I’m looking at all recipes with the tags `easy`, and `hot`, what are related tags I could use? How about `carrot`, and `curry` (my curry carrot soup is tagged `easy`, `soup`, `carrot`, and `curry`, not to mention `winter` and `favorite`), or maybe `silly` with which I’ve tagged my boiled water recipe.  
    After some futzing I came up with the same query that Peter did, but I was really hoping there was another solution, as I’ve been seeing some of the same [worrying numbers using MySQL 4.1.x’s subqueries](http://www.peerfear.org/rss/permalink/2005/04/02/BrokenMySQLSubqueries/) that Kevin is.

There you go, you no longer have any excuse for building a sub-par tagging system.

fyi, [Peter](http://www.petercooper.co.uk/), from whom all those tips originate, on top of being the creator of the [snippets](http://bigbold.com/snippets/) site, is [available for hire](http://www.petercooper.co.uk/archives/000662.html).