#include "constants.agc"
#include "array.agc"
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
	ret as String
	ret = upper(mid(text,1,1))+mid(text,2,len(text))
endfunction ret
function center(text as string, number as integer, padding as string)
	count as integer
	count = (number - len(text)) / 2
	ret as String
	if count < 0
		ret = ""
	else
		ret = repeat$(padding,count) + text + repeat$(padding,count)
	endif
endfunction ret
function endswith(text as string, search as string)
	ret = CompareString(mid(text,len(text)-len(search)+1,len(text)-len(search)-1),search,1,-1)
endfunction ret
function repeat$(text as string, count as integer)
	ret as String
	for i=0 to count
		ret = ret + text
	next
endfunction ret
function isAlphanum(text as String)
	array as String[]
	array = split(text,"",1)
	alphanum as integer[]
	for i=48 to 57
		alphanum.insert(i)
	next
	for i=65 to 122
		if 90 < i and i < 97
			//pass
		else
			alphanum.insert(i)
		endif
	next
	ret as integer
	for i=0 to array.length
		if includesI(alphanum,asc(array[i])) = true
			ret = ret + 1
		endif
	next
	if array.length = ret-1
		ret = 1
	else
		ret = 0
	endif
endfunction ret
function isAlpha(text as String)
	array as String[]
	array = split(text,"",1)
	alpha as integer[]
	for i=65 to 122
		if 90 < i and i < 97
			//pass
		else
			alpha.insert(i)
		endif
	next
	ret as integer
	for i=0 to array.length
		if includesI(alpha,asc(array[i])) = true
			ret = ret + 1
		endif
	next
	if array.length = ret-1
		ret = 1
	else
		ret = 0
	endif
endfunction ret
function isDecimal(text as String)
	array as String[]
	array = split(text,"",1)
	decimal as integer[]
	for i=48 to 57
		decimal.insert(i)
	next
	ret as integer
	for i=0 to array.length
		if includesI(decimal,asc(array[i])) = true
			ret = ret + 1
		endif
	next
	if array.length = ret-1
		ret = 1
	else
		ret = 0
	endif
endfunction ret
