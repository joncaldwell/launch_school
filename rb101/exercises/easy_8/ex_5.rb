=begin

PROBLEM


EXAMPLES

DATA STRUCTURES

ALGORITHM

=end

def fizzbuzz(num1, num2)
  result = []
  (num1..num2).each do |number|
    if number % 3 == 0 && number % 5 == 0
      result << "FizzBuzz"
    elsif number % 3 == 0
      result << "Fizz"
    elsif number % 5 == 0
      result << "Buzz"
    else
      result << number
    end
  end
  puts result.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz