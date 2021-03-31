# Scrabble

The year is 2031, and there has been a new version of scrabble created. This version is much more straightforward. You score points based on the position of the letter in the alphabet. 

- a = 1
- b = 2 
- c = 3
- ....etc. 
 
The highest-scoring word will win that round.

Create a method that will receive a string of one or many words, each separated by a space, and return the highest scoring word. 

If two words score the same, return the one that appears first in the input.

**Note:** You will only receive lowercase alphanumeric characters (a-z). You will always have one word.

**Examples:** 

`word_ranking('hi there')`, should return `'there'`.
As 'hi' is worth 17 points, while 'there' is worth 56, making 'there' the winner.

`word_ranking('reshow the shower')` should return 'reshow'.
Although 'reshow' and 'shower' have the same point value, 'reshow' was first in the list.

## Bonus

If you finish this challenge and are looking for more, try creating a scrabble scorer using the now ancient scrabble rules [Scrabble Letter Points](https://www.thewordfinder.com/scrabble-point-values.php). That link is for the English version, but feel free to make one for any language!