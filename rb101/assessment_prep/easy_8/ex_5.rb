def fizzbuzz(num1, num2)
  num1.upto(num2) do |num|
    if num % 5 == 0 && num % 3 == 0 then puts "FizzBuzz"
    elsif num % 3 == 0 then puts "Fizz"
    elsif num % 5 == 0 then puts "Buzz"
    else puts num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz