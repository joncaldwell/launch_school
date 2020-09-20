def zero_count(num)
  
  if num < 0 || ( num.is_a?(Integer) == false )
    return false
    
  else  
    puts num
    zero_count(num-1)
  end
end

puts "Number: "
input = gets.chomp.to_i

zero_count(input)