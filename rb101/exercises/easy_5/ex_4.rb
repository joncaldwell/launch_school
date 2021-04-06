=begin

PROBLEM
-remove all non-alphanumeric characters
-non-alpha chars in a row are replaced by a single space
-result should never have consecutive spaces

EXAMPLES
cleanup("---what's my +*& line?") == ' what s my line '
cleanup("&*!my $$name is? Mi----ke") == ' my name is Mi ke'

DATA STRUCTURES
- array of chars to manipulate
- return a string

ALGORITHM
1. split string into array of chars
2. iterate through array, changing any non-alpha chars to ' '
3. iterate through array, adding each character to a new result array
 3a. check each char to see if it's a space, and if the next char is space,
    don't add the current char to the result array

=end

ALPHA_NUMERIC = ('a'..'z').to_a

def cleanup(str)
  answer_array = []
  
  str.chars.each do |char|
    if ALPHA_NUMERIC.include?(char)
      answer_array << char
    else
      answer_array << ' ' unless answer_array.last == ' '
    end
  end
  
  answer_array.join
end

p cleanup("---what's my +*& line?") #== ' what s my line '
p cleanup("&*!my $$name is? mi----ke") #== ' my name is mi ke'