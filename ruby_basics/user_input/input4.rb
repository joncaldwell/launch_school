def print_something(answer)
  answer.downcase!
  if answer == "y"
    puts "something"
    return true
  elsif answer == "n"
    return true
  else
    puts "Invalid input, try again!"
    return false
  end
end 

while true
  puts "print something? (y/n) "
  ans = gets.chomp
  if print_something(ans) == true
    break
  end
end 

