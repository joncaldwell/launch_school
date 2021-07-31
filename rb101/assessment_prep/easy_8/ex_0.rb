# initialize sum variable to 0
# from 1 up to length of array
#   use Array#sum to get sum of elements from 0 to current index
#   add the sum to the sum variable
# return sum variable

def sum_of_sums(array)
  total = 0
  array.each_index { |index| total += array[0..index].sum }
  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
p sum_of_sums([]) == 0