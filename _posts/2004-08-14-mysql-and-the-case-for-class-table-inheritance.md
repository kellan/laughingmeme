---
id: 883
title: 'MySQL, and the CASE for Class Table Inheritance'
date: '2004-08-14T17:08:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=883'
permalink: /2004/08/14/mysql-and-the-case-for-class-table-inheritance/
typo_id:
    - '881'
mt_id:
    - '2294'
link_related:
    - ''
raw_content:
    - "<p>\r\nAt <a href=\\\"http://groundspring.org\\\">work</a> we\\'re using <a href=\\\"http://martinfowler.com/eaaCatalog/classTableInheritance.html\\\">Class Table Inheritance</a> to model the core data structures of our as yet nameless open source <acronym title=\\\"Community Relationship Management\\\">CRM</acronym>. (actually it has a code name, but I don\\'t like it, so we\\'ll pretend it\\'s nameless)  \r\n</p>\r\n<p>\r\nThis week as I learned both the name of this pattern, and the SQL to implement it efficiently in MySQL I thought I\\'d share some notes on what we\\'ve come up with.\r\n</p>\r\n<p>\r\n<h3>Class Table Inheritance</h3>\r\n<acronym title=\\\"Class Table Inheritance\\\">CTI</acronym> is a pattern where your schema  hews closely to the your class hierarchy -- you have a table for each class, and object attributes are stored as columns in the table for that class.  This is as opposed to <a href=\\\"http://www.martinfowler.com/eaaCatalog/singleTableInheritance.html\\\">Single Table Inheritance</a>, which stores all attributes for every member of an inheritance tree in a single table, or <a href=\\\"http://www.martinfowler.com/eaaCatalog/concreteTableInheritance.html\\\">Concrete Table Inheritance</a> which duplicates the inherited fields to each table.\r\n</p>\r\n<p>\r\nWe\\'re using CTI for a number of reasons, some excellent, and some because that is how our brains work.  One key benefit is we get the ability to operate on heterogenous collections of object. (i.e. display a sorted list of contact objects irrespective of whether they are individuals, organizations, etc.)  The fact that something as fundamental as polymorphism can be difficult to accomplish using other O/R techniques hilights the general difficulty and <a href=\\\"http://www.google.com/search?q=impedance+mismatch\\\" title=\\\"6 of the first 10 results are about O/R\\\">impedance mismatch</a> of object to relational mapping.\r\n</p>\r\n<p>\r\nThere are, however a few challenges involved. \r\n</p>\r\n<p>\r\n<h3>The Model</h3>\r\nBut quickly a trivial mock up of the data model to give us something to play with.  In this model we have 3 classes, a base Contact class, and 2 types of contacts Individual and Organization which inherit from Contact.  In the database we model this as a Contact table, with a primary id, and any fields which the Contact the parent class provides.  Individual and Organization each get their own table, with class specific attributes, plus the primary id from Contact which is both the primary id, and a foreign key into Contact.  For every contact stored in the database there is a record in the Contact table, and a record in either Individual or Organization.\r\n</p>\r\n<p>\r\n<img src=\\\"http://laughingmeme.org/img/simple_contact_model.gif\\\" />\r\n</p>\r\n<p>\r\n<h3>Challenge 1:</h3>\r\nHow do you retrieve your data now that it is broken across multiple tables?  The obvious (and obviously wrong) solution would be to first select against the Contact table, examine the resulting data, and select against the appropriate children tables. (remember this example is a drastically simplified data model)\r\n</p>\r\n<p>\r\n<h3>Solution 1:</h3>\r\nMy current solution is to do a 3 way left outer join, and then instantiate the objects out of fields which aren\\'t null.  It can look a bit ugly with large numbers of columns, but is actually pretty simple, and initial benchmarks against a test data set of 1.3 million records suggests it scales nicely.\r\n\r\n<pre>\r\nSELECT \r\n  c.id as id, c.contactType,\r\n  i.firstName, i.lastName,\r\n  o.name as orgName\r\nFROM\r\n  Contact as c\r\nLEFT JOIN Individual as i ON i.id = c.id \r\nLEFT JOIN Organization as o ON o.id = c.id\r\n</pre>\r\n\r\n(And it\\'s pretty easy to coax the necessary SQL out of our modified version of <a href=\\\"http://pear.php.net/package/DB_DataObject\\\">DB_DataObject</a>. I\\'ll demonstrate that in a future entry)\r\n</p>\r\n<p>\r\n<h3>Challenge 2:</h3>\r\nOne of the good reasons (in fact the only concrete one I\\'ve given you) to go with CTI and its potential added complexity is the desire to sort a mixed list of contact types.   But what do you do when you want to sort on an amorphous concept like \\\"Name\\\"?  Individual might sort by \\\"Lastname, Firstname\\\", while we just use \\\"orgName\\\" for an organization.  Where is our polymorphism now?\r\n</p>\r\n<p>\r\nOne solution would be select all known records, and do sorting and slicing at the application level.  (This is so wrong it makes my head hurt)  Another solution would be store a field like \\\"sortName\\\" on Contact, which you could calculate and save on inserts and updates.  This is on the right track.\r\n</p>\r\n<p>\r\n<h3>Solution 2:</h3>\r\nThe solution (which <a href=\\\"http://blogs.onenw.org/carl\\\">Carl</a> clued me into while we waited to get into the zoo), is to use the <a href=\\\"http://dev.mysql.com/doc/mysql/en/Control_flow_functions.html\\\">SQL CASE statement</a> to calculate \\\"sortName\\\" on the fly.  Below is our SQL from below with the new logic in green.\r\n\r\n<pre>\r\nSELECT \r\n  c.id as id, c.contactType,\r\n  i.firstName, i.lastName,\r\n  o.name as orgName<span style=\\\"color:green;\\\">,\r\nCASE \r\n WHEN c.contactType = \\'Individual\\' THEN CONCAT(i.lastName, i.firstName)\r\n WHEN c.contactType = \\'Organization\\' THEN o.name\r\nEND as sortName</span>\r\nFROM\r\n  Contact as c\r\nLEFT JOIN Individual as i ON i.id = c.id \r\nLEFT JOIN Organization as o ON o.id = c.id\r\n<span style=\\\"color:green;\\\">ORDER by sortName</span>\r\n</pre>\r\n</p>\r\n<p>\r\nThis simply adds a switch statement to your field list conditionally setting the value of sortName.\r\n</p>\r\n<p>\r\nThere is nothing quite so satisfying as finding the right tool for the right job.  I\\'m currently totally in love with the CASE statement, and think everyone should know about it. (hence this bit of evangelism)\r\n</p>\r\n<p>\r\nTip: don\\'t forget that \\',\\' after orgName, I keep forgetting it and wondering why my SQL isn\\'t working.\r\n</p>\r\n<p>\r\nSo concludes today\\'s edition of \\\"Enterprise Development with MySQL\\\" (\\\"Kellan Learns SQL\\\" didn\\'t sound as impressive).  In the near future I hope to get a chance to write up some of the PHP libs we\\'ve been building/modifying to support object rich web development techniques, completing the picture. (<acronym title=\\\"Objects Linux Apache MySQL PHP\\\">OLamp</acronym> anyone?)\r\n</p>\r\n<p>\r\n<h3>Mixing Metaphors</h3>\r\nSingle, and Concrete <acronym title=\\\"Table Inheritance\\\">TI</acronym> both have their places, and the good news is you can mix these patterns without much difficulty.  Still I\\'m happy with both the flexibility and \\\"OO-ness\\\" of Concrete Table Inheritance, and once again impressed by the speed, and power of MySQL. (N.B. we\\'re targeting 4.1.x, but these above examples all work with 4.0.16 and 4.0.20)\r\n</p>"
tags:
    - case
    - Code
    - eaa
    - enterprise
    - Longer
    - mysql
    - oop
    - patterns
    - programming
    - sql
---

At [work](http://groundspring.org) we’re using [Class Table Inheritance](http://martinfowler.com/eaaCatalog/classTableInheritance.html) to model the core data structures of our as yet nameless open source <acronym title="Community Relationship Management">CRM</acronym>. (actually it has a code name, but I don’t like it, so we’ll pretend it’s nameless)

This week as I learned both the name of this pattern, and the SQL to implement it efficiently in MySQL I thought I’d share some notes on what we’ve come up with.

### Class Table Inheritance

<acronym title="Class Table Inheritance">CTI</acronym> is a pattern where your schema hews closely to the your class hierarchy — you have a table for each class, and object attributes are stored as columns in the table for that class. This is as opposed to [Single Table Inheritance](http://www.martinfowler.com/eaaCatalog/singleTableInheritance.html), which stores all attributes for every member of an inheritance tree in a single table, or [Concrete Table Inheritance](http://www.martinfowler.com/eaaCatalog/concreteTableInheritance.html) which duplicates the inherited fields to each table. We’re using CTI for a number of reasons, some excellent, and some because that is how our brains work. One key benefit is we get the ability to operate on heterogenous collections of object. (i.e. display a sorted list of contact objects irrespective of whether they are individuals, organizations, etc.) The fact that something as fundamental as polymorphism can be difficult to accomplish using other O/R techniques hilights the general difficulty and [impedance mismatch](http://www.google.com/search?q=impedance+mismatch "6 of the first 10 results are about O/R") of object to relational mapping.

There are, however a few challenges involved.

### The Model

But quickly a trivial mock up of the data model to give us something to play with. In this model we have 3 classes, a base Contact class, and 2 types of contacts Individual and Organization which inherit from Contact. In the database we model this as a Contact table, with a primary id, and any fields which the Contact the parent class provides. Individual and Organization each get their own table, with class specific attributes, plus the primary id from Contact which is both the primary id, and a foreign key into Contact. For every contact stored in the database there is a record in the Contact table, and a record in either Individual or Organization. ![](http://laughingmeme.org/img/simple_contact_model.gif)

### Challenge 1:

How do you retrieve your data now that it is broken across multiple tables? The obvious (and obviously wrong) solution would be to first select against the Contact table, examine the resulting data, and select against the appropriate children tables. (remember this example is a drastically simplified data model) ### Solution 1:

My current solution is to do a 3 way left outer join, and then instantiate the objects out of fields which aren’t null. It can look a bit ugly with large numbers of columns, but is actually pretty simple, and initial benchmarks against a test data set of 1.3 million records suggests it scales nicely. ```

SELECT 
  c.id as id, c.contactType,
  i.firstName, i.lastName,
  o.name as orgName
FROM
  Contact as c
LEFT JOIN Individual as i ON i.id = c.id 
LEFT JOIN Organization as o ON o.id = c.id
```

(And it’s pretty easy to coax the necessary SQL out of our modified version of [DB\_DataObject](http://pear.php.net/package/DB_DataObject). I’ll demonstrate that in a future entry)

### Challenge 2:

One of the good reasons (in fact the only concrete one I’ve given you) to go with CTI and its potential added complexity is the desire to sort a mixed list of contact types. But what do you do when you want to sort on an amorphous concept like “Name”? Individual might sort by “Lastname, Firstname”, while we just use “orgName” for an organization. Where is our polymorphism now? One solution would be select all known records, and do sorting and slicing at the application level. (This is so wrong it makes my head hurt) Another solution would be store a field like “sortName” on Contact, which you could calculate and save on inserts and updates. This is on the right track.

### Solution 2:

The solution (which [Carl](http://blogs.onenw.org/carl) clued me into while we waited to get into the zoo), is to use the [SQL CASE statement](http://dev.mysql.com/doc/mysql/en/Control_flow_functions.html) to calculate “sortName” on the fly. Below is our SQL from below with the new logic in green. ```

SELECT 
  c.id as id, c.contactType,
  i.firstName, i.lastName,
  o.name as orgName<span style="color:green;">,
CASE 
 WHEN c.contactType = 'Individual' THEN CONCAT(i.lastName, i.firstName)
 WHEN c.contactType = 'Organization' THEN o.name
END as sortName</span>
FROM
  Contact as c
LEFT JOIN Individual as i ON i.id = c.id 
LEFT JOIN Organization as o ON o.id = c.id
<span style="color:green;">ORDER by sortName</span>
```

This simply adds a switch statement to your field list conditionally setting the value of sortName.

There is nothing quite so satisfying as finding the right tool for the right job. I’m currently totally in love with the CASE statement, and think everyone should know about it. (hence this bit of evangelism)

Tip: don’t forget that ‘,’ after orgName, I keep forgetting it and wondering why my SQL isn’t working.

So concludes today’s edition of “Enterprise Development with MySQL” (“Kellan Learns SQL” didn’t sound as impressive). In the near future I hope to get a chance to write up some of the PHP libs we’ve been building/modifying to support object rich web development techniques, completing the picture. (<acronym title="Objects Linux Apache MySQL PHP">OLamp</acronym> anyone?)

### Mixing Metaphors

Single, and Concrete <acronym title="Table Inheritance">TI</acronym> both have their places, and the good news is you can mix these patterns without much difficulty. Still I’m happy with both the flexibility and “OO-ness” of Concrete Table Inheritance, and once again impressed by the speed, and power of MySQL. (N.B. we’re targeting 4.1.x, but these above examples all work with 4.0.16 and 4.0.20) 