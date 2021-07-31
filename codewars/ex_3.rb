=begin
PROBLEM
Determine if a word contains any duplicate letters.

Ignore letter case. Empty returns true.


EXAMPLES
is_isogram('Dermatoglyphics' ) == true
is_isogram('aba' ) == false
is_isogram('moOse' ) == false # -- ignore letter case

DATA STRUCTURES
Array for individual characters.

ALGORITHM
1. init array of chars on downcased version of string
2. sort the array
3. iterate through array, checking if the next character is equal to the current one
4. break if true and return false
5. else return false

=end

def is_isogram(string)
  string.length == string.downcase.chars.uniq.length
end

p is_isogram('Dermatoglyphics') == true
p is_isogram('aba') == false
p is_isogram('moOse') == false # -- ignore letter case
p is_isogram('') == true