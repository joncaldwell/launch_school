def str_check()
  print "Enter your string: "
  str = gets.chomp
  
  if str.length > 10
    puts str.upcase
  else
    puts str
  end
end

str_check()