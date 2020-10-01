count = 1

while count <= 5
  if count.odd?
    puts count.to_s + " is odd!"
  else
    puts count.to_s + " is even!"
  end 
  count += 1
end