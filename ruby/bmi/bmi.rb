# Write your code in here

# get users weight
puts "What is your weight?"
user_weight = gets.chomp.to_i
# get the users height
puts "What is your height?" 
user_height = gets.chomp.to_f

# perform the calculation
bmi = user_weight / (user_height ** 2)

# find category
if bmi < 18.5
  category = 'Underweight'
elsif bmi < 24.9
  category = 'Normal weight'
elsif bmi < 29.9
  category = 'Overweight'
else
  category = 'Obese'
end
# return the results

puts "Your BMI is #{bmi}, and your category is #{category}"