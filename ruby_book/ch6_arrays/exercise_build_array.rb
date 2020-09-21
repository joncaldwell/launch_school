arr = []
arr2 = []

10.times { arr.push(rand(1..1000)) }

p "Array #1: " + arr.to_s

arr2 = arr.map { |x| x + 2 }

p "Array #2: " + arr2.to_s