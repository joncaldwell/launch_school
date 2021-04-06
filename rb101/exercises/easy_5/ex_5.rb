=begin

PROBLEM
-take a string, return a hash with the number of words of different sizes

explicit reqs
-words are strings of consecutive characters not separated by a space

EXAMPLES
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

DATA STRUCTURES
input: string
output: hash with integer keys and values

ALGORITHM
  - initiate a hash for the response
  - split string by spaces into array of words
  - iterate through array, counting the number of chars in each word
  - if there is no key existing for that count of chars, create it in the response hash
  and set its value to one
  - if there is a key existing for that count of chars, increment its value by 1
  - return the hash

=end

def word_sizes(str)
  result = Hash.new(0)
  
  str.split(' ').each do |word|
    result[word.length] += 1
  end
  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('')  == {}