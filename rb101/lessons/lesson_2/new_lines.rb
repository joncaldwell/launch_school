# bad

name = ''
puts "Enter your name: "
loop do
  name = gets.chomp
  break unless name.empty?
  puts "That's an invalid name. Try again: "
end
puts "Welcome #{name}"
puts "What do you want to do?"

# better

name = ''

puts "Enter your name: "
loop do
  name = gets.chomp
  break unless name.empty?
  puts "That's an invalid name. Try again: "
end

puts "Welcome #{name}"
puts "What do you want to do?"
