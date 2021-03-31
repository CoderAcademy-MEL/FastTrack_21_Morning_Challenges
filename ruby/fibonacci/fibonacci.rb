class NonPositiveNumberError < StandardError; end

def fibonacci(count)
  # raise our error if the count is a negative number
  raise NonPositiveNumberError if count < 0
  # if the count is 0 or 1 return that number as 
  # F0 = 0 and F1 = 1
  return count if count < 2

  # Store the sequence, since the next number only need the last two
  # to calculate, we only need to store two numbers.
  sequence = [0, 1] 

  # subtract one as we have calculated F0 and F1 already
  (count - 1).times do
    # Find the next fibonacci number
    sequence = next_number(sequence)
  end

  # return the final fibonacci numbers
  sequence.last
end

def next_number(sequence)
  # Move the last number over and calculate the next number
  [sequence.last, sequence.first + sequence.last]
end
