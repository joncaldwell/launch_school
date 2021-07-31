def greetings(name, profession)
  name = name.join(' ')
  title = profession[:title]
  occupation = profession[:occupation]
  puts "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

=begin
A method is defined called greetings that accepts two arguments, name and profession.
Name is expected to be an array of strings and profession is expected to be a hash
with two keys: title and occupation.

The local variable name is assigned to the return value of method join being invoked
on the arguemnt name, with the argument ' '. This method will return a String
with the array substrings joined together, separated with a space.

The local variable title is assigned to the return value of the Hash#[] method
invocation on the profession argument.

The puts method is called with a String that uses string interpolation to include
the name argument, the title variable, and the occuption variable.

This example demonstrates how to handle method definitions that accept arguments
with varying data structures.
=end

=begin
The local variable greeting is assigned to the String 'Hello' on line 1. The do..end
alongside the loop method invocation on lines 3 to 6 defines a block, within which
greeting is reassigned to the String Hi on line 4. The puts method is called on line 8
with the variable greeting passed to it as an argument; since greeting is now assigned
to 'Hi', this is what is output. This example demonstrates local variable scoping rules
in Ruby; specifically the fact that a local variable initialized outside of a block is
accessible inside the block.
=end