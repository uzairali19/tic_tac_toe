class GameBoard
  attr_reader :board

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def board_layout
    puts " +---+---+---+
 | #{board[0]} | #{board[1]} | #{board[2]} |
 +---+---+---+
 | #{board[3]} | #{board[4]} | #{board[5]} |
 +---+---+---+
 | #{board[6]} | #{board[7]} | #{board[8]} |
 +---+---+---+"
  end

  def move(index, user_marker = 'X')
    @board[index] = user_marker
  end

  def position_taken(index, user_marker)
    if @board[index] == user_marker
      puts true
    elsif @board[index] != user_marker
      puts false
    end
  end

  WINS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2]
  ].freeze
end

display_layout = GameBoard.new

display_layout.board_layout
index = gets.to_i - 1
display_layout.move(index, 'O')
display_layout.board_layout
display_layout.position_taken(index, 'O')
