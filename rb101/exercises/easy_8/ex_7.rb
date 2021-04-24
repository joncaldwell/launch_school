def double_consonants(str)
  result = str.chars.map do |character|
    if character =~ /[bcdfghjklmnpqrstvwxyz]/i
      character * 2
    else
      character
    end
  end
  result.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""