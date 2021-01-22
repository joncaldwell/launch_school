# Write a method that takes two strings as arguments, determines the longest of the 
# two strings, and then returns the result of concatenating the shorter string, the 
# longer string, and the shorter string once again. You may assume that the strings 
# are of different lengths.
=begin 
PROBLEM
Input: two strings
output: one string

Explicit Reqs
  - strings will be different lengths
  
Implicit Reqs
  - input will always be strings, no error checking needed
  - input may be empty string
  
EXAMPLES

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

DATA STRUCTURES

Strings

ALGORITHM

1. take two strings
2. compare the length of the two strings
3. return the result of concatenating the shorter, the longer, then the shorter again

=end 

def short_long_short(str1, str2)
  if str1.length > str2.length
    return str2 + str1 + str2
  else return str1 + str2 + str1
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"