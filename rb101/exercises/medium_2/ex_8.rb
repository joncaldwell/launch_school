=begin
PROBLEM
given an array, use bubble sort to mutate array in place in a sorted manner

EXAMPLES
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

DATA STRUCTURES
input: array
output: bubble sorted array


ALGORITHM
1. initialize holder variable to store values to swap
2. iterate over array with indices too
3. if current element is larger than the next one
  - store the next value in holder variable
  - make the next value equal to current value
  - change the current value to the holder variable value

=end
require 'pry'

def bubble_sort!(array)
  swap_counter = 0
  
  loop do
    swap_counter = 0
    
    array.each_with_index do |current_value, index|
      next_value = array[index + 1]
      
      if next_value != nil && current_value > next_value
        array[index], array[index + 1] = array[index + 1], array[index]
        swap_counter += 1
      end
    end
    
    break if swap_counter == 0
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)