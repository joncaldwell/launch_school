number = 1
loop do
  puts number if number % 2 == 1
  break if number == 99
  number += 1
end


# alternate solution
1.upto(99) { |i| puts i if i.odd? }