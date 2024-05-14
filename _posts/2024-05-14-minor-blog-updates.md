---
title: 'Minor blog updates'
date: '2024-05-14T09:05:30-05:00'
layout: post
---
Because I use a slightly non-standard Jekyll for this blog I've been generating the HTML locally and then rsync'ing that output to a very tiny Linode host versus just letting Github Pages handle the hosting as I do with [kellanem.com](https://kellanem.com).

This weekend I sat down to make it so that HTML generation could run on demand somewhere in the cloud with the rough idea that maybe an AWS Lambda was the answer. In evaluating my options I did what any senior and sophisticated engineering leader would do, I asked ChatGPT. Among the 4 options it suggested was Github Actions, which definitely felt like the most straightforward.

This was my first time ever using Github Actions directly versus vaguely overseeing a team using it, and I was impressed by what good kit it is. Nice to be up-to-date with cutting edge technology circa 2018.

Here is [my workflow file that runs my tweaked version of Jekyll on every commit and push it to the gh-pages branch](https://github.com/kellan/laughingmeme/blob/main/.github/workflows/jekyll.yml). At first I thought I'd keep rsync'ing the generated output to the Linode host, and with a bit of poking and prodding I got that working as a GH Actions as well, but in the end it was just easier to host the site on Pages.

Let me know if you notice anything broken.

(Hmmm, seems like something is happening that reverts the custom domain settings periodically, more investigating todo)