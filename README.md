#Lumberjack

A single new language for generating separate HTML / CSS / SCSS / SASS / Javascript / Coffeescript files faster and more conveniently. .lj files cross compile from fewer, cleaner, and easier-to-learn lines of Lumberjack code to standard web code. Lumberjack includes many types of syntactic syrup to make code development easier including .beard (custom components) and .flapjack (library) files.

##Why Use Lumberjack?

Do you want to write the same code faster without jumping between multiple files? Lumberjack is very easy to learn and is easier to read and follow than separate html, style, and script files.

##Getting Started

Lumberjack compiler, Sawmill, is currently under development with an expected completion of January 2013.

##Sample Lumberjack Code

```as3
*html5

@import myBoxes ../components/myBoxes

*script source = "test.lj"
*style source = "styles.css"

*script: type = "coffee"
{
	testFunction ->
		stringVar = 'hello' + "world"
		console.log stringVar
	tester ->
		console.log "tester ran!"
}

*declaration:
{
	testVarA = "test var A"
}

*vbox: #my-v-box 
	.test-style 
	gap=22 
	top = 15 width = 32
{
	*p: 
		text = "hello"
		width = 25
		height = 22 
		font-size = 23em
	
	*h1: 
		text = "hello world"

	*box: 	
		click = tester
		#limited
		.help .we .are

	*label: text = #testVarA#

	*image:
		source = "testImage.jpg" 
		height = 234
		width = 88
}

*list: height = "100%" click = testFunction
{	
	* "we"
	* "them"
}

```

#Learn Lumberjack Syntax

Lumberjack is largely white space independent except between object properties. The syntax is made up of the following parts:

- Declerations
- Script Blocks
- Style Blocks
- Objects
	- Properties
	- Context
	- Sub Objects

##Syntax Object Rules

Objects are declared by an asterisk (*). Objects can match 1:1 with html tag types, lumberjack objects, or custom .beard objects.

###H1 HTML Header
```
*h1
```

###Lumberjack Horizontal Box
```
*hbox
```

###Custom Beard Object
```
*customName-specialBox
```

##Opening Syntax

The opening syntax and required first line of a .lj page should declare html type.

###HTML5
```
*html5
```

###Transitional
```
*html
```

###Strict
```
*strict
```

###Basic
```
*basic
```

###Mobile
```
*mobile
```

##Script Syntax

###Javascript

Javacript (js) can either be referenced or embedded within .lj files. Functions can also be tied to object listeners.

Below is an example of embedding javascript:
```
*script:
{
	function testFunction {
		var stringVar = 'hello' + "world";
		console.log (stringVar);
	}

	function tester {
		console.log ("tester ran!");
	}
}
```

Script object blocks are by default javascript type.

Below is an example of embedding js within a text property of an object. A single pound (#) on each side of script is required.
```
*label: text = #stringVar#
```

This type of js referencing within objects is generated during compiling and is bindable.

###CoffeeScript

CoffeeScript can be used in Lumberjack just like js. Type referencing is required to differentiate from the default of js. For example:

```
*script: type = "coffee"
{
	testFunction ->
		stringVar = 'hello' + "world"
		console.log stringVar
	tester ->
		console.log "tester ran!"
}
```

For embedding CoffeeScript within object properties, double pound symbols should be used instead of one for js.
```
*label: text = ##stringVar##
```

##Lumberjack Objects 

Lumberjack objects come from HTML tags, Lumberjack objects, and custom Lumberjack objects called beard objects with the .beard extension. Lumberjack objects are defined by properties which make up content, specific styling properties, layout properties and script events. Object styling and layout properties can be first set from css, scss, or sass stylesheet or embedded styles. Object properties override upper level styles and layouts. Just like html dom and styles, scripts such as JQuery are able to modify standard properties.

###Lumberjack Objects from HTML Tags

-a
-abbr
-address
-area
-article
-aside
-audio
-b
-base
-bdi
-bdo
-blockquote
-body
-br
-button
-canvas
-caption
-cite
-code
-col
-colgroup
-command
-dtalist
-dd
-del
-details
-dfn
-div
-dl
-dt
-em
-embed
-fieldset
-figcaption
-figure
-footer
-form
-h1
-h2
-h3
-h4
-h5
-h6
-head
-header
-hgroup
-hr
-html
-i
-iframe
-img
-input
-ins
-kbd
-keygen
-label
-legend
-li
-link
-map
-mark
-menu
-meta
-meter
-nav
-noscript
-object
-ol
-optgroup
-option
-output
-p
-param
-pre
-progress
-q
-rp
-rt
-s
-samp
-script
-section
-select
-small
-source
-span
-strong
-style
-sub
-summary
-sup
-table
-tbody
-td
-textarea
-tfoot
-th
-thead
-time
-title
-tr
-track
-u
-ul
-var
-video
-wbr












