=begin
PROBLEM
given a string, return a hash with 3 key-value pairs:
  - % of chars that are lowercase
  - % of chars that are uppercase
  - % of chars that are neither

EXAMPLES
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

DATA STRUCTURES
input: string
output: hash

ALGORITHM
- init counters for each category
- split string into chars
- iterate over chars
  - if char is uppercase (use String#match), increment uppercase counter by 1
  - if char is lowercase, increment lowercase counter by 1
  - else, increment neither counter by 1
- return hash with keys and counter values
=end

def letter_percentages(str)
  lowercase, uppercase, neither = 0.0, 0.0, 0.0
  total = str.length

  letters = str.chars

  letters.each do |letter|
    if letter.match?(/[a-z]/) then lowercase += 1
    elsif letter.match?(/[A-Z]/) then uppercase += 1
    else
      neither += 1
    end
  end
  
  {
    lowercase:  (lowercase / total * 100),
    uppercase:  (uppercase / total * 100),
    neither:    (neither / total * 100)
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }