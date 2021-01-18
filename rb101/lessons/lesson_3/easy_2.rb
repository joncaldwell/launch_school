# q1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.any? { |k, v| k == "Spot" }
puts ages.key?("Spot")

# q2

munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.swapcase
puts munsters_description.capitalize
puts munsters_description.downcase
puts munsters_description.upcase

# q3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

p ages

# q4

advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.include?("Dino")
puts advice.match?("dino")

# q5

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones

# q6

flintstones << "Dino"
p flintstones

# q7

flintstones.concat(%w(Dino Hoppy))
p flintstones

# q8

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.slice(0..38)
p advice

puts advice.slice!(0, advice.index('as'))
p advice

# q9

statement = "The Flintstones Rock!"

puts statement.count("t")

# q10

title = " Flintstone Family Members "

title = title.center(50, "=")
p title