text_file = ARGV[0]

def split_sentences(text_file)
  sentences = clear_newlines(File.read(text_file))
  sentences.split(/\.|\?|!/)
end

def clear_newlines(text_string)
  text_string.gsub(/\n/,' ').gsub('  ', ' ').gsub('. ', '.')
end

def count_words(sentence)
  sentence.split(' ').length
end

def longest_sentence(text_file)
  array_of_sentences = split_sentences(text_file)
  results = {}
  longest = ''
  
  array_of_sentences.each do |sentence|
    results[sentence] = count_words(sentence)
  end
  
  results.each do |sentence, length|
    longest = sentence if length > count_words(longest)
  end
  
  "The longest sentence is #{count_words(longest)} words long, and is: '" + longest + "'"
end

p longest_sentence(text_file)