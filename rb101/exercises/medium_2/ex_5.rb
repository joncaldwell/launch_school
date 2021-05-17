def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  largest_angle = angles.max
  sum_of_angles = angles.sum
  
  if sum_of_angles != 180 || angles.include?(0)
    :invalid
  else
    if angles.include?(90)
      :right
    elsif angles.all? { |angle| angle < 90 }
      :acute
    elsif largest_angle > 90
      :obtuse
    end
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid