---
id: 3594
title: 'Semi-Intelligent String Cropping with PHP'
date: '2004-05-25T21:53:28+00:00'
author: Kellan
layout: post
guid: 'http://laughingmeme.org/2004/05/25/semi-intelligent-string-cropping-with-php/'
permalink: /2004/05/25/semi-intelligent-string-cropping-with-php/
categories:
    - Uncategorized
tags:
    - Code
    - php
---

Problem: You want to display the first N characters of a string.

### Solution 1: Use substr.

Unfortunately substr will more often then not leave a word fragment dangling at the end of your new string, which looks broken.

### Solution 2: Use substr, but add an ellipsis (…) at the end of the string.

Now the user has a clue as to why there is a dangling word fragment, but the ellipsis is misleading if the your original string was actually less then N characters long initially.

### Solution 3: Check if the string is longer then N characters, and if it is use Solution 2, otherwise leave it alone.

This is an improvement, but in practice those dangling fragments, even with their ellipses are kind of unsightly.

### Solution 4: Try to find a natural breaking point within the desired crop length, and break on that. If not found revert to Solution 2.

Below is some quick code to do this in PHP. It uses strpos instead of regex for speed. It doesn’t handle “quoted text” intelligently, and it doesn’t look for paragraph breaks (I’m using it for shorter crop lengths, 100-150 characters), but it is a starting point. Also when cropping strings, it is often important to strip the HTML from them first, or you’re essentially guaranteed to end up with broken HTML.

```
function crop($str, $len) {
    if ( strlen($str) <= $len ) {
        return $str;
    }

    // find the longest possible match
    $pos = 0;
    foreach ( array('. ', '? ', '! ') as $punct ) {
        $npos = strpos($str, $punct);
        if ( $npos > $pos && $npos < $len ) {
            $pos = $npos;
        }
    }

    if ( !$pos ) {
        // substr $len-3, because the ellipsis adds 3 chars
        return substr($str, 0, $len-3) . '...'; 
    }
    else {
        // $pos+1 to grab punctuation mark
        return substr($str, 0, $pos+1);
    }
}

```