10.times do 
  sun = ["visible", "hidden"].sample
  
  unless sun == "visible"
    puts "The clouds are blocking the sun!"
  end
end