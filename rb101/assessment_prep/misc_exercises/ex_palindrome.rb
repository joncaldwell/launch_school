=begin
PROBLEM
write a method to determine if a word is a palindrome, without using the reverse method

EXAMPLES
palindrome_word?('this is a test') # returns error message
palindrome_word?('civic') # true
palindrome_word?('level') # true
palindrome_word?('test')   # false


DATA STRUCTURES
input: string
output: boolean

in between, use arrays

ALGORITHM
- split string into chars array
- read chars array from last index to first, piping each char into a new array
- compare the two arrays with ==
=end

def palindrome_word?(string)
  return "ERROR: input one word" if string.split(' ').size > 2
  
  forward_chars = string.chars
  backward_chars = []
  
  (forward_chars.size - 1).downto(0) do |idx|
    backward_chars << forward_chars[idx]
  end
  
  forward_chars == backward_chars
end

p palindrome_word?('the') == false # false
p palindrome_word?('this is a test') == "ERROR: input one word" # returns error message
p palindrome_word?('civic') == true # true
p palindrome_word?('level') == true # true
p palindrome_word?('test') == false  # false