#include "constants.agc"
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
function rad(degrees)
	ret as float
	ret = degrees*(PI/180)
endfunction ret
function deg(radians)
	ret as float
	ret = radians*(180/PI)
endfunction ret
