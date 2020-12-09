def compute_sum(int)
  (1..int).inject(:+)
end

def compute_product(int)
  (1..int).inject(:*)
end

number = 0

loop do
  puts "Int above 0: "
  number = gets.chomp.to_i
  if number > 0
    break
  end
end

loop do
  puts "Enter 's' for sum, 'p' for product."
  sum_or_product = gets.chomp
  if sum_or_product.downcase == 's'
    sum = compute_sum(number)
    puts "The sum of the integers between 1 and #{number} is #{sum}."
    break
  elsif sum_or_product.downcase == 'p'
    product = compute_product(number)
    puts "The product of the integers between 1 and #{number} is #{product}."
    break
  end
end