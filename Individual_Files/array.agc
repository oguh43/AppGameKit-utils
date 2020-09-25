#include "constants.agc"
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
	buffer = mid(buffer,1,len(buffer)-1)+"]"
	print(buffer)
endfunction
function Print#(array as float[])
	buffer as String
	buffer = "["
	for i=0 to array.length
		buffer = buffer+str(array[i])+","
	next
	buffer = mid(buffer,1,len(buffer)-1)+"]"
	print(buffer)
endfunction
function PrintI(array as integer[])
	buffer as String
	buffer = "["
	for i=0 to array.length
		buffer = buffer+str(array[i])+","
	next
	buffer = mid(buffer,1,len(buffer)-1)+"]"
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
