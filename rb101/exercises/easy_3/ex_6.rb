def xor_inccorect(cond1, cond2)
  if cond1 == true && cond2 == false
    return true
  elsif cond1 == false && cond2 == true
    return true
  else
    return false
  end
end

# CORRECTION
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

puts xor?(4.even?, 4.odd?) == false