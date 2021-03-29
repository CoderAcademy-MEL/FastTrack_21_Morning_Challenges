# The Wanderer

A Traveller has been given a long set of directions and has come to you for help. They have a list of cardinal directions (North, South, East, West) and want you to optimize it so they can save some time. They will travel for the same amount of time in each direction given. 

For Example, say they have the directions; North, South, South, West. If they go north and then immediately go south again, they will be in the same place! So the directions could be simplified as South then West. Write a method, `direction_saver`. It will receive an array of directions as input. There will always be input, and it will always be valid. The possible directions are "NORTH", "SOUTH", "EAST" and "WEST". You will need to return an array with the shortened directions.


**Examples:**

`direction_saver(['NORTH', 'SOUTH', 'SOUTH', 'WEST'])` should return `['SOUTH', 'WEST']`. Going north then going south cancels out.

`direction_saver(['SOUTH', 'EAST', 'WEST', 'NORTH', 'NORTH'])` should return `['NORTH']`
Going east and west cancels out, then going south and north should cancel each other.

`direction_saver(['SOUTH', 'NORTH'])` should return `[]`. If the traveler didn't go anywhere, it should return an empty array.