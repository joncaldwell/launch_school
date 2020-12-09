puts "Current age: "
current_age = gets.chomp.to_i

puts "Goal retirement age: "
retirement_age = gets.chomp.to_i

current_year = Time.now.year
time_left = retirement_age - current_age
retirement_year = current_year + time_left

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{time_left} years of work to go!"