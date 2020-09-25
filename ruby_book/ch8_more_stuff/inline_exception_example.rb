zero = 0
puts "before each call"
zero.each { |element| puts element } rescue puts "Cant do that"
puts "after each call"