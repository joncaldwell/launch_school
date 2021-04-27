=begin
PROBLEM
- take an integer and a number of digits, rotate the last digits of that number
to the left

EXAMPLES

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

DATA STRUCTURES
- input: integer to be changed, integer count of digits to rotate
- output: modified integer

intermediary structures: array of digits
segment off last X digits of array, use shift and push to take off leading
digit, append to the end, rejoin with other array

ALGORITHM
- create digits array for integer
-



=end

def rotate_rightmost_digits(integer, count)
  digits_array = integer.digits.reverse

  modified_digits = digits_array.pop(count)
  appended_integer = modified_digits.shift
  modified_digits.push(appended_integer)

  (digits_array + modified_digits).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917