=begin
PROBLEM
given a string, determine if all the parentheses are balanced.
they must start with an open (, not a ), and each open ( must match with a )

EXAMPLES
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

DATA STRUCTURES
input: string
output: boolean

ALGORITHM
- init boolean called balance, set it to default to true
- init integer called count, set it to default to 0
- split string into chars
- iterate over each char
  - if the first char is a ) (use count), break from loop and return false
  - elsif the current char is a (,
    - set balance to false and increment count by 1
  - elsif the current char is a ),
    - set balance to true and increment count 1
- return balance

=end
require 'pry'

def balanced?(str)
  tracker = 0
  count = 0

  str.chars.each do |char|
    if (char == ')' && count.zero?) || tracker.negative?
      return false
    elsif char == '('
      tracker += 1
      count += 1
    elsif char == ')'
      tracker -= 1
      count += 1
    end
  end

  tracker.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false