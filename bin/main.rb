class Player
  attr_accessor :player1, :player2

  def initialize
    @player1 = :player1
    @player2 = :player2
  end
end

puts "Welcome to Ruby's Tic-Tac-Toe!"
puts
puts 'Enter Player 1 Name:'
player1 = gets.chomp
puts
puts 'Enter Player 2 Name:'
player2 = gets.chomp
puts
puts "#{player1} will play with X and #{player2} will play with O"
puts
puts "Let's start!"

board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts board_layout = " +---+---+---+
 | #{board[0]} | #{board[1]} | #{board[2]} |
 +---+---+---+
 | #{board[3]} | #{board[4]} | #{board[5]} |
 +---+---+---+
 | #{board[6]} | #{board[7]} | #{board[8]} |
 +---+---+---+"

puts "It's #{player1}'s turn"
puts 'Please select an available number from the board'
puts
num = gets.chomp.to_i
puts
if num <= 9 || num >= 1
  num
else
  'Invalid entry'
end

puts board_layout
puts "It's #{player2}'s turn"
puts 'Please select an available number from the board'
puts
second_num = gets.chomp.to_i
puts
if second_num <= 9 || second_num >= 1
  second_num
elsif second_num == num
  'You entered a duplicate number'
else
  'Invalid entry'
end

game_on = true

while game_on
  puts board_layout
  number = gets.chomp.to_i
  first_player = [1, 2, 3].include? number
  second_player = [4, 5, 6].include? number
  if first_player || second_player
    game_on = false
  else
    game_on = true
    if first_player
      puts 'Game over!'
      puts "The winner is #{player1}!"
      game_on = false
    elsif second_player
      puts 'Game over!'
      puts "The winner is #{player2}!"
      game_on = false
    else
      puts "It's tie! \n Game over"
    end
  end
  game_on = false
end
