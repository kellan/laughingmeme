---
date: '2022-10-11T12:05:24-05:00'
layout: post
title: 'Quick and dirty overview of tasks in Obsidian'
context: 'At RSC'
---
I decided to ditch [Craft](https://www.craft.do/) in part because it didn't have a way to show me all my open todos. Obsidian doesn't have a default solution (as far as I can tell) to show me all the open checklist items. But Obsidian is an open system and you can make your own solution.
 
The community has a bunch of [offerings for seeing your Tasks](https://github.com/obsidian-tasks-group/obsidian-tasks), but so far all the plugins have felt heavier than I wanted (and didn't match my aesthetics in ways I can't quite articulate).
 
I sat down this afternoon to see if I could solve this problem for myself. I poked around the documentation (which is sparse), trying to figure out if things I saw the community talking about like "queries" were core features or community plugins.
 
I didn't find what I was looking for. So with 5 minutes of the 1 hour of yak shaving I allotted myself here is my current solution:


```
cd $your_vault
grep '\[ \]' * | sed 's/.md:- \[ \] /SEP/' | awk -F'SEP' '{printf "[[%s]] %s\n", $1,$2}' > Tasks.md
```

This creates a new document named "Tasks" with each of your unchecked todos with a link to their parent document.
