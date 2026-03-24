---
title: 'Coding on Vacation'
date: '2026-03-24T09:37:37-05:00'
layout: post
---

The question I asked myself (and the private Slack channel): is ensuring that I have a phone based approach to agentic coding while I'm on vacation healthy because I'm ensuring that I'm not on the computer, a phone is less instrusive, or extremely unhealthy, because you know (gestures broadly) the whole being on vacation thing.

First attempt was VPS + Tailscale + tmux + Moshi + Claude Code Remote Control.

Clunky. SSH on the phone is never going to be fun. Claude Code /rc is very much a 1.0 product (sorry Andy!), I didn't have a good pipeline to serving the things I was building, and when I put CC on yolo'ing some network configurations I lost access to the VPS, and breaking back in is a post vacation activity.

Second was using exe.dev, and in particular their agent Shelley. (Frankenstein reference?)

It's been a ton of fun, works great on mobile web. Comes with a sophisticated set of tools around coding, researching, brainstorming, testing in browsers (including mobile emulation, accessibility and performance), visual QA, etc. As someone who has been playing with souping up harnesses recently this feels like a nice one. It uses sub-agents by default, and async web UI so it's all background work by default. Has a built in code to publish pipeline. I'm having a lot of fun with it. My only caveat is I'm not sure how much it's going to cost, I can't really reason about that bit yet.

Started building a fun toy while we waited on the tarmac at JFK: a [garden of generative coding techniques](https://garden.exe.xyz/) (in an older sense of the word).

And then I had it check out my blog repo, new my new post script, and I transcribed this blog post while getting a break from the sun. Fun.