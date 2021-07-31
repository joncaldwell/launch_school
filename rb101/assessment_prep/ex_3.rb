require 'pry'
binding.pry

def substrings(string)
  results = []
  
  0.upto(string.size - 1) do |index|
    results << leading_substrings(string[index..string.size - 1])
  end
  
  results
end

def leading_substrings(string)
  results = []
  
  0.upto(string.size - 1) { |index| results << string[0..index] }
  
  results
end


leading_substrings('abcde')
substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]