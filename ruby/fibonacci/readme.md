# Fibonacci

A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each subsequent number is the sum of the previous two. I.e. 0,1,1,2,3,5,8...

Write a method that will return the nth number of the sequence. The syntax is easy; getting your head around the algorithm is the challenge. It might be worth writing this in pseudocode before writing the method.

If the method is called with a non-positive number (number < 0), then a `NonPositiveNumberError` should be raised. You will need to define this error.

**Examples:**
E.g. `fibonacci(1)` should return 0

E.g. `fibonacci(3)` should return 1

E.g. `fibonacci(15)` should return 377

E.g. `fibonacci(0)` should raise `NonPositiveNumberError`

E.g. `fibonacci(-5)` should raise `NonPositiveNumberError`

## Bonus

If you want an extra challenge, try uncommenting the section `with large inputs` in the test file. You should be able to run those cases in under one second.