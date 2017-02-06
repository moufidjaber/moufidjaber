# Print Welcome
# Define your store with a bunch of foods
# array of items
# 2. Get items from the user
# display items list  (iterator)
# ask user which item to add to his basket
# get items
# create an empty cart
# store to cart
# print the bill (cashier step)
# display cart content
#

require_relative "instacart.rb"

puts "Welcome!"

until action == "exit"
  puts "What would you like to do?"
  puts "Display store items:    store"
  puts "Add items to cart:      add"
  puts "Display cart content:   cart"
  puts "Remove items from cart: remove"
  puts "Leave program:          exit"

  action = gets.chomp
  case action
  when "store"
    display_items(items)


items = {
 "apple" => { price: 1, quantity: 10 },
 "banana" => { price: 8, quantity: 10 },
 "lettuce" => { price: 2, quantity: 10 },
 "beans" => { price: 10, quantity: 10 },
 "chocolate" => { price: 15, quantity: 10 } }
cart = {}
display_items(items)
choice = 'an item'
until choice == ''
  puts "Add your items!"
  print '> '

  choice = gets.chomp
  unless (choice == '' || !items.include?(choice))
    puts 'How many #{choice}s do you want to add?'
    print '> '
    quantity = gets.chomp.to_i
     if quantity > items[choice][:quantity]
      quantity = items[choice][:quantity]
      puts "Sorry only #{quantity} #{choice}s remaining..."
     end
     if cart[choice].nil?
      cart[choice] = quantity
     else
      cart[choice] += quantity
     end
     items[choice][:quantity] -= 1
    end
end

puts "Your cart contains:"
bill_price = 0
cart.keys.each do |item|
  item_price = items[item][:price]
  item_quantity = cart[item]
  subtotal = item_price * item_quantity
  puts "- #{item}: #{item_quantity} x #{item_price}$ = #{subtotal}"
  bill_price += subtotal
end
# Total price: 36$
puts "Total price: #{bill_price}$"
display_items(items)



