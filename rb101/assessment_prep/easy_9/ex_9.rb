def buy_fruit(grocery_list)
  arr = []
  grocery_list.each { |list_item| list_item[1].times { arr << list_item[0] } }
  arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  #["apples", "apples", "apples", "orange", "bananas","bananas"]