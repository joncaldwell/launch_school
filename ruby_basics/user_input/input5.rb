count = nil
idx = 0

loop do
  puts ">> How many output lines do you want? Enter a number >= 3: "
  count = gets.chomp.to_i
  if count >= 3
    while idx < count
      puts "Launch School is the best!"
      idx += 1
    end
    break
  end
  puts ">> Invalid input! Must be >= 3"
end 