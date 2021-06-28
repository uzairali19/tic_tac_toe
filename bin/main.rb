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

game = GameBoard.new

game.board_layout

puts "#{player1} starts the game!"

while game.over? == false
  player_token = game.current_player
  case player_token
  when 'X'
    puts "It's #{player1}'s turn"
  when 'O'
    puts "It's #{player2}'s turn"
  end
  puts 'Please choose a number 1-9:'
  user_input = gets.chomp.to_i
  index = game.input_to_index(user_input)
  if game.valid_move?(index)
    game.move(index, player_token)
    game.board_layout
    if game.won?
      puts "Congratulations #{game.winner(player1, player2)}!"
    elsif game.draw?
      puts 'Game Draw! Good Luck Next Time'
    end
  elsif game.valid_move?(index) == false
    puts 'Invalid move. The cell should not be filled and the number can be only between 1-9'
  end
end
