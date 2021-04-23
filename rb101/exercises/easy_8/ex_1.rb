def get_word(word_type)
  puts "Enter #{word_type}: "
  word = gets.chomp
  word
end

noun = get_word('noun')
verb = get_word('verb')
adjective = get_word('adjective')
adverb = get_word('adverb')

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."
puts [sentence_1, sentence_2, sentence_3].sample