def merge(*arrays)
  result = []
  arrays.each { |array| result = result + array }
  result.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

