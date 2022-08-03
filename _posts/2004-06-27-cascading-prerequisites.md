---
id: 851
title: 'Cascading Prerequisites'
date: '2004-06-27T11:47:46+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=851'
permalink: /2004/06/27/cascading-prerequisites/
typo_id:
    - '849'
mt_id:
    - '2157'
link_related:
    - ''
raw_content:
    - "<p>\nHaving setup a new system with a base Perl several times recently I\\'ve invented a new game.  \n</p>\n<p>\nIt is very frustrating to be offline and find that one of your old standby modules isn\\'t available, and yet who wants to spend all that time installing modules?  So the game is to find the single module with the largest dependency tree, that will bring in the highest number of high quality libraries on a virgin install.  So far my candidate is <a href=\\\"http://search.cpan.org/dist/Email-Store\\\">Email::Store</a> which I just installed having only previously installed Bundle::CPAN and <a href=\\\"http://search.cpan.org/dist/DateTime\\\">DateTime</a>. (btw. this isn\\'t a criticism, what I love about Perl is how highly leveraged it all is)\n</p>\n\n<p>\nIn order to get Email::Store to install (and pass its tests, through in retrospect I probably could have ignored Class::DBI::DATA::Schema complaining about needing SQL::Translator, and Cache::File and ended up with a much shorter list) I installed (well CPAN did all the work) the following list of modules\n<ol>\n<li><a href=\\\"http://search.cpan.org/dist/MailTools-1.62\\\">MailTools-1.62</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Email-Valid-0.15\\\">Email-Valid-0.15</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Email-Simple-1.61\\\">Email-Simple-1.61</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Text-Glob-0.06\\\">Text-Glob-0.06</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Number-Compare-0.01\\\">Number-Compare-0.01</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/File-Find-Rule-0.28\\\">File-Find-Rule-0.28</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Exporter-Lite-0.01\\\">Exporter-Lite-0.01</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/UNIVERSAL-exports-0.03\\\">UNIVERSAL-exports-0.03</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Module-Pluggable-1.6\\\">Module-Pluggable-1.6</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Email-Abstract-1.0\\\">Email-Abstract-1.0</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/URI-1.31\\\">URI-1.31</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Mail-ListDetector-0.31\\\">Mail-ListDetector-0.31</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Module-Pluggable-Ordered-1.0\\\">Module-Pluggable-Ordered-1.0</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Mail-Message-Attachment-Stripper-1.0\\\">Mail-Message-Attachment-Stripper-1.0</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Mail-Box-2.055\\\">Mail-Box-2.055</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Geography-Countries-1.4\\\">Geography-Countries-1.4</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/User-Identity-0.07\\\">User-Identity-0.07</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/TimeDate-1.16\\\">TimeDate-1.16</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Scalar-List-Utils-1.14\\\">Scalar-List-Utils-1.14</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Mail-IMAPClient-2.2.9\\\">Mail-IMAPClient-2.2.9</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/MIME-Types-1.13\\\">MIME-Types-1.13</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/IO-stringy-2.109\\\">IO-stringy-2.109</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/MIME-tools-5.411\\\">MIME-tools-5.411</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/HTML-Tagset-3.03\\\">HTML-Tagset-3.03</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/HTML-Parser-3.36\\\">HTML-Parser-3.36</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Mail-SpamAssassin-2.63\\\">Mail-SpamAssassin-2.63</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Mail-Box-Parser-C-3.005\\\">Mail-Box-Parser-C-3.005</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Digest-SHA1-2.10\\\">Digest-SHA1-2.10</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Digest-HMAC-1.01\\\">Digest-HMAC-1.01</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Object-Realize-Later-0.15\\\">Object-Realize-Later-0.15</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/HTML-Tree-3.18\\\">HTML-Tree-3.18</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Mail-Box-2.055\\\">Mail-Box-2.055</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Mail-Message-Attachment-Stripper-1.0\\\">Mail-Message-Attachment-Stripper-1.0</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Class-DBI-0.96\\\">Class-DBI-0.96</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Class-Data-Inheritable-0.02\\\">Class-Data-Inheritable-0.02</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Class-Trigger-0.08\\\">Class-Trigger-0.08</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/DBI-1.42\\\">DBI-1.42</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/DBIx-ContextualFetch-1.01\\\">DBIx-ContextualFetch-1.01</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Class-WhiteHole-0.04\\\">Class-WhiteHole-0.04</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Ima-DBI-0.33\\\">Ima-DBI-0.33</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/UNIVERSAL-moniker-0.07\\\">UNIVERSAL-moniker-0.07</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Class-Accessor-0.19\\\">Class-Accessor-0.19</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Class-DBI-DATA-Schema-0.04\\\">Class-DBI-DATA-Schema-0.04</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/DBD-SQLite-0.31\\\">DBD-SQLite-0.31</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Email-Store-0.05\\\">Email-Store-0.05</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/File-Slurp-9999.04\\\">File-Slurp-9999.04</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/SQL-Translator-0.05\\\">SQL-Translator-0.05</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/GD-2.12\\\">GD-2.12</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/OLE-Storage_Lite-0.12\\\">OLE-Storage_Lite-0.12</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Spreadsheet-ParseExcel-0.2603\\\">Spreadsheet-ParseExcel-0.2603</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Algorithm-Diff-1.15\\\">Algorithm-Diff-1.15</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Text-Diff-0.35\\\">Text-Diff-0.35</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Test-Differences-0.47\\\">Test-Differences-0.47</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Sub-Uplevel-0.08\\\">Sub-Uplevel-0.08</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Test-Builder-Tester-0.09\\\">Test-Builder-Tester-0.09</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Test-Exception-0.15\\\">Test-Exception-0.15</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/YAML-0.35\\\">YAML-0.35</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/AppConfig-1.56\\\">AppConfig-1.56</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Template-Toolkit-2.13\\\">Template-Toolkit-2.13</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/XML-Writer-0.510\\\">XML-Writer-0.510</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/XML-XPath-1.13\\\">XML-XPath-1.13</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Class-Base-0.03\\\">Class-Base-0.03</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Parse-RecDescent-1.94\\\">Parse-RecDescent-1.94</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/GraphViz-1.8\\\">GraphViz-1.8</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/IPC-Run-0.78\\\">IPC-Run-0.78</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Math-Bezier-0.01\\\">Math-Bezier-0.01</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Heap-0.71\\\">Heap-0.71</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Graph-0.20105\\\">Graph-0.20105</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/GraphViz-1.8\\\">GraphViz-1.8</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Text-TabularDisplay-1.18\\\">Text-TabularDisplay-1.18</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Text-RecordParser-0.06\\\">Text-RecordParser-0.06</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/File-NFSLock-1.20\\\">File-NFSLock-1.20</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/IO-String-1.05\\\">IO-String-1.05</a></li>\n<li><a href=\\\"http://search.cpan.org/dist/Cache-2.01\\\">Cache-2.01</a></li>\n\n\n</ol>\n</p>"
---

Having setup a new system with a base Perl several times recently I’ve invented a new game.

It is very frustrating to be offline and find that one of your old standby modules isn’t available, and yet who wants to spend all that time installing modules? So the game is to find the single module with the largest dependency tree, that will bring in the highest number of high quality libraries on a virgin install. So far my candidate is [Email::Store](http://search.cpan.org/dist/Email-Store) which I just installed having only previously installed Bundle::CPAN and [DateTime](http://search.cpan.org/dist/DateTime). (btw. this isn’t a criticism, what I love about Perl is how highly leveraged it all is)

In order to get Email::Store to install (and pass its tests, through in retrospect I probably could have ignored Class::DBI::DATA::Schema complaining about needing SQL::Translator, and Cache::File and ended up with a much shorter list) I installed (well CPAN did all the work) the following list of modules

1. [MailTools-1.62](http://search.cpan.org/dist/MailTools-1.62)
2. [Email-Valid-0.15](http://search.cpan.org/dist/Email-Valid-0.15)
3. [Email-Simple-1.61](http://search.cpan.org/dist/Email-Simple-1.61)
4. [Text-Glob-0.06](http://search.cpan.org/dist/Text-Glob-0.06)
5. [Number-Compare-0.01](http://search.cpan.org/dist/Number-Compare-0.01)
6. [File-Find-Rule-0.28](http://search.cpan.org/dist/File-Find-Rule-0.28)
7. [Exporter-Lite-0.01](http://search.cpan.org/dist/Exporter-Lite-0.01)
8. [UNIVERSAL-exports-0.03](http://search.cpan.org/dist/UNIVERSAL-exports-0.03)
9. [Module-Pluggable-1.6](http://search.cpan.org/dist/Module-Pluggable-1.6)
10. [Email-Abstract-1.0](http://search.cpan.org/dist/Email-Abstract-1.0)
11. [URI-1.31](http://search.cpan.org/dist/URI-1.31)
12. [Mail-ListDetector-0.31](http://search.cpan.org/dist/Mail-ListDetector-0.31)
13. [Module-Pluggable-Ordered-1.0](http://search.cpan.org/dist/Module-Pluggable-Ordered-1.0)
14. [Mail-Message-Attachment-Stripper-1.0](http://search.cpan.org/dist/Mail-Message-Attachment-Stripper-1.0)
15. [Mail-Box-2.055](http://search.cpan.org/dist/Mail-Box-2.055)
16. [Geography-Countries-1.4](http://search.cpan.org/dist/Geography-Countries-1.4)
17. [User-Identity-0.07](http://search.cpan.org/dist/User-Identity-0.07)
18. [TimeDate-1.16](http://search.cpan.org/dist/TimeDate-1.16)
19. [Scalar-List-Utils-1.14](http://search.cpan.org/dist/Scalar-List-Utils-1.14)
20. [Mail-IMAPClient-2.2.9](http://search.cpan.org/dist/Mail-IMAPClient-2.2.9)
21. [MIME-Types-1.13](http://search.cpan.org/dist/MIME-Types-1.13)
22. [IO-stringy-2.109](http://search.cpan.org/dist/IO-stringy-2.109)
23. [MIME-tools-5.411](http://search.cpan.org/dist/MIME-tools-5.411)
24. [HTML-Tagset-3.03](http://search.cpan.org/dist/HTML-Tagset-3.03)
25. [HTML-Parser-3.36](http://search.cpan.org/dist/HTML-Parser-3.36)
26. [Mail-SpamAssassin-2.63](http://search.cpan.org/dist/Mail-SpamAssassin-2.63)
27. [Mail-Box-Parser-C-3.005](http://search.cpan.org/dist/Mail-Box-Parser-C-3.005)
28. [Digest-SHA1-2.10](http://search.cpan.org/dist/Digest-SHA1-2.10)
29. [Digest-HMAC-1.01](http://search.cpan.org/dist/Digest-HMAC-1.01)
30. [Object-Realize-Later-0.15](http://search.cpan.org/dist/Object-Realize-Later-0.15)
31. [HTML-Tree-3.18](http://search.cpan.org/dist/HTML-Tree-3.18)
32. [Mail-Box-2.055](http://search.cpan.org/dist/Mail-Box-2.055)
33. [Mail-Message-Attachment-Stripper-1.0](http://search.cpan.org/dist/Mail-Message-Attachment-Stripper-1.0)
34. [Class-DBI-0.96](http://search.cpan.org/dist/Class-DBI-0.96)
35. [Class-Data-Inheritable-0.02](http://search.cpan.org/dist/Class-Data-Inheritable-0.02)
36. [Class-Trigger-0.08](http://search.cpan.org/dist/Class-Trigger-0.08)
37. [DBI-1.42](http://search.cpan.org/dist/DBI-1.42)
38. [DBIx-ContextualFetch-1.01](http://search.cpan.org/dist/DBIx-ContextualFetch-1.01)
39. [Class-WhiteHole-0.04](http://search.cpan.org/dist/Class-WhiteHole-0.04)
40. [Ima-DBI-0.33](http://search.cpan.org/dist/Ima-DBI-0.33)
41. [UNIVERSAL-moniker-0.07](http://search.cpan.org/dist/UNIVERSAL-moniker-0.07)
42. [Class-Accessor-0.19](http://search.cpan.org/dist/Class-Accessor-0.19)
43. [Class-DBI-DATA-Schema-0.04](http://search.cpan.org/dist/Class-DBI-DATA-Schema-0.04)
44. [DBD-SQLite-0.31](http://search.cpan.org/dist/DBD-SQLite-0.31)
45. [Email-Store-0.05](http://search.cpan.org/dist/Email-Store-0.05)
46. [File-Slurp-9999.04](http://search.cpan.org/dist/File-Slurp-9999.04)
47. [SQL-Translator-0.05](http://search.cpan.org/dist/SQL-Translator-0.05)
48. [GD-2.12](http://search.cpan.org/dist/GD-2.12)
49. [OLE-Storage\_Lite-0.12](http://search.cpan.org/dist/OLE-Storage_Lite-0.12)
50. [Spreadsheet-ParseExcel-0.2603](http://search.cpan.org/dist/Spreadsheet-ParseExcel-0.2603)
51. [Algorithm-Diff-1.15](http://search.cpan.org/dist/Algorithm-Diff-1.15)
52. [Text-Diff-0.35](http://search.cpan.org/dist/Text-Diff-0.35)
53. [Test-Differences-0.47](http://search.cpan.org/dist/Test-Differences-0.47)
54. [Sub-Uplevel-0.08](http://search.cpan.org/dist/Sub-Uplevel-0.08)
55. [Test-Builder-Tester-0.09](http://search.cpan.org/dist/Test-Builder-Tester-0.09)
56. [Test-Exception-0.15](http://search.cpan.org/dist/Test-Exception-0.15)
57. [YAML-0.35](http://search.cpan.org/dist/YAML-0.35)
58. [AppConfig-1.56](http://search.cpan.org/dist/AppConfig-1.56)
59. [Template-Toolkit-2.13](http://search.cpan.org/dist/Template-Toolkit-2.13)
60. [XML-Writer-0.510](http://search.cpan.org/dist/XML-Writer-0.510)
61. [XML-XPath-1.13](http://search.cpan.org/dist/XML-XPath-1.13)
62. [Class-Base-0.03](http://search.cpan.org/dist/Class-Base-0.03)
63. [Parse-RecDescent-1.94](http://search.cpan.org/dist/Parse-RecDescent-1.94)
64. [GraphViz-1.8](http://search.cpan.org/dist/GraphViz-1.8)
65. [IPC-Run-0.78](http://search.cpan.org/dist/IPC-Run-0.78)
66. [Math-Bezier-0.01](http://search.cpan.org/dist/Math-Bezier-0.01)
67. [Heap-0.71](http://search.cpan.org/dist/Heap-0.71)
68. [Graph-0.20105](http://search.cpan.org/dist/Graph-0.20105)
69. [GraphViz-1.8](http://search.cpan.org/dist/GraphViz-1.8)
70. [Text-TabularDisplay-1.18](http://search.cpan.org/dist/Text-TabularDisplay-1.18)
71. [Text-RecordParser-0.06](http://search.cpan.org/dist/Text-RecordParser-0.06)
72. [File-NFSLock-1.20](http://search.cpan.org/dist/File-NFSLock-1.20)
73. [IO-String-1.05](http://search.cpan.org/dist/IO-String-1.05)
74. [Cache-2.01](http://search.cpan.org/dist/Cache-2.01)