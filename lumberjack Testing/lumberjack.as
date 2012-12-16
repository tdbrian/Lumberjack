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
	top=15 width=32
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
