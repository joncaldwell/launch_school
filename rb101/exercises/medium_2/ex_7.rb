=begin

PROBLEM
given a number, return the next featured number

featured number reqs
  - odd number
  - multiple of 7
  - unique digits

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


ALGORITHM

=end

# return next featured number after this integer
def featured(integer) 
  find_next_featured_number(featured_numbers(integer))
end

# return array of featured nums up to 1 past given int
def featured_numbers(integer) 
  result = []
  
  (1..integer).to_a.each do |number|
    result << number if featured_number?(number)
  end
  
  result
end

# return true or false based on if the int has all uniq digits
def unique_digits?(integer) 
  integer.digits.map { |digit| integer.digits.count(digit) }.max <= 1
end

# return true or false based on if int is a featured num
def featured_number?(integer) 
  integer % 7 == 0 && integer.odd? && unique_digits?(integer)
end

# take array of featured numbers and find the next one
def find_next_featured_number(array)
  found = false
  current_number = array.last + 1
  result = 0
  
  until found
    if featured_number?(current_number)
      found = true
      result = current_number
    else
      current_number += 1
    end
  end
  
  result
end

# p unique_digits?(1234)
# p unique_digits?(188273747188233)

# p featured_number?(21)
# p featured_number?(35)
# p featured_number?(3)

# p featured_numbers(20)
# p featured_numbers(21)
# p featured_numbers(997)

# p find_next_featured_number(featured_numbers(21))

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements