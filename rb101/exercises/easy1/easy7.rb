=begin
input: positive integer
output: string of 1s and 0s, starting with a 1

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

DATA STRUCTURES
integer for input
array for looping until length of integer and storing characters
boolean for determing if 0 or 1 should be added to array

ALGORITHM
1. for each number up until input integer,
2. << pipe in a value of 1 or 0
3. select 1 or based on bool that changes each time
=end

def stringy_old(int)
  idx = 0
  num = 1
  output = []
  
  while idx < int
    output[idx] = num
    if num == 1
      num = 0
    else
      num = 1
    end
    idx += 1
  end
  output.join
end

# Launch School answer, with Further Exploration done
def stringy(int, order=1)
  output = []
  
  int.times do |index|
    if order == 1
      number = index.even? ? 1 : 0
    elsif order == 0
      number = index.even? ? 0 : 1
    end
    # 0 is considered an even number, so the element at the first index would become a 1
    output << number
  end
  output.join
end

puts stringy(6, 0)
puts stringy(9)
puts stringy(4)
puts stringy(7)