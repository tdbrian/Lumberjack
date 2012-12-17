#Lumberjack

A single new client web markup language for generating separate HTML / CSS / SCSS / SASS / Javascript / Coffeescript files faster and more conveniently. .lj files cross compile from fewer, cleaner, and easier-to-learn lines of Lumberjack code to standard web code. Lumberjack includes many types of syntactic syrup to make code development easier including .beard (custom components) and .flapjack (library) files.

##Getting Started

Lumberjack compiler, Sawmill, is currently under development with an expected completion of January 2013.

##Common Questions

###Why Use Lumberjack

Lumberjack (LJ) is all about keeping your web code dry and easy to follow. Although Lumberjack is compatible with server side languages such as PHP or Ruby, Lumberjack is especially useful for websites not powered by templating engines and/or serverside template code. Lumberjack can best be compared to what a compilation of HAML, Handlebars, SASS and Compass can do... but it also does more than that and does not require a serverside language like PHP or Ruby!

1. LJ is like HAML in that it makes code easier to read and cuts down on syntax... except LJ is not indentation dependent.
2. LJ is like Handelbars in that it allows for easy page templating.
3. LJ is like SASS in that it makes many CSS drier, easier to wite, and allows variables.
4. LJ is like Compass in that it includes many syntactic syrup features such as browser-independent styling. 

###How is Lumberjack Different Than HTML, CSS and Javascript?

LJ does many things HTML, CSS, and JS can't do alone or by default. Read on to learn more.

###Is Lumberjack the same as HAML, SASS and Coffeescript?

1. LJ is like HAML in many ways but LJ does far more. We love HAML! HAML set a new precedent in cutting down on verbose HTML.
2. LJ does many of the things SASS is capable of- just differently - and we believe better.
3. LJ does not attempt to replace Coffeescript as LJ is not a scripting language. LJ embraces Coffeescript and allows it to be used instead of standard javascript.

##Sample Lumberjack Code

```as3
*html5 
{

	@beards myBoxes ../components/myBoxes

	*script source = "test.lj"
	*style source = "styles.css"

	*script: type = "coffee" 
	{
		testFunction ->
			stringVar = "hello" + "world"
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
		gap = "22" 
		top = "15" width = "32"
	{
		*p: 
			text = "hello"
			width = "25"
			height = "22" 
			font-size = "23em"
		
		*h1: 
			text = "hello world"

		*box: 	
			click = #tester#
			#limited
			.help .we .are

		*label: text = #testVarA#

		*image:
			source = "testImage.jpg" 
			height = "234"
			width = "88"
	}

	*list: height = "100%" click = #testFunction#
	{	
		* "we"
		* "them"
	}

}

```

#Lumberjack Syntax

Lumberjack is largely white space independent except between object properties. The syntax is made up of the following parts:

- Declarations
- Script Blocks
- Style Blocks
- Objects
	- Properties
	- Context
	- Sub Objects

##Document Syntax

The opening syntax and required first line of a .lj file must declare a html type.

- HTML5: *html5
- Transitional: *html
- Strict: *strict
- Basic: *basic
- Mobile: *mobile

##Script Syntax

###Javascript

Javacript (js) can either be referenced or embedded within .lj files. Functions can also be tied to object listeners.

Below is an example of embedding javascript:
```as3
*script:
{
	function testFunction 
	{
		var stringVar = "hello" + "world";
		console.log (stringVar);
	}

	function tester 
	{
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
		stringVar = "hello" + "world"
		console.log stringVar
	tester ->
		console.log "tester ran!"
}
```

For embedding CoffeeScript within object properties, double pound symbols should be used instead of one for js.
```
*label: text = ##stringVar##
```

##Lumberjack Beards (Objects)

Lumberjack objects come from HTML tags, Lumberjack objects, and custom Lumberjack objects called beard objects with the .beard extension. Lumberjack beards are defined by properties which make up content, specific styling properties, layout properties and script events. Object styling and layout properties can be first set from css, scss, or sass stylesheet or embedded styles. Object properties override upper level styles and layouts. Just like html dom and styles, scripts such as JQuery are able to modify standard properties.

Lumberjack beards are identified in the syntax by an asterisk (*) immediately followed by the object type and a colon (:). No spaces are allowed between the asterisk, object type and colon. Properties follow the colon and require at least one space between properties. Property strings require and opening and closing double quotes " " as shown in the example below. 

```as3
*img: source = "../logo.png"
```

Beards can be nested within other beards if the parent object may contain children. Such beards include *div, *box, *hbox, *vbox, etc.. Nexting is defined by including children within brackets '{ }'. Example shown below:

```as3
*div: 
{
	*h1: text = "hello world!"
}
```
The above *div object contains a child *h1 header which functions similar to nesting in HTML5.

###Lumberjack Beards from HTML Tags

All modern HTML Tags are supported with common properties taken from HTML5 css and tags. Many Beards taken from HTML5 styles and tags include 

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

The alpha build of Lumberjack includes several built-in objects (beards) which provide base functionality not provided by defualt HTML5. Below is a list of Lumberjack Objects along with basic definitions. For full .beard object definitions, see the detailed Lumberjack wiki documentation (coming soon).

- *box: 		|	A *box is similar to a div but includes default styling and unique properties for further control
- *hBox:		|	A *hbox is a horizontal box beard with specific styling to layout children horizontally
- *vBox:		|	A *vbox is a vertical box beard with specific styling to layout children vertically
- *beardText:	|	*beardText is a text box beard with specific cross-browser properties for text
- *beardImg:	|	*beardImg is a *box beard with a default image background

More Lumberjack Beards will become available as the language matures. User custom Beards will be reviewed for compliance to become built-in Lumberjack Beards.

###Custom Lumberjack Objects (Beards)

Custom Lumberjack Beards are extremely useful because one written, they can be injected into Lumberjack files. Lumberjack Beard files (.beard) have the same syntax as Lumberjack files (.lj) except they do not have a document type (html5, xhtml). .beard files should contain the content, children Beards, styling, and layout of the custom Beard. Beards can be used for many differnt types of custom components - from forms to groups to calendar components, etc....

Below is a .beard example with implementation.

.beard File (../myBeards/beardTextBlock.beard):
```as3
*script 
{
	function tester() 
	{
		console.log("clicked inside beard box");
	}
}

*declaration: 
{
	textA
	textB
}

*box: 	
	#limited
	click = "tester"
	padding-left = "10"
	padding-top = "10"
	.style-1 .style-2 
	{
		*beardText: text = #textA# shadow = "shadow(12)" top = "12" left = "15"
		*beardText: text = #textB# shadow = "shadow(12)" top = "24" left = "15"
	}
```

Beard Implementation:
```as3
*html5 
{

	@beards myBeards ../myBeards

	*myBeards-beardTextBlock: textA = "hello!" textB = "world!"
}
```

##Lumberjack Flapjacks (Libraries)

Lumberjack uses Flapjack .flapjack files to allow users to create custom Beard libraries for use within Lumberjack files. A Flapjack file is basically many custom Lumberjack Beard items (components) all with the same theme or set of functionality which can be group together and associated wiht a Lumberjack file. 

One example use of a Flapjack .flapjack file is to create a custom library of form objects or Beards which can then be easily tied to be default of a Lumberjack file. This is especially useful for packaging together what would usually require seperate css, js, and html files or to some extent would not be possible with standard html5.

Flapjack Implementation:
```as3
*html5 
{

	@flapjack myFlapjack ../myFlapjack

	*form 
	{
		*input:	label = "First Name"
		*input:	label = "Last Name"
		*input: type = "button" label = "Submit"
	}
}
```

The above implementation will trade out any *form beard with the corresponding *form beard in the 'myFlapjack' Flapjack. Not only will this Beard contain styling, but it will also include content layout and content. This is especially usefull for creating a layout, style and content just one time- keeping your code DRY.

##License

See ```LICENSE.txt```.









