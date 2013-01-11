######################
# Imports 
######################

fs = require("fs")
parser = require("lumberjack_syntax")

######################
# Process Variables
######################

# Tracking Variables
deep = 0
objectStack = []
objClosing = ""

# Final Output Variables
htmlOutput = ""
cssOutput = ""
jsOutput = ""

######################
# Type Arrays
######################

htmlElements = ["div", "h1", "h2", "h3", "h4", "h5", "h6", "p", "img", "ol", "ul", "li"]

######################
# Begin Chopping
######################

console.log "Running Sawmill ..."

compileLJ = (ljContents) ->
	lumberjackArray = parser.parse(ljContents)
	console.log "Chopping with Lumberjack..."
	chopping(lumberjackArray)

chopping = (ljArray) ->
	
	# Debug
	# console.log ljArray
	
	sawIn()

	# Loop through each array and chop into objects
	for lumber in ljArray
		do (lumber) ->
			if typeof(lumber) is 'string'
				processSting lumber
			else
				chopping lumber

	sawOut()

######################
# Handle Nesting
######################

sawIn = ->
	deep++

sawOut = ->
	deep--
	htmlOutput = htmlOutput + objClosing + "\n"
	objClosing = ""
	console.log objectStack
	objectStack.pop

######################
# Process Items
######################

processSting = (lumberStr) ->
	
	# Debug
	# console.log lumberStr
	# console.log ("level deep: " + deep)

	# Verify the string is not empty
	if lumberStr

		# Split string into parts (lumber line items)
		lli = lumberStr.split(":");
		lumberId = lli[0];

		# Determine what type of line is being processed
		switch lumberId
			when "ob" then processObject lli
			when "pv" then processProperty lli
			when "cl" then processClass lli
			when "id" then processID lli
			when "cm" then processComment lli
			when "br" then processBeard lli

processObject = (lli) ->

	objectType = lli[1]
	
	if objectType in htmlElements
		# console.log objectType
	else
		
		switch objectType
			when "html5" then pageStartHTML5()
			when "script" then scriptBlock
			when "style" then styleBlock
			when "box" then boxBlock
			when "vbox" then vboxBlock
			when "hbox" then hboxBlock
			when "image" then imageBlock
			when "label" then labelBlock
			when "list" then listBlock
			else console.log ( objectType + " Not Supported")

processProperty = (lli) ->
	# console.log ("add property" + lli)

processClass = (lli) ->

processID = (lli) ->

processComment = (lli) ->

processBeard = (lli) ->

######################
# Process Page Parts
######################

pageStartHTML5 = ->
	objectStack.push "html5"
	htmlOutput = htmlOutput + "<!DOCTYPE html>\n<html>\n"
	objClosing = "</html>"

scriptBlock = ->

styleBlock = ->

boxBlock = ->

vboxBlock = ->

hboxBlock = ->

imageBlock = ->

labelBlock = ->

listBlock = ->

######################
# Helper Functions
######################

getExtension = (filename) ->
  i = filename.lastIndexOf(".")
  (if (i < 0) then "" else filename.substr(i))

addObjectOpen = ->

addObjectProperties = ->

addObjectClose = ->

generateFiles = ->
	fs.writeFile "test.html", htmlOutput, (err) ->
  throw err  if err
  console.log "It's saved!"

######################
# Get Arguments
######################

myArgs = process.argv.slice(2)

if getExtension(myArgs[0]).toLowerCase() is '.lj'
	ljContents = fs.readFileSync(myArgs[0]).toString()
	compileLJ(ljContents)
	generateFiles()
else
	console.log "Error: Sawmill can only saw lumberjack (.lj) files."


