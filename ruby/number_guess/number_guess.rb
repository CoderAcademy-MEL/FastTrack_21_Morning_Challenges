def is_game_over?(guess_threshold, total_guesses)
  guess_threshold == total_guesses
end

def losing_print 
  puts "You lost"
  puts "😢"
end

def guesses_left_print(guess_threshold, total_guesses)
  puts "You have #{guess_threshold - total_guesses} total guesses left"
end

def correct_answer_printer
  puts "You guessed the correct number"
  puts "🎉"
end

def answer_printer(miss)
  if miss == :high
    puts "Your guess was #{miss}er than the random number"
    puts "⬆"
  else
    puts "Your guess was #{miss}er than the random number"
    puts "⬇"
  end
end

def get_user_input
  print "> "  
  gets.chomp.to_i
end

def evaluate(guess, random_num)
  if guess == random_num
    correct_answer_printer
    exit
  elsif guess < random_num
    answer_printer(:low)
  else
    answer_printer(:high)
  end
end

def run
  random_num = Random.rand(100)
  total_guesses = 0
  guess_threshold = 7
  puts "Guess a number between 1 and 100"
  loop do 
    if is_game_over?(guess_threshold, total_guesses)
      losing_print
      exit
    else
      guesses_left_print(guess_threshold, total_guesses)
    end 
    guess = get_user_input
    evaluate(guess, random_num)
    total_guesses += 1
  end
end

run