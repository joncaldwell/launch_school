require 'pry'

def high(string)
  words = string.split
  scores = []
  
  words.each do |word|
    letters = word.split
    
    word_score = 0
    
    letters.each do |letter|
      word_score += letter_score(letter)
    end
    
    scores << word_score
  end

  words[scores.index(scores.max)]
end

def letter_score(letter)
  letter.bytes[0] - 96
end

p high('man i need a taxi up to ubud')
p high('what time are we climbing up the volcano')
p high('take me to semynak')
p high('aa b')
p high('b aa')
p high('bb d')
p high('d bb')
p high('aaa b')