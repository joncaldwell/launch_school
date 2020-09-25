def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "Nothing here."
  end
end

has_a_b?(gets.chomp)