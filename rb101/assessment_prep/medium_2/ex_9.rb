=begin
PROBLEM
given an integer, return the difference the square of the sum of the first N
positive integers and the sum of the squares of the first N positive integers

constraints/details
  - all input will be positive

EXAMPLES
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

DATA STRUCTURES
input: integer
output: integer

arrays in between to calculate the sums

ALGORITHM
- init array of digits up to and including the given integer
- init square_of_sum and set to array.sum ** 2
- init sum_of_squares to 0
- iterate over array and get square of each element, add it to sum_of_squares
- return square_of_sum - sum_of_squares
=end

def sum_square_difference(integer)
  numbers = []
  (1..integer).each { |num| numbers << num }
  square_of_sum = numbers.sum**2
  sum_of_squares = 0
  
  numbers.each do |num|
    sum_of_squares += num**2
  end
  
  square_of_sum - sum_of_squares
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1).zero?
p sum_square_difference(100) == 25_164_150
