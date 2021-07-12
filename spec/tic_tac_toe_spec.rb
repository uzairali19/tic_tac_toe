require 'board'

describe 'Game' do
    it 'Initializes the game sequence' do
        g = GameBoard.new
        board = g.board
        expect(board).to eq([1,2,3,4,5,6,7,8,9])
    end
end