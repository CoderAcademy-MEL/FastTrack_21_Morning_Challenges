# Multiply Value challenge

Create a function which will take a string or number value and multiply it a specific number of times. 


The first parameter is the value to be multiplied. 
The second parameter is the number of times the value should be multiplied.

If the first parameter is not a number or string, the function should return null.

If the second parameter is not a valid number the code should return null.


Examples:
multiplyValue(9,2) == 9 * 2 == 18
multiplyValue("[alright]",3) == "[alright]" + "[alright]" + "[alright]" == "[alright][alright][alright]"
multiplyValue(5,["kanye west"]) == null

Hint:

The Object.is method may come in handy for this challenge. Look up how it works, and think about how you could use it.