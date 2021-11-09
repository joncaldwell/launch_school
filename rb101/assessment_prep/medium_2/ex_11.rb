# return array of elements which are fibonacci numbers

=begin
PROBLEM
given an array of integers, return an array of integers which are fibonacci numbers

assumptions
- input will be positive integers

EXAMPLES
fibonacci_elements([])

DATA STRUCTURES
input: array
output: array of fibonacci integers

ALGORITHM
- populate an array of fibonacci numbers equal to the size of the largest number
  in the input array (eg. array.max)
- return the results of array.select and array#include? to find all elements
  that are in the fibonacci array that are also in the input array

=end

def fibonacci_elements(input_array)
  fibonacci_numbers = fibonacci_array(input_array.max)

  input_array.select do |element|
    fibonacci_numbers.include?(element)
  end
end

# return the nth fibonacci numbers
def fibonacci(integer)
  return 1 if integer <= 2

  fibonacci(integer - 1) + fibonacci(integer - 2)
end

# return an array of fibonacci numbers up to the given integer
def fibonacci_array(max_integer)
  array = []
  current_number = 1

  while fibonacci(current_number) <= max_integer
    array << fibonacci(current_number)
    current_number += 1
  end

  array
end

p fibonacci_elements([145, 2, 29, 35, 55, 7, 1, 88, 89, 12_345, 34]).sort
