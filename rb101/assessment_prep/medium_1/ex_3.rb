=begin
1000 lights

PROBLEM
take integer, total number of switches, and identify which lights are on after
n repetitions of:

  - toggle lights that are multiples of 1..n
  - increment n by 1 for each pass

EXAMPLES

n = 5
x: light off
o: light on

0: xxxxx
1: ooooo
2: oxoxo
3: oxxxo
4: oxxoo
5: oxxox

return value of [1, 4]

DATA STRUCTURES
input: integer
output: array

in between, better to use hash or array?

hash would have to track two values, not as handy for ordered lists as arrays
array could be full of boolean values indicating their state, true for on, false
for off

ALGORITHM

- initialize a light array of false values equal to the length of count
- iterate over light array
  - if the current index is a multiple of the Enumerator,
    flip its value to the opposite boolean
- iterate over array of lights once finished
  - if the value is true, add that index to a result array
- return the result array

=end

def init_lights_array(count)
  result = []
  count.times { result << false }
  result
end

def flip_switches!(lights_array, multiple)
  lights_array.each_with_index do |light, index|
    if ((index + 1) % multiple).zero? then lights_array[index] = !light end
  end
end

def count_on_lights(lights_array)
  result = []

  lights_array.each_with_index do |light, index|
    if light == true then result << index + 1 end
  end

  result
end

def lightswitches(count)
  lights = init_lights_array(count)
  iterator = 1

  count.times do
    flip_switches!(lights, iterator)
    iterator += 1
  end

  count_on_lights(lights)
end

p lightswitches(5)
p lightswitches(10)
p lightswitches(1000)