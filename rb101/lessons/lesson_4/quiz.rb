# numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
# odd_numbers = []
# number = 0
# p "#{numbers.length}"
# until number == numbers.size
#   odd_numbers << numbers[number] if number.to_i.odd?
#   p "index: #{number} current int: #{numbers[number]} odds: #{odd_numbers}"
#   number += 1
# end

# p numbers
# p odd_numbers

#####

# numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
# odd_numbers = []

# for number in numbers
#   if number.to_i.odd?
#     odd_numbers.push(number)
#   end
# end

# p numbers
# p odd_numbers

# numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
# odd_numbers = []
# counter = 0

# loop do
#   number = numbers[counter].to_i

#   odd_numbers << numbers[counter] unless number.even?

#   counter += 1
#   break if counter == numbers.size
# end

######

# numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
# odd_numbers = []

# numbers.each do |number|
#   odd_numbers << number if number.to_i.odd?
# end

# p numbers
# p odd_numbers

# arr = [1, 2, 3, 4, 5]
# counter = 0

# new_arr = []

# loop do
#   num = arr[counter]
#   if num >= 3
#     new_arr << 0
#   else
#     new_arr << num * 2
#   end

#   counter += 1
#   break if counter == arr.size
# end

# p new_arr
# p arr

# 1. loop through names in mailing_campaign_leads array of hashes
# 2. split names into an array then capitalize each item in names array
# 3. re-join names into a capitalized_full_name variable and update original mailing_campaign_leads data

# 1. loop over leads in list
# 2. in a usable_leads array, add all entries with a last_login under 60 days
#   who is ALSO subscribed
