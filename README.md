#Lumberjack

A single new language for generating seperate HTML / CSS / SCSS / SASS / Javascript / Coffeescript files faster and more conveniently. .lj files cross compile from fewer, cleaner, and easier-to-learn lines of Lumberjack code to standard web code. 

##Why Use Lumberjack?

Do you want to write the same code faster without jumping between multiple files? Lumberjack is very easy to learn and is easier to read and follow than seperate html and css.

##Getting Started

Lumberjack compiler is currently under development with an expected completion of January 2013.

##Sample Lumberjack Code

```as3
*html5

@import myBoxes ../components/myBoxes

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

##Learn the Syntax

###Opening Syntax

The opening syntax and required first line of a .lj page should declare html type.

####HTML5
```
*html5
```

####Transitional
```
*html
```

####Strict
```
*strict
```

####Basic
```
*basic
```

####Mobile
```
*mobile
```
