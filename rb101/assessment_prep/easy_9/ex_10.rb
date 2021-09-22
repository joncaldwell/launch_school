def anagrams(array_of_words)
  hash = {}
  
  array_of_words.each do |word|
    sorted_word = word.split('').sort.join
    if hash[sorted_word.to_sym] == nil
      hash[sorted_word.to_sym] = [word]
    else 
      hash[sorted_word.to_sym] << word
    end
  end
  
  hash.each do |key, value|
    p value
  end
end

=begin
use a hash to match the word with the sorted string value of itself
iterate on each key and then compare its value to all the other keys' values

the key is the sorted value of the word, meaning that it would match words that
were anagrams of eachother. the value for the key is simply an array, to which
you append any words that have a matching key (sorted string value). for any
sorted string values that don't have an existing key, created a new one

print out arrays. each array is for a different value which has matching keys

=end

anagrams(['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon'])