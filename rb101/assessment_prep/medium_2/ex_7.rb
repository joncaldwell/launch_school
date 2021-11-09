=begin
PROBLEM
given a number, return the next featured number

featured number
  - odd number
  - multiple of 7
  - digits are unique

EXAMPLES
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

DATA STRUCTURES
input: integer
output: integer or string

in between: array to hold digits and then use Array#uniq on

ALGORITHM
- increment the given number by 1
- if the number is greater than or equal to 9_999_999_999, return "No possible number"
- next if not a multiple of 7
- if the new number is a multiple of 7
  - split the digits in to an array
  - use arr.uniq.length == arr.length to check if all digits are unique or not
    - if they are unique, break out of the loop
- return number
=end


def featured(int)
  loop do
    int += 1
    if int >= 9_999_999_999 then return "No possible number"
    elsif int % 2 == 1 && int % 7 == 0 
      if int.digits.uniq.size == int.digits.size then break end
    end
  end
  return int
end

p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) #== 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987
p featured(9_999_999_999)