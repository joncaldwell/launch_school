=begin
PROBLEM
given an odd integer n, print a 4-pointed diamond in an n x n grid

EXAMPLES

diamond(3)

 *  1 space, 1 star
*** 0 space, 3 stars
 *  1 space, 1 star

diamond(9)

    *      4 spaces, 1 star
   ***     3 spaces, 3 stars
  *****    2 spaces, 5 stars
 *******   1 spaces, 7 stars
*********  0 spaces, 9 stars
 *******   1 spaces, 7 stars
  *****    2 spaces, 5 stars
   ***     3 spaces, 3 stars
    *      4 spaces, 1 star


DATA STRUCTURES

input: integer
output: series of strings

array of 2-element arrays in between to hold the counts:
[[4, 1], [3, 3], [2, 5], [1, 7], [0, 9], ...]

ALGORITHM

- init array, stars count variable, and spaces (middle count) variable (num / 2)
- using upto method, add the current uneven number to an array within the
  array. in this same array, add an element for the number of spaces by using
  the middle variable
- then use downto method

=end

def diamond(integer)
  spaces = integer / 2

  1.upto(integer) do |i|
    if i.odd?
      print ' ' * spaces
      print '*' * i
      puts
      spaces -= 1
    end
  end

  spaces += 2

  (integer - 1).downto(1) do |i|
    if i.odd?
      print ' ' * spaces
      print '*' * i
      puts
      spaces += 1
    end
  end
end

diamond(1)
diamond(3)
diamond(9)
