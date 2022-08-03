---
id: 3549
title: 'Flexible Category Lists for WordPress'
date: '2007-01-12T22:52:31+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2007/01/12/flexible-category-lists-for-wordpress/'
permalink: /2007/01/12/flexible-category-lists-for-wordpress/
categories:
    - Uncategorized
tags:
    - Code
    - meta
    - tagging
    - wordpress
---

One of the side effect of overloading (perverting?) the \[Wordpress\](http://wordpress.org) category system to do tagging is you end up with over 1000 categories. The posting interface gets unhappy, and the \[`wp_list_cats`\](http://codex.wordpress.org/Template*Tags/wp*list\_cats) template tag becomes pretty much useless.

(This post is another WordPress meta post, one of several I’ve got queued up in my head, and probably interesting to 3 people in the known universe, but here you go.)

\[`better_cat_lists`\](/code/better*cat*lists.php.txt) is WordPress plugin that adds a couple of more flexible methods.

### `wp_list_popular_categories`

works like `wp_list_cats`, but only categories with $cat\_threshold posts in them.

```
wp_list_popular_categories('sort_column=name&cat_threshold=20');

```

### `wp_list_recent_categories`

works like `wp_list_cats`, but only from posts with the last $n days. You can also limit the total number with $cat\_limit

```
wp_list_recent_categories('days_ago=180&cat_limit=80');

```

Both methods use the same hack, they overload the `list_cats_exclusions` callback to do positive match instead of the intended negative match – appending `and cat_ID in ($cat_ids)` to the exclusion string. PHP at its finest, quick and dirty, like monkey patching but without language level support for it.