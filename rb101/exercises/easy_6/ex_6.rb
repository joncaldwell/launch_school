=begin
PROBLEM
take an array and split it in the middle into two. return an array with two nested arrays.

explicit reqs
  - if uneven number of elements, move the middle element into the first array
  
EXAMPLES 
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

DATA STRUCTURES
input: array
output: array with two arrays

ALGORITHM
- initiate two result arrays
- if array.size is even, make first_half = array[0, middle],
second_half = array[middle, middle]
- if array.size is odd, make first_half = array[0, middle + 1],
second_half = array[middle + 1, middle - 1]
- return result array containing both sub-arrays
=end

def halvsies(arr)
  middle = arr.size / 2
  if arr.size.even?
    first_half = arr[0, middle]
    second_half = arr[middle, middle]
  else
    first_half = arr[0, middle + 1]
    second_half = arr[middle + 1, middle]
  end
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]