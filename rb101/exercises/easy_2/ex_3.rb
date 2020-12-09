puts "What is the bill? ex: 100"
bill = gets.chomp.to_f

puts "What is the tip percentage? ex: 15"
tip_percent = gets.chomp.to_f / 100

tip_dollars = (bill * tip_percent).round(2)
total = (bill + tip_dollars).round(2)

puts "The tip is $#{'%0.2f' % tip_dollars.round(2)}."
puts "The total is $#{'%0.2f' % total.round(2)}."