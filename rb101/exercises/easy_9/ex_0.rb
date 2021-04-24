def greetings(name, profession)
  name = name.join(' ')
  title = profession[:title]
  occupation = profession[:occupation]
  puts "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })