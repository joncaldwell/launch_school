=begin

PROBLEM
-take array of integers between 0 and 19, and return array of those integers
sorted based on the English words for each number

implicit reqs
-input will be array from 0 to 19

explicit reqs
-output must be array of integers

EXAMPLES
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

DATA STRUCTURES
input: array of integers
output: array of integers, sorted based on alphabetical value of word for int

during program, will use hash to match integers to strings.
can iterate over the array and replace the numbers with their words
then sort the resulting array, and then convert the words back to ints

ALGORITHM
  - map new array containing the string representations of the integers
    - use a hash to match the key-value pairs
  - sort the word array
  - map another new array, based on the sorted word array to convert those words
   back into integers matching their string values
  - return the new alpha_sorted array

=end

NUMBER_STRINGS = {
  0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
  6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
  12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
  17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
}

def alphabetic_number_sort(number_array)
  number_array.map { |number| NUMBER_STRINGS[number] }.sort.map { |word| NUMBER_STRINGS.key(word) }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# BETTER SOLUTION

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end