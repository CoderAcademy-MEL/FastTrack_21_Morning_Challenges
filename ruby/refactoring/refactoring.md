# Refactoring

Refactoring is the process of changing code that does not alter the external behavior but improves the internal structure. In short, it is a way of 'cleaning' your code to reduce the chance you or others will add bugs in the future and make the code more extendable.

> "In essence, when you refactor, you are improving the design of code after it has been written" - Martin Fowler, Refactoring 2019

Improvements to the code can take many forms. You could rewrite some logic to make it more obvious what its purpose is. You could rename variables or group variables representing parts of a similar idea together in a better data structure. You could group a set of instructions into a named method to add clarity to their purpose. The final refactor that you will often see is to move duplicated code into a common method to adhere to the DRY (Don't Repeat Yourself) principle.

Take a look at the code in `movies.rb`. Try running the program. You can enter a single number and see information about the selected movie. The program works fine as it stands because the designer has only heard of three films. But imagine your product manager goes to a friend's house and sees a new movie. After finding out there are more than three films, she asks you to add one more. Adding one new movie is a bit of work given the current structure, but it won't take too long.

Now imagine that she visits a movie theatre over the weekend. On Monday morning, she has ten new films for you to add. Adding ten movies is quite a bit more work and will make the current code longer and complicated. Consider the case that you need to update or change a value in one of these movies.

Finally, if you can, imagine that your 'under a rock dwelling' product manager has discovered NetFlix and asks you to add their catalog to the app... 

Hopefully, you can see that although the app works perfectly in its current state, it would be difficult for someone to work on or extend in the future. Your challenge is to improve the quality of the code without changing the output. The end-users should still have the same menu and see the same information about the chosen film, and developers should be able to add new films easily and better reason with the code.

## Hints

If you are stuck, have a look at some of the suggestions below, but have a go yourself first.

1. The menu could be a named method to add clarity to those `puts` statements.
2. Getting the user input could be put into a method.
3. The way a movie is displayed is repeated in each `if` block. Could you refactor this to a method?
4. Some parts of displaying a move are similar (the actors and roles). Would a method be a better choice?
5. There are many variables in the code. Can you think of a data structure that could represent a 'movie' and use that?
6. String interpolation `" hi #{name}"` is preferred to string concatenation.`'hi' + 'tom'`.
6. Look at the list of `if` statements, this is ok, but with 100 movies, we would need 100 if/else statements. Can you think of a better way?
7. The logic for invalid input also suffers from the problem in step 6. Given that we know code executes from top to bottom, can you restructure the code not to need such a complex condition?

## Bonus

If you have finished refactoring and are looking for an extra challenge, research the [Struct](https://ruby-doc.org/core-2.7.2/Struct.html) data structure. See if you can use that in your solution.