def leading_substrings(string)
  results = []

  0.upto(string.size - 1) { |index| results << string[0..index] }

  results
end

def substrings(string)
  results = []

  0.upto(string.size - 1) do |index|
    results << leading_substrings(string[index..string.size - 1])
  end

  results.flatten
end

=begin

Return array with all substrings that are palindromes.

store all substrings in an array substrings
iterate over all the substrings
  if the current substring is the same sequence forward as backwards, add to results
return results

=end

def palindromes(string)
  results = []
  all_substrings = substrings(string)
  
  all_substrings.each do |substring|
    if substring.reverse == substring && substring.length != 1
      results << substring
    end
  end
  
  p results
end

palindromes('abcd') #== []
palindromes('madam') #== ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') #== [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
palindromes('knitting cassettes') #== [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]