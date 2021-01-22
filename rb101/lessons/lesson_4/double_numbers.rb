def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end


# mutating the caller

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.length
    numbers[counter] *= 2
    counter += 1
  end

  numbers
end

# double odd indices

def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0
  
  loop do
    break if counter == numbers.size
    
    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number
    
    counter += 1
  end
  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts "\nNON-MUTATING"
puts "method return value: #{double_numbers(my_numbers)}" # => [2, 8, 6, 14, 4, 12]
puts "original array: #{my_numbers}"

puts "\nMUTATING"
puts "method return value: #{double_numbers!(my_numbers)}"
puts "original array: #{my_numbers}"

my_numbers_1 = [1, 4, 3, 7, 2, 6]

puts "\nODD INDICES"
puts "method return value: #{double_odd_indices(my_numbers_1)}"
puts "original array: #{my_numbers_1}"
