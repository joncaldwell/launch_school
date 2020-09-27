arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

p arr

arr.delete_if { |x| x.start_with?("s", "w") }

p arr