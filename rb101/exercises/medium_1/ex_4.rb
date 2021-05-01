=begin

PROBLEM
print a 4 pointed diamond in a n x n grid, where n is an odd integer supplied to method

EXAMPLES

diamond(3)

1 space, 1 star, 1 space
1 star, 1 star, 1 star
1 space, 1 star, 1 star

 *
***
 *
 
diamond(9)

4 spaces, 1 star, 4 spaces = 9
3 spaces, 3 stars, 3 spaces
2 spaces, 5 stars, 2 spaces
1 spaces, 7 stars, 1 spaces
0 spaces, 9 stars, 0 spaces

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
 
DATA STRUCTURES

input: integer
output: n number of strings with the right spaces and stars

array in between to create the strings

ALGORITHM
1. initialize a stars counter variable at 1, a spaces counter at n / 2
2. for n times
  2a. print spaces number of spaces and stars number of stars
  2b. increment the stars counter by 2, decrement the spaces counter by 1

=end

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0)  { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)    { |distance| print_row(grid_size, distance) }
end
diamond(1)

diamond(3)

diamond(9)