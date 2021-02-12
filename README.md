# About "AppGameKit-utils"
## What's this library?
This library is a port of common python features/ functions to AppGamekit
## How to install
Download "AppGameKitUtils.agc", place it in your project folder and add this line to your "main.agc": `#include "AppGameKitUtils.agc"`
# Docs
## Constants
- true
- false
- null
- NL
- PI
## Math functions
- remainder<br>
description: Returns remainder of two supplied numbers<br>
usage: `remainder(number1,number2)`<br>
types: `remainder(integer/float,integer/float) -> integer/float`
- factorial<br>
description: Returns factorial of given number<br>
usage: `factorial(number)`<br>
types: `factorial(integer) -> integer`
- comb<br>
description: Returns the number of ways picking k unordered outcomes from n possibilities, without repetition<br>
usage: `comb(number1,number2)`<br>
types: `comb(integer/float,integer/float) -> integer/float`<br>
- copysign<br>
description: Returns a number consisting of magnitude from parameter x and the sign from parameter y.<br>
usage: `copysign(number1,number2)`<br>
types: `copysign(integer/float,integer/float) -> integer/float`<br>
- gcd<br>
description: Returns the greatest common divisor of two given numbers<br>
usage: `gcd(number1,number2)`<br>
types: `gcd(integer/float,integer/float) -> integer/float`<br>
- prodI<br>
description: Returns the product of an integer array from the starting element<br>
usage: `prodI(integer_array,starting_index)`<br>
types: `prodI(integer[],integer) -> integer`<br>
- prod#<br>
description: Returns the product of a float array from the starting element<br>
usage: `prod#(float_array,starting_index)`<br>
types: `prod#(float[],integer) -> float`<br>
- rad<br>
description: Converts degrees to radians<br>
usage: `rad(degrees)`<br>
types: `rad(integer/float) -> float`<br>
- deg<br>
description: Converts radians to degrees<br>
usage: `deg(radians)`<br>
types: `deg(integer/float) -> float`<br>
## Array functions
- join<br>
description: Joins given string array with supplied delimeter<br>
usage: `join(string_array,delimeter)`<br>
types: `join(string[],string) -> string`<br>
- sumI<br>
description: Returns sum of given integer array<br>
usage: `sum(integer_array)`<br>
types: `sum(integer[]) -> integer`<br>
- sum#<br>
description: Returns sum of given float array<br>
usage: `sum(float_array)`<br>
types: `sum(float[]) -> float`<br>
- includes$<br>
description: Returns true if given string array contains supplied element<br>
usage: `includes$(string_array,element)`<br>
types: `includes$(string[],string) -> integer`<br>
- includes#<br>
description: Returns true if given float array contains supplied element<br>
usage: `includes#(float_array,element)`<br>
types: `includes#(float[],string) -> integer`<br>
- includesI<br>
description: Returns true if given integer array contains supplied element<br>
usage: `includesI(integer_array,element)`<br>
types: `includesI(integer[],string) -> integer`<br>
- Print$<br>
description: Prints the given string array<br>
usage: `Print$(string_array)`<br>
types: `Print$(string[]) -> none`<br>
- Print#<br>
description: Prints the given float array<br>
usage: `Print#(float_array)`<br>
types: `Print#(float[]) -> none`<br>
- PrintI<br>
description: Prints the given integer array<br>
usage: `PrintI(integer_array)`<br>
types: `PrintI(integer[]) -> none`<br>
- extendSS<br>
description: Extends given string arrays with eachother<br>
usage: `extendSS(string_array,string_array)`<br>
types: `extendSS(string[],string[]) -> string[]`<br>
- extendFF<br>
description: Extends given float arrays with eachother<br>
usage: `extendSS(float_array,float_array)`<br>
types: `extendSS(float[],float[]) -> float[]`<br>
- extendII<br>
description: Extends given integer arrays with eachother<br>
usage: `extendSS(integer_array,integer_array)`<br>
types: `extendSS(integer[],integer[]) -> integer[]`<br>
- extendSF<br>
description: Extends given string array with supplied float array<br>
usage: `extendSF(string_array,float_array,string_array_first)`<br>
types: `extendSF(string[],float[],integer) -> string[]`<br>
- extendSI<br>
description: Extends given string array with supplied integer array<br>
usage: `extendSI(string_array,integer_array,string_array_first)`<br>
types: `extendSI(string[],integer[],integer) -> string[]`<br>
- extendFI<br>
description: Extends given float array with supplied integer array<br>
usage: `extendFI(float_array,integer_array,string_array_first)`<br>
types: `extendFI(float[],integer[],integer) -> float[]`<br>
- min#<br>
description: Returns an element with the lowest value from supplied float array<br>
usage: `min#(float_array)`<br>
types: `min#(float[]) -> float`<br>
- minI<br>
description: Returns an element with the lowest value from supplied integer array<br>
usage: `minI(integer_array)`<br>
types: `minI(integer[]) -> integer`<br>
- max#<br>
description: Returns an element with the largest value from supplied float array<br>
usage: `max#(float_array)`<br>
types: `max#(float[]) -> float`<br>
- maxI<br>
description: Returns an element with the largest value from supplied integer array<br>
usage: `maxI(integer_array)`<br>
types: `maxI(integer[]) -> integer`<br>
- char_range<br>
description: Returns a range of characters based on input string(example: "a-z")<br>
usage: `char_range(regex_char_range)`<br>
types: `char_range(string) -> string[]`<br>
## String functions
- split<br>
description: Splits given string by supplied delimeter<br>
usage: `split(text,delimeter)`<br>
types: `split(string,string) -> string[]`<br>
- list<br>
description: Returns an array containing characters of supplied string<br>
usage: `list(text)`<br>
types: `list(string) -> string[]`<br>
- capitalize<br>
description: Returns a string with its first letter capitalized<br>
usage: `capitalize(text)`<br>
types: `capitalize(string) -> string`<br>
- center<br>
description: Centers supplied string in middle of an integer range with supplied padding characters<br>
usage: `center(text,number,padding_character)`<br>
types: `center(string,integer,string) -> string`<br>
- endsWith<br>
description: Returns true if supplied string ends with given substring<br>
usage: `endsWith(text,substring)`<br>
types: `endsWith(string,string) -> integer`<br>
- repeat$<br>
description: Repeats given string n times<br>
usage: `repeat$(text,times)`<br>
types: `repeat$(string,integer) -> integer`<br>
- isAlnum<br>
description: Returns true if supplied string contains only alphanumeric characters(A-Za-z0-9)<br>
usage: `isAlnum(text)`<br>
types: `isAlnum(string) -> integer`<br>
- isAlpha<br>
description: Returns true if supplied string contains only alphabet letters(A-Za-z)<br>
usage: `isAlpha(text)`<br>
types: `isAlpha(string) -> integer`<br>
- isDecimal<br>
description: Returns true if supplied string contains only decimals(0-9)<br>
usage: `isDecimal(text)`<br>
types: `isDecimal(string) -> integer`<br>
- isIdentifier<br>
description: Returns True if the string is a valid identifier(can contain: (A-Za-z0-9_), cannot start with:(0-9))<br>
usage: `isIdentifier(text)`<br>
types: `isIdentifier(string) -> integer`<br>
- isSpace<br>
description: Returns true if supplied string contains only whitespaces<br>
usage: `isSpace(text)`<br>
types: `isSpace(string) -> integer`<br>
- indexOf<br>
description: Returns starting index of supplied substring in given string<br>
usage: `indexOf(text,find_substring)`<br>
types: `indexOf(string,string) -> integer`<br>
- isUpper<br>
description: Returns true if supplied string contains only uppercase characters(!(a-z))<br>
usage: `isUpper(text)`<br>
types: `isUpper(string) -> integer`<br>
- isLower<br>
description: Returns true if supplied string contains only lowercase characters(!(A-Z))<br>
usage: `isLower(text)`<br>
types: `isLower(string) -> integer`<br>
- isTitle<br>
description: Returns true if supplied string starts with an uppercase letter(!(a-z))<br>
usage: `isTitle(text)`<br>
types: `isTitle(string) -> integer`<br>
- just<br>
description: Returns supplied string justified to left or right by the given number, with given character<br>
usage: `just(text,character,count,L_or_R)`<br>
types: `just(string,string,integer,string) -> string`<br>
- strip<br>
description: Strips given string of supplied characters<br>
usage: `strip(text,characters)`<br>
types: `strip(string,string[]) -> string`<br>
- reFind<br>
description: Returns substring found between strings in given string<br>
usage: `reFind(text,start,end$)`<br>
types: `reFind(string,string,string) -> string`<br>
