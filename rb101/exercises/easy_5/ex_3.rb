def swap(str)
  words = str.split(' ')
  
  swapped_words = words.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  
  swapped_words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'