def longest_sentence(file_name)
  text = File.read(file_name)
  sentences = text.split(/\.|\?|!/)
  lengths = []
  
  sentences.each do |sentence|
    lengths << sentence.split(' ').count
  end
  
  lengths.max
end

p longest_sentence('frankenstein')