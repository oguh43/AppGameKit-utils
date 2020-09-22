#include "constants.agc"
function join(array as string[], delimeter as string)
	ret as String
	for i=0 to array.length
		ret = ret + array[i] + delimeter
	next
endfunction ret
function sum(array as integer[])
	ret as integer
	ret = 0
	for i=0 to array.length
		ret = ret + array[i]
	next
endfunction ret
