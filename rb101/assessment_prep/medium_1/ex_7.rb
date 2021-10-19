=begin
PROBLEM
write a recursive method that computes the nth fibonacci number, n is argument

EXAMPLES
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

DATA STRUCTURES
input: integer
output: integer

ALGORITHM
1. check if input is 1 or 2
  - if so, return that integer
2. otherwise,
  - return the sum of the previous two numbers
=end

# require 'pry'

# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end

# binding.pry

# p sum(3)

# p sum(5)
require 'pry'
def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) #== 1
p fibonacci(2) #== 1
p fibonacci(3) #== 2
p fibonacci(4) #== 3
p fibonacci(5) #== 5
p fibonacci(12) #== 144
p fibonacci(20) #== 6765