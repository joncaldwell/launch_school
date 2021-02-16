require 'pry'

puts "Option: 1 or 2?"

input = gets.chomp

if input == '1'
  puts "You chose option 1"
elsif input == '2'
  puts "You chose option 2"
else
  puts "invalid input"
end