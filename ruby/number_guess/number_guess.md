# Random Number Guesser

Your challenge this morning is to create a Random number guessing game. When a player loads the game, the program should think of a secret random number between 1 and 100. You should prompt the player to make a guess. If the player's guess is lower than the secret number, the program should tell them that the guess was too low. Conversely, if the guess is too high, then the program should let the user know. If the player guesses the correct number, then they win, and the game is over.

You should also define a limited number of guesses (maybe 7) that the player has to guess the correct number. If they run out of guesses, the game is over, and the player loses.

Make sure you write some pseudo-code or a plan about the order of instructions your program will need, and conditional  (e.g., a loop) and what variables you may need.

You can use `Random.rand(100)` to generate the random number.

### Bonus

Today's lesson will focus on grouping similar instructions into named procedures called `methods` in ruby. If you feel confident, try to break your code down into methods or think about sections that you could convert into methods.