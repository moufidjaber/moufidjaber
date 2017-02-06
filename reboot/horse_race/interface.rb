# five horses running
# bet
# race with 4 laps
# speaker announces each lap & winner
# horses order varies each lap
#
# -----
# horses = ["John", "Paul", "Ringo", "George", "Fred"]

# print "Welcome to the race"
# print "Which horse do you pick? (John, Paul, George, Ringo or Fred?"
# # as numbers/index
# pick = gets.chomp
# # as name or number
# if pick = horses.sample
#   puts "You win!"
# else
#   puts "You lose!"
# end
# ------
require_relative "race.rb"
# pseudo code
# 1. print welcome
puts "Welcome to the race!"
# 2. get horses
horses = ["John", "Paul", "Ringo", "George", "Fred"]

# store 5 names in array
# Get user's bet
# display horses list (iterator)
display_horses(horses)

# 1 - Flying socket
# 2 - ...
# ask user which horse is the winner
puts "Pick your horse"
print '> '
number = gets.chomp.to_i
# get horse name with index
pick = horses[number - 1]
shuffled = []
puts pick
# store horse name
# Run the race
shuffled = run_race(horses)
if pick == shuffled.first
   puts "#{pick} wins the race, so do you!"
else
   puts "#{shuffled.first} wins the race. You lose!"
end

# first_lap = horses.shuffle
# print first_lap.each_with_index do {|horse, index| puts "#{index + 1} - #{horse}"}
# # Each lap, shuffle the array
# second_lap = first_lap.shuffle
# print second_lap.each_with_index do {|horse, index| puts "#{index + 1} - #{horse}"}
# third_lap = second_lap.shuffle
# print third_lap.each_with_index do {|horse, index| puts "#{index + 1} - #{horse}"}
# fourth_lap = third_lap.shuffle
# print fourth_lap.each_with_index do {|horse, index| puts "#{index + 1} - #{horse}"}
# # display horse order (iterator)
# result = fourth_lap.each_with_index {|horse, index| puts "#{index + 1} - #{horse}"}
# # Print results
# print result
# #compare user bet with first horse of list
# if pick = fourth_lap.first
#   return "You win!"
# else
#   return "You lose!"
# end

# if user wins diplays You win

# else diplay he loses


