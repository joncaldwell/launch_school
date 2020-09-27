arr = []

for i in 1..10 do
  arr.push(i)
end

arr.each do |x|
  if x > 5
    puts x
  end 
end 

arr2 = arr.select { |x| x % 2 == 1 }

puts arr2

arr.push(11)
arr.unshift(0)

arr.pop
arr.push(3)
arr.uniq!

puts arr