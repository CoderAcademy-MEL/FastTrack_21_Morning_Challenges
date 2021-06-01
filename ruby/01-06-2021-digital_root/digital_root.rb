#write your code here
def digital_root(number)
  return -1 if number.negative?
  digit_array = number.digits 
  while digit_array.length > 1
    digit_array = digit_array.sum.digits
  end
  digit_array[0]
end

def digital_root(num)
  return -1 if num.class != Integer || num.negative?

  numbers = num.digits.sum
  numbers = digital_root(numbers) if numbers >= 10
  numbers
end

def digital_root(num)
  return -1 if num.negative?
  root = num.digits.sum
  root.to_s.length > 1 ? digital_root(root) : root
end

def digital_root(n)
  (return -1 if n < 0) || (n = n.digits.sum until n < 10 and return n)
 end
