=begin

PROBLEM
- take floating point number and convert to a string that represents the angle
in degrees, minutes, and seconds

explicit reqs
- input will be float: 76.73
- output must be in format: 30°03'48"
- make the minutes and second have leading zeroes if they are single digits

implicit reqs
- no negative numbers will be provided

EXAMPLES
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")



DATA STRUCTURES
input: float
output: formatted string

Degree has 60 minutes, while a minute has 60 seconds

1 degree = 60 minutes = 3600 seconds
1 minutes = 60 seconds
1 second = 1/60 minutes = 1/3600 degrees

ALGORITHM
remainder of division by 60 mutiplied by the float provided

float = remainder from main degrees number
degrees = num.to_i
remainder = 
minutes = (60 * float).to_i # this rounds down
seconds = (60 * float % 1 * 60).round(0).to_i # this rounds to nearest second

=end

DEGREE = "\xC2\xB0"

def dms(number)
  degrees = number.to_i
  remainder = number - degrees
  
  minutes = (60 * remainder).to_i
  seconds = (60 * remainder % 1 * 60).round(0).to_i
  
  if seconds == 60
    seconds = 0
    minutes += 1
  end
  
  "#{degrees}#{DEGREE}#{"%02d" % minutes}'#{"%02d" % seconds}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")