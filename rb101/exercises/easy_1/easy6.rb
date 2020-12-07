=begin
input: one string, with one or more words. Only letters or spaces. Spaces included if more than one word
output: a string, with one or more words. Words over 5 chars are reversed

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

DATA STRUCTURES
string for input/output
array for storing the words, iterating and reversing specific instances

ALGORITHM
1. split str into array of words (may run into issues with a single word string, to be tested)
2. iterate over each element of the array
3. for any elements with a length >= 5, reverse the characters
4. join the words in the array back into a string
5. return the result
=end

def reverse_words(str)
  list = str.split
  list.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  list.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS