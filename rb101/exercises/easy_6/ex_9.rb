=begin

PROBLEM
- print a right triangle with N height and width

explicit reqs
  - hypotenuse has end at lower left of triangle and other one at upper right

implicit reqs
  - each line starts with spaces, except for the last one
  - counter for start of lines, counter is equal to the number of stars to print

EXAMPLES
triangle(5)

    *
   **
  ***
 ****
*****


DATA STRUCTURES
input: integer
output: strings made up of spaces and stars

counter to track number of stars per line
array for each line, then join to make string to print

ALGORITHM
- initialize counter variable outside of loop
- loop "value" number of times
- at the start of each loop, check difference counter value of "value" 
and add that number of spaces to the start of the string, then the rest is
stars -- string interpolation maybe?
- increment counter

=end

def triangle(num)
  counter = 1
  while counter <= num
    puts "#{' ' * (num - counter)}#{'*' * counter}"
    counter += 1
  end
end

triangle(9)