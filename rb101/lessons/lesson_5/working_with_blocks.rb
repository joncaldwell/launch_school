[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]

# examining what's happening line by line
# LINE / ACTION / OBJECT / SIDE EFFECT/ RETURN VALUE / IS RETURN VALUE USED
# 1, method call (each), outer array, none, calling object, no, shown on line 6
# 1-3, block execution, each sub-array, none, nil, no
# 2, method call (first), each sub-array, none, element at index 0 of sub-array, yes, used by puts
# 2, method call (puts), element at index 0 of sub-array, outputs string representation of integer, nil, yes used to determine return val of block

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]

# LINE / ACTION / OBJECT / SIDE EFFECT/ RETURN VALUE / IS RETURN VALUE USED
# 1, method call (map), outer array, none, new array [nil, nil], no but shown in line 6
# 1-3 block execution, each sub-array, none, nil, yes used by map for transformation
# 2, method call (first), each sub-aray, none, element at index 0 of sub-array, yes used by puts
# 2, method call (puts), element at index 0 of each sub-arra, outputs string rep of int, nil, yes used to determine return val of block

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# LINE / ACTION / OBJECT / SIDE EFFECT/ RETURN VALUE / IS RETURN VALUE USED
# 1, method call (map), outer array, none, new array [1, 3], no but shown line 6
# 1-4, block execution, each sub-array, none, object at index 0 of sub-array, yes by map to create new array
# 2, method call (puts), each sub-array, outputs string of int, nil, not used
# 2, method call (first), each sub-array, none, element at index 0 of sub-array, yes by puts 
# 3, method call (first), each sub-array, none, element at index 0 of sub-array, yes by map


my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# LINE / ACTION / OBJECT / SIDE EFFECT/ RETURN VALUE / IS RETURN VALUE USED
# 1, variable assignment, n/a, none, [[18, 7], [3, 12]], no
# 1, method call (each), [[18, 7], [3, 12]], none, returns self (outer array), yes used for assignmet to my_var
# 1-7, outer block execution, each sub-array, none, each sub-array, no
# 2, method call (each), each sub-array, none, returns self (sub-array), yes used to determine return value of outer block
# 2-6, inner block execution, each sub-array, none, nil, no
# 3, comparison, current number in inner array, none, boolean, yes evaluated by if
# 3-5, conditional if, result of expression num > 5, none, nil, yes used to determine return value of inner block
# 4, method call (puts), element in inner array greater than 5, outputs string, returns nil, yes used to determine return value of conditional statement if the condition is met

# 18
# 7
# 12
# => [[18, 7], [3, 12]]

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# LINE / ACTION / OBJECT / SIDE EFFECT/ RETURN VALUE / IS RETURN VALUE USED
# 1, method call (map), array [[1, 2], [3, 4]], none, array with transformed values, no just returned
# 2, method call (map), sub-arrays of [1, 2] and [3, 4], none, new arrays [2, 4] and [6, 8], yes by the outer calling map method
# 1-5, outer block execution, each sub-array, none, array with XYZ, yes used by top level map for transformation
# 3, method call (*) with int 2 arg, current num in sub-array, none, num multipled by 2, yes by inner map method on line 2
# 2-4, inner block execution, each sub-arrays individual elements, none, element * 2, yes by innner map method on line 2

# => [[2, 4], [6, 8]]


answer = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
p answer
# => [{ :c => "cat" }]

# LINE / ACTION / OBJECT / SIDE EFFECT/ RETURN VALUE / IS RETURN VALUE USED
# 1, method call (select), array of hashes, none, new array with matching elements, no
# 2, method call (all?), each element of array, considers truthy values, true if all block return values are not false or nil, yes by select
# 1-5, outer block execution, each element within array, none, array with matching elements, yes by select for selection
# 2-4, inner block execution, each hash key-value pair 
# 3, method == evaluation, none, true or false based on results of key.to_s, yes by all? method iteration
# 3, method call (to_s), none, on the key symbol of current hash element, new string containing hash entries (truthy), yes by all?

arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

p arr.sort

arr = [[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item
      item > 13
    else
      item.size < 6
    end
  end
end

p arr

###### example 9

arr = [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]]

arr = arr.map do |element1|
  element1.map do |element2|
    element2.map do |element3|
      element3 * 2
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

p arr

# map method called on nested array with two elements, each arrays having their own 3 elements
# map will act on the two outer arrays and return transformed array
# each loop is called on individual 


### example 10

arr1 = [[[1, 2], [3, 4]], [5, 6]]

arr1 = arr1.map do |arr|
  arr.map do |el|
    p el.to_s.size
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

p arr1

# LINE / ACTION / OBJECT / SIDE EFFECT/ RETURN VALUE / IS RETURN VALUE USED
# 1, map method call, array with two arrays, none, new array with modified values, yes by outer block
# 2, map method call, child arrays 1 level down within parent, none, returns modified new array, yes by parent map method call
# 3, if control operator, result of comparison of current element length to 1, none, n/a, no just control
# 3, comparison == to 1, current element length, *** no side effect, but incorrect implementation here
#   due to to_s on single element array returning 3 chars as it includes [ and ] chars the comparison will never
#   find an element with just one byte length, return value is true or false, yes by if control operator
# 4, + method, current element, none, el incremented by 1, yes by inner block map method
# 5, else control, none, none, none, none
# 6, map method call, child array 2 levels down within parent, none, returns modified new array, yes by inner map method immediately above it (1st level)
# 7, + method, current element, none, n incremented by 1, yes by innermost block map method

# => [[[2, 4], [6, 8]], [10, 12]] # if using el and n * 2
# => [[[2, 3], [4, 5]], [6, 7]] # if using el and n + 1