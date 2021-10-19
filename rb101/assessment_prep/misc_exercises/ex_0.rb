greeting = 'Hello'

loop do
  greeting = 'Hi'
  break
end

puts greeting

=begin
The local variable greeting is assigned a String value of 'Hello'

A loop is initialized on line three. At the beginning of the loop, the local
variable greeting, which shares the same scope as in the loop
is assigned to 'Hi'

On line 5, break exits the loop.

On line 8, the puts method is called and the local variable greeting is passed to it.
Because the variable has been modified by the assignment in the loop, which shares
the scope outside of it, the string 'Hi' is output.

This example demonstrates local variable scoping rules in Ruby. Specifically the fact
that a local variable initialized outside of a block is accessible inside the block.
=end