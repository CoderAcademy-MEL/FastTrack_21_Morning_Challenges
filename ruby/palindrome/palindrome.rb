 # Write your code here
 def palindrome?(input)
  string = input.downcase.delete('^a-z0-9')
  string == string.reverse
 end