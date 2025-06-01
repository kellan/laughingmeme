---
title: 'Web app for looking up NYC street trees'
date: '2025-06-01T12:05:30-05:00'
layout: post
---

I spent Thursday at King's County Court House finding out whether I was going to be called for jury duty. I used the opportunity to reach _way back_ in the spark file for a silly side project, a web app for browsing NYC's street trees.

<img src="/img/spark-trees-near-you.jpg">

This project has been on my todo list for a long time (probably even before the 2016 date I have written down here). I was inspired by [Trees Near You](https://www.treesnearyou.com/), an awesome hack from [Brett Camper](https://www.brettcamper.com/) at a hackathon the city threw to promote its new open data initiatives (back when NYC did that kind of thing). At some point Apple changed some APIs and Brett's awesome app stopped working and I conceived the notion to rebuild it for the web.

Now this project is largely pointless, because in the intervening decade [NYC Parks has launched an excellent website to serve just this purpose](https://tree-map.nycgovparks.org/). But it's a fun, self contained little project, and I've picked up a couple of different times to try out new technology. (The React and React Native versions never really worked. A version I tried to build with Claude's help in 2023 on Svelte mostly worked locally in Chrome, but never on Safari or in production). With Claude Code this time I got further.

So here is a [simple Trees NYC web app](https://treesnyc.onrender.com/). Relatively vanilla Javascript, SQLite backend. Please enjoy New Yorks 650k+ trees.

(and I was dismissed from jury duty, I don't think the vibe coding was the reason.)

