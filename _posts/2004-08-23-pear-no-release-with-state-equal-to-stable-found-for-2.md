---
id: 3593
title: 'PEAR: No release with state equal to: &#8216;stable&#8217; found for &#8230;'
date: '2004-08-23T21:38:33+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2004/08/23/pear-no-release-with-state-equal-to-stable-found-for-2/'
permalink: /2004/08/23/pear-no-release-with-state-equal-to-stable-found-for-2/
categories:
    - Uncategorized
tags:
    - Code
    - howto
    - pear
    - php
---

Trying to use:

```
pear install Some_Package 

```

but getting

```
No release with state equal to: 'stable' found for Some_Package?

```

Some people will tell you to try:

```
pear install -f Some_Package 

```

(i.e. force install) A better solution is:

```
pear remote-info Some_Package

```

You’ll see near the top the latest version, e.g. Lastest: 0.8RC3.

Then you can do:

```
pear install Some_Package-0.8RC3

```

Sometimes you’ll already have a package installed (e.g. `"Package 'Foo_Package' is already installed"`), but need to upgrade to a unstable version.

```
pear remote-info Foo_Package

Package details:
================
Latest      1.0.2
Installed   1.0.1
...

pear install -f Foo_Package-1.0.2

```