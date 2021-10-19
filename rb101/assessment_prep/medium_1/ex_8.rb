# def fibonacci(n)
#   return 1 if n <= 2
  
#   numbers = [1, 1]
#   current_number = 0
  
#   (n - 2).times do
#     current_number = numbers.last + (numbers[numbers.length - 2])
#     p current_number
#     numbers << current_number
#   end
  
#   numbers.last
# end

### BETTER SOLUTION

def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = [last, first + last]
  end
  
  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501