#q1

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# 1, 2, 2, 3


#q2

=begin

! is the false modifier, it inverts truthy objects to false, and vice versa
? is the ternary operator, it returns true or false based on two options
ex: 1 > 6 ? "one is greater than six" : "one is less than six"

1. != is the "not equal to" comparison operator, the inverse of ==.
You should use it to check that certain value IS NOT equal to another one
2. !user_name would invert the truthiness or falseness of the user_name object
3. An ! after a method name usually indicates that the method mutates the caller
4. ternary operator to return one result if true, another if false
5. generally a ? after a method name indicates a checking method that
returns true or false
6. !! before something is essentially a double-negative and returns the
basic object truthiness. CORRECTION: turns the object into their bool equivalent  

=end

#q3

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice

advice.gsub!("important", "urgent")
puts advice

#q4

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
# deletes numbers[1]
# array is now [1, 3, 4, 5]
p numbers

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
# returns last deleted element, in this case 1
# array is now [2, 3, 4, 5]
p numbers

#q5

array = (10..100).to_a
puts array.select { |n| n == 42 }

# CORRECTION

(10..100).cover?(42)

#q6

famous_words = "seven years ago..."
puts "Four score and " + famous_words

famous_words = famous_words.prepend("Four score and ")
puts famous_words

#q7

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones.flatten!

#q8

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.select! { |k, v| k == "Barney" }
flintstones = flintstones.to_a.flatten
p flintstones

# CORRECTION

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.assoc("Barney")