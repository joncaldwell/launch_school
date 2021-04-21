UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a
NUMBERS = ('0'..'9').to_a

def staggered_case(str)
  characters = str.chars
  
  result = []
  
  uppercase = true
  
  characters.each_with_index do |char, idx|
    if idx == 0
      result << char.upcase
    elsif uppercase
      result << char.upcase
    else
      result << char.downcase
    end
    
    if UPPERCASE.include?(char) || LOWERCASE.include?(char)
      uppercase = !uppercase
    end
  end
  
  result.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'