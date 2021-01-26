# p1

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flintstones_hash = {}

# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end

# p flintstones_hash

# p2

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.sum

# p3

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.delete_if { |k, v| v > 100 }

# p ages

# p4

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.min

# p5 

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones.bsearch_index { |n| n[0] == "B" && n[1] == "e"} # my answer

# p flintstones.index { |n| n[0, 2] == "Be" } # better

# p6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones = flintstones.each_index do |i| # my answer
  flintstones[i] = flintstones[i][0, 3]
end

flintstones.map! do |name| # better
  name[0, 3]
end

p flintstones

# p7

statement = "The Flintstones Rock"

# chars = statement.chars.uniq # my answer, counts spaces

# hash = {}

# for char in chars
#   hash[char] = statement.count(char)
# end

result = {} # better answer

letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result

# p8

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "idx: #{index} arr: #{numbers.inspect} val: #{number}"
  numbers.shift(1)
end

# [1], [2], [3], [4]

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "idx: #{index} arr: #{numbers.inspect} val: #{number}"
  numbers.pop(1)
end

# [4], [3], [1, 2]

# p9

# PROBLEM

# Write method that capitalizes first letter of each word in a string.

# Explicit reqs: first char of each word must be capitalized
# Implicit reqs: assume inputs will always be strings with at least one word

# EXAMPLES / TEST CASES
# titleize("the flintstones rock") -> "The Flintstones Rock"
# titleize("the") -> "The"
# titleize("sergeant pepper's lonely hearts club band") -> "Sergeant Pepper's Lonely Hearts Club Band"

# DATA STRUCTURES
# input: string
# output: string

# use array in middle

# ALGORITHM
# 1. split string into individual words in an array
# 2. loop through each word
# 3. Use upcase! method on the first character of each string
# 4. concat the strings together and return

# def titleize(str) # my version
#   words = str.split(' ')
#   counter = 0
  
#   loop do
#     break if counter == words.length
#     words[counter][0] = words[counter][0].upcase
#     counter += 1
#   end
#   p words.join(" ")
# end

# better version

def titleize(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

p titleize("the flintstones rock") # -> "The Flintstones Rock"
p titleize("the") # -> "The"
p titleize("sergeant pepper's lonely hearts club band") # -> "Sergeant Pepper's Lonely Hearts Club Band"

# p10

# PROBLEM

# Modify the hash in place by adding an age_group key to each sub-hash of family members.

# Explicit reqs: 
#   - must modify existing hash
#   - add 'age_group' key with 'kid', 'adult', or 'senior' value based on key 'age' value
  
# EXAMPLES

# # { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
# #   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
# #   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
# #   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
# #   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

# DATA STRUCTURES

# input: hash
# output: same hash, with added key/values in subhashes

# ALGORITHM

# 1. loop over each key in the munsters hash
# 2. if current key 'age' value is
#   - between 0 and 17, make age_group = 'kid'
#   - between 18 and 64, make age_group = 'adult'
#   - 65 and over, make age_group = 'senior'


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k, v|
  if v['age'] >= 0 && v['age'] < 18
    v['age_group'] = 'kid'
  elsif v['age'] >= 18 && v['age'] < 65
    v['age_group'] = 'adult'
  elsif v['age'] >= 65 then v['age_group'] = 'senior'
  end
end

p munsters