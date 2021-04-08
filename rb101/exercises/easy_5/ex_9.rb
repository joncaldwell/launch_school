=begin
PROBLEM
Take string and print it in a box of characters

implicit reqs
  - Top and bottom lines will begin with +- and end with -+
  - Top and bottom lines will print the same number of lines as the size of the str
   and the line character used will be -
  - 2nd and 4th lines will start and end with '| ' and ' |'
  - 2nd and 4th lines will print number of spaces equal to size of str
  - 3rd line will be the string, enclosed with the same chars as lines 2 and 4

explicit reqs
  - short inputs, so won't expand past terminal window
  
EXAMPLES

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

DATA STRUCTURES
input: string
output: 5 strings

ALGORITHM
  - save size of str to size var
  - print first line, 2nd line, etc

=end

HORIZONTAL_DELIMITER = '-'
VERTICAL_DELIMITER = '|'
CORNER_CHARACTER = '+'
PADDING_CHARACTER = ' '

def print_in_box(str)
  size = str.length
  top_and_bottom_line = "#{CORNER_CHARACTER}#{HORIZONTAL_DELIMITER * (size + 2)}#{CORNER_CHARACTER}"
  padding_line = "#{VERTICAL_DELIMITER}#{PADDING_CHARACTER * (size + 2)}#{VERTICAL_DELIMITER}"
  
  puts top_and_bottom_line
  puts padding_line
  puts "#{VERTICAL_DELIMITER} #{str} #{VERTICAL_DELIMITER}"
  puts padding_line
  puts top_and_bottom_line
end

print_in_box('To boldly go where no one has gone before.')