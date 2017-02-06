require_relative 'helpers.rb'
require_relative 'scraper.rb'

puts "************************************"
puts "Welcome to Le Wagon Giftlist program"
puts "************************************"
puts ""
giftlist = []
action = "list"
until action == "exit"
  puts ""
  puts "What do you want to do?"
  puts ""
  puts "  - list: display my giftlist"
  puts "  - add: add a gift to my list"
  puts "  - etsy: add a gift from Etsy"
  puts "  - remove: remove a gift from my list"
  puts "  - mark: tick or untick a gift as bought"
  puts "  - exit: exit the program"
  print '> '
  action = gets.chomp

  case action
  when "list"
    display_giftlist(giftlist)
  when "add"
    name = ask_user_for('name')
    price = ask_user_for('price')
    if price =~ /\A\d+\z/
      price = price.to_i
      gift = { name: name, price: price, bought: false }
      giftlist << gift
    else
      puts 'You must enter a valid price!'
    end
  when "etsy"
    idea = ask_user_for("search keyword")
    products = scraper(idea)
    display_giftlist(products, true)
    answer = 'y'
    while answer == 'y'
      index = ask_user_for_index(products)
      product = products[index]
      giftlist << product
      puts ''
      puts 'Add another product? y/n:'
      print '> '
      answer = gets.chomp
    end
  when "remove"
    display_giftlist(giftlist)
    index = ask_user_for_index(giftlist)
    removed_gift = giftlist.delete_at(index)
    puts ''
    puts "#{removed_gift[:name]} has been successfully removed"
  when "mark"
    display_giftlist(giftlist)
    index = ask_user_for_index(giftlist)
    giftlist[index][:bought] = !giftlist[index][:bought]
  when "exit"
    # store giftlist as a CSV file
  else
    puts ''
    puts 'Unknown action, try again...'
    puts ''
  end
end

# require CSV
# csv_options = { col_sep: ',', force_quotes: }
