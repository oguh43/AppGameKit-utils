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
function endsWith(text as string, search as string)
	ret = CompareString(mid(text,len(text)-len(search)+1,len(text)-len(search)-1),search,1,-1)
endfunction ret
function repeat$(text as string, count as integer)
	ret as String
	for i=0 to count - 1
		ret = ret + text
	next
endfunction ret
function isAlnum(text as String)
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
function reFind(text as string, start as string, end$ as string)
	ret as string
	ret = mid(text,indexOf(text,start)+len(start)+1,indexOf(text,end$)-indexof(text,start)-len(start))
endfunction ret
function getTextBoundingBoxOffsetY(textId as integer)
	textWidth = GetTextTotalWidth(textId)
	startingX = GetTextX(textId)
	startingY = GetTextY(textId)
	textR = GetTextColorRed(textId)
	textG = GetTextColorGreen(textId)
	textB = GetTextColorBlue(textId)
	background = CreateSprite(0)
	SetSpriteSize(background, GetWindowWidth(), GetWindowHeight())
	spriteR = textR + 100
	if spriteR > 255 then spriteR = spriteR - 255
	spriteG = textG + 100
	if spriteG > 255 then spriteG = spriteG - 255
	spriteB = textB + 100
	if spriteB > 255 then spriteB = spriteB - 255
	SetSpriteColor(background, spriteR, spriteG, spriteB, 255)
	SetSpriteDepth(background, 0)
	originalDepth = GetTextDepth(textId)
	SetTextDepth(textId,0)
	Render()
	img = GetImage(startingX, startingY, textWidth, GetWindowHeight())
	memImg = CreateMemblockFromImage(img)
	SetTextDepth(textId,originalDepth)
	DeleteSprite(background)
	memWidth = GetMemblockInt(memImg, 0) // or textWidth
	for y = 0 to GetMemblockInt(memImg, 4) step 1
		for x = 0 to memWidth step 1
			memOffset = y * memWidth * 4 + x * 4 + 12
			memR = GetMemblockByte(memImg, memOffset)
			memG = GetMemblockByte(memImg, memOffset + 1)
			memB = GetMemblockByte(memImg, memOffset + 2)
			if textR = memR and textG = memG and textB = memB
				exitfunction y
			endif
		next x
	next y
endfunction 0
function wordWrap(text as integer, maxWidth as integer, forceStrict as integer, lineBreakChar as string)
	originalText as string
	originalText = GetTextString(text)
	words as string[]
	words = split(originalText, " ")
	newText as string
	flag = 0
	for i=0 to words.length
		if flag <> 0
			SetTextString(text, GetTextString(text) + " " + words[i])
		else
			SetTextString(text,words[i])
		endif
		length = GetTextTotalWidth(text)
		if length <= maxWidth or flag = 0
			if length > maxWidth and forceStrict = 1
				newText = newText + strictWordWrap(words[i], maxWidth, GetTextSize(text), lineBreakChar)
			else
				if mid(newText,len(newText)-1,-1) = chr(13)+chr(10) or len(newText) = 0
					newText = newText + words[i]
				else
					newText = newText + " " + words[i]
				endif
				flag = flag + 1
			endif
		else
			newText = newText + NL
			i = i - 1
			flag = 0
		endif
	next
	SetTextString(text, newText)
endfunction
function strictWordWrap(word as string, maxWidth as integer, textSize as integer, lineBreakChar as string)
	text = CreateText("")
	SetTextSize(text, textSize)
	letters as string[]
	letters = list(word)
	newString as string
	buffer as string
	flag = 0
	for i=0 to letters.length
		if flag <> 0
			SetTextString(text,GetTextString(text)+letters[i])
		else
			SetTextString(text,letters[i])
		endif
		length = GetTextTotalWidth(text)
		if length <= maxWidth or flag = 0
			buffer = buffer + letters[i]
			flag = flag + 1
		else
			buffer = buffer + lineBreakChar + NL
			i = i - 1
			flag = 0
		endif
	next
	DeleteText(text)
endfunction buffer 
