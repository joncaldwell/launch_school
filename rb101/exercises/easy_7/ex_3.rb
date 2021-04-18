def swapcase(str)
  characters = str.chars
  
  result = characters.map do |char|
    char_value = char.bytes[0]
    if char_value >= 65 && char_value <= 90
      char.downcase
    elsif char_value >= 97 && char_value <= 122
      char.upcase
    else
      char
    end
  end
  
  result.join
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'