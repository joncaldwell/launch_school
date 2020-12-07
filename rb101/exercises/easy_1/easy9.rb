=begin
input: one positive integer
output: one positive integer, sum of of input's digits

EXAMPLES / TEST CASES
puts sum(23) == 5 # true
puts sum(496) == 19 # true
puts sum(123_456_789) == 45 # true

DATA STRUCTURES
array to store digits and sum them

ALGORITHM
1. split digits into array
2. return sum of array
=end

def sum(number)
  number.to_i.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45