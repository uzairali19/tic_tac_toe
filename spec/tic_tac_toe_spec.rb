require 'board'

# rubocop:disable Lint/UselessAssignment
describe 'Game' do
  g = GameBoard.new
  describe 'Initialization' do
    it 'Initializes the game sequence' do
      board = g.board
      expect(board).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end
  describe 'User Input' do
    it 'gets user input and converts it into Index' do
      input_to_index = g.input_to_index(1)
      expect(input_to_index).to eq(0)
    end
    it 'gets user input and checks if input is converted to Integer' do
      input_to_index = g.input_to_index('1')
      expect(input_to_index).to eq(0)
    end
    it 'gets user input and checks if input is a number or not' do
      input_to_index = g.input_to_index('This is a long text')
      expect(input_to_index).to eq(-1)
    end
  end
  describe 'Marker Replacer' do
    it 'Replaces the index variable with user marker' do
      move = g.move(1, 'X')
      board = g.board[1]
      expect(board).to eq('X')
    end
  end
  describe 'Position Taken' do
    it 'Checks if postion on board is taken' do
      move = g.move(1, 'O')
      position_taken = g.position_taken?(1)
      expect(position_taken).to be_truthy if move == g.move(1, 'O')
    end
  end
  describe 'Valid Move' do
    it 'Checks if the move is valid' do
      index = 1
      move = g.move(index, 'O')
      valid = g.valid_move?(index)
      position_taken = g.position_taken?(1)
      if index.between?(0, 8) && !position_taken
        expect(valid).to be_truthy
      else
        expect(valid).to be_falsey
      end
    end
  end
  describe 'Current Player Count' do
    it 'Gets the player number' do
      current_player = g.current_player
      expect(current_player).to eq('O' || 'X')
    end
  end
end
# rubocop:enable Lint/UselessAssignment
