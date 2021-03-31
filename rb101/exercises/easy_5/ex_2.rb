def time_of_day(minutes)
  time_arr_to_time_string(minutes.divmod(60))
end

def time_arr_to_time_string(time_arr)
  hour = time_arr[0]
  minutes = time_arr[1]

  hour += 24 while hour <= 0

  hour -= 24 while hour >= 24

  hour = hour.to_s.prepend('0') unless hour > 9
  minutes = minutes.to_s.prepend('0') unless minutes > 9

  "#{hour}:#{minutes}"
end

=begin

PROBLEM
- make two methods that take a string representing the time in 24h format, 
and return an integer of the minutes before or after midnight

EXAMPLES / TEST CASES

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

DATA STRUCTURES
- input: string with 5 characters, hours before : and minutes after :
- output: integer from 0..1439 representing the number of minutes before or after midnight
- array with two elements, splitting 

ALGORITHM
1. split time string into array with hours and minutes
2. convert elements in array into integers
3. based on if it's before or after midnight method, convert the hours into minutes and add or subtract
4. add/subtract the remaining minutes
5. return the value

=end

MINUTES_PER_DAY = 60 * 24

def convert_time_string_to_minutes(time_string)
  arr = time_string.split(':').map { |element| element.to_i }
  (arr[0] * 60) + arr[1]
end

def after_midnight(time_string)
  minutes = convert_time_string_to_minutes(time_string)
  if minutes == MINUTES_PER_DAY
    0
  else
    minutes
  end
end

def before_midnight(time_string)
  minutes = convert_time_string_to_minutes(time_string)
  if minutes == 0 || minutes == MINUTES_PER_DAY
    0
  else
    MINUTES_PER_DAY - minutes
  end
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0