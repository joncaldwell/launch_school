=begin

PROBLEM
given three integers, return a symbol for whether those integers would make
an equilateral, isoceles, scalene, or invalid triangle

explicit reqs
  - equilateral: all 3 sides are equal
  - isosceles: 2 sides of equal length, 3rd is different
  - scalene: all 3 sides are different length
  - invalid: valid triangle is one where lengths of 2 shortest sides are greater
   than length of the longest side, and all sides have lengths > 0

EXAMPLES
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

DATA STRUCTURES
input: 3 integers
output: symbol for type of triangle


ALGORITHM
1. check for invalid triangle first
2. map through integers array and generate a count array, reduce it with uniq!
3. check the count array values:
  3a. if just one value of 3, it's equilateral
  3b. if just two values of 1 and 2, it's isoceles
  3c. if it's three values, it's scalene
4. return symbol

=end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]

  if invalid_triangle?(sides) then :invalid
  else
    case sides.uniq.length
    when 1 then :equilateral
    when 2 then :isosceles
    when 3 then :scalene
    end
  end
end

def invalid_triangle?(sides)
  if sides.min(2).sum < sides.max || sides.min.zero?
    true
  else
    false
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
