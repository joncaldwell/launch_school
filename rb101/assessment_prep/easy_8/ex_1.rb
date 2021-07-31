require 'pry'

def madlibs
  prompt_word(:noun)
  word_noun = gets.chomp
  
  prompt_word(:verb)
  verb = gets.chomp
  
  prompt_word(:adjective)
  adjective = gets.chomp
  
  prompt_word(:adverb)
  adverb = gets.chomp
  
  puts "Do you #{verb} your #{adjective} #{word_noun} #{adverb}? That's great!"
end

def prompt_word(word_type)
  result = nil
  
  case word_type
  when :noun
    result = "a noun"
  when :verb
    result = "a verb"
  when :adjective
    result = "an adjective"
  when :adverb
    result = "an adverb"
  else
    return "ERROR: Incorrect data type. Please pass in a symbol."
  end
  
  puts "Enter #{result}:"
end

madlibs
