names = ['bob', "joe", "steve", nil, 0, "frank"]

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "RUH ROH!"
  end
end
