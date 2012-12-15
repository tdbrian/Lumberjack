*html5

@import custom ../components/box

*script source = "http://ajax.com"
*style source = "/test.ljs"

*script: type = "haml"
{
	function open()
	{

	}
}

*script: type = "js"
{
	
	rem = new array()

	// Open
	open ->
		me = 3 + 3
		tereen = 'hello' + "rain"
		console.lgo tereen

}

*vbox: #placeMap, .test, gap=22, top=15, width=32, text="hello"
{
	*p: 
		text = "hello", 
		width = 25, 
		height = 22, 
		font-size = 23em
	
	*h1: 
		text = "hello world"

	*box: 	
		click = test(a),
		#limited,
		.help, .we, .are

	*label: text = "hello"

	*image:
		source = "we.jpg", 
		height = 234,
		width = 88
		{
			*h1: text = "me", width = 22, height = 32
			*custom-help: 
		}
}

*list: type = "ordered", height = "100%", click = open()
{	
	*li: text = "we"
	*li: text = "them"
}
