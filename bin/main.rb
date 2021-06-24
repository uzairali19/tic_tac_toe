require_relative "../lib/players.rb"

puts "Welcome to Ruby's Tic-Tac-Toe!"
puts
puts "Enter Player 1 Name:"
player1 = gets.chomp
if player1.empty?
  puts "Name field cannot be empty"
  player1 = gets.chomp
elsif player1.length < 3
  puts "Name cannot be less than 3 letters"
  player1 = gets.chomp
elsif player1.to_i.to_s.eql? player1
  puts "Only text is allowed"
  player1 = gets.chomp
end
puts
puts "Enter Player 2 Name:"
player2 = gets.chomp
if player2.empty?
  puts "Name field cannot be empty"
  player2 = gets.chomp
elsif player2.length < 3
  puts "Name cannot be less than 3 letters"
  player2 = gets.chomp
elsif player2.to_i.to_s.eql? player2
  puts "Only text is allowed"
  player2 = gets.chomp
end
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
puts "Please select an available number from the board"
puts
num = gets.chomp.to_i
puts
until board.include?(num)
  puts "invalid move. Please enter a number from 1-9"
  num = gets.chomp.to_i
end

puts board_layout
puts "It's #{player2}'s turn"
puts "Please select an available number from the board"
puts
second_num = gets.chomp.to_i
puts
until board.include?(second_num)
  puts "invalid move. Please enter a number from 1-9"
  second_num = gets.chomp.to_i
end

i = 0
while i <= 9
  puts board_layout
  number = gets.chomp.to_i
  if [1, 2, 3].include? number
    puts "Game Over! \n The winner is #{player1}"
  elsif [4, 5, 6].include? number
    puts "Game Over! \n The winner is #{player2}"
  else
    puts "It's tie! \n Game over"
  end
  i += 1
end
