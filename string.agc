#include "constants.agc"
function split(stringToSplit as string, delimeterSymbol as String, bool as integer)
	splitArray as String[]
	count as integer
	if bool = false
		count = CountStringTokens(stringToSplit, delimeterSymbol)
		for i = 1 to count
			splitArray.insert(GetStringToken(stringToSplit, delimeterSymbol, i))
		next i
	else
		for i=1 to len(stringToSplit)
			splitArray.insert(Mid(stringToSplit,i,1))
		next
	endif
endfunction splitArray
function capitalize(text as string)
	array as string[]
	array = split(text,"",1)
	array[0] = upper(array[0])
	ret as string
	ret = join(array,"")
endfunction ret
function center(text as string, number as integer, padding as string)
	count as integer
	count = (number - len(text)) / 2
	ret as String
	if count < 0
		ret = ""
	else
		for i=0 to count
			ret = ret + padding
		next
		ret = ret + text
		for i=0 to count
			ret = ret + padding
		next
	endif
endfunction ret
function endswith(text as string, search as string)
	ret = CompareString(mid(text,len(text)-len(search)+1,len(text)-len(search)-1),search,1,-1)
endfunction ret
