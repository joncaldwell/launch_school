def palindromic_number?(int)
  int.to_s.reverse == int.to_s
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(505) == true