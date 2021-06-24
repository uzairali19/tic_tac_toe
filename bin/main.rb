require_relative '../lib/players'
require_relative '../lib/board'

puts "Welcome to Ruby's Tic-Tac-Toe!"
puts
puts 'Enter Player 1 Name:'
player1 = gets.chomp
if player1.empty?
  puts 'Name field cannot be empty'
  player1 = gets.chomp
elsif player1.length < 3
  puts 'Name cannot be less than 3 letters'
  player1 = gets.chomp
elsif player1.to_i.to_s.eql? player1
  puts 'Only text is allowed'
  player1 = gets.chomp
end
puts
puts 'Enter Player 2 Name:'
player2 = gets.chomp
if player2.empty?
  puts 'Name field cannot be empty'
  player2 = gets.chomp
elsif player2.length < 3
  puts 'Name cannot be less than 3 letters'
  player2 = gets.chomp
elsif player2.to_i.to_s.eql? player2
  puts 'Only text is allowed'
  player2 = gets.chomp
end
puts
puts "#{player1} will play with X and #{player2} will play with O"
puts
puts "Let's start!"
