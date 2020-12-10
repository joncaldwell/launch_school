def palindrome?(obj)
  obj.reverse == obj
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

puts palindrome?([1, 2, 3, 2, 1])
puts palindrome?([1, 2, 3, 4, 2, 1])