---
id: 669
title: 'OO::Form, initial release'
date: '2003-11-24T00:42:00+00:00'
author: Kellan
layout: post
guid: 'http://lm.quxx.info/?p=669'
permalink: /2003/11/24/ooform-initial-release/
typo_id:
    - '667'
mt_id:
    - '1475'
link_related:
    - ''
raw_content:
    - "<p>\r\nSeveral months ago, inspired as I recall by Kate\\'s <a href=\\\"http://www.perl.com/lpt/a/2003/07/15/nocode.html\\\">How to Avoid Writing Code</a> article, I <a href=\\\"http://laughingmeme.org/archives/001014.html\\\">started playing with</a> Class::DBI and <a href=\\\"http://template-toolkit.org\\\">Template Toolkit</a> as a rapid development environment.\r\n</p>\r\n<p>\r\n<h3>Not So Fast</h3>\r\nTurns out rapid development isn\\'t really my style.  I\\'m still futzing around with the earliest stages of functionality of my first app I started developing in this brave new way.  Part of the problem is I get distracted into \\\"doing things right\\\", which is about as antithetical to <acronym=\\\"Rapid Application Development\\\">RAD</acronym> as one can get.  I\\'ve fallen into a number of these sorts of traps on this project, but a major one was the lack of a form class that integrated nicely into this dev. environment.  After all you can\\'t really say you\\'re doing rapid web development, and then hand build, and process every form, can you?\r\n</p>\r\n<p>\r\n<h3>A Better Params Trap</h3>\r\n<a href=\\\"http://formbuilder.org\\\">CGI::FormBuilder</a> is the current standard, and its very impressive in its way, but <a href=\\\"http://laughingmeme.org/archives/001196.html\\\">it didn\\'t meet my needs</a>.  In particular it does too much, and therefore plays poorly with other technologies.  It was also totally unsubclassable.\r\n</p>\r\n<p>\r\nSo with great pleasure I present <a href=\\\"http://protest.net/~kellan/OO-Form-0.01a.tar.gz\\\">OO::Form 0.01-alpha-experimental</a>. (which has been kicking around for a week fews, but I finally added some POD) \r\n</p>\r\n<p>\r\n<h3>A Curiosity</h3>\r\nI don\\'t really expect anyone to want to use this code yet, but if you\\'re curious, and/or want to tell me what I\\'m doing wrong, take a look at it.  It is currently incomplete as I\\'ve been fleshing out the features as needed, but what is in place, is working well (everything documented is working).  Also if you\\'re <b>really</b> interested I\\'ll send you the code I\\'m working on that uses it, so you can see it in action. (beyond the example in the POD below)\r\n</p>\r\n<p>\r\n<h3>My Favorite Feature</h3>\r\nBesides being all cool, and OO, and integrating well with Class::DBI, and TT2 (and presumably any other template system, but I wouldn\\'t know), OO::Form allows you to define arbitrary field types.  So besides text, password, select, checkbox, and textarea (I\\'ve been adding the standards as I need them), OO::Form also ships with an OO::Form::Field::date, which does intelligent date, and timezone handling, and while currently displayed as 3 pull down menus, could be easily subclassed (just override the _as_html method) to display via a totally different widget.\r\n</p>\r\n<p>\n<p>\r\n<h3>OO::Form - pod2html</h3>\r\n</p>\r\n<p><a name=\\\"__index__\\\"></a></p>\r\n<!-- INDEX BEGIN -->\r\n\r\n<ul>\r\n\r\n\t<li><a href=\\\"#name\\\">NAME</a></li>\r\n\t<li><a href=\\\"#synopsis\\\">SYNOPSIS</a></li>\r\n\t<li><a href=\\\"#description\\\">DESCRIPTION</a></li>\r\n\t<li><a href=\\\"#usage\\\">USAGE</a></li>\r\n\t<ul>\r\n\r\n\t\t<li><a href=\\\"#field_profile\\\">Field Profile</a></li>\r\n\t\t<li><a href=\\\"#2_error_handling_and_validation\\\">2 Error Handling and Validation</a></li>\r\n\t</ul>\r\n\r\n\t<li><a href=\\\"#methods\\\">METHODS</a></li>\r\n</ul>\r\n<!-- INDEX END -->\r\n\r\n<hr />\r\n<p>\r\n</p>\r\n<h1><a name=\\\"name\\\">NAME</a></h1>\r\n<p>OO::Form - an object oriented framework for building, displaying, and processing forms.</p>\r\n<p>\r\n</p>\r\n<hr />\r\n<h1><a name=\\\"synopsis\\\">SYNOPSIS</a></h1>\r\n<p>package MyApp::AddWidgetForm;</p>\r\n<p>use base \\'OO::Form\\';</p>\r\n<pre>\r\n  our $FIELD_PROFILE = {\r\n          fields  =&gt; \r\n                  [qw(name widget_style note expiration_date) ],\r\n          types   =&gt; { \r\n                  widget_style     =&gt; \\'select\\', \r\n                  note             =&gt; \\'textarea\\', \r\n                  expiration_date  =&gt; \\'date\\'\r\n          },\r\n          options  =&gt; {\r\n                  widget_style     =&gt; [qw(blue green chrome)]\r\n          },\r\n          required  =&gt; [qw(name widget_style)]\r\n  };</pre>\r\n<pre>\r\n  sub new {\r\n          my $class = shift;\r\n          my $self = $class-&gt;SUPER::new(@_);\r\n          $self-&gt;add_fields($FIELD_PROFILE);\r\n          $self-&gt;submit_field(\\'add_widget\\');\r\n          return $self;\r\n  }</pre>\r\n<p>....</p>\r\n<pre>\r\n  (else where in your application)</pre>\r\n<pre>\r\n  my $form = MyApp::AddWidgetForm-&gt;new({query =&gt; $query, ...});\r\n  if ($form-&gt;is_submitted and $form-&gt;validates ) {\r\n          MyAdd::Widget-&gt;new_widget({\r\n                  name =&gt; $form-&gt;name-&gt;value,\r\n                  widget_style =&gt; $form-&gt;widget_style-&gt;value,\r\n                  note =&gt; $form-&gt;note-&gt;value,\r\n                  expiration-date =&gt; $form-&gt;expiration_date-&gt;value      \r\n          });\r\n          display_widget_added_confirmation();\r\n  }\r\n  else {\r\n          # form hasn\\'t been submitted, or we encountered an error\r\n          display_page($template, { form =&gt; $form } );\r\n  }</pre>\r\n<p>...,</p>\r\n<pre>\r\n  (mean while, in a nearby template)</pre>\r\n<pre>\r\n  [% IF form.errors %]\r\n  &lt;ul class=&quot;errors&quot;&gt;\r\n    [% FOREACH e = form.errors %]&lt;li&gt;[% e %]&lt;/li&gt;[% END %]\r\n  &lt;/ul&gt;\r\n  [% END %]</pre>\r\n<pre>\r\n  Name:       [% form.name.html(size =&gt; \\'40\\') %]&lt;br /&gt;\r\n  Style:      [% form.widget_style.html(default =&gt; \\'blue\\') %] &lt;br /&gt;\r\n  Expiration: [% form.expiration_date.html %]\r\n  Note: &lt;br /&gt;\r\n  [% form.note.html(rows =&gt;4, cols=&gt;50) %]&lt;br /&gt;\r\n  &lt;input type=&quot;submit&quot; name=&quot;[%form.submit_field%]&quot; value=&quot;Add Widget&quot; /&gt;               \r\n  \r\n...,</pre>\r\n<p>\r\n</p>\r\n<hr />\r\n<h1><a name=\\\"description\\\">DESCRIPTION</a></h1>\r\n<p><code>OO::Form</code> represents an HTML form as a collection of <code>OO::Form::Field</code> objects, a state (is submitted), and some basic error handling.  It was inspired by <code>CGI::FormBuilder</code>, and by the difficulty I had integrating <code>CGI::FormBuilder</code> into my application.  The <code>OO::Form</code> was designed to be used in conjuction with the Template Toolkit, and <code>Class::DBI</code> though they aren\\'t tightly coupled.</p>\r\n<p>The most straightforward way to use <code>OO::Form</code> is to create your own subclass of <code>OO::Form</code> for each form in your application. (though create and update pages can usually re-use the same form object, and for very simple forms, it is probably less useful)</p>\r\n<p>Then pass a \\'fields profile\\' to the OO::Form-&gt;<a href=\\\"#item_add_fields\\\"><code>add_fields()</code></a> method which is a factory method for creating object of type OO::Form::Field and its varied subclasses.</p>\r\n<p>\r\n</p>\r\n<hr />\r\n<h1><a name=\\\"usage\\\">USAGE</a></h1>\r\n<p>\r\n</p>\r\n<h2><a name=\\\"field_profile\\\">Field Profile</a></h2>\r\n<p>A field profile is a compact form of specifying all the fields in your form. (Alternately you could insantiate <code>OO::Form:Field::*</code> objects one by one and add each one with $form-&gt;<a href=\\\"#item_field\\\"><code>field($field))</code></a></p>\r\n<p>A field profile is a hashref with 6 fields.</p>\r\n<ul>\r\n<li><strong><a name=\\\"item_fields\\\">fields</a></strong><br />\r\n</li>\r\nAn arrayref of the names of fields to instantiate.  Names must be unique, and they must not have the same name as any method of your form object (as they will be accessed by calling $form-&gt;$field_name())\r\n<p></p>\r\n<li><strong><a name=\\\"item_types\\\">types</a></strong><br />\r\n</li>\r\nA hashref of names mapped to their field types.  Any field which is not given a type will be a generic field object, and will be drawn as a text field if their <code>html()</code> method is called.\r\n<p><code>OO::Form::Field-</code>factory()&gt; will be called for each field, and be passed its type.  The default <code>factory()</code> method tries to instantiate an object of type <code>OO::Form::Field::$type</code>.  You can subclass <code>OO::Form::Field</code> to provide a whole set of new field types, or new behaviour for old field types.  Additionally if anyone has suggestions for a smarter factory method, I\\'m interested.</p>\r\n<p>Current types are the basic HTML fields: \r\n  text, password, checkbox, textarea, select</p>\r\n<p>Also the composite field type:  date (represented as 3 pulldowns) is available.</p>\r\n<p>See <code>OO::Form::Field</code> for more detail</p>\r\n<p></p>\r\n<li><strong><a name=\\\"item_options\\\">options</a></strong><br />\r\n</li>\r\nFor field types with options (selects aka pulldown menus, and radio/checkbox groups) values can be passed with the options field.\r\n<p>A hashref of field names pointing to either an arrayref of options (when you want value and text to be the same) or a hashref of value to text mappings.</p>\r\n<p></p>\r\n<li><strong><a name=\\\"item_values\\\">values</a></strong><br />\r\n</li>\r\nA hashref of field name to value mappings.  If you want your field to start preconfigured with certain values, pass in a values hash.\r\n<p>If your values hashref contains a subclass of <code>Class::Accessor</code> (like a <code>Class::DBI</code> object) then the objects <code>get()</code> method will be called, allowing forms to be rapidly populated from a database.</p>\r\n<p></p>\r\n<li><strong><a name=\\\"item_required\\\">required</a></strong><br />\r\n</li>\r\nAn arrayref of names of the required fields.  <code>OO::Form-</code>validate&gt; will return false (and populate an errors array) if any required fields are missing\r\n<p></p></ul>\r\n<p>\r\n</p>\r\n<h2><a name=\\\"2_error_handling_and_validation\\\">2 Error Handling and Validation</a></h2>\r\n<p>There are hooks for a future implementation of a full blown validation framework (probably using <code>Data::FormValidator</code>).</p>\r\n<p>In the meantime <code>OO::Form</code> checks that required fields have been filled in, and that none of the various fields through their own error.</p>\r\n<p>Calling the instance method <code>validate()</code> (validates() is a synonym), returns true or false depending on whether there are any error conditions in the current form.  It also populates and errors array, useful for re-displaying the form page with a list of errors.</p>\r\n<p>A useful idiom for calling validates in demonstrated in the synops.</p>\r\n<p>Besides the form wide errors array (accessible at $form-&gt;<code>errors()</code> ), each field can have their own error (though only one) accessible at $form-&gt;widget_style-&gt;error(), this is useful for re-displaying a form, with error messages inlined.</p>\r\n<p>\r\n</p>\r\n<hr />\r\n<h1><a name=\\\"methods\\\">METHODS</a></h1>\r\n<p><code>OO::Form</code> is pretty straightforward, much of the complexity is actually in <code>OO::Form::Field</code>.  Almost all <code>OO::Form</code> methods accept a hashref of named arguments.</p>\r\n<p>Note this is all experimental.</p>\r\n<ul>\r\n<li><strong><a name=\\\"item_new\\\"><code>new($params)</code></a></strong><br />\r\n</li>\r\nConstruct a new form.  Often you\\'ll want to override this with your own constructor.  The default constructor looks for (and will supply defaults if it doesn\\'t find): ``query\\'\\', ``submit_field\\'\\', ``time_zone\\'\\'.\r\n\r\n\r\n<p>* query is a CGI.pm object, or something else which masquerades as one\r\n\r\n</p>\r\n<p>* submit_field is the name of the button that submits this form (checked by is_submitted.\r\n\r\n</p>\r\n<p>* time_zone is used by <code>OO::Form::Field::date</code> to do intelligent localization of date/time values\r\n\r\n</p>\r\n<p>Additionally in the future <code>OO::Form::new</code> should take a locale.\r\n\r\n</p>\r\n<li><strong><a name=\\\"item_add_fields\\\"><code>add_fields($field_profile)</code></a></strong><br />\r\n</li>\r\nTake a field profile (as discussed in the previous section) an populate a form.\r\n\r\n\r\n<p></p>\r\n<li><strong><a name=\\\"item_field\\\"><code>field(...)</code></a></strong><br />\r\n</li>\r\nA field accessor.  Can take a hashref (or field object) and passes it to <code>OO::Form::Field-</code>factory()&gt;, and attach the results to the current form.\r\n\r\n\r\n<p>Otherwise assume a string was passed in, and return the field with that name. (AUTOLOAD will call <a href=\\\"#item_field\\\"><code>field($field_name)</code></a> for unknown methods)\r\n\r\n</p>\r\n<p></p></ul>"
tags:
    - Code
    - perl
    - web
    - webdev
---

Several months ago, inspired as I recall by Kate’s [How to Avoid Writing Code](http://www.perl.com/lpt/a/2003/07/15/nocode.html) article, I [started playing with](http://laughingmeme.org/archives/001014.html) Class::DBI and [Template Toolkit](http://template-toolkit.org) as a rapid development environment.

### Not So Fast

Turns out rapid development isn’t really my style. I’m still futzing around with the earliest stages of functionality of my first app I started developing in this brave new way. Part of the problem is I get distracted into “doing things right”, which is about as antithetical to <acronym application="" development="">RAD</acronym> as one can get. I’ve fallen into a number of these sorts of traps on this project, but a major one was the lack of a form class that integrated nicely into this dev. environment. After all you can’t really say you’re doing rapid web development, and then hand build, and process every form, can you? ### A Better Params Trap

[CGI::FormBuilder](http://formbuilder.org) is the current standard, and its very impressive in its way, but [it didn’t meet my needs](http://laughingmeme.org/archives/001196.html). In particular it does too much, and therefore plays poorly with other technologies. It was also totally unsubclassable. So with great pleasure I present [OO::Form 0.01-alpha-experimental](http://protest.net/~kellan/OO-Form-0.01a.tar.gz). (which has been kicking around for a week fews, but I finally added some POD)

### A Curiosity

I don’t really expect anyone to want to use this code yet, but if you’re curious, and/or want to tell me what I’m doing wrong, take a look at it. It is currently incomplete as I’ve been fleshing out the features as needed, but what is in place, is working well (everything documented is working). Also if you’re **really** interested I’ll send you the code I’m working on that uses it, so you can see it in action. (beyond the example in the POD below) ### My Favorite Feature

Besides being all cool, and OO, and integrating well with Class::DBI, and TT2 (and presumably any other template system, but I wouldn’t know), OO::Form allows you to define arbitrary field types. So besides text, password, select, checkbox, and textarea (I’ve been adding the standards as I need them), OO::Form also ships with an OO::Form::Field::date, which does intelligent date, and timezone handling, and while currently displayed as 3 pull down menus, could be easily subclassed (just override the *as*html method) to display via a totally different widget. ### OO::Form – pod2html

<a name="__index__"></a>

- [NAME](#name)
- [SYNOPSIS](#synopsis)
- [DESCRIPTION](#description)
- [USAGE](#usage)
- [Field Profile](#field_profile)
- [2 Error Handling and Validation](#2_error_handling_and_validation)
 
- [METHODS](#methods)

- - - - - -

# <a name="name">NAME</a>

OO::Form – an object oriented framework for building, displaying, and processing forms.

- - - - - -

# <a name="synopsis">SYNOPSIS</a>

package MyApp::AddWidgetForm;

use base ‘OO::Form’;

```

  our $FIELD<em>PROFILE = {
          fields  => 
                  [qw(name widget</em>style note expiration<em>date) ],
          types   => { 
                  widget</em>style     => 'select', 
                  note             => 'textarea', 
                  expiration<em>date  => 'date'
          },
          options  => {
                  widget</em>style     => [qw(blue green chrome)]
          },
          required  => [qw(name widget<em>style)]
  };</em>
```

```

  sub new {
          my $class = shift;
          my $self = $class->SUPER::new(@);
          $self->add<em>fields($FIELD</em>PROFILE);
          $self->submit<em>field('add</em>widget');
          return $self;
  }
```

….

```

  (else where in your application)
```

```

  my $form = MyApp::AddWidgetForm->new({query => $query, ...});
  if ($form->is<em>submitted and $form->validates ) {
          MyAdd::Widget->new</em>widget({
                  name => $form->name->value,
                  widget<em>style => $form->widget</em>style->value,
                  note => $form->note->value,
                  expiration-date => $form->expiration<em>date->value<br></br>
          });
          display</em>widget<em>added</em>confirmation();
  }
  else {
          # form hasn't been submitted, or we encountered an error
          display<em>page($template, { form => $form } );
  }</em>
```

…,

```

  (mean while, in a nearby template)
```

```

  [% IF form.errors %]
  <ul class="errors">
    [% FOREACH e = form.errors %]<li>[% e %]</li>[% END %]
  </ul>
  [% END %]
```

```

  Name:       [% form.name.html(size => '40') %]<br />
  Style:      [% form.widgetstyle.html(default => 'blue') %] <br />
  Expiration: [% form.expiration<em>date.html %]
  Note: <br />
  [% form.note.html(rows =>4, cols=>50) %]<br />
  <input type="submit" name="[%form.submit</em>field%]" value="Add Widget" />               

<p>...,</p>
```

- - - - - -

# <a name="description">DESCRIPTION</a>

`OO::Form` represents an HTML form as a collection of `OO::Form::Field` objects, a state (is submitted), and some basic error handling. It was inspired by `CGI::FormBuilder`, and by the difficulty I had integrating `CGI::FormBuilder` into my application. The `OO::Form` was designed to be used in conjuction with the Template Toolkit, and `Class::DBI` though they aren’t tightly coupled.

The most straightforward way to use `OO::Form` is to create your own subclass of `OO::Form` for each form in your application. (though create and update pages can usually re-use the same form object, and for very simple forms, it is probably less useful)

Then pass a ‘fields profile’ to the OO::Form-&gt;[`add<em>fields()</em>`](#item_add_fields) method which is a factory method for creating object of type OO::Form::Field and its varied subclasses.

- - - - - -

# <a name="usage">USAGE</a>

## <a name="field_profile">Field Profile</a>

A field profile is a compact form of specifying all the fields in your form. (Alternately you could insantiate `OO::Form:Field::*` objects one by one and add each one with $form-&gt;[`field($field))`](#item_field)

A field profile is a hashref with 6 fields.

- **<a name="item_fields">fields</a>**
An arrayref of the names of fields to instantiate. Names must be unique, and they must not have the same name as any method of your form object (as they will be accessed by calling $form-&gt;$fieldname()) - **<a name="item_types">types</a>**
A hashref of names mapped to their field types. Any field which is not given a type will be a generic field object, and will be drawn as a text field if their `html()` method is called. `OO::Form::Field-`factory()&gt; will be called for each field, and be passed its type. The default `factory()` method tries to instantiate an object of type `OO::Form::Field::$type`. You can subclass `OO::Form::Field` to provide a whole set of new field types, or new behaviour for old field types. Additionally if anyone has suggestions for a smarter factory method, I’m interested.

Current types are the basic HTML fields: text, password, checkbox, textarea, select

Also the composite field type: date (represented as 3 pulldowns) is available.

See `OO::Form::Field` for more detail

- **<a name="item_options">options</a>**
For field types with options (selects aka pulldown menus, and radio/checkbox groups) values can be passed with the options field. A hashref of field names pointing to either an arrayref of options (when you want value and text to be the same) or a hashref of value to text mappings.

- **<a name="item_values">values</a>**
A hashref of field name to value mappings. If you want your field to start preconfigured with certain values, pass in a values hash. If your values hashref contains a subclass of `Class::Accessor` (like a `Class::DBI` object) then the objects `get()` method will be called, allowing forms to be rapidly populated from a database.

- **<a name="item_required">required</a>**
An arrayref of names of the required fields. `OO::Form-`validate&gt; will return false (and populate an errors array) if any required fields are missing 
## <a name="2_error_handling_and_validation">2 Error Handling and Validation</a>

There are hooks for a future implementation of a full blown validation framework (probably using `Data::FormValidator`).

In the meantime `OO::Form` checks that required fields have been filled in, and that none of the various fields through their own error.

Calling the instance method `validate()` (validates() is a synonym), returns true or false depending on whether there are any error conditions in the current form. It also populates and errors array, useful for re-displaying the form page with a list of errors.

A useful idiom for calling validates in demonstrated in the synops.

Besides the form wide errors array (accessible at $form-&gt;`errors()` ), each field can have their own error (though only one) accessible at $form-&gt;widget*style-&gt;error(), this is useful for re-displaying a form, with error messages inlined.*

- - - - - -

# <a name="methods">METHODS</a>

`OO::Form` is pretty straightforward, much of the complexity is actually in `OO::Form::Field`. Almost all `OO::Form` methods accept a hashref of named arguments.

Note this is all experimental.

- **<a name="item_new">`new($params)`</a>**
Construct a new form. Often you’ll want to override this with your own constructor. The default constructor looks for (and will supply defaults if it doesn’t find): `query'',`submitfield”, “time\_zone”. \* query is a CGI.pm object, or something else which masquerades as one

\* submit*field is the name of the button that submits this form (checked by is*submitted.

\* time\_zone is used by `OO::Form::Field::date` to do intelligent localization of date/time values

Additionally in the future `OO::Form::new` should take a locale.

- **<a name="item_add_fields">`add<em>fields($field</em>profile)`</a>**
Take a field profile (as discussed in the previous section) an populate a form. - **<a name="item_field">`field(...)`</a>**
A field accessor. Can take a hashref (or field object) and passes it to `OO::Form::Field-`factory()&gt;, and attach the results to the current form. Otherwise assume a string was passed in, and return the field with that name. (AUTOLOAD will call [`field($field_name)`](#item_field) for unknown methods)