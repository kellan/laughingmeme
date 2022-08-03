---
id: 777
title: 'A Localization Horror Story'
date: '2004-03-21T20:31:47+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=777'
permalink: /2004/03/21/a-localization-horror-story/
typo_id:
    - '775'
mt_id:
    - '1880'
link_related:
    - ''
raw_content:
    - "Thinking about internationalization reminded me of one of the all time classic Perl Journal (I miss TPJ) articles by <a href=\\\"http://interglacial.com/~sburke/\\\">Sean Burke</a> on the <a href=\\\"http://search.cpan.org/dist/Locale-Maketext/lib/Locale/Maketext/TPJ13.pod\\\">shortcomings of <code>gettext()</code></a> thankfully perserved on CPAN.\n<blockquote>\nThe Arabic translator is the next to write back. First off, your code for \\\"I scanned %g directory.\\\" or \\\"I scanned %g directories.\\\" assumes there\\'s only singular or plural. But, to use linguistic jargon again, Arabic has grammatical number, like English (but unlike Chinese), but it\\'s a three-term category: singular, dual, and plural. In other words, the way you say \\\"directory\\\" depends on whether there\\'s one directory, or two of them, or more than two of them. Your test of ($directory == 1) no longer does the job. And it means that where English\\'s grammatical category of number necessitates only the two permutations of the first sentence based on \\\"directory [singular]\\\" and \\\"directories [plural]\\\", Arabic has three -- and, worse, in the second sentence (\\\"Your query matched %g file in %g directory.\\\"), where English has four, Arabic has nine. You sense an unwelcome, exponential trend taking shape.\n\nYour Italian translator emails you back and says that \\\"I searched 0 directories\\\" (a possible English output of your program) is stilted, and if you think that\\'s fine English, that\\'s your problem, but that just will not do in the language of Dante. He insists that where $directory_count is 0, your program should produce the Italian text for \\\"I didn\\'t scan any directories.\\\". And ditto for \\\"I didn\\'t match any files in any directories\\\", although he says the last part about \\\"in any directories\\\" should probably just be left off.\n\nYou wonder how you\\'ll get gettext to handle this; to accomodate the ways Arabic, Chinese, and Italian deal with numbers in just these few very simple phrases, you need to write code that will ask gettext for different queries depending on whether the numerical values in question are 1, 2, more than 2, or in some cases 0, and you still haven\\'t figured out the problem with the different word order in Chinese.\n\nThen your Russian translator calls on the phone, to personally tell you the bad news about how really unpleasant your life is about to become:\n</blockquote>\n\nIt is worth <a href=\\\"http://search.cpan.org/dist/Locale-Maketext/lib/Locale/Maketext/TPJ13.pod\\\">reading the entire article</a> no matter your language of choice."
tags:
    - gettext
    - i18n
---

Thinking about internationalization reminded me of one of the all time classic Perl Journal (I miss TPJ) articles by [Sean Burke](http://interglacial.com/~sburke/) on the [shortcomings of `gettext()`](http://search.cpan.org/dist/Locale-Maketext/lib/Locale/Maketext/TPJ13.pod) thankfully perserved on CPAN.

> The Arabic translator is the next to write back. First off, your code for “I scanned %g directory.” or “I scanned %g directories.” assumes there’s only singular or plural. But, to use linguistic jargon again, Arabic has grammatical number, like English (but unlike Chinese), but it’s a three-term category: singular, dual, and plural. In other words, the way you say “directory” depends on whether there’s one directory, or two of them, or more than two of them. Your test of ($directory == 1) no longer does the job. And it means that where English’s grammatical category of number necessitates only the two permutations of the first sentence based on “directory [singular]” and “directories [plural]”, Arabic has three — and, worse, in the second sentence (“Your query matched %g file in %g directory.”), where English has four, Arabic has nine. You sense an unwelcome, exponential trend taking shape. Your Italian translator emails you back and says that “I searched 0 directories” (a possible English output of your program) is stilted, and if you think that’s fine English, that’s your problem, but that just will not do in the language of Dante. He insists that where $directory\_count is 0, your program should produce the Italian text for “I didn’t scan any directories.”. And ditto for “I didn’t match any files in any directories”, although he says the last part about “in any directories” should probably just be left off.
> 
> You wonder how you’ll get gettext to handle this; to accomodate the ways Arabic, Chinese, and Italian deal with numbers in just these few very simple phrases, you need to write code that will ask gettext for different queries depending on whether the numerical values in question are 1, 2, more than 2, or in some cases 0, and you still haven’t figured out the problem with the different word order in Chinese.
> 
> Then your Russian translator calls on the phone, to personally tell you the bad news about how really unpleasant your life is about to become:

It is worth [reading the entire article](http://search.cpan.org/dist/Locale-Maketext/lib/Locale/Maketext/TPJ13.pod) no matter your language of choice.