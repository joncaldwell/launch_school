def twice(number)
  digits = number.digits
  length = digits.length
  middle = digits.length / 2 - 1
  left_side = digits[0..middle]
  right_side = digits[middle + 1..length - 1]
  
  if length > 1 && left_side == right_side
    number
  else
    number * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10