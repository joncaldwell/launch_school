=begin
PROBLEM
given an array, sort the array using a bubble sort algorithm

EXAMPLES
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

DATA STRUCTURES
input: array
output: same array mutated

ALGORITHM
- init a loop
  - set swapped to false
  - for each array item
    - if current element is greater than previous element, swap them
    - swapped = true
  - if swapped = false, then break
=end

def bubble_sort!(array)
  loop do
    swapped = false
    array.each_with_index do |element, index|
      next if index.zero?
      
      if array[index - 1] > element
        array[index], array[index - 1] = array[index - 1], array[index]
        swapped = true
      end
    end
    
    break if swapped == false
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
