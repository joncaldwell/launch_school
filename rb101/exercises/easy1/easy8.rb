=begin
input: array of 1 or more positive integers
output: positive integer, average of the array's values

EXAMPLES / TEST CASES
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

DATA STRUCTURES
array for input
array for calculating the average
integer for output

ALGORITHM
1. sum all the elements of the array
2. divide the sum by the length of the array
3. return the average

=end

def average(arr)
  arr.sum / arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40