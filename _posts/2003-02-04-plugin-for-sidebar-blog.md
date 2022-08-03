---
id: 306
title: 'Plugin for Sidebar Blog'
date: '2003-02-04T19:07:41+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=306'
permalink: /2003/02/04/plugin-for-sidebar-blog/
typo_id:
    - '304'
mt_id:
    - '363'
link_related:
    - ''
raw_content:
    - "<p>\r\n<a href=\\\"http://www.anarchogeek.com\\\">Rabble</a> complained that he never remembered to check to see if the MLPs section had been updated, and suggested I add an entry each day hilighting the MLP section.\r\n</p>\r\n<p>\r\nSo many hours later, I know more about the Moveable Type plugin architecture\r\nthen I would care to.  In the end however, with my many expirements cast to the\r\nside, it turned out not to be as difficult as I thought.\r\n</p>\r\n\n<p>\r\nI stole some inspiration from <a\r\nhref=\\\"http://www.bradchoate.com/past/mtonthisday.php\\\">MTOnThisDay</a>, and\r\nwrapped the call in <a\r\nhref=\\\"http://www.rayners.org/archives/000108.php\\\">MTOtherBlog</a>.  And now I\r\nhave a way to pull in the contents of my sidebar blog.  \r\n</p>\r\n<p>\r\nWithout further ado, \r\n<a href=\\\"http://laughingmeme.org/plugins/on_this_date.pl\\\">MTEntriesOnThisDate</a>, which provides 2 tags.\r\n<ul>\r\n<li>MTEntriesOnThisDate - is a container tag that can be used to setup an entries\r\narray.</li>\r\n<li>MTEntriesOnThisDateCount - provides a count (my true desire in all this) of\r\nthe entries on a given date.</li>\r\n</ul>\r\nSo to display the headlines, from ones sidebar blog, on a given date you use:\r\n<pre class=\\\"code\\\">\r\n&lt;MTDateFooter&gt;\r\n   &lt;MTOtherBlog blog_name=\\\"other\\\"&gt;\r\n          &lt;MTEntiresOnThisDate&gt;\r\n         &lt;MTEntries&gt;\r\n\t     &lt;$MTEntryTitle$&gt;&lt;br /&gt;\r\n\t  &lt;/MTEntries&gt;\r\n            &lt;/MTEntiresOnThisDate&gt;\r\n   &lt;/MTOtherBlog&gt;\r\n&lt;/MTDateFooter&gt;\r\n</pre>\r\nOr, the purpose of all this, a quick listing of updates\r\n<pre class=\\\"code\\\">\r\n&lt;MTDateFooter&gt;\r\n   &lt;MTOtherBlog blog_name=\\\"other\\\"&gt;\r\n       &lt;a href=\\\"#mlp_&lt;$MTEntryDate \r\n\t         format=\\\"%Y%m%d\\\"$&gt;\\\"&gt;&lt;$MTEntriesOnThisDateCount$&gt; new MLPs&lt;/a&gt;   \r\n   &lt;/MTOtherBlog&gt;\r\n&lt;/MTDateFooter&gt;\r\n</pre>\r\n</p>"
---

[Rabble](http://www.anarchogeek.com) complained that he never remembered to check to see if the MLPs section had been updated, and suggested I add an entry each day hilighting the MLP section.

So many hours later, I know more about the Moveable Type plugin architecture then I would care to. In the end however, with my many expirements cast to the side, it turned out not to be as difficult as I thought.

I stole some inspiration from [MTOnThisDay](http://www.bradchoate.com/past/mtonthisday.php), and wrapped the call in [MTOtherBlog](http://www.rayners.org/archives/000108.php). And now I have a way to pull in the contents of my sidebar blog.

Without further ado, [MTEntriesOnThisDate](http://laughingmeme.org/plugins/on_this_date.pl), which provides 2 tags.

- MTEntriesOnThisDate – is a container tag that can be used to setup an entries array.
- MTEntriesOnThisDateCount – provides a count (my true desire in all this) of the entries on a given date.

So to display the headlines, from ones sidebar blog, on a given date you use: ```
<pre class="code">
<MTDateFooter>
   <MTOtherBlog blog<em>name="other">
          <MTEntiresOnThisDate>
         <MTEntries>
         <$MTEntryTitle$><br />
      </MTEntries>
            </MTEntiresOnThisDate>
   </MTOtherBlog>
</MTDateFooter>
</em>
```

Or, the purpose of all this, a quick listing of updates ```
<pre class="code">
<MTDateFooter>
   <MTOtherBlog blogname="other">
       <a href="#mlp_<$MTEntryDate 
             format="%Y%m%d"$>"><$MTEntriesOnThisDateCount$> new MLPs</a><br></br>
   </MTOtherBlog>
</MTDateFooter>
```