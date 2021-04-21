def show_multiplicative_average(array_of_ints)
  result = (array_of_ints.reduce(:*).to_f / array_of_ints.count.to_f)
  puts "The result is #{format('%0.3f', result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667