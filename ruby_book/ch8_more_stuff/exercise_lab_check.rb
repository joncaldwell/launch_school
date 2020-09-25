def has_lab?(string)
  if /lab/.match(string)
    puts "#{string} contains lab!"
  else
    puts "#{string} is no match"
  end
end

lab_check = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

lab_check.each { |word| has_lab?(word) }