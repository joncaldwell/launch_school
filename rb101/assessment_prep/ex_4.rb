def real_palindrome?(obj)
  obj.downcase!
  obj.gsub!(/\W/, "")
  obj.reverse == obj
end

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

=begin
real_palindrome? method is defined on line 1. The method expects to be passed
one argument, obj. Based on the methods used in the body of the method
definition, it seems to be implied that obj will be a String.

Within the method definition, on line 2, the String#downcase! method is called
on obj. This destructively modifies obj to have all lowercase characters now.

On line 3, the newly modified obj variable is passed to String#gsub! with the
arguments Regexp /\W/ and String "". The Regexp /\W/ refers to any non-word
characters ([^a-zA-Z0-9_]) and the String is empty. The result is that obj is
destructively modified and has any non-word characters replaced with "".

On line 4, method String#reverse is called on obj and returns the string with
its values reversed. This reversed string value is then compared, using the 
equality operator, to obj.

If the reversed value is the same as the modified value, then true is returned
by the real_palindrome? method. Otherwise, false is returned.
=end