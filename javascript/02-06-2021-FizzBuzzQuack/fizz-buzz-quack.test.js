const {fizzBuzzQuack} = require('./fizz-buzz-quack');

test('Returns the number when not divisible by 3,5,7 and not prime or a squared number', () => {
    expect(fizzBuzzQuack(0)).toEqual(0);
    expect(fizzBuzzQuack(8)).toEqual(8);
});

test('Returns Fizz if number is divisible by 3', () => {
    expect(fizzBuzzQuack(6)).toMatch("Fizz");
});

test('Returns Buzz if number is divisible by 5', () => {
    expect(fizzBuzzQuack(10)).toMatch("Buzz");
});

test('Returns Quack if number is divisible by 7', () => {
    expect(fizzBuzzQuack(14)).toMatch("Quack");
});

test('Returns Fizz if number is has a 3 in it', () => {
    expect(fizzBuzzQuack(13)).toMatch("Fizz");
});

test('Returns Buzz if number is has a 5 in it', () => {
    expect(fizzBuzzQuack(51)).toMatch("Buzz");
});

test('Returns Quack if number is has a 7 in it', () => {
    expect(fizzBuzzQuack(17)).toMatch("Quack");
});

test('Returns Fizz and Buzz if number has a 3 and a 5 in the number', () => {
    expect(fizzBuzzQuack(53)).toMatch("Fizz");
    expect(fizzBuzzQuack(53)).toMatch("Buzz");
});


test('Returns Buzz and Quack if number has a 5 and a 7 in the number', () => {
    expect(fizzBuzzQuack(57)).toMatch("Buzz");
    expect(fizzBuzzQuack(57)).toMatch("Quack");
});


test('Returns Buzz and Quack and Fizz for number 357', () => {
    expect(fizzBuzzQuack(357)).toMatch("Buzz");
    expect(fizzBuzzQuack(357)).toMatch("Quack");
    expect(fizzBuzzQuack(357)).toMatch("Fizz");
});

test('Returns Fizz and Quack for number 21', () => {
  expect(fizzBuzzQuack(21)).toMatch('Fizz');
  expect(fizzBuzzQuack(21)).toMatch('Quack');
})

test('BONUS: Returns Prime for a prime number', () => {
  expect(fizzBuzzQuack(11)).toMatch('Prime');
})

test('BONUS: Returns Squared if number is a whole number squared', () => {
  expect(fizzBuzzQuack(4)).toMatch('Squared');
})

test('BONUS: Returns Squared and Quack for 49', () => {
  expect(fizzBuzzQuack(49)).not.toMatch('Fizz');
  expect(fizzBuzzQuack(49)).not.toMatch('Buzz');
  expect(fizzBuzzQuack(49)).toMatch('Quack');
  expect(fizzBuzzQuack(49)).not.toMatch('Prime');
  expect(fizzBuzzQuack(49)).toMatch('Squared');
})

test('BONUS: Returns Prime and Quack for 7', () => {
  expect(fizzBuzzQuack(7)).not.toMatch('Fizz');
  expect(fizzBuzzQuack(7)).not.toMatch('Buzz');
  expect(fizzBuzzQuack(7)).toMatch('Quack');
  expect(fizzBuzzQuack(7)).toMatch('Prime');
  expect(fizzBuzzQuack(7)).not.toMatch('Squared');
})
