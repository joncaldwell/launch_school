=begin
PROBLEM
take a string and return array of substrings 

explicit reqs
- all substrings should be in order in their position from smallest to largest
- can use leading_substrings method from ex_2

EXAMPLES
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

DATA STRUCTURES
input: string
output: arrays of substrings in order

ALGORITHM
- create results array
- split string into chars array
- iterate over each char, use leading_substrings to add all substrings to results
- flatten results array
-return

=end

# def leading_substrings(str, start_index)
#   result = []
#   str.chars.each_with_index do |_, index| 
#     result << str.chars[start_index..index].join
#   end
#   result.delete("")
#   result
# end

# def substrings(str)
#   result = []
#   str.chars.each_with_index do |char, index|
#     result << leading_substrings(str, index)
#   end
#   result.flatten
# end

# BETTER APPROACH

def leading_substrings(str)
  result = []
  str.chars.each_with_index { |_, index| result << str.chars[0..index].join }
  result
end

def substrings(string)
  results = []
  (0..string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

p substrings('abcde')