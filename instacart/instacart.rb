def display_items(items)
  items.keys.each do |item|
  puts "- #{item}, remaining quantity: #{items[item][:quantity]}"
 end
end
