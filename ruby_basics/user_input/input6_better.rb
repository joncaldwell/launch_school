PASSWORD = "secret"

loop do
  puts ">> password: "
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts ">> wrong password"
end

puts "Welcome!"