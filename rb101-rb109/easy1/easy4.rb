
=begin
input: array
output: string in format "VEHICLE => COUNT"

Examples / Test Cases
car => 4
truck => 3
SUV => 1
motorcycle => 2

Data Structures
array
hash with results, output as a string

Algorithm
1. create array of unique elements from input array
2. for each element in the unique elements array, use Array.count to get the count
3. output element name and " => " and count

=end
def count_occurrences(arr)
  occurrences = {}
  
  arr.uniq.each do |element| 
    occurrences[element] = arr.count(element)
  end
  
  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end  
  
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)