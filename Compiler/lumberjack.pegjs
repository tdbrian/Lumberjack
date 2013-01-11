start
  	= function+

function
  	= blockComment
  	/ singleComment
  	/ beard
  	/ object

object
	= scriptDeclaration property* code?
	/ objectDeclaration property* children?

objectDeclaration
	= sep* blockComment* singleComment* sep* "*" objectName:stringNum sep* {return "ob:" + objectName}

scriptDeclaration
 	= sep* "*script:"i sep* {return "*sc"}
 	/ sep* "*style:"i sep* {return "*st"}

property
	= props
	/ objId
	/ objClass

props
	= sep* propName:stringNum sep* ":" sep* "\"" value:stringSpaceNum "\"" sep* {return "pv:" + propName + ":" + value}

children
	= "{" sep* blockComment* singleComment* sep* ob: object* sep* blockComment* singleComment* sep* "}" {return ob;}

code
	= "{" co: commentBlockString* "}" {return co.join("");}

beard
	= "@beard"i sep* name: stringNum sep* path: filePath sep* newLine* {return "br:" + name + ":" + path}

objId
	= sep* "#" objId:stringNum sep* {return "id:" + objId}

objClass
	= sep* "." objClass:stringNum sep* {return "cl:" + objClass}

singleComment
    = "#" commentString* newLine+ {return "cm"}

blockComment
	= "###" commentBlockString* "###" {return "cb"}

newLine
	= [\n\r]

filePath
	= fp: [/.a-zA-Z0-9]* {return fp.join("");}

commentString
	= [ \t0-9a-zA-Z-!@#$%*"\=^&(){}:;?.,/]

commentBlockString
	= [ \t\n\r\t0-9a-zA-Z!@$%*="\^&():;?.,]

sep
  	= [ \n\r\t] {return ""}

string
	= s: [a-zA-Z]+ {return s.join("");}

number
	= n: [0-9]+ {return n+n}

stringNum
        = sn: [0-9a-zA-Z-.]+ {return sn.join("");}

stringSpaceNum
        = sn: [ \n\t0-9a-zA-Z-#.%=:;]+ {return sn.join("");}