# def select_fruit(hash)
#   produce_arr = hash.to_a
#   fruits = []
#   counter = 0
  
#   loop do
#     break if counter == produce_arr.size
    
#     if produce_arr[counter][1] == 'Fruit'
#       fruits << produce_arr[counter]
#     end
    
#     counter += 1
#   end
  
#   fruits.to_h
# end

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}


# ### PROPER ANSWER

# def select_fruit_1(produce_list)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_fruits = {}
#   p produce_keys
#   loop do
#     # this has to be at the top in case produce_list is empty hash
#     break if counter == produce_keys.size

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value == 'Fruit'
#       selected_fruits[current_key] = current_value
#     end

#     counter += 1
#   end

#   selected_fruits
# end

# select_fruit_1(produce)


def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = {}
  
  loop do
    break if counter == produce_keys.size
    
    current_key = produce_keys[counter]
    current_value = produce_list[current_key]
    
    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end
    
    counter += 1
  end
  
  selected_produce
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
p general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
p general_select(produce, 'Meat')      # => {}