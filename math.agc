#include "constants.agc"
function remainder(number1 as integer, number2 as integer)
	ret = number1-(number1/number2)*number2
endfunction ret
function factorial(number as integer)
	if number < 0
		fact = 0
	elseif number = 0
		fact = 1
	else
		fact = 1
		for i = 1 to number
			fact = fact * i
		next
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
function copysign(number1 as float, number2 as float)
	number1 = abs(number1)
	if number2 < 0
		times = -1
	else
		times = 1
	endif
	ret = number1 * times
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
function rad(degrees as float)
	ret as float
	ret = degrees*(PI/180)
endfunction ret
function deg(radians as float)
	ret as float
	ret = radians*(180/PI)
endfunction ret
