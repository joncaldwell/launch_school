=begin

PROBLEM
given a string, return true or false if the string contains any one of a 
combination of "prohibited" letter combination blocks

Prohibited letter blocks
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

explicit reqs
- return true or false
- letter blocks can be used only once

EXAMPLES
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

DATA STRUCTURES
input: string of one word
output: boolean

letter blocks: array of arrays of strings, [['B', 'O'], ['X', 'K']]

word split into array of chars

ALGORITHM
1. split word into array of chars.upcase
2. for each letter block in the letter block array,
  1. check if letter_blocks[0] and letter_blocks[1] are present in the array
  2. if yes, set result to true and delete_blocks to current letter block
  3. if no, continue through loop
3. delete the delete_blocks array from the letter_blocks array
4. return result boolean value

=end



# def block_word?(word)
  
#   letter_blocks = [
#   ['B', 'O'],
#   ['X', 'K'],
#   ['D', 'Q'],
#   ['C', 'P'],
#   ['N', 'A'],
#   ['G', 'T'],
#   ['R', 'E'],
#   ['F', 'S'],
#   ['J', 'W'],
#   ['H', 'U'],
#   ['V', 'I'],
#   ['L', 'Y'],
#   ['Z', 'M']
#   ]
  
#   chars = word.chars
#   chars.each { |char| char.upcase! }
#   result = true
#   delete_block = []
  
#   letter_blocks.each do |letters|
#     if chars.include?(letters[0]) && chars.include?(letters[1])
#       delete_block = letters
#     end
#   end
  
#   letter_blocks.delete(delete_block)
#   result
# end

# BETTER SOLUTION

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true