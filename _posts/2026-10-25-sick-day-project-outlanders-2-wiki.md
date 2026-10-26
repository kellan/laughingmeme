---
title: 'Sick Day Project: Outlanders 2 "Wiki"'
date: '2026-10-25T20:13:18-04:00'
layout: post
---

I was supposed to ride the [NYC Century today](https://nyccentury.org/), but I ended up coming down with a nasty cold and I'm spending the day on the couch.  

I enjoy the [Outlanders 2 game](https://www.pomelogames.com/outlanders2/), an easy going village sim. But somehow it's never quite acquired one of those fandom wikis with the various details, and sometimes I'm curious about how many days it takes carrots to mature and what their yield is. (usually when playing in Tournament mode). ([3 carrots per full field every 9 days](https://outlanders2wiki.com/buildings/carrot/))

I used it as an excuse to try two LLM backed work modes I haven't tried much, computer use and decompilation (really data mining of assets, no actual decompilation happened). Computer use was slow and finicky, and I hadn't consciously realized that you can't use your computer for anything else while the LLM is driving it. (I'd get bored and start doing something on my computer and come back to "Connection lost")

Mining the game's assets by contrast worked better and was easier than I could have possibly imagined. I didn't have to tell it how, or anything about the data formats, or even where the files lived. I didn't even have to sit at my computer. I setup a model running on my laptop with access to the binaries, and then a shared repo and set of issues that I could have a model on my phone task the local model with questions, and way we went.

So using the information Sol extracted from the game files, I quickly put together an [Outlanders 2 "wiki"](https://outlanders2wiki.com/). (wiki in the sense that there is a repo that will accept pull requests vs "wiki" in the sense that you can click to edit). ([data repo](https://github.com/kellan/outlanders2-wiki))

