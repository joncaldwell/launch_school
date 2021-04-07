# ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

# def word_sizes(str)
#   result = Hash.new(0)
  
#   str.split(' ').each do |word|
#     letter_count = 0
    
#     word.split('').each do |character|
#       if ALPHABET.include?(character)
#         letter_count += 1
#       end
#     end
    
#     result[letter_count] += 1
#   end
  
#   result
# end

### BETTER SOLUTION

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end
  
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}