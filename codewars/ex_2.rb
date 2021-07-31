def descending_order(n)
  n.to_s.split('').map { |digit| digit.to_i }.sort { |a, b| b <=> a }.map { |digit| digit.to_s }.join.to_i
end

descending_order(1234)
descending_order(59185739)
descending_order(9999999877412994)