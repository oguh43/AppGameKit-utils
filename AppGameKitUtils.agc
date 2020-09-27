#constant true = 1
#constant false = 0
#constant null = ""
#constant NL = chr(13) + chr(10)
#constant PI = 3.1415926535897
function remainder(number1, number2)
	ret = number1-(number1/number2)*number2
endfunction ret
function factorial(number as integer)
    if number<=1
        fact=1
    else
        fact=number*factorial(number-1)
    endif
endfunction fact
function comb(number1 as integer, number2 as integer)
	if number1 >= number2
		result as float
		result = factorial(number1)/factorial(number2)/factorial(number1-number2)
	else
		result = 0
	endif
endfunction result
function copysign(number1, number2)
    ret = abs(number1)*(abs(number2)/number2)
endfunction ret
function gcd(number1 as integer, number2 as integer)
	while number2 <> 0
		temp = number2
		number2 = remainder(number1,number2)
		number1 = temp
	endwhile
endfunction number1
function prod(array as integer[], start as integer)
	ret = 1
	for i = start to array.length
		ret = ret * array[i]
	next
endfunction ret
function rad(degrees)
	ret as float
	ret = degrees*(PI/180)
endfunction ret
function deg(radians)
	ret as float
	ret = radians*(180/PI)
endfunction ret
function join(array as string[], delimeter as string)
	ret as String
	for i=0 to array.length
		ret = ret + array[i] + delimeter
	next
endfunction ret
function sumI(array as integer[])
	ret as integer
	ret = 0
	for i=0 to array.length
		ret = ret + array[i]
	next
endfunction ret
function sum#(array as float[])
	ret as float
	ret = 0
	for i=0 to array.length
		ret = ret + array[i]
	next
endfunction ret
function includes$(array as String[],find as String)
	ret as integer
	for i=0 to array.length
		if CompareString(array[i],find) = true
			ret = ret + true
		endif
	next
	if ret > 0
		ret = 1
	else
		ret = 0
	endif
endfunction ret
function includes#(array as Float[],find as Float)
	ret as integer
	for i=0 to array.length
		if CompareString(str(array[i]),str(find)) = true
			ret = ret + true
		endif
	next
	if ret > 0
		ret = 1
	else
		ret = 0
	endif
endfunction ret
function includesI(array as Integer[],find as Integer)
	ret as integer
	for i=0 to array.length
		if CompareString(str(array[i]),str(find)) = true
			ret = ret + true
		endif
	next
	if ret > 0
		ret = 1
	else
		ret = 0
	endif
endfunction ret
function Print$(array as string[])
	buffer as String
	buffer = "["
	for i=0 to array.length
		buffer = buffer+chr(34)+array[i]+chr(34)+","
	next
	if array.length <> -1
		buffer = mid(buffer,1,len(buffer)-1)+"]"
	else
		buffer = "[]"
	endif
	print(buffer)
endfunction
function Print#(array as float[])
	buffer as String
	buffer = "["
	for i=0 to array.length
		buffer = buffer+str(array[i])+","
	next
	if array.length <> -1
		buffer = mid(buffer,1,len(buffer)-1)+"]"
	else
		buffer = "[]"
	endif
	print(buffer)
endfunction
function PrintI(array as integer[])
	buffer as String
	buffer = "["
	for i=0 to array.length
		buffer = buffer+str(array[i])+","
	next
	if array.length <> -1
		buffer = mid(buffer,1,len(buffer)-1)+"]"
	else
		buffer = "[]"
	endif
	print(buffer)
endfunction
function extendSF(array$ as string[], array# as float[], STRbefore# as integer)
	ret as string[]
	if STRbefore# = true
		ret = array$
		for i=0 to array#.length
			ret.insert(str(array#[i]))
		next
	else
		for i=0 to array#.length
			ret.insert(str(array#[i]))
		next
		for i=0 to array$.length
			ret.insert(array$[i])
		next
	endif
endfunction ret
function extendSI(array$ as string[], arrayI as integer[], STRbeforeIbool as integer)
	ret as string[]
	if STRbeforeIbool = true
		ret = array$
		for i=0 to arrayI.length
			ret.insert(str(arrayI[i]))
		next
	else
		for i=0 to arrayI.length
			ret.insert(str(arrayI[i]))
		next
		for i=0 to array$.length
			ret.insert(array$[i])
		next
	endif
endfunction ret
function extendFI(array# as float[], arrayI as integer[], FbeforeIbool as integer)
	ret as string[]
	if FbeforeIbool = true
		for i=0 to array#.length
			ret.insert(str(array#[i]))
		next
		for i=0 to arrayI.length
			ret.insert(str(arrayI[i]))
		next
	else
		for i=0 to arrayI.length
			ret.insert(str(arrayI[i]))
		next
		for i=0 to array#.length
			ret.insert(str(array#[i]))
		next
	endif
endfunction ret
function extendSS(array1 as string[], array2 as string[])
	ret as string[]
	ret = array1
	for i=0 to array2.length
		ret.insert(array2[i])
	next
endfunction ret
function extendII(array1 as integer[], array2 as integer[])
	ret as integer[]
	ret = array1
	for i=0 to array2.length
		ret.insert(array2[i])
	next
endfunction ret
function extendFF(array1 as float[], array2 as float[])
	ret as float[]
	ret = array1
	for i=0 to array2.length
		ret.insert(array2[i])
	next
endfunction ret
function min#(array as float[])
	ret as float
	ret = array[0]
	for i=0 to array.length
		if array[i] < ret
			ret = array[i]
		endif
	next
endfunction ret
function minI(array as integer[])
	ret as integer
	ret = array[0]
	for i=0 to array.length
		if array[i] < ret
			ret = array[i]
		endif
	next
endfunction ret
function max#(array as float[])
	ret as float
	ret = array[0]
	for i=0 to array.length
		if array[i] > ret
			ret = array[i]
		endif
	next
endfunction ret
function maxI(array as integer[])
	ret as integer
	ret = array[0]
	for i=0 to array.length
		if array[i] > ret
			ret = array[i]
		endif
	next
endfunction ret
function char_range(range as string)
	number1 as integer
	number2 as integer
	ret as string[]
	number1 = asc(mid(range,1,1))
	number2 = asc(mid(range,3,1))
	for i=number1 to number2
		ret.insert(chr(i))
	next
endfunction ret
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
function indexOf(text as string, substring as string)
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
function strip(text as string, array as string[])
	ret1 as String[]
	ret2 as string
	text_array as string[]
	text_array = list(text)
	for i=0 to text_array.length
		if includes$(array,text_array[i]) = false
			ret1.insert(text_array[i])
		endif
	next
	ret2 = join(ret1,"")
endfunction ret2
function re_find(text as string, start as string, end$ as string)
	ret as string
	ret = mid(text,indexOf(text,start)+len(start)+1,indexOf(text,end$)-indexof(text,start)-len(start))
endfunction ret
