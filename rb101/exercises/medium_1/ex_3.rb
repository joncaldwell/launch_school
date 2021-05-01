def toggle_lights(int)
  lights = [true] * int

  flip_lights(lights)

  find_on_lights(lights)
end

def flip_lights(lights_array)
  count = 2

  while count < (lights_array.length + 1)
    lights_array.each_with_index do |light, index|
      lights_array[index] = !light if ((index + 1) % count).zero?
    end
    count += 1
  end

  lights_array
end

def find_on_lights(lights_array)
  result = []
  lights_array.each_with_index do |light, index|
    result << (index + 1) if light
  end
  
  result
end

p toggle_lights(5)
p toggle_lights(1000)
