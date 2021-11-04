def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  
  if angles.sum == 180 && angles.all? { |n| n > 0 }
    if angles.max > 90 then :obtuse
    elsif angles.include?(90) then :right
    elsif angles.all? { |n| n < 90 } then :acute
    end
  else 
    :invalid
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid