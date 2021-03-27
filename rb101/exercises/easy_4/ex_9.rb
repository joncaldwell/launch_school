require 'pry'

# DIGITS = {
#   0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
#   5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => 9
# }

# def integer_to_string(int)
#   # split integer into array with individual digits
#   # map over array to return new array with matching chars from DIGITS constant
#   arr = int_to_array(int)
  
#   arr.map { |number| DIGITS[number] }.join
# end

# def int_to_array(int)
#   length = count_digits(int)
  
#   arr = []
  
#   remainder_number = 10
#   divisor = 1
#   length.times do
#     arr.push(int % remainder_number / divisor)
#     remainder_number *= 10
#     divisor *= 10
#   end
#   arr.reverse
# end

# def count_digits(int)
#   count = 0
#   number = int
  
#   if int == 0
#     count = 1
#   else
    
#     while number > 0
#       count += 1
#       number = number / 10
#     end
#   end
#   count
# end

### BETTER SOLUTION

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

binding.pry
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'