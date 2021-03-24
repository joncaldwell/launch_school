# def running_total(arr)
#   total_array = []
#   current_total = 0
#   arr.each do |num|
#     current_total += num
#     total_array.push(current_total)
#   end
#   total_array
# end

# BETTER SOLUTION

# def running_total(arr)
#   sum = 0
#   arr.map { |value| sum += value }
# end

# EACH_WITH_OBJECT

def running_total(arr)
  sum = 0
  arr.each_with_object([]) { |num, result_arr| result_arr << sum += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []