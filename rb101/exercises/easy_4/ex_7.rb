def string_to_integer(str)
  # input: string of number characters
  # output: integer with the right numbers
  str.split('').map do |num|
    if num.
  end
end

# ALGORITHM

# 1. split characters into array
# 2. evaluate ASCII value of each character and convert it to the right digit integer
# 3. merge the digits into a single integer (array.join returns a string, so it wont work here)
# 4. return the new integers

p string_to_integer('1234')
p string_to_integer('570')
p string_to_integer('4321')