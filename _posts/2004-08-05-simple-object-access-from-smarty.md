---
id: 876
title: 'Simple Object Access from Smarty'
date: '2004-08-05T23:51:14+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=876'
permalink: /2004/08/05/simple-object-access-from-smarty/
typo_id:
    - '874'
mt_id:
    - '2266'
link_related:
    - ''
raw_content:
    - "<p>\nOn one hand it\\'s kind of disheartening how much resistance and fear there\nis towards objects from segments of the PHP community. (hilighted by the recent\nhostility towards PHP5\\'s adding of something resembling a working object model)\nOn the other hand can you blame them when popular tools like Smarty <a\nhref=\\\"http://smarty.php.net/manual/en/advanced.features.php#advanced.features.ob\njects\\\">punish you for using object?</a> \n</p> \n<p>\n<h3>Transparent, Unified Access</h3>\nIn the ideal world you could pass an array or an object to <a href=\\\"http://smarty.php.net\\\">Smarty</a> and have the access be transparent.  Being able to call methods on objects from your template is immensley useful.  Besides reinforcing your data model you also:\n<ol>\n  <li>don\\'t have to write all those toArray() method to dump your data to Smarty</li>\n  <li>can lazy load data as needed</li>\n  <li>can provide intelligent formatting without the need to write a Smarty plugin</li>\n</ol>\nAnd being able to do it transparently means it is painless to migrate from  using arrays to using objects (e.g. as your traffic grows, you switch to lazy loading objects), or from objects to arrays.  (another way to say it is, having to know the underlying data storage implementation is a clear case of a leaky abstraction)\n</p>\n<p>\n(fyi this \\\"ideal world\\\" is also known as <a href=\\\"http://template-toolkit.org\\\">Template Toolkit</a>)\n</p>\n<p>\n<h3>SPL</h3>\nThere is however a way, with a little effort, to achieve this behaviour with Smarty and PHP5.  One of the most useful, and least discussed new features of PHP5, is the <a href=\\\"http://www.zend.com/manual/ref.spl.php\\\">SPL</a>, \\\"a collection of interfaces and classes that are meant to solve standard problems\\\", including allowing objects to behave like arrays, using the <a href=\\\"http://www.php.net/~helly/php/ext/spl/interfaceArrayAccess.html\\\">ArrayAccess</a> interface.\n</p>\n<p>\n<h3>A quick example (there are probably better ones)</h3>\n</p>\n<p>\nSay you had a class that you used to help you page through a list of results, and at the bottom of each page you wanted to add a slug like \\\"Widgets 21-30 of 142\\\".\n</p>\n<p>\nOne solution would be to assign <code>{$objectType}</code>, <code>{$showingMin}</code>, <code>{$showingMax}</code>, <code>{$totalToShow}</code> (or some such) variables to Smarty, and then have something like the following in your template:\n<pre class=\\\"code\\\">\n{$objectType} {$showingMin}-{$showingMax} of {$totalToShow} in\n</pre>\n</p>\n<p>\nBut to my eye that seems to clutter up the paging code with assigns, and clutter up the templates with unintuitive markup. (and this is a simple case)\n</p>\n<p>\nAnother solution would be to build the string at some point in your code, and pass <b>that</b> to Smarty (making your eventual I18N process just that much more challenging)\n</p>\n<p>\nThe third solution is to have your Pager class <em>pretend</em> to be an array, allowing you to add <code>{$page.showStatus}</code> to your templates which Smarty will compile into  <code>$this->_tpl_vars[\\'page\\'][\\'showStatus\\']</code>, and the SPL will intercept and transform into <code>$page->offsetGet(\\'showStatus\\')</code>;\n</p>\n<p>\nSo whats does the Pager class look like?  Well the relevant bits look like:\n<pre>\nclass Pager implements ArrayAccess {\n   ...\n   function offsetGet($k) {\n   \tif ($this->offsetExists($k)) {\n                return $this->$k();\n        }\n   }\n        \n   function offsetExists($k) {\n       return method_exists($this, $k);\n   }\n   \n   /* set and unset don\\'t do anything */     \n   function offsetSet($k, $v) {}\n   function offsetUnset($k) {}\n\n   function showStatus() {\n      ...construct status string and return it....\n   }\n}\n</pre>\nThe offsetGet() method is the intersting piece.  It says, \\\"take the array access key, and call the method of the same name on that object\\\".  Voila, you can now pass objects to templates, and call methods on them. \n</p>\n<p>\n<h3>A Word About Security</h3>\nGenerally you trust your template editors, but if calling arbitrary code worries you there are a couple of things you can do.\n<ul>\n<li>strip all non-word characters from your access key like so:  <code>$key = preg_replace(\\'/\\\\W/\\', \\'\\', $key);</code></li>\n\n<li> the method calls are already namespaced to the object, but you could quarantine them further by appending a string to them (e.g. \\'tmpl_\\'), in which case your offsetGet() becomes\n<pre>\n   function offsetGet($k) {\n        $k = preg_replace(\\'/\\\\W/\\', \\'\\', $k);\n   \t$f = \\\"tmpl_$f\\\";\n        return $this->$f();\n   }\n</pre>\n(alternately you could use Relection API to limit offsetGet to only exposing methods inherited from some base class, or whatever other creative solution strikes your fancy)</li>\n</ul>\n</p>\n<p>\n(Note most of this code was sketched out on my way home tonight, and my spiral bound notebook\\'s PHP syntax hilighting is pretty weak not to mention lacks PHP5 support, so there might be some bugs in the above code)\n</p>\n<p>\n<h3>Smarty and Iterators</h3>\nOkay, so all that above is about using SPL\\'s array interface to allow method access, but what if you want pass iterators to Smarty?  Should just work right?  Unfortunately not.  You see in Smarty\\'s <code>_compile_foreach_start</code>, arrays are accessed with an <b>explicit</b> array cast, making it impossible to use an iterator.   The quick and dirty solution is to remove this explicit cast.  However Smarty\\'s vmethod\\'s list .first, and .last won\\'t be available.  For that you need this <a href=\\\"http://news.php.net/php.smarty.dev/2510\\\">patch sent to the Smarty Dev list</a>. (hasn\\'t tested it yet)\n</p>"
tags:
    - oop
    - php
    - php5
    - programming
    - smarty
---

On one hand it’s kind of disheartening how much resistance and fear there is towards objects from segments of the PHP community. (hilighted by the recent hostility towards PHP5’s adding of something resembling a working object model) On the other hand can you blame them when popular tools like Smarty [punish you for using object?](http://smarty.php.net/manual/en/advanced.features.php#advanced.features.ob
jects)

### Transparent, Unified Access

In the ideal world you could pass an array or an object to [Smarty](http://smarty.php.net) and have the access be transparent. Being able to call methods on objects from your template is immensley useful. Besides reinforcing your data model you also: 1. don’t have to write all those toArray() method to dump your data to Smarty
2. can lazy load data as needed
3. can provide intelligent formatting without the need to write a Smarty plugin

And being able to do it transparently means it is painless to migrate from using arrays to using objects (e.g. as your traffic grows, you switch to lazy loading objects), or from objects to arrays. (another way to say it is, having to know the underlying data storage implementation is a clear case of a leaky abstraction) (fyi this “ideal world” is also known as [Template Toolkit](http://template-toolkit.org))

### SPL

There is however a way, with a little effort, to achieve this behaviour with Smarty and PHP5. One of the most useful, and least discussed new features of PHP5, is the [SPL](http://www.zend.com/manual/ref.spl.php), “a collection of interfaces and classes that are meant to solve standard problems”, including allowing objects to behave like arrays, using the [ArrayAccess](http://www.php.net/~helly/php/ext/spl/interfaceArrayAccess.html) interface. ### A quick example (there are probably better ones)

Say you had a class that you used to help you page through a list of results, and at the bottom of each page you wanted to add a slug like “Widgets 21-30 of 142”.

One solution would be to assign `{$objectType}`, `{$showingMin}`, `{$showingMax}`, `{$totalToShow}` (or some such) variables to Smarty, and then have something like the following in your template:

```
<pre class="code">
{$objectType} {$showingMin}-{$showingMax} of {$totalToShow} in
```

But to my eye that seems to clutter up the paging code with assigns, and clutter up the templates with unintuitive markup. (and this is a simple case)

Another solution would be to build the string at some point in your code, and pass **that** to Smarty (making your eventual I18N process just that much more challenging)

The third solution is to have your Pager class *pretend* to be an array, allowing you to add `{$page.showStatus}` to your templates which Smarty will compile into `$this-><em>tpl</em>vars['page']['showStatus']`, and the SPL will intercept and transform into `$page->offsetGet('showStatus')`;

So whats does the Pager class look like? Well the relevant bits look like:

```

class Pager implements ArrayAccess {
   ...
   function offsetGet($k) {
    if ($this->offsetExists($k)) {
                return $this->$k();
        }
   }

<p>function offsetExists($k) {
       return method_exists($this, $k);
   }</p>

<p>/* set and unset don't do anything */<br></br>
   function offsetSet($k, $v) {}
   function offsetUnset($k) {}</p>

<p>function showStatus() {
      ...construct status string and return it....
   }
}
</p>
```

The offsetGet() method is the intersting piece. It says, “take the array access key, and call the method of the same name on that object”. Voila, you can now pass objects to templates, and call methods on them. ### A Word About Security

Generally you trust your template editors, but if calling arbitrary code worries you there are a couple of things you can do. - strip all non-word characters from your access key like so: `$key = preg_replace('/\W/', '', $key);`
- the method calls are already namespaced to the object, but you could quarantine them further by appending a string to them (e.g. ‘tmpl*‘), in which case your offsetGet() becomes ```
    
       function offsetGet($k) {
            $k = preg
    ```* replace('/\\W/', '', $k); $f = "tmpl*$f"; return $this-&gt;$f(); } (alternately you could use Relection API to limit offsetGet to only exposing methods inherited from some base class, or whatever other creative solution strikes your fancy)*

(Note most of this code was sketched out on my way home tonight, and my spiral bound notebook’s PHP syntax hilighting is pretty weak not to mention lacks PHP5 support, so there might be some bugs in the above code)

### Smarty and Iterators

Okay, so all that above is about using SPL’s array interface to allow method access, but what if you want pass iterators to Smarty? Should just work right? Unfortunately not. You see in Smarty’s `compile<em>foreach</em>start`, arrays are accessed with an **explicit** array cast, making it impossible to use an iterator. The quick and dirty solution is to remove this explicit cast. However Smarty’s vmethod’s list .first, and .last won’t be available. For that you need this [patch sent to the Smarty Dev list](http://news.php.net/php.smarty.dev/2510). (hasn’t tested it yet) 