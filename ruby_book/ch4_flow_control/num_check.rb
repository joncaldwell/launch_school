puts "Enter an integer: "
num = gets.chomp.to_i

if num >= 0 && num <= 50
    puts "0 to 50"
elsif num >= 51 && num <= 100
    puts "51 to 100"
elsif num > 100
    puts "more than 100"
end
  