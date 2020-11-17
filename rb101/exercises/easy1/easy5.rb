=begin
input: one string
output: one string, with the words in reverse order
// TEST CASES 
Reverse these words' => 'words these Reverse'
'Hello World' => 'World Hello'
// DATA STRUCTURES
string for I/O
array to reorder words
// ALGORITHM
1. split words into array
2. reverse order of array
3. join array into string
4. print string
=end
def reverse_sentence(str)
  str.split.reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'