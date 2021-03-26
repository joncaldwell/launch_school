def string_to_integer_array(str)
  str.split('').map do |num|
    num.bytes[0] - 48
  end
end

def integer_array_to_integer(int_arr)
  sum = 0
  multiple_counter = 1
  digits = int_arr.count
  
  int_arr.each do |digit|
    sum += (digit * (10 ** (digits - multiple_counter)))
    multiple_counter += 1
  end
  sum
end

def string_to_integer(str)
  integer_array_to_integer(string_to_integer_array(str))
end

#### BETTER SOLUTION

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }
  
#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

p string_to_integer('1234')
p string_to_integer('570')
p string_to_integer('4321')

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570