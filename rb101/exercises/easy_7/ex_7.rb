def multiply_list(arr1, arr2)
  count = -1
  arr1.map do |number| 
    count += 1
    number * arr2[count]
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]