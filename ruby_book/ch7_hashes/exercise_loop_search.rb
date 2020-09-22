hash = {}

10.times { |x| hash.store(x, rand(1..10)) }

puts "KEYS: " 
hash.each do |k, v|
  print(k," ")
end

puts "\n\nVALUES"
hash.each do |k, v|
  print(v," ")
end

puts "\n\nKEYS AND VALUES: "
hash.each do |k, v|
  puts "#{k}: #{v}"
end

print "\n\nEnter a value to find: "
val = gets.chomp.to_i

puts hash.value?(val)