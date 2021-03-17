# Your game here

# game thinks of random number btween 1 and 100
# prompt user for guess
# user guess too low than secret number, puts "Your guess was too low"
# user guess too high than secret number, puts "Your guess is to high"
# user guesses correct number puts "You win"
# limit no. of guesses to 7, used up puts "You lose"
# Bonus: 

puts "Welcome to the number guessing game!"

puts "Please think of a random number between 1 and 100"

secret_number = Random.rand(100)

puts "Enter your guess (you have 7 tries)"

guess_attempts = 7

loop do
    puts "What's your guess?"
    user_guess = gets.chomp.to_i
    if user_guess < secret_number
        puts "Your guess was too low" 
    elsif user_guess > secret_number
        puts "Your guess was too high"
    else 
        puts "You win"
        exit 
    end
    guess_attempts -= 1
    if guess_attempts == 0
        puts "You lost"
        exit
    else 
        puts "You have #{guess_attempts} guesses left."    
    end   
end


# end

# if user_guess 

# until user_guess = secret_guess
#     puts "Your guess was too low"




