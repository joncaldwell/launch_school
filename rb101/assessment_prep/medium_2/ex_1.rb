=begin
PROBLEM
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

write method that returns true if each letter in given string isn't used
in matching pairs above.

EXAMPLES
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

DATA STRUCTURES
input: string
output: true/false

hash to hold the character pairs


ALGORITHM
1. split string into individual characters
2. for each character in the string
  - use has_key? and has_value? to see if the character matches both or not
  - if it does match both, return false
3. return true

=end

LETTER_BLOCKS = {
  'B' => 'O',
  'X' => 'K',
  'D' => 'Q',
  'C' => 'P',
  'N' => 'A',
  'G' => 'T',
  'R' => 'E',
  'F' => 'S',
  'J' => 'W',
  'H' => 'U',
  'V' => 'I',
  'L' => 'Y',
  'Z' => 'M'
}.freeze

def block_word?(string)
  chars = string.upcase.chars

  chars.each do |char|
    LETTER_BLOCKS.each do |letter1, letter2|
      if char == letter1
        if chars.include?(letter2) then return false end
      end
    end
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true