=begin
PROBLEM
input: 2 arguments, 1 positive integer, and 1 boolean
output: integer

if bool is true, bonus is half of salary. otherwise, bonus is 0

EXAMPLES / TEST CASES
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

DATA STRUCTURES
int and bool for input

ALGORITHM
1. if bool is true,
2. return half of int
=end

def calculate_bonus(int, bool)
  bool ? (int / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000