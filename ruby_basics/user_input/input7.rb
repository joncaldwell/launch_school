USERNAME = "jon"
PASSWORD = "secret"

loop do
  puts ">> username: "
  username_try = gets.chomp
  
  puts ">> password: "
  password_try = gets.chomp
  
  break if username_try == USERNAME && password_try == PASSWORD
  puts ">> wrong username or password"
end

puts "Welcome!"