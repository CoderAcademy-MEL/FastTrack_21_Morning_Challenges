# Write your code in here

puts "Enter your name"

name = gets.strip

puts "Welcome #{name}"

puts "Enter your (height in metres)"

height = gets.strip.to_f

height_square = (height*height)

puts "Enter your (weight in kg)"

weight = gets.strip.to_f

puts "Your bmi is : #{(weight/height_square).round(1)}"

# Bonus

bmi = weight/height_square 

if bmi < 18.5 
    puts "You are underweight"  
elsif bmi > 18.5 && bmi <= 24.9 
   puts "You are normal weight"  
elsif bmi >= 25.0 && bmi <=29.9 
    puts "You are overweight"
else
    bmi >=30 
    puts "You are obese"
end





