def crunch(str)
  characters = str.chars
  result = []
  
  characters.each_with_index do |char, idx|
    if characters[idx + 1] != char then result << char end
  end
  
  result.join
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''