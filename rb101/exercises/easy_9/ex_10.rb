=begin

PROBLEM
Take array of words and print out all the words that are anagrams of one another


EXAMPLES
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
anagrams(words) == ["demo", "dome", "mode"]
["neon", "none"]
#(etc)

DATA STRUCTURES

convert each word into a sorted list of characters, make a hash key for that 
set of chars. all words are put in there together
boolean variable for matching

ALGORITHM
- create empty anagram hash
- for each word in the array, create a key
  - split the characters and sort them, then join
  - check if the hash already contains a key of that value
    - if yes, add this word to that key's array
    - if not, create the new key and array with this word in it
- iterate over the hash's key values and return each key's array value
=end

def all_anagrams(array_of_words)
  anagrams = {}
  
  array_of_words.each do |word|
    sorted_word = word.split('').sort.join
    if anagrams.has_key?("#{sorted_word}")
      anagrams["#{sorted_word}"].push(word)
    else
      anagrams["#{sorted_word}"] = [word]
    end
  end
  
  anagrams.each do |sorted_word, words|
    puts "Sorted word: #{sorted_word}. Anagram words: "
    words.each { |word| puts "-> " + word }
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p all_anagrams(words)