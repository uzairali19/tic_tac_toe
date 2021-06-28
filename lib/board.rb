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

  def move(index, user_marker)
    @board[index] = user_marker
  end

  def position_taken(index, user_marker)
    if @board[index] == user_marker
      puts true
    elsif @board[index] != user_marker
      puts false
    end
  end

  def valid_move?(index)
    index.between?(0, 8) && !position_taken?(index)
  end

  def turn_count
    @board.count { |token| %w[X O].include?(token) }
  end

  def current_player
    num_turns = turn_count
    if num_turns.even?
      'X'
    else
      'O'
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
  # rubocop:disable Metrics/CyclomaticComplexity
  def won?
    WINS.each do |combo|
      index0 = combo[0]
      index1 = combo[1]
      index2 = combo[2]

      position1 = @board[index0]
      position2 = @board[index1]
      position3 = @board[index2]
      (return combo if position1 == 'X' && position2 == 'X' && position3 == 'X')
      (return combo if position1 == 'O' && position2 == 'O' && position3 == 'O')
    end
    false
  end

  # rubocop:enable Metrics/CyclomaticComplexity
end
