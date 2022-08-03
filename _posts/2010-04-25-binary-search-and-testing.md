---
id: 4565
title: 'Binary Search, and Testing'
date: '2010-04-25T13:30:09+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=4565'
permalink: /2010/04/25/binary-search-and-testing/
categories:
    - Uncategorized
---

[Buzz](http://log.scifihifi.com/) put me in a difficult position. He sent me this great article, [Testing is not a substitute for thinking](http://reprog.wordpress.com/2010/04/23/testing-is-not-a-substitute-for-thinking-binary-search-part-3/).

Testing is obviously useful, and I never ship any code without testing it, but I’m also known to be annoyed with the cargo cult application of TDD. Read the blog post if you haven’t already, the arguments are nuanced, and I won’t do them justice rehashing them. ([see also](http://twitter.com/schuyler/status/11891558007))

The point that really resonated for me is

> Tests increase confidence, not understanding

So far, so good.

Except, here’s the sticky bit. This whole blog post turns out to be wrap up for a challenge started in an earlier blog post, [Are you one of the 10% of programmers who can write a binary search?](http://reprog.wordpress.com/2010/04/19/are-you-one-of-the-10-percent/).

The challenge is, sit down, write an implementation of binary search based on Jon Bentley’s classic description from start to finish, **WITHOUT** testing it. The idea is to see if you can write a program purely from first principles without the thrashing around that characterizes the daily grind of every working programmer.

So what’s the difficult position? Well this whole challenge smells suspiciously of whiteboard-programming something I detest probably even more then TDD-will-save-us fanaticism. Besides it was a nice day yesterday, so I let it be.

But then today [another smart programmer](http://rc3.org/2010/04/25/becoming-a-better-programmer/) links to it, and today it’s raining outside, and so here it is, my binary search impl., in Ruby, un-tested, here to embarrass me.

# SPOILER ALERTS!

# YOU SHOULD GO DO YOUR OWN, AND THEN COME BACK.

```
def binarysearch(t, list, lo=0, hi=list.length-1)

  return nil if (hi < lo)

  m = (hi-lo)/2+lo

  if (t == list[m])
    m
  elsif (t > list[m])
    binarysearch(t, list, m+1, hi)
  elsif (t < list[m])
    binarysearch(t, list, lo, m-1)
  end
end

```

I spent ~25 minutes on it, mostly pysch-ing myself out. In the end it feels mostly written from memory — without having seen this form somewhere at some point (probably in `Programming Pearls`) I probably would have reached for a loop based version.

Now that I’ve got it copied here in its final form I notice that my code for picking the mid-point is pretty silly (easier written as `m=(hi+lo)/2`). Additionally if I was writing this in production code I’d almost certainly be checking my invariants much more explicitly. Less elegant, unnecessary, more lines of code, but much much clearer for the next guy.

This is my first Ruby in probably 4 months (and my first implementation of a recursive binarysearch in much longer), so if you happen to see an egregious bug, be gentle on me.

Also, if I lent you my copy of [Programming Pearls](http://www.amazon.com/Programming-Pearls-2nd-Jon-Bentley/dp/0201657880), can I have it back?

Now, who remembers what the story was with the first binary search having a bug? I think I read the story in a Dr. Dobbs sometime in the mid-90s, but my memory isn’t what it once was.

**update:** I’m finding it interesting comparing [how different my implementation is vs Kastner’s](http://metaatem.net/2010/04/25/binary-search-yall) given we’re using the same language to implement the same essentially trivially algorithm.