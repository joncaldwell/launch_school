# p1

# arr = ['10', '11', '9', '7', '8']

# arr = arr.map do |num|
#   num = num.to_i
# end

# p arr.sort.reverse.to_s

# better answer

# arr.sort do |a, b|
#   b.to_i <=> a.to_i
# end

# p2

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# books = books.sort_by do |book|
#   book[:published].to_i
# end

# p books

# p3

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# p arr1[2][1][3]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# p arr2[1][:third][0]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]
# p arr3[2][:third][0][0]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# p hsh1['b'][1]

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# p hsh2[:third].key(0)
# p hsh2[:third].keys[0]

# p4

# arr1 = [1, [2, 3], 4]
# p arr1
# arr1[1][1] = 4
# p arr1

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# p arr2
# arr2[2] = 4
# p arr2

# hsh1 = {first: [1, 2, [3]]}
# p hsh1
# hsh1[:first][2][0] = 4
# p hsh1

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# p hsh2
# hsh2[['a']][:a][2] = 4
# p hsh2

# p5

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total_male_age = 0

# munsters.each_value do |details|
#   total_male_age += details["age"] if details["gender"] == "male"
# end

# p total_male_age

# p6

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |person, details|
#   puts "#{person} is a #{details["age"]}-year-old #{details["gender"]}."
# end

# p7

# a = 2
# b = [5, 8]
# arr = [a, b]
# # arr = [2, [5, 8]]

# arr[0] += 2
# # arr = [4, [5, 8]]

# arr[1][0] -= a
# # arr = [4, [1, 8]]

# p arr
# p a
# p b

# p8

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# vowels = 'aeiou'

# hsh.each do |_, value|
#   value.each do |str|
#     str.chars.each do |char|
#       puts char if vowels.include?(char)
#     end
#   end
# end

# p9

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# sorted_arr = arr.map do |subarray|
#   subarray.sort do |a, b|
#     b <=> a
#   end
# end

# p sorted_arr

# p10

# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# new_arr = arr.map do |element|
#   element.map do |key, value|
#     answer = [[key, value + 1]].to_h
#     p answer
#     answer.to_h
#   end
# end

# p new_arr

# better answer. My version returned array objects instead of hash objects, the right approach was to create a new hash obj
# on each iteration and fill it with the modified values, then return it to map. So a combination of map and each method calls

# new_arr = arr.map do |hash|
#   incremented_hash = {}
#   hash.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   incremented_hash
# end

# p new_arr

# p11

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# new_arr = arr.map do |array|
#   array.select { |value| true if value % 3 == 0 }
# end

# p new_arr

# p12

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# hash_response = {}

# arr.each do |array|
#   hash_response[array[0]] = array[1]
# end

# p hash_response

# p13



# => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# PROBLEM

# Return a new array with the same sub-arrays, but ordered according to the odd numbers only.

# EXAMPLES / TEST CASES

# # arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# # => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# DATA STRUCTURES

# Nested arrays.

# ALGORITHM

# 1. Sort method call on parent array
# 2. Using <=> with if condition with .odd? method

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# new_arr = arr.sort_by do |sub_arr|
#   sub_arr.select do |element|
#     element % 2 == 0
#   end
# end

# p new_arr

# new_arr2 = arr.map do |sub_arr|
#   sub_arr.sort
# end

# p new_arr2

# p14

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}



# answer = []

# hsh.each do |produce, traits|
#   if traits[:type] == 'fruit'
#     capitalized = traits[:colors].map do |color|
#       color.capitalize
#     end
#       answer << capitalized
#   end
#   if traits[:type] == 'vegetable'
#     answer << traits[:size].upcase
#   end
# end

# p answer

# better answer

# answer = hsh.map do |_, value|
#   if value[:type] == 'fruit'
#     value[:colors].map do |color|
#       color.capitalize
#     end
#   elsif value[:type] == 'vegetable'
#     value[:size].upcase
#   end
# end

# p answer

# p15

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hash|
  hash.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

p new_arr

# LINE / ACTION / OBJECT / SIDE EFFECT/ RETURN VALUE / IS RETURN VALUE USED
# 1, select method call, arr object, none, array with values for which block is truthy, yes in assignment to new_arr
# 2, all? method call, individual hash key-value pairs, none, true or false, yes by select method parent
# 3, all? method call, values of each hash key-value pair, none, true or false, yes by all parent method
# 4, even? method call, each number within each hash key-value pair, none, true if the number is even, yes by all? method parent

def uuid()
  chars = ('a'..'f').to_a
  
  counter = 0
  loop do
    chars << counter.to_s
    counter += 1
    break if counter > 9
  end
  
  id = []
  
  36.times do |i|
    if i == 8 || i == 13 || i == 18 || i == 23
      id << "-"
    elsif
      id << chars.sample
    end
  end
  id.join
end

p uuid

# f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91
# 012345678901234567890123456789012345