#Lumberjack

A single new language for generating separate HTML / CSS / SCSS / SASS / Javascript / Coffeescript files faster and more conveniently. .lj files cross compile from fewer, cleaner, and easier-to-learn lines of Lumberjack code to standard web code. Lumberjack includes many types of syntactic syrup to make code development easier including .beard (custom components) and .flapjack (library) files.

##Why Use Lumberjack?

Do you want to write the same code faster without jumping between multiple files? Lumberjack is very easy to learn and is easier to read and follow than separate html, style, and script files.

##Getting Started

Lumberjack compiler, Sawmill, is currently under development with an expected completion of January 2013.

##Sample Lumberjack Code

```as3
*html5 {

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

##Document Syntax

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
```as3
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

```as3
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

Lumberjack objects are identified in the syntax by an asterisk (*) immediately followed by the object type. No spaces are allowed between the asterisk and the object type.

```as3
*img
```

Objects can be nested within other objects if the parent object may contain children. Such objects include *div, *box, *hbox, *vbox, etc.. Nexting is defined by including children within brackets '{ }'. Example shown below:

```as3
*div: {
	*h1: text = "hello world!"
}
```
The above *div object contains a child *h1 header which functions similar to nesting in HTML5.

###Lumberjack Objects from HTML Tags

All modern HTML Tags are supported with common properties taken from HTML5 css and tags.

*a
*abbr
*address
*area
*article
*aside
*audio
*b
*base
*bdi
*bdo
*blockquote
*body
*br
*button
*canvas
*caption
*cite
*code
*col
*colgroup
*command
*dtalist
*dd
*del
*details
*dfn
*div
*dl
*dt
*em
*embed
*fieldset
*figcaption
*figure
*footer
*form
*h1
*h2
*h3
*h4
*h5
*h6
*head
*header
*hgroup
*hr
*html
*i
*iframe
*img
*input
*ins
*kbd
*keygen
*label
*legend
*li
*link
*map
*mark
*menu
*meta
*meter
*nav
*noscript
*object
*ol
*optgroup
*option
*output
*p
*param
*pre
*progress
*q
*rp
*rt
*s
*samp
*script
*section
*select
*small
*source
*span
*strong
*style
*sub
*summary
*sup
*table
*tbody
*td
*textarea
*tfoot
*th
*thead
*time
*title
*tr
*track
*u
*ul
*var
*video
*wbr

###Bult-In Lumberjack Objects (Beards)

The alpha build of Lumberjack includes several built-in objects (beards) which provide base functionality not automatically provided by defualt HTML5. Below is a list of Lumberjack Objects along with basic definitions. For full .beard object definitions, see the detailed Lumberjack wiki documentation (coming soon).

- *box: 		|	A *box is similar to a div but includes default styling and unique properties for further control
- *hBox:		|	A *hbox is a horizontal box beard with specific styling to layout children horizontally
- *vBox:		|	A *vbox is a vertical box beard with specific styling to layout children vertically
- *beardText:	|	*beardText is a text box beard with specific cross-browser properties for text
- *beardImg:	|	*beardImg is a *box beard with a default image background

More Lumberjack Beards will become available as the language matures. User custom Beards will be reviewed for compliance to become built-in Lumberjack Beards.

###Custom Lumberjack Objects (Beards)
















