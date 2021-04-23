=begin
PROBLEM
take string and return array of all substrings starting from beginning of string

EXAMPLE
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

DATA STRUCTURES
input: string
output: array of strings

results array with index

ALGORITHM
1. split string into array of characters
2. use each_with_index to iterate over
2a. for each character, add up all the previous characters and pipe into results array
3. return results array


=end

def leading_substrings(str)
  result = []
  str.chars.each_with_index { |_, index| result << str.chars[0..index].join }
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']