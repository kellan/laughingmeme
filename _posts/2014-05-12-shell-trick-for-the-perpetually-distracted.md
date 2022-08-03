---
id: 5278
title: 'Shell trick for the perpetually distracted'
date: '2014-05-12T08:57:02+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/?p=5278'
permalink: /2014/05/12/shell-trick-for-the-perpetually-distracted/
categories:
    - Uncategorized
---

Manager time is the schedule that sub-divides your day into 15 minute blocks. It’s the internal clock in your head that knows when you’ve reached the end of a 30 minute meeting without checking the clock. It’s a trained form of ADHD, and it’s the opposite of maker time.

One of the things I find I need in manager time is a quick way to regain my context. I’m way behind on adopting a proper getting things done framework, but it wouldn’t help with this one thing I wanted to post about today anyway.

I keep two copies of most of the Etsy code base locally. The one I use constantly, which is for quick reference when a technical question comes up, and the one I use almost never which is where my various half hearted attempts to compress a quick hack into a 15 minute block live.

`git` gives me the tools to make it very painful when I get confused about which directory I’m in.

So in prep for hoping to finish up a quick hack during hack week (didn’t happen) I shaved a small attention starved yak. Namely changing the color of my terminal when I’m in `workspace`, which is the hacking directory. It’s a parallel to prompt hacks I’ve had for years that change based on host, but it uses `osascript` (command line AppleScript) for simplicity in scripting Terminal.app

```
set_bg () {
  osascript -e "tell application \"Terminal\" to set current settings of window 1 to settings set \"$1\""
}

function cd {
  old_wd=$(pwd)
  builtin cd "$@"
  pwd=$(pwd)
  if [[ "$pwd/" =~ /workspace/ ]] ; then
    set_bg "Red Sands"
  elif [[ "$old_wd/" =~ /workspace/ ]] ; then
    set_bg "Basic"
  fi
}

```

Override `cd`, if we entering `workspace`, use the profile “Red Sands”, if we’re leaving `workspace` switch basic to “Basic”.