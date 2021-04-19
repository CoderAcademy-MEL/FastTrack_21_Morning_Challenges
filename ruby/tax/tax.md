# Challenge

Write a method called calculate_tax_payable which takes a number parameter (income).

Use the tax brackets shown below to calculate tax payable on income, and then calculate the tax payable as a percentage of the income. The results should be returned in a hash containing a key called percentage_of_income and a key called tax_payable.

Tax brackets:

$0 – $18,200 Nil

$18,201– $37,000 19c for each $1 over $18,200

$37,001 - $87,000 $3,572 plus 32.5c for each $1 over $37,000

$87,001 - $180,000 $19,822 plus 37c for each $1 over $87,000

$180,001 and over $54,232 plus 45c for every $1 over $180,000

Example hash output from a call to calculate_tax_payable(180101.00)

{:percentage_of_income=>30.13722855508853, :tax_payable=>54277.45}