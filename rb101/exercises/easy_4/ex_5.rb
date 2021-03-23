# store multiples of 3 and 5 between 1 and num in array
# sum all elements of array
require 'pry'

def multisum(num)
  arr = []
  (1..num).each do |idx|
    if idx % 3 == 0 || idx % 5 == 0
      arr.push(idx)
    end
  end
  
  arr.sum
end

def multisum2(num)
  (0..num).inject do |sum, number|
    if number % 3 == 0 || number % 5 == 0
      sum + number
    else
      sum + 0
    end
  end
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

p multisum2(3) == 3
p multisum2(5) == 8
p multisum2(10) == 33
p multisum2(1000) == 234168