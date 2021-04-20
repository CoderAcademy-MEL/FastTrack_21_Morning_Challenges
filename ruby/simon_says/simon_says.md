# Simon Says 

## Testing

This challenge has some extra testing hence the testing has been separated into a spec file.

To run all test simply run `rspec`

To just run the basic tests run `rspec ./spec/simon_says_spec.rb`

To just run the extra tests run `rspec ./spec/simon_says_testing_spec.rb`

## Challenge

Simon asks you to perform operations on an array of numbers that only he tells you. You should ignore all other instructions given. Create a function which evaluates an array of commands (written in plain English) if the command begins with Simon says. Return the result as an integer. Possible operations are addition multiplication and subtraction. NO division is made for simplicity.

### Examples

simon_says([
  "Simon says add 4",
  "Simon says add 6",
  "Then add 5"
]) ➞ 10

simon_says([
  "Susan says add 10",
  "Simon says add 3",
  "Simon says multiply by 8"
]) ➞ 24

simon_says([
  "Firstly, add 4",
  "Simeon says subtract 100"
]) ➞ 0