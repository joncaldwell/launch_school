def rotate_array(array)
  array[1..-1] + [array[0]]
end

def int_to_a(integer)
  integer.to_s.chars
end

def rotate_rightmost_digits(integer, count)
  digits = int_to_a(integer)
  
  if count == 0 || count == 1
    digits.join.to_i
  elsif count < digits.length && count != 0 && count != 1
    (digits[0..(digits.length - 1) - count] +
      rotate_array(digits[-0 - count..-1])).join.to_i
  else
    rotate_array(digits).join.to_i
  end
end

p rotate_rightmost_digits(735291, 0) == 735291
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917