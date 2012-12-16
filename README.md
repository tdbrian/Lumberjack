#Lumberjack

A single new language for generating separate HTML / CSS / SCSS / SASS / Javascript / Coffeescript files faster and more conveniently. .lj files cross compile from fewer, cleaner, and easier-to-learn lines of Lumberjack code to standard web code. Lumberjack includes many types of syntactic syrup to make code development easier including .beard (custom components) and .flapjack (library) files.

##Why Use Lumberjack?

Do you want to write the same code faster without jumping between multiple files? Lumberjack is very easy to learn and is easier to read and follow than separate html and css.

##Getting Started

Lumberjack compiler, Sawmill, is currently under development with an expected completion of January 2013.

##Sample Lumberjack Code

```as3
*html5

@flapjack myBoxes ../components/myBoxes

*script source = "test.lj"
*style source = "styles.css"

*script:
{
	
}

*script: type = "coffee"
{
	testFunction ->
		num = 3 + 3
		stringVar = 'hello' + "world"
		console.log stringVar
}

*vbox: #placeMap .test gap=22 top=15 width=32 text="hello"
{
	*p: 
		text = "hello"
		width = 25
		height = 22 
		font-size = 23em
	
	*h1: 
		text = "hello world"

	*box: 	
		click = test(a)
		#limited
		.help .we .are

	*label: text = "hello"

	*image:
		source = "we.jpg" 
		height = 234
		width = 88
		{
			*h1: text = "me" width = 22 height = 32
			*custom-help: 
		}
}

*list: type = "ordered" height = "100%" click = testFunction()
{	
	*li: text = "we"
	*li: text = "them"
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
