=begin

PROBLEM
take a string and return a hash with % of each lower, upper, and neither case chars

EXAMPLES
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

DATA STRUCTURES
input: string
output: hash

no need for arrays as intermediary, use string methods to search for regex pattern
matching upper/lower case letters, store value in the hash and then modify
at the end by dividing with total count

ALGORITHM
1. initialize count variable and hash with lowercase, uppercase, and neither keys
2. split string into array of chars
3. cycle through each char, compare to constants UPPERCASE and LOWERCASE
4. increment the count and the correct key in hash
5. divide the individual counts in the keys by the total count value
6. return the hash

=end

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def letter_percentages(string)
  length = string.length
  percentages = {
    lowercase: 0,
    uppercase: 0,
    neither:   0
  }
  
  characters = string.chars
  
  characters.each do |char|
    if UPPERCASE.include?(char)
      percentages[:uppercase] += 1
    elsif LOWERCASE.include?(char)
      percentages[:lowercase] += 1
    else
      percentages[:neither] += 1
    end
  end
  
  percentages.each do |character_class, value|
    percentages[character_class] = value / length.to_f * 100
  end
  
  percentages
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }