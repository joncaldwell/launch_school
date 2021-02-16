# PROBLEM

# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Explicit reqs
#   - returns string with correct formatting
#   - new centuries start in years that end with 01
  
# Implicit reqs
#   - all inputs will be positive integers, no error checking needed

# EXAMPLES/TEST CASES

# DATA STRUCTURES

# input: integer
# output: string of century with appropriate appended 'st', 'nd', 'rd', or 'th'

# ALGORITHM

# 1. Divide the integer by 100
# 2. Round up the integer to the next hundred
# 3. Convert to string and append the correct two chars
# 4. The chars to append will be based on the last value of the century integer, per the rules below:
#   - 0, 4, 5, 6, 7, 8, 9,  = 'th'
#   - 1: 'st'
#   - 2: 'nd'
#   - 3: 'rd'
# 5. Return the new string

# CODE

# def century(year)
#   cent = 0
#   answer = ''
#   numbers = ['0', '4', '5', '6', '7', '8', '9']
  
#   if year % 100 == 0
#     cent = (year / 100).to_s
#   else
#     cent = ((year + 50).round(-2) / 100).to_s
#   end
  
#   cent = cent.to_s
  
#   last_digit = cent.split('').last
  
#   p "Year input: " + year.to_s
#   p "Century: " + cent
#   p "Last digit: " + last_digit
  
#   if last_digit == '1' && cent != ('11' || '12' || '13')
#     answer = cent + 'st'
#   elsif last_digit == '2' && cent != ('11' || '12' || '13')
#     answer = cent + 'nd'
#   elsif last_digit == '3' && cent != ('11' || '12' || '13')
#     answer = cent + 'rd'
#   elsif numbers.include?(last_digit) || cent == ('11' || '12' || '13')
#     answer = cent + 'th'
#   end
  
#   p answer
#   puts
# end

### better solution

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10
  
  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
p century(404) == '5th'



