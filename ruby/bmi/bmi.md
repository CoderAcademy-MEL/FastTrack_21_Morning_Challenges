# Body Mass Index

Body mass index or BMI is used as a rule of thumb to categorize a person's weight based on tissue mass and height. The metric formula for BMI is: 

```
        weight in kilograms
BMI =  ---------------------
        height in meters ^2
```

For example, given the following details:

> Greg weighs 150kg and is 1.8m tall.

1. Multiply Greg's height by is self (square) `1.8 x 1.8 = 3.24`
2. Divide Greg's weight by the calculation from step 1 `150 / 3.24 = 46.3`

Your challenge is to write a program that will ask the user for their weight and height and tell them their BMI. A file called `bmi.rb` has been provided in this directory.

### Bonus

Today's lesson will focus on decision-making in code. If you finish your program early, see if you can return the weight category as well.

| Category       | Range                      |
|----------------|----------------------------|
| Underweight    | BMI less than 18.5         |
| Normal weight  | BMI between 18.5 and 24.9  |
| Overweight     | BMI 25.0 and 29.9          |
| Obese          | BMI greater than 30.0      |

