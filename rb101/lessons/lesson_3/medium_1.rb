# q1

10.times { |x| puts (" " * x) + "The Flintstones Rock!" }

# q2

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# q3

def factors(number)
  divisor = number
  factors = []

  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# q4 - there is a difference, one method mutates the calling buffer array
# the other doesn't

# q5

limit = 100

def fib(first_num, second_num, max_number)
  while first_num + second_num < max_number
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
    puts sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# q6 - 34

# q7

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  puts "Input hash object id: #{demo_hash.object_id}"
  new_hash = demo_hash.clone
  puts "New hash object id: #{new_hash.object_id}"
  new_hash.values.each do |family_member|
    puts "#{family_member} object id: #{family_member.object_id}"
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

p munsters

# q8 - "paper"

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# q9 - "no"

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

