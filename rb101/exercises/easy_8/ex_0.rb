=begin

PROBLEM
return the sum of the sums of each leading subsequence for a given array

EXAMPLES
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

DATA STRUCTURES
input: array
output: integer

ALGORITHM
1. init a results integer
2. use each_with_index to iterate over each number
2a. for a given index, add the sum of [0..index] to the results integer
3. result results

=end

def sum_of_sums(arr)
  result = 0
  arr.each_with_index { |_num, idx| result += arr[0..idx].sum }
  result
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35