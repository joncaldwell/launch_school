require 'pry'

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

# BETTER SOLUTION
# avoids modifying the digits array
# leverages previous function

def string_to_signed_integer(string)
  converted = string_to_integer(string[1..-1])
  case string[0]
  when '-' then -converted
  when '+' then converted
  else          string_to_integer(string)
  end
end

# MY SOLUTION

# def string_to_signed_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }
  
#   if digits[0] == '-'
#     digits.shift
#     value = 0
#     digits.each { |digit| value = 10 * value + digit }
#     value * -1
#   else
#     if digits[0] == '+'
#       digits.shift
#     end
#     value = 0
#     digits.each { |digit| value = 10 * value + digit }
#     value
#   end
# end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100