def time_of_day(bool)
  puts "It's daytime!" if bool == true
  puts "It's nighttime!" if bool == false
end

10.times do 
  daylight = [true, false].sample
  time_of_day(daylight)
end