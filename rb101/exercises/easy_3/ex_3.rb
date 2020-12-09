puts "Input text: "
input = gets.chomp

puts "There are #{input.delete(" ").length} characters in \"#{input}.\""
