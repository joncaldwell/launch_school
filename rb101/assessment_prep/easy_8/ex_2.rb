def leading_substrings(string)
  results = []
  
  0.upto(string.size - 1) { |index| results << string[0..index] }
  
  results
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']