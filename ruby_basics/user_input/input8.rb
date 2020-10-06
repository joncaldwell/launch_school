def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def divisor(numerator, denominator)
  if denominator.to_i != 0
    return numerator.to_i / denominator.to_i
  else
    puts "Error! Cannot divide by zero."
    return false
  end 
end

loop do
  puts "numerator: "
  int1 = gets.chomp

  puts "denominator: "
  int2 = gets.chomp
  
  if valid_number?(int1) && valid_number?(int2)
    answer = divisor(int1, int2)
    if answer == false
      puts "Invalid input"
      next
    else
      puts "#{int1} divided by #{int2} is #{answer}"
      break
    end
  else
    puts "Invalid input"
  end
end