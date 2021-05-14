=begin
PROBLEM
given a string, return true or false based on whether or not all parantheses
in the string are properly balanced.

explicit reqs:
  - properly balanced means parantheses occur in matching ( and ) pairs

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

array of cahrs in between to cycle through characters
variable called "open" integer, increment as you encounter ( and decrement
as you encounter )

ALGORITHM
1. init open variable to 0
2. split string into chars
3. iterate through chars
  3a. increment open var by 1 for each ( and decrement by 1 for each )
4. open == 0

if string contains ) and it is before the nearest (, return false

=end
def balanced?(string)
  open_parentheses = 0

  string.chars.each do |char|
    open_parentheses += 1 if char == '('
    open_parentheses -= 1 if char == ')'

    break if open_parentheses.negative?
  end

  open_parentheses.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
