names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(arr)
  arr.sample
end

def activity(arr)
  arr.sample
end

def sentence(person, sport)
  return "#{person} went #{sport} today!"
end

puts sentence(name(names), activity(activities))