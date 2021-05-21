=begin
PROBLEM
given a number, find the difference between:
  - square of the sum of the first N positive integers
  - sum of the squares of the first N positive integers 

EXAMPLES
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

DATA STRUCTURES
input: integer
output: integer

arrays to compute

ALGORITHM
- create an array from 1 to n
- init variable square_of_sums and assign it to reduce(:+) ** 2
- init variable sum_of_squares and assign it to reduce(:**).sum
- return result of sum_of_squares - square_of_sums
=end

def sum_square_difference(number)
  numbers = (1..number).to_a
  numbers.reduce(:+) ** 2 - numbers.map { |num| num ** 2 }.sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150