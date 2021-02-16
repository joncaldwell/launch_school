# arr[2]

# todo_lists = [
#   {
#     id: 1,
#     list_name: 'Groceries',
#     todos: [
#       { id: 1, name: 'Bread', completed: false },
#       { id: 2, name: 'Milk', completed: false },
#       { id: 3, name: 'Apple Juice', completed: false }
#     ]
#   }
# ]

# todo_lists[0][:todos][2][:name] = 'Orange Juice'

# todo_lists = [
#   {
#     id: 1,
#     list_name: 'Groceries',
#     todos: [
#       { id: 1, name: 'Bread', completed: false },
#       { id: 2, name: 'Milk', completed: false },
#       { id: 3, name: 'Apple Juice', completed: false }
#     ]
#   },
#   {
#     id: 2,
#     list_name: 'Homework',
#     todos: [
#       { id: 1, name: 'Math', completed: false },
#       { id: 2, name: 'English', completed: false }
#     ]
#   }
# ]

# a = 'hi'
# english_greetings = ['hello', a, 'good morning']

# array contains pointer to a

# greetings = {
#   french: ['bonjour', 'salut', 'allo'],
#   english: english_greetings,
#   italian: ['buongiorno', 'buonasera', 'ciao']
# }

# greetings[:english][1] = 'hey'

# # new 'hey' object created at [:english][1]

# greetings.each do |language, greeting_list|
#   greeting_list.each { |greeting| greeting.upcase! }
# end

# # all greetings are now UPPERCASE

# puts a                      # hi
# puts english_greetings[1]   # HEY
# puts greetings[:english][1] # HEY

# [['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
#   sub_arr.map do |letter|
#     letter.upcase
#   end
# end

# parent map returns an array with the return values of the sub_arr map method call within in
# sub_arr map call returns transformed sub arrays to parent map call


#### QUESTION 8

# order_data = [
#   {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
#   {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
#   {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
#   {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
#   {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
#   # rest of data...
# ]

# customer_orders = [
#   {
#     customer_id: 12,
#     customer_name: 'Emma Lopez',
#     orders: [
#       { order_fulfilled: true, order_value: 135.99 },
#       { order_fulfilled: true, order_value: 289.49 },
#       { order_fulfilled: false, order_value: 58.00 }
#     ]
#   },
#   {
#     customer_id: 32,
#     customer_name: 'Michael Richards',
#     orders: [
#       { order_fulfilled: true, order_value: 120.00 },
#       { order_fulfilled: false, order_value: 85.65 }
#     ]
#   },
#   # rest of data...
# ]

# SOLUTION 1

# customer_orders = {}

# order_data.each do |row|
#   if customer_orders.has_key?(row[:customer_id])      # check if there's already a customer id in the hash
#     customer_orders[row[:customer_id]][:orders] << [  # if there is, add the order fulfilled and value symbols
#       row[:order_fulfilled],                          # PROBLEM: pushes an array and refers only to the value, doesn't add the symbols
#       row[:order_value]
#     ]
#   else
#     customer_orders[row[:customer_id]] = {
#       customer_id: row[:customer_id],
#       customer_name: row[:customer_name],
#       orders: [
#         [
#           row[:order_fulfilled],
#           row[:order_value]
#         ]
#       ]
#     }
#   end
# end

# customer_orders = customer_orders.values

# temp_orders = {}

# order_data.each do |row|
#   temp_orders[row[:customer_id]] = {              # ERROR temp_orders[12] = { 
#       customer_name: row[:customer_name],
#       customer_id: row[:customer_id],
#       orders: [
#         {
#           order_fulfilled: row[:order_fulfilled],
#           order_value: row[:order_value]
#         }
#       ]
#     }
# end

# customer_orders = temp_orders.values              # ERROR: returns array of values

# customer_orders = order_data.map do |row|
#   {
#     customer_id: row[:customer_id],
#     customer_name: row[:customer_name],
#     orders: [
#       {
#         order_fulfilled: row[:order_fulfilled],
#         order_value: row[:order_value]
#       }
#     ]
#   }
# end

# p customer_orders

# [{:customer_id=>12, :customer_name=>"Emma Lopez", :orders=>[{:order_fulfilled=>true, :order_value=>135.99}]}, {:customer_id=>12, :customer_name=>"Emma Lopez", :orders=>[{:order_fulfilled=>true, :order_value=>289.49}]}, {:customer_id=>12, :customer_name=>"Emma Lopez", :orders=>[{:order_fulfilled=>false, :order_value=>58.0}]}, {:customer_id=>32, :customer_name=>"Michael Richards", :orders=>[{:order_fulfilled=>true, :order_value=>120.0}]}, {:customer_id=>32, :customer_name=>"Michael Richards", :orders=>[{:order_fulfilled=>false, :order_value=>85.65}]}]

# customer_orders = {}

# order_data.each do |row|                                
#   if customer_orders.has_key?(row[:customer_id])        
#     customer_orders[row[:customer_id]][:orders] << {    
#       order_fulfilled: row[:order_fulfilled],
#       order_value: row[:order_value]
#     }
#   else
#     customer_orders[row[:customer_id]] = {
#       customer_id: row[:customer_id],
#       customer_name: row[:customer_name],
#       orders: [
#         {
#           order_fulfilled: row[:order_fulfilled],
#           order_value: row[:order_value]
#         }
#       ]
#     }
#   end
# end

# customer_orders = customer_orders.values

####  QUESTION 9

customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]

# GOAL DATA FORMAT

all_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
  {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
  # rest of data
]

fulfilled_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
  {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
  # rest of data
]

# --------

all_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value]
  end

  all_orders[index][:total_order_value] = order_value
end

1, map method call on customer_orders, return value of array of hashes used in assignment to all_orders
2, hash object opening brackets, so hash object is returned to map for each iteration on customer_orders
3+4, assigned of customer id and customer name to key-value pairs in hash
8, each_with_index iteration on customer orders hash
9, order value variable assigned to return value of reduce(0) called on data[:orders]
10, return value of reduce method call is total + order[:order_value] # refers to symbol, but previously was a variable