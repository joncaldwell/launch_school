def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  rows.last.sum # TODO: sum the final row and return sum
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop do
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  return row
end

# row number: 1 --> sum of ints in row: 2
# row number: 2 --> sum of ints in row: 10
# row number: 4 --> sum of ints in row: 68

p sum_even_number_row(1) == 2 # true
p sum_even_number_row(2) == 10 # true
p sum_even_number_row(4) == 68 # true

# 1. Create empty "rows" array to contain all of the rows
# 2. Create a "row" array and add it to the overall "rows" array
# 3. Repeat step 2 until all necessary rows have been created
#   - All rows have been created when the length of the rows array is equal to input int
# 4. Sum final row
# 5. Return sum

# Calculating the start integer:
# Rule: First integer of row == last integer of preceding row + 2
# Algorithm:
#   - Get the last row of the rows array
#   - Get last integer of that row
#   - Add 2 to the integer

# start: 2, length: 1 --> [2]
# start: 4, length: 2 --> [4, 6]
# start: 8, length: 3 --> [8, 10, 12]

p create_row(2, 1) == [2] # true
p create_row(4, 2) == [4, 6] # true
p create_row(8, 3) == [8, 10, 12] # true

# 1. Create empty 'row' array to contain ints
# 2. Add starting int
# 3. Increment starting int by 2 to get next int in sequence
# 4. Repeat steps 2 + 3 until array has reached correct length
# 5. Return row array

# Start the loop
#   - Add start int to the row
#   - Increment the start integer by 2
#   - Break out of the loop if length of row equals row_length