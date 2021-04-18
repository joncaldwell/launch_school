def letter_case_count(string)
  array_of_chars = string.split('')
  lowercase_chars, uppercase_chars, neither_chars = 0, 0, 0
  
  array_of_chars.each do |char|
    if char =~ /[a-z]/ 
      lowercase_chars += 1 
    elsif char =~ /[A-Z]/
      uppercase_chars += 1
    else
      neither_chars += 1
    end
  end
  { lowercase: lowercase_chars, uppercase: uppercase_chars, neither: neither_chars }
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }