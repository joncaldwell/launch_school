def random_array(size, max_num)
  arr = []
  
  size.times { arr << rand(max_num) }
  
  arr
end

def random_hash(size, max_num)
  if size > 26 then return 'ERROR: Max size is 26' end
  letters = ('a'..'z').to_a
  hash = {}
  index = 0
  
  size.times do
    hash[letters[index]] = rand(max_num)
    index += 1
  end
  
  hash
end

def double_array!(array)
  array.map! { |el| el * 2 }
end

def all_odds(array_or_hash)
  if array_or_hash.class.to_s == 'Array'
    array_or_hash.select { |el| el % 2 == 1 }
  elsif array_or_hash.class.to_s == 'Hash'
    array_or_hash.select { |k, v| v % 2 == 1 }
  end
end

def reverse_keys(hash)
  values = []
  hash.each do |k, v|
    values << v
  end
  
  values.reverse!
  index = 0
  
  hash.each do |k, v|
    hash[k] = values[index]
    index += 1
  end
end


arr = random_array(10, 10)
hash = random_hash(10, 10)

#puts "Current array is: #{arr}"
puts "Current hash is #{hash}"
#puts "All odds: #{all_odds(hash)}"

reverse_keys(hash)

puts "Transformed hash is #{hash}"
#double_array!(arr)
#puts "Transformed array is: #{arr}"

def random_numbers()
  1000.times do
    puts random_array(100, 100).join
  end
end

random_numbers