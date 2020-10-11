words = "car human elephant airplane"

arr = words.split(" ")

arr.each do |x|
  puts x << "s"
end