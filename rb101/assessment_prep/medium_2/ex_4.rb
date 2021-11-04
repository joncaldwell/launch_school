=begin
PROBLEM
Given three integers (lengths of sides of triangle), return a symbol representing
whether the triangle is :equilateral, :isosceles, :scalene, or :invalid

- invalid: sum of two shortest sides > length of longest side && all sides > 0
- equilateral: All 3 sides are of equal length
- isosceles: 2 sides are of equal length, while the 3rd is different
- scalene: All 3 sides are of different length

EXAMPLES
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

DATA STRUCTURES
input: integers
output: symbol

turn integers into an array to use Array#min and Array#max

ALGORITHM
- init array with integers, sort them
- init same_sides variable
  - iterate over array, using count on each element to check how many there are
  - if same_sides is less than the count, update same_sides to be the count

- check that the triangle is not invalid
  - arr[0..1].sum > arr[2] && arr.min > 0
  - if invalid, return :invalid

- check if triangle is equilateral
  - same_sides == 3
  - if true, return :equilateral

- check if triangle is isosceles
  - same_sides == 2
  - if true, return :isosceles

- check if triangle is scalene
  - same_sides == 1
  - if true, return :scalene

=end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  same_sides = 0

  sides.each { |side| same_sides = sides.count(side) if sides.count(side) > same_sides }

  return :invalid if sides[0..1].sum < sides.last || sides.min <= 0

  triangle_type(same_sides)
end

def triangle_type(same_sides)
  case same_sides
  when 3 then :equilateral
  when 2 then :isosceles
  when 1 then :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
