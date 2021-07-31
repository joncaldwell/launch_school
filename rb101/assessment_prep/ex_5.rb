def word_cap(str)
  str.split(' ').map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

=begin
EXAMPLE RESPONSE
The local variable greeting is assigned to the String 'Hello' on line 1. The do..end
alongside the loop method invocation on lines 3 to 6 defines a block, within which
greeting is reassigned to the String Hi on line 4. The puts method is called on line 8
with the variable greeting passed to it as an argument; since greeting is now assigned
to 'Hi', this is what is output. This example demonstrates local variable scoping rules
in Ruby; specifically the fact that a local variable initialized outside of a block is
accessible inside the block.

----

The word_cap method definition is started on line 1. The method requires one
argument, a String object called str.

On line 2, the String#split method is called on str, with the argument ' '. This
will return an object that is an array of the words in str without spaces. 

This array is then immediately passed to the Array#map method, with the argument
&:capitalize. This argument results in the capitalize method being called on each
element in the array returned by String#split. Finally, the map method returns
a new, separate array from the one returned by String#split, with all of the
first letters of each word capitalized.

This new array of capitalized words is then passed to the String#join method with
an argument of ' '. The join method call returns a string with all the words in
the array of capitalized words joined together but separated by a space.

The end result is a string of capitalized words.

=end