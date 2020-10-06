def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

int1 = nil
int2 = nil
done = false

# init loop
while done == false
  # input message
  # get two ints
  print ">> Please enter a positive or negative integer: "
  int1 = gets.chomp
  
  print ">> Please enter a positive or negative integer: "
  int2 = gets.chomp
  
  # validate that both ints are valid, non-zero integers
  if valid_number?(int1) && valid_number?(int2)
    int1 = int1.to_i
    int2 = int2.to_i
    # validate that one is positive and one is negative
    if (int1 > 0 && int2 < 0) || (int1 < 0 && int2 > 0)
      result = int1 + int2
      puts "#{int1} + #{int2} = #{result}"
      done = true
    else
      puts "\n>> ERROR: One integer must be positive, one must be negative.\n\n"
    end
  else
    puts "\n>> ERROR: Invalid input. Only non-zero integers are allowed.\n\n\n"
  end
end