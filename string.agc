#include "constants.agc"
#include "array.agc"
function split(stringToSplit as string, delimeterSymbol as String)
	splitArray as String[]
	count as integer
	count = CountStringTokens(stringToSplit, delimeterSymbol)
	for i = 1 to count
		splitArray.insert(GetStringToken(stringToSplit, delimeterSymbol, i))
	next i
endfunction splitArray
function capitalize(text as string)
	ret as String
	ret = upper(mid(text,1,1))+mid(text,2,len(text))
endfunction ret
function list(text as string)
	splitArray as string[]
	for i=1 to len(text)
			splitArray.insert(Mid(text,i,1))
	next
endfunction splitArray
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
	for i=0 to count - 1
		ret = ret + text
	next
endfunction ret
function isAlphanum(text as String)
	array as String[]
	array = list(text)
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
	array = list(text)
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
	array = list(text)
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
function isIdentifier(text as String)
	array as String[]
	array = list(text)
	alphanum as integer[]
	for i=48 to 57
		alphanum.insert(i)
	next
	for i=65 to 122
		if 90 < i and i < 97
			if i = 95
				alphanum.insert(i)
			endif
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
	numbers as integer[9] = [48,49,50,51,52,53,54,55,56,57]
	if array.length = ret-1
		ret = 1
		if includesI(numbers,asc(array[0])) = true
			ret = 0
		endif
	else
		ret = 0
	endif
endfunction ret
function isSpace(text as String)
	array as string[]
	array = list(text)
	ret as integer
	for i=0 to array.length
		if CompareString(array[i]," ") = true
			ret = ret + 1
		endif
	next
	if ret = array.length-1
		ret = 1
	else
		ret = 0
	endif
endfunction ret
function indexOf$(text as string, substring as string)
	text_array as string[]
	substring_array as string[]
	text_array = list(text)
	substring_array = list(substring)
	start as integer
	endI as integer
	start = 0
	endI = 0
	while start < len(text)
		if CompareString(text_array[start+endI],substring_array[endI]) = false
			start = start + 1
			endI = 0
			continue
		endif
		endI = endI + 1
		if endI = len(substring)
			exitfunction start
		endif
	endwhile
endfunction -1
function isUpper(text as String)
	array as string[]
	array = list(text)
	lower_letters as integer[]
	for i=97 to 122
		lower_letters.insert(i)
	next
	for i=0 to array.length
		if includesI(lower_letters,asc(array[i]))
			exitfunction false
		endif
	next
endfunction true
function isLower(text as String)
	array as string[]
	array = list(text)
	upper_letters as integer[]
	for i=65 to 90
		upper_letters.insert(i)
	next
	for i=0 to array.length
		if includesI(upper_letters,asc(array[i]))
			exitfunction false
		endif
	next
endfunction true
function isTitle(text as string)
	array as string[]
	array = split(text," ")
	substring_array as string[]
	substring_array = list(array[0])
	points as integer
	if isUpper(substring_array[0]) = true then points = points + 1
	for i = 1 to substring_array.length
		if isUpper(substring_array[i]) = false then points = points + 1
	next
	if points = substring_array.length + 1 then exitfunction true
endfunction false
function just(text as string, substring as string, count as integer, mode as string)
		if CompareString(lower(mode),"l")
			exitfunction text + repeat$(substring,count-len(text))
		elseif CompareString(lower(mode),"r")
			exitfunction repeat$(substring,count-len(text)) + text
		endif
endfunction ""
