# q1

if false
  greeting = "hello world"
end

p greeting

# variables initialized within if statements, even if not executed, will be created assigned as nil

# q2

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# "hi there" is printed becuase the << method modifies the caller. In this case, informal_greeting references, or points to, the original object
# and therefore when << is used, it modifies that object. To avoid this behavior, you can use concatentation ie. informal_greeting = informal_greeting + " there"
# or use the .clone method to create a new object that's identical to the original, but can't modify the original

# q3

# Problem A
def mess_with_vars_a(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars_a(one, two, three)

puts "one is: #{one}" # "one"
puts "two is: #{two}" # "two"
puts "three is: #{three}" # "three"

# Problem B

def mess_with_vars_b(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars_b(one, two, three)

puts "one is: #{one}" # "one"
puts "two is: #{two}" # "two"
puts "three is: #{three}" # "three"

# Problem C

def mess_with_vars_c(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars_c(one, two, three)

puts "one is: #{one}" # "two"
puts "two is: #{two}" # "three"
puts "three is: #{three}" # "one"

# q4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    count += 1
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

# It's a good start, but you missed a few things. You're not returning a false condition, and you're not handling the case
# that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

