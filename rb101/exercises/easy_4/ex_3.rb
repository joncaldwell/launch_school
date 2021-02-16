# PROBLEM
# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4,
# unless the year is also divisible by 100. If the year is evenly divisible by 100,
# then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0.
# Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year,
# or false if it is not a leap year.

# Explicit reqs
#   - return true if year is divisible by 4, unless its also divisible by 100 and not by 400. If 
#   its divisible by 400, return true
#   - otherwise return false
#   - input will be positive integer

# EXAMPLES

# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true

# DATA STRUCTURES

# None necessary, just control statements

# ALGORITHM

# 1. Is year divisible by 4?
#   1a. If yes, is year divisible by 100 but not 400?
#     1aa. If yes, return false
#     1ab. If no, return true
#   1b. If no, return false
  
# def leap_year?(year)
#   divisible_by_4 = year % 4 == 0
#   divisible_by_100 = year % 100 == 0
#   divisible_by_400 = year % 400 == 0
  
#   p year.to_s + " test: " + divisible_by_4.to_s
  
#   if divisible_by_4 && !divisible_by_100
#     true
#   elsif divisible_by_4 && divisible_by_100 && divisible_by_400
#     true
#   else
#     false
#   end
# end

## BETTER SOLUTION

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true