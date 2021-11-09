# reverse an array without using Array#reverse

def custom_reverse(array)
  size = array.length

  (size / 2).times do |index|
    array[index], array[size - index - 1] = array[size - index - 1], array[index]
  end
  array
end

p custom_reverse([1, 9, 10, 33, 59])

random_array = (1..rand(20)).to_a
p random_array
p custom_reverse(random_array)
