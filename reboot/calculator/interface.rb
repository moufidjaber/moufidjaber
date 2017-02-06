# Ask user a first number
# Store first number
# ask another number
# store second number
# compute sum of the 2 numbers
# display result

# def addition
#   puts "Enter a first number"
#   first_number = gets.chomp
#   puts "Enter a second number"
#   second_number = gets.chomp
#   sum == first_number + second_number
#   puts "the sum is #{sum}"
# end

require_relative "calculator.rb"

answer = 'y'

while answer == 'y'
  puts 'First number?'
  print '> '
  first_number = gets.chomp.to_i
  puts 'Second number?'
  print '> '
  second_number = gets.chomp.to_i
  puts "Which operation? (+, -, x, /)?"
  print '> '
  operator = gets.chomp
  result = calculator(first_number, second_number, operator)
  puts "the result is #{result}"
  puts "Compute again? y/n"
  print '> '
  answer = gets.chomp
end

