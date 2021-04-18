def interleave(arr1, arr2)
  result = []
  arr1.length.times do |idx|
    result << arr1[idx]
    result << arr2[idx]
  end
  result
end
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# FURTHER EXPLORATION

def interleave_zip(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']