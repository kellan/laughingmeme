---
title: 'Sick Day Project: Outlanders 2 "Wiki"'
date: '2026-10-25T20:13:18-04:00'
layout: post
---

I was supposed to ride the [NYC Century today](https://nyccentury.org/), but I ended up coming down with a nasty cold and I'm spending the day on the couch.  

I enjoy the [Outlanders 2 game](https://www.pomelogames.com/outlanders2/), an easy going village sim. But somehow it's never quite acquired one of those fandom wikis with the various details, and sometimes I'm curious about how many days it takes carrots to mature and what their yield is. (usually when playing in Tournament mode).

I used it as an excuse to try two LLM backed work modes I haven't tried much, computer use and decompilation (really data mining of assets, no actual decompilation happened). Computer use was slow and finicky, and I hadn't consciously realized that you can't use your computer for anything else while the LLM is driving it. (I'd get bored and start doing something on my computer and come back to "Connection lost")

Mining the game's assets by contrast worked better and was easier than I could have possibly imagined. I didn't have to tell it how, or anything about the data formats, or even where the files lived. I didn't even have to sit at my computer. I setup a model running on my laptop with access to the binaries, and then a shared repo and set of issues that I could have a model on my phone task the local model with questions, and way we went.

[3 carrots per field plot every 9 days](https://outlanders2wiki.com/buildings/carrot/) btw, but also first pass on the wiki claims it's a "building". That's data mining in a nutshell. (I might fix that)

So using the information Sol extracted from the game files, I quickly put together an [Outlanders 2 "wiki"](https://outlanders2wiki.com/). (wiki in the sense that there is a repo that will accept pull requests vs "wiki" in the sense that you can click to edit). ([data repo](https://github.com/kellan/outlanders2-wiki))

**update Oct 28:** A cold that won’t let go is apparently great for side projects. Switched from working locally, to working primarily on my phone, and using Github issues plus some in repo docs as a RPC to an agent running locally when additional information was needed. 51 pull requests, 580 data records have grown to 871, including all 260 challenge levels with the dates each one runs, a Mechanics section, search, and a look inspired by the game.

Computer use still slow, but works better when I’m not trying to use the laptop at the same time.