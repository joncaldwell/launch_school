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

=begin
A method named triangle is defined, which accepts three arguments: side1, side2,
and side3.

A local variable named sides is assigned to an array containing as the first three
elements the three arguments in order from side1 to side3.

The if control expression is used to evaluate an expression that contains a method
invocation to method invalid_triangle? which is passed the sides array variable.
If the method invocation returns true, then a Symbol called :invalid is returned.

Otherwise, there the case control expression is used to evaluate the return value
of a two method invocations on the sides array: a call to the Array#uniq method
which returns an array with only the unique values, which is then passed to 
Array#length. Array#length returns the length of the array value to case.

The following three lines outline what to return based on the value of the case
expression. If it's 1, then the Symbol :equilateral is returned. If it's 2, 
then the Symbol :isosceles is returned. If it's 3, then the Symbol :scalene
is returned.

On line 14, the method called invalid_triangle? is defined, which accepts one
argument, assumed to be an array.

The if control expression evaluates the return value of the sides array argument
passed into the method and calls two methods on it: Array#min and Array#sum.
Array#min is called with an argument of 2, which will make it return an Array containing
the first two smallest elements in the sides array. This 2-element array is then
passed to Array#sum, which returns the sum of all the elements in the array.

This return value, the sum of the two smallest values in the sides array, is then
compared with the less-than operator to the return value of the Array#max method
being called on the sides array argument. The method returns an Integer, which is
the highest value in the sides array.

The OR operator (||) also evalutes another expression which is the return value
of two method invocations on the sides array: Array#min and Array#zero? Array#min
is used with no arguments passed, meaning it will return the single smallest value
in the array. This smallest value is then passed to the Array#zero? method, which
returns true if the value is 0 and false otherwise.

In summary, if any of the previous two conditions are true, then the return value
of the invalid_triangle? method is true as the boolean true is returned on line 
16.

Otherwise, the return value is false, as it's provided within the else control
expression on line 18.

=end

=begin
EXAMPLE RESPONSE
The local variable greeting is assigned to the String 'Hello' on line 1. The do..end
alongside the loop method invocation on lines 3 to 6 defines a block, within which
greeting is reassigned to the String Hi on line 4. The puts method is called on line 8
with the variable greeting passed to it as an argument; since greeting is now assigned
to 'Hi', this is what is output. This example demonstrates local variable scoping rules
in Ruby; specifically the fact that a local variable initialized outside of a block is
accessible inside the block.
=end