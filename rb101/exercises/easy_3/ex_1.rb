def prompt(str)
  puts "==> #{str}"
end

arr = []

prompt("Enter the 1st number: ")
arr << gets.chomp.to_i

prompt("Enter the 2nd number: ")
arr << gets.chomp.to_i

prompt("Enter the 3rd number: ")
arr << gets.chomp.to_i

prompt("Enter the 4th number: ")
arr << gets.chomp.to_i

prompt("Enter the 5th number: ")
arr << gets.chomp.to_i

prompt("Enter the last number: ")
last = gets.chomp.to_i

if arr.include?(last)
  puts "The number #{last} appears in #{arr}."
else
  puts "The number #{last} does not appear in #{arr}."
end