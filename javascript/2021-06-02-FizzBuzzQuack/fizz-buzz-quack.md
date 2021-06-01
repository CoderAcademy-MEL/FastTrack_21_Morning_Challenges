# Fizz Buzz Quack 

You probably heard of the fizz buzz game turned famous coding interview question. In maths class in high class we played an extended version of the game know as Fizz Buzz Quack Prime Squared.

The aim of the game is to say Fizz if a number is divisible by 3 or contains a 3, Buzz if a number is divisible by 5 or contains a 5 and Quack if a number is divisible by 7 or contains a 7. So for example 15 would be Fizz Buzz as 15 is divisible by 3 and contains a 5.

Write a function called fizzBuzzQuack that takes a number and returns a string with Fizz Buzz and/or Quack if that number matches the appropriate conditions. If it matches none of the conditions it should return the number.

Conditions:

Fizz - Divisible by 3 or contains the digit 3
Buzz - Divisible by 5 or contains the digit 5
Quack - Divisible by 7 or contains the digit 7

E.g

```js
fizzBuzzQuack(15) // -> 'Fizz Buzz'
fizzBuzzQuack(10) // -> 'Buzz'
fizzBuzzQuack(21) // -> 'Fizz Quack'
fizzBuzzQuack(357) // -> Fizz Buzz Quack'

fizzBuzzQuack(8) // -> 89

```

## BONUS Prime Squared

As a bonus implement your method to include Prime if that number is a prime and Squared if that number is a perfect square.
Perfect square is a number that can be expressed as a product of two integers multiplied together. e.g 9 is a perfect squared as it is 3 * 3, 16 is a perfect square as it is 4 * 4.

Conditions:

Prime - If number is prime
Squared - If number is perfect square

E.g

```js
fizzBuzzQuack(7) // -> 'Quack Prime'
fizzBuzzQuack(13) // -> 'Fizz Prime'

fizzBuzzQuack(4) // -> 'Squared'
fizzBuzzQuack(25) // -> 'Buzz Squared'
```