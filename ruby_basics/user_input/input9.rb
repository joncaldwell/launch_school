ans = nil
lines = nil

loop do
  puts '>> How many output lines do you want? Enter a number >= 3 or "q" to quit'
  ans = gets.chomp.downcase
  lines = ans.to_i
  
  break if ans == "q"
  if lines < 3
    puts ">> That's not enough lines."
    next
  end
  
  while lines > 0
    puts 'Launch School is the best!'
    lines -= 1
  end
end



# start loop
  # ask for number of lines
  # if the input is q or Q
    # if true, break out of the loop
  # then check if the input is 3 or more lines
    # if not, output error message
    # restart the loop (next?)
  # end if
  
  # while number of lines counter is greater than 0
    # puts launch school message
    # decrement counter
  # end while
# end loop
