=begin
PROBLEM
given a year, return the number of Friday the 13ths in that year

specs
- number of days that are Friday
- and that are the 13th day of that month

EXAMPLES
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

DATA STRUCTURES
input: integer (year)
output: integer (# of Friday the 13ths)

in use
- array to hold days objects

ALGORITHM
- fill array with individual days
- loop over individual days
  - if the current day is a Friday AND the 13th of the month
    - increment counter
- return counter

=end

require 'date'

def friday_13th(year)
  current_day = Time.new(year)
  days = []
  counter = 0
  
  365.times do
    days << current_day
    current_day += (60 * 60 * 24)
  end
  
  days.each do |this_day|
    if this_day.mday == 13 && this_day.friday? then counter += 1 end
  end
  
  p counter
end

friday_13th(2015) #== 3
friday_13th(1986) #== 1
friday_13th(2019) #== 2