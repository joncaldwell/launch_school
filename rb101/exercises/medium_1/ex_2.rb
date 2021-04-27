=begin

735291

352917 # 1 rotation, no digits fixed
329175 # 1st digit fixed
321759 # 2 digits fixed
321597 # 3 digits fixed
321579 # 4 digits fixed, maximum rotation as only 2 digits are shifted

PROBLEM
given a number, return the maximum rotation for that number.

Maximum rotation is the number after the highest possible number of rotations
have been done.

After the last two digits have been rotated, return the digits in their current
position

EXAMPLES
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

DATA STRUCTURES
input: integer
output: integer, maximum rotation

use arrays as before to handle rotation

ALGORITHM



=end

def rotate_rightmost_digits(integer, count)
  digits_array = integer.digits.reverse

  modified_digits = digits_array.pop(count)
  appended_integer = modified_digits.shift
  modified_digits.push(appended_integer)

  (digits_array + modified_digits).join.to_i
end

def max_rotation(number)
  result = number
  count = number.to_s.length

  while count.positive?
    result = rotate_rightmost_digits(result, count)
    count -= 1
  end

  result
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
