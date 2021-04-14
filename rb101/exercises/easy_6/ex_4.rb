=begin

ALGORITHM
1. initialize a result array
2. loop from the end of the input array
3. for each element, starting from the end of the input array, copy to
the result array

=end

def reverse(input_arr)
  result_arr = []
  result_index = 0
  input_index = -1
  
  while result_index < input_arr.length
    result_arr[result_index] = input_arr[input_index]
    result_index += 1
    input_index -= 1
  end
  
  result_arr
end

# BETTER SOLUTION

# def reverse(input_arr)
#   input_arr.inject([]) { |new_arr, element| new_arr.unshift(element) }
# end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true