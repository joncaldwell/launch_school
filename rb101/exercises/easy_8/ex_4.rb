=begin

PROBLEM
Take a string and return an array of all the words that are palindromes, aka 
the same characters forward as backward.

EXAMPLES
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

DATA STRUCTURES
input: string
output: array of palindromic strings

ALGORITHM
- init results array
- 


=end

def leading_substrings(str)
  result = []
  str.chars.each_with_index { |_, index| result << str.chars[0..index].join }
  result
end

def substrings(str)
  results = []
  (0..str.size).each do |start_index|
    this_substring = str[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindromes(str)
  substrings_of_str = substrings(str)
  palindromes_of_str = []
  
  substrings_of_str.each do |substring|
    if substring.length > 1 && substring.reverse == substring
      palindromes_of_str << substring
    end
  end
  palindromes_of_str
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]