class Player
  attr_accessor :player1, :player2

  def initialize
    @player1 = :player1
    @player2 = :player2
  end
end

puts "Welcome to Ruby's Tic-Tac-Toe!"
puts
puts "Enter Player 1 Name:"
player1 = gets.chomp
puts
puts "Enter Player 2 Name:"
player2 = gets.chomp
puts
puts "#{player1} will play with X and #{player2} will play with O"
puts
puts "Let's start!"

class Board
  board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  puts "+---+---+---+"
  puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
  puts "+---+---+---+"
  puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
  puts "+---+---+---+"
  puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
  puts "+---+---+---+"
end
