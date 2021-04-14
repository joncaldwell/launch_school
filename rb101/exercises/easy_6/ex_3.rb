=begin

PROBLEM
reverse array by mutating called object, without using reverse methods in Array class

EXAMPLES 
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

DATA STRUCTURES
input: array
output: same array

ALGORITHM
use negative counters to start from end of array
1. initialize holder array
2. use push on holder array and pop on called array to take last element and put at
beginning of holder array
3. then reverse the process, using push on called array to add elements from arr2
with shift to add starting elements to beginning of called array
4. return original array

=end

def reverse!(arr)
  holder_array = []
  (arr.length).times { holder_array.push(arr.pop) }
  (holder_array.length).times { arr.push(holder_array.shift) }
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
