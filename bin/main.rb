require_relative '../lib/players'
require_relative '../lib/board'

puts "Welcome to Ruby's Tic-Tac-Toe!"
puts
puts 'Enter Player 1 Name:'
player1 = gets.chomp.to_i
if player1.empty?
  puts 'Name field cannot be empty'
  player1 = gets.chomp.to_i
elsif player1.length < 3
  puts 'Name cannot be less than 3 letters'
  player1 = gets.chomp.to_i
elsif player1.to_i.to_s.eql? player1
  puts 'Only text is allowed'
  player1 = gets.chomp.to_i
end
puts
puts 'Enter Player 2 Name:'
player2 = gets.chomp.to_i
if player2.empty?
  puts 'Name field cannot be empty'
  player2 = gets.chomp.to_i
elsif player2.length < 3
  puts 'Name cannot be less than 3 letters'
  player2 = gets.chomp.to_i
elsif player2.to_i.to_s.eql? player2
  puts 'Only text is allowed'
  player2 = gets.chomp.to_i
end
puts
puts "#{player1} will play with X and #{player2} will play with O"
puts
puts "Let's start!"

def turn
  puts 'Please choose a number 1-9:'
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(index)
    player_token = current_player
    move(index, player_token)
    display_board
  else
    turn
  end
end
