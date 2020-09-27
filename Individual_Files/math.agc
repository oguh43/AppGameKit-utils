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
function comb(number1, number2)
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
function gcd(number1, number2)
	while number2 <> 0
		temp = number2
		number2 = remainder(number1,number2)
		number1 = temp
	endwhile
endfunction number1
function prodI(array as integer[], start as integer)
	ret = 1
	for i = start to array.length
		ret = ret * array[i]
	next
endfunction ret
function prod#(array as float[], start as integer)
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
