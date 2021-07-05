# Tulipomania

It is 1636 Amsterdam, and the town is caught in a frenzy. Citizens from all walks of life have embarked in the tulip trade, with many betting their whole fortunes. A rare variety can sell a single bulb for more than the cost of a house! You see the opportunity to make some extra florins and decide to speculate. After much deliberation, you decide on purchasing the bulb 'Semper Augustus.' The price of this bulb changes daily, but it seems to follow a pattern.

On the first day, the value stays the same.

On the second day, the value increased.

On the third day, the value dropped.

Over the next two days (4 and 5), the value increased.

On the sixth day, the value dropped.

Over the next three days (7, 8 and 9), the value increased.

On the tenth day, the value dropped.

This pattern goes on for the remaining days.

To make this simpler, we will assume that the value increases or drops by one florin depending on the outcome of that day. The initial price of the bulb is also one florin. Find a way to calculate given a number of days, what will the value of your tulip be?

INPUT

totalDays the number of days to simulate. Will be and integer that is 1 or greater.

OUTPUT

integer the value of your tulip on the last day.

EXAMPLE

What is Tulip Mania?

Have a look at the table below to see the value change for each day

-------------------------------------------------------
| Day    | 1| 2| 3| 4| 5| 6| 7| 8| 9|10|11|12|13|14|15|
| Change | 0|+1|-1|+1|+1|-1|+1|+1|+1|-1|+1|+1|+1|+1|-1|
| Value  | 1| 2| 1| 2| 3| 2| 3| 4| 5| 4| 5| 6| 7| 8| 9|
-------------------------------------------------------