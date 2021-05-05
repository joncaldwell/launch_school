require "pry"

# def fibonacci(num)
#   return 1 if num <= 2

#   result = [1, 1]
#   count = 2

#   loop do
#     break if count == num

#     result[count] = result[count - 2] + result[count - 1]
#     count += 1
#   end

#   result.last
# end

# def fibonacci_last(num)
#   fibonacci_number = fibonacci(num)
  
#   fibonacci_number.digits.reverse.last
# end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

binding.pry
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4