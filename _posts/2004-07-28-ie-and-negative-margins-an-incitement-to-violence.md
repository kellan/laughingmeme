---
id: 868
title: 'IE and Negative Margins:  An Incitement to Violence'
date: '2004-07-28T11:42:20+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=868'
permalink: /2004/07/28/ie-and-negative-margins-an-incitement-to-violence/
typo_id:
    - '866'
mt_id:
    - '2223'
link_related:
    - ''
raw_content:
    - "<p>\nSometimes living in Seattle is dangerous.  When I was living in Boston the impulse to hitch a lift over to Remond and pummel the people responsible for IE, while strong, usually wasn\\'t strong enough to over come the 3,000 intervening miles.\n</p>\n<p>\nBut just launching IE really sucks the beauty and joy out of the world.  For example, if you were playing with laying out a new tab-based CSS interface for a project you\\'re working on, and you had alighted on a simple yet elegant solution for attaching those tabs to a box using a negative top-margin, you might feel moved to violence when IE6/Win inexplicably freaked out at this relatively simple construct.  (for the record IE5/Mac works just fine)  I\\'ve done a bit of goggling, and I\\'m not turning up any info on a IE6 negative margin bug.  Anyone have the scoop?\n</p>\n<p>\nThe behaviour in the context of LM seems to be different (it just screws up the whole left hand column), so here it is on its <a href=\\\"http://protest.net:8081/~kellan/simple-margin.html\\\">own page</a>.\n<p>\nA simplified example of the code I was playing with was:\n\n<style>\n#container {\n\t\tmargin: 30px;\n\t\tborder: 1px solid #ccc;\n\t}\n\n\t#navtabs {\n\t\tpadding: 0;\n\t\tmargin: 0;\n\t\tmargin-top: -20px;\n\t\tpadding-bottom: 20px;\n\t}\n\n\t#navtabs ul, #navtabs li {\n\t\tdisplay: inline;\n        list-style-type: none;\n\t\tpadding: 0;\n\t\tmargin: 0;\n\t}\n\t#navtabs a:link, #navtabs a:visited {\n\t\tbackground: #eee;\n        border: 1px solid #ccc;\n\t\tfloat: left;\n\t\tline-height: 14px;\n        font-size: small;\n\t\tmargin-right: 4px;\n\t\tpadding: 2px 4px 2px 4px;\n        text-decoration: none;\n\t}\n</style>\n\n<div id=\\\"container\\\">\n\t<ul id=\\\"navtabs\\\">\n            <li><a href=\\\"e\\\">Home</a></li>\n            <li><a href=\\\"c\\\" class=\\\"current\\\">Contacts</a></li>\n            <li><a href=\\\"h\\\">Settings</a></li>\n        </ul>\n\n\t\tjoy\n</div>\n<p>\nIn Mozilla this works as expected (at least as I expect it), in Internet Explorer you should be seeing 3-4 random grey horizontal lines.\n</p>\n<p>\nThe source:<br />\n<textarea rows=\\\"10\\\" cols=\\\"45\\\">\n<style>\n#container {\n\t\tmargin: 30px;\n\t\tborder: 1px solid #ccc;\n\t}\n\n\t#navtabs {\n\t\tpadding: 0;\n\t\tmargin: 0;\n\t\tmargin-top: -20px;\n\t\tpadding-bottom: 20px;\n\t}\n\n\t#navtabs ul, #navtabs li {\n\t\tdisplay: inline;\n        list-style-type: none;\n\t\tpadding: 0;\n\t\tmargin: 0;\n\t}\n\t#navtabs a:link, #navtabs a:visited {\n\t\tbackground: #eee;\n        border: 1px solid #ccc;\n\t\tfloat: left;\n\t\tline-height: 14px;\n        font-size: small;\n\t\tmargin-right: 4px;\n\t\tpadding: 2px 4px 2px 4px;\n        text-decoration: none;\n\t}\n</style>\n\n<div id=\\\"container\\\">\n\t<ul id=\\\"navtabs\\\">\n            <li><a href=\\\"e\\\">Home</a></li>\n            <li><a href=\\\"c\\\" class=\\\"current\\\">Contacts</a></li>\n            <li><a href=\\\"h\\\">Settings</a></li>\n        </ul>\n\n\t\tjoy\n</div>\n</textarea>\n</p>"
---

Sometimes living in Seattle is dangerous. When I was living in Boston the impulse to hitch a lift over to Remond and pummel the people responsible for IE, while strong, usually wasn’t strong enough to over come the 3,000 intervening miles.

But just launching IE really sucks the beauty and joy out of the world. For example, if you were playing with laying out a new tab-based CSS interface for a project you’re working on, and you had alighted on a simple yet elegant solution for attaching those tabs to a box using a negative top-margin, you might feel moved to violence when IE6/Win inexplicably freaked out at this relatively simple construct. (for the record IE5/Mac works just fine) I’ve done a bit of goggling, and I’m not turning up any info on a IE6 negative margin bug. Anyone have the scoop?

The behaviour in the context of LM seems to be different (it just screws up the whole left hand column), so here it is on its [own page](http://protest.net:8081/~kellan/simple-margin.html).

A simplified example of the code I was playing with was:

<style></style>

# container {

```
    margin: 30px;
    border: 1px solid #ccc;
}

#navtabs {
    padding: 0;
    margin: 0;
    margin-top: -20px;
    padding-bottom: 20px;
}

#navtabs ul, #navtabs li {
    display: inline;
    list-style-type: none;
    padding: 0;
    margin: 0;
}
#navtabs a:link, #navtabs a:visited {
    background: #eee;
    border: 1px solid #ccc;
    float: left;
    line-height: 14px;
    font-size: small;
    margin-right: 4px;
    padding: 2px 4px 2px 4px;
    text-decoration: none;
}

```

<div id="container">- [Home](e)
- [Contacts](c)
- [Settings](h)
 
 joy </div>In Mozilla this works as expected (at least as I expect it), in Internet Explorer you should be seeing 3-4 random grey horizontal lines.

The source:  
<textarea cols="45" rows="10"><style></style></textarea>

# container {

```
    margin: 30px;
    border: 1px solid #ccc;
}

#navtabs {
    padding: 0;
    margin: 0;
    margin-top: -20px;
    padding-bottom: 20px;
}

#navtabs ul, #navtabs li {
    display: inline;
    list-style-type: none;
    padding: 0;
    margin: 0;
}
#navtabs a:link, #navtabs a:visited {
    background: #eee;
    border: 1px solid #ccc;
    float: left;
    line-height: 14px;
    font-size: small;
    margin-right: 4px;
    padding: 2px 4px 2px 4px;
    text-decoration: none;
}

```

<div id="container">- [Home](e)
- [Contacts](c)
- [Settings](h)
 
 joy </div>