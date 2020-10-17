def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1
  
  digits.each do |digit|
    product *= digit
    puts "product inside do loop: #{product}"
  end 
  
  puts "product outside of loop: #{product}"
  product
end

p digit_product('12345')