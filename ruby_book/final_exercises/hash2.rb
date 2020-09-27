h = {a:1, b:2, c:3, d:4}


# 1
h[:e] = 5

# 2
puts h[:b]
puts h[:e]

# 3

h.delete_if { |k,v| v < 3.5 }

puts h