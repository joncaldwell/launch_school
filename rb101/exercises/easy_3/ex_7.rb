def oddities(arr)
  odd_arr = []
  index = 0
  while index < arr.size
    odd_arr << arr[index]
    index += 2
  end
  odd_arr
end

def evens(arr)
  even_arr = []
  index = 1
  while index < arr.size
    even_arr << arr[index]
    index += 2
  end
  even_arr
end

puts evens([2, 3, 4, 5, 6]) == [2, 4, 6]
p evens([2, 3, 4, 5, 6])
puts evens([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts evens(['abc', 'def']) == ['abc']
puts evens([123]) == [123]
puts evens([]) == []