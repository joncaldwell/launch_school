def double_quiet(string)
  string.downcase!
  p string.object_id
  string + string
  p string.object_id
end

instruction = "SHHH"
p "instruction: " + instruction.object_id.to_s
double_quiet(instruction)

puts instruction