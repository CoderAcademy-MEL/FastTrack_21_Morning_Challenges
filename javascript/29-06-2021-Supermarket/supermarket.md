## Supermarket

There is a queue for the self-checkout tills at the supermarket. 
Your task is write a function to calculate the total time required for all the customers to check out!

The function has two input variables:

customers: an array of positive integers representing the queue. Each integer represents a customer,  and its value is the amount of time they require to check out.

tills: a positive integer, the number of checkout tills.

The function should consider each person in order, and add them to the 'smallest' line at that time (the line with the least total time).

The function should return an integer, the time it takes for all lines to empty. You do not have to consider passing time (assuming all people enter the queues one right after the other with no time passing).

For example, if the input queue is [1,3,1,2,5,1] and there are 2 tills, the queue would be separated as follows:

step 1: 1 - goes to till1 (empty)

step 2: 3 - goes to till2 (empty)

step 3: 1 - goes to till1 (1 < 3)

step 4: 2 - goes to till1 (2 < 3)

step 5: 5 - goes to till2 (3 < 4)

step 6: 1 - goes to till1 (4 < 8)

```
        till1    till2
step 1    1        
step 2             3
step 3    1        
step 4    2
step 5             5         
step 6    1         
         ---      ---
          5        8       
```
Since all customers will be served when the last customer at till 2 is served, the function should return 8.