def uppercase?(string)
  all_upper = true
  chars = string.chars
  
  chars.each { |char| if char.upcase != char then all_upper = false end }
  
  all_upper
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true