a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

one_word = a

one_word.map! do |x|
  x.split(" ")
end 

one_word.flatten!.sort!

p one_word