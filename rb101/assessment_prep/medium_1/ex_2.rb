=begin
PROBLEM
take an integer and return its maximum rotated number as an integer. ignore
multiple zeroes

EXAMPLES

735291

|352917
3|29175
32|1759
321|597
3215|79

321579

DATA STRUCTURES

input: integer
output: integer

array of digits to make changes

ALGORITHM
1. split integer into digits array of strings
2. do array.length times
  - rotate the array from iterator to array.length - 1
3. return array

=end

require 'pry'

def max_rotation(integer)
  digits = int_to_a(integer)
  length = digits.length
  
  length.downto(2) do |n|
    integer = rotate_rightmost_digits(integer, n)
  end
  
  integer
end

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

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845