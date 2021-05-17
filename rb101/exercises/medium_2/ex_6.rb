=begin
PROBLEM
given a year, return the number of Friday the 13ths in that year

EXAMPLES
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

DATA STRUCTURES
input: integer (year)
output: integer (count of Friday the 13ths)

array to store date values
count variable to store count of Friday the 13ths

ALGORITHM
- create array of days of the year, empty at start; count variable set to 0
- assign Time.new to first_day variable, current_day variable set to 0
- push first_day variable into days array
- increment current_day variable by 3600 * 24 and add to days array
- check if current_day is a Friday and the 13th of the month
  - if yes, increment count variable
=end

SECONDS_PER_DAY = 86400

def friday_13th(year)
  date = Time.new(year)
  count = 0

  364.times do
    count += 1 if date.friday? && date.mday == 13

    date += SECONDS_PER_DAY
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
