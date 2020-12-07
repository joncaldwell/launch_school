num = 0
def print_id number
  num = number + 1
  puts "In method object id = #{num.object_id}"
end
puts num
value = 33
puts "Outside method object id = #{value.object_id}"
print_id value
print_id num