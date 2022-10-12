---
date: '2022-10-11T12:05:24-05:00'
layout: post
title: 'Quick and dirty overview of tasks in Obsidian'
context: 'At RSC'
---
### updated 10/12

As [Ward Cunningham](https://twitter.com/wardcunningham) says, _"The best way to ask a question is to share what you know, and have people tell you what you got wrong."_

Per [Ishan Puranik](https://twitter.com/whereiscalypso/status/1580057579673161728), [DataView](https://github.com/blacksmithgu/obsidian-dataview) queries are a _much_ better solution. I was planning to hook something up clever with Watchman (as [suggested by Channing](https://twitter.com/channingwalton/status/1579951895191650304)) to re-run the shell script, but one thing I hadn't figured out was how to keep my solution up to date when I made edits on Mobile. DataViews solves all of that with a native solution.  So now my tasks page is just:

    ```dataview
    TASK FROM "/"
    ```

Also, if you're playing with Obsidian, join the Discord.

### 10/11

I decided to ditch [Craft](https://www.craft.do/) in part because it didn't have a way to show me all my open todos. Obsidian doesn't have a default solution (as far as I can tell) to show me all the open checklist items. But Obsidian is an open system and you can make your own solution.
 
The community has a bunch of [offerings for seeing your Tasks](https://github.com/obsidian-tasks-group/obsidian-tasks), but so far all the plugins have felt heavier than I wanted (and didn't match my aesthetics in ways I can't quite articulate).
 
I sat down this afternoon to see if I could solve this problem for myself. I poked around the documentation (which is sparse), trying to figure out if things I saw the community talking about like "queries" were core features or community plugins.
 
I didn't find what I was looking for. So with 5 minutes of the 1 hour of yak shaving I allotted myself here is my current solution:


```
cd $your_vault
grep '\[ \]' * | sed 's/.md:- \[ \] /SEP/' | awk -F'SEP' '{printf "[[%s]] %s\n", $1,$2}' > Tasks.md
```

This creates a new document named "Tasks" with each of your unchecked todos with a link to their parent document.
