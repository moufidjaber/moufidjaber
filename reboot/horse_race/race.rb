def display_horses(horses)
  horses.each_with_index do |horse, index|
   puts "#{index + 1} - #{horse}"
 end
end

def run_race(horses)
  shuffled = []
  4.times do |lap|
    # Each lap, shuffle the array
    shuffled = horses.shuffle
    puts "Here is the ranking at lap #{lap + 1}:"
    display_horses(shuffled)
    sleep 2
    puts ''
  end
  return shuffled
end



