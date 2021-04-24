def buy_fruit(grocery_list)
  result = []
  
  grocery_list.each do |fruit|
    fruit[1].times { result << fruit[0] }
  end
  
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]