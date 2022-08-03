---
id: 520
title: 'Use A Better Browser'
date: '2003-07-19T13:42:38+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=520'
permalink: /2003/07/19/use-a-better-browser/
typo_id:
    - '518'
mt_id:
    - '998'
link_related:
    - ''
raw_content:
    - "<p>\r\nJust spent 30 seconds whipping up some javascript to support Tim Bray\\'s <a href=\\\"http://www.tbray.org/ongoing/When/200x/2003/07/17/BrowserDream\\\">Use A Better Browser</a> idea. \r\n</p>\n<pre class=\\\"code\\\">\r\n&lt;script type=\\\"text/javascript\\\" language=\\\"javascript\\\"&gt;\r\n&lt;!--\r\nfunction betterBrowser (){\r\n\tvar agt=navigator.userAgent.toLowerCase();\r\n\tvar is_major = parseInt(navigator.appVersion);\r\n\tvar is_minor = parseFloat(navigator.appVersion);\r\n    \r\n\tvar is_nav  = ((agt.indexOf(\\'mozilla\\')!=-1) &amp;&amp; (agt.indexOf(\\'spoofer\\')==-1)\r\n        && (agt.indexOf(\\'compatible\\') == -1) &amp;&amp; (agt.indexOf(\\'opera\\')==-1)\r\n        && (agt.indexOf(\\'webtv\\')==-1) &amp;&amp; (agt.indexOf(\\'hotjava\\')==-1));\r\n                \r\n\tvar is_ie  = ((agt.indexOf(\\\"msie\\\") != -1) &amp;&amp; (agt.indexOf(\\\"opera\\\") == -1));\r\n\t\r\n\tif ( ( is_nav &amp;&amp; is_major &lt; 5 ) || is_ie ) {\r\n\t    document.write(\\'&lt;a href=\\\"http://www.tbray.org/ongoing/When/200x/2003/07/17/BrowserDream\\\"&gt;\\');\r\n            document.write(\\'&lt;img src=\\\"http://laughingmeme.org/betterbrowser.gif\\\" border=\\\"0\\\"&gt;&lt;/a&gt;\\');\r\n\t}\r\n}\r\n//--&gt;\r\n</pre>"
---

Just spent 30 seconds whipping up some javascript to support Tim Bray’s [Use A Better Browser](http://www.tbray.org/ongoing/When/200x/2003/07/17/BrowserDream) idea.

```
<pre class="code">
<script type="text/javascript" language="javascript">
<!--
function betterBrowser (){
    var agt=navigator.userAgent.toLowerCase();
    var is<em>major = parseInt(navigator.appVersion);
    var is</em>minor = parseFloat(navigator.appVersion);

<code>var is_nav  = ((agt.indexOf('mozilla')!=-1) &amp;&amp; (agt.indexOf('spoofer')==-1)
    && (agt.indexOf('compatible') == -1) &amp;&amp; (agt.indexOf('opera')==-1)
    && (agt.indexOf('webtv')==-1) &amp;&amp; (agt.indexOf('hotjava')==-1));

var is_ie  = ((agt.indexOf("msie") != -1) &amp;&amp; (agt.indexOf("opera") == -1));

if ( ( is_nav &amp;&amp; is_major &lt; 5 ) || is_ie ) {
    document.write('&lt;a href="http://www.tbray.org/ongoing/When/200x/2003/07/17/BrowserDream"&gt;');
        document.write('&lt;img src="http://laughingmeme.org/betterbrowser.gif" border="0"&gt;&lt;/a&gt;');
}
</code>

<p>}
//-->
</p>
```