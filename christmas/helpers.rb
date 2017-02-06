def ask_user_for(info)
  puts ""
  puts "#{info.capitalize} of the gift:"
  print "> "
  return gets.chomp
end

def ask_user_for_index(giftlist)
  puts ''
  puts 'Which one?'
  print '> '
  number = gets.chomp
  if number =~ /\A\d+\z/ && number.to_i > 0 && number.to_i <= giftlist.size
    return number.to_i - 1
  else
    puts 'No gift at this index, try again...'
    ask_user_for_index(giftlist)
  end
end

def display_giftlist(giftlist, etsy=false)
  if giftlist.empty?
    puts ''
    puts 'Your giftlist is empty'
  else
    puts ''
    if etsy
      puts 'Here are gift ideas from etsy:'
    else
      puts 'Here is my giftlist:'
    end
    giftlist.each_with_index do |gift, index|
      mark = gift[:bought] ? '[X]' : '[ ]'
      puts "#{index + 1} - #{gift[:name]} #{gift[:price]}€ #{mark unless etsy}"
    end
  end
end

# def save_giftlist(giftlist)
#   csv_options = { col_sep: ',', force_quotes: true, quote_char:'"' }
#   filepath = 'giftlist.csv'

#   CSV.open(filepath, 'wb', csv_options) do |csv|
#     csv << ['name', 'price', 'bought']
#     giftlist.each do
