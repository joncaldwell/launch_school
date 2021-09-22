def center_of(string)
  length = string.length
  mid = length / 2
  
  if length.even?
    string[mid - 1..mid]
  else
    string[mid]
  end
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool') #== 'hs'
p center_of('x')# == 'x'