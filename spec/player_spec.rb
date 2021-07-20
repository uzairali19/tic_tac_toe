require 'players'

describe Player do
  let(:player) { Player.new('Uzair', 'Saad') }
  context 'It Initializes the players' do
    it 'Checks if the passed values are correct' do
      player1 = player.player1
      player2 = player.player2
      expect(player1).to eq('Uzair')
      expect(player2).to eq('Saad')
    end

    it 'Checks if the passed values are not correct' do
      player1 = player.player1
      player2 = player.player2
      expect(player1).not_to eq('Dan')
      expect(player2).not_to eq('Vic')
    end
  end
end
