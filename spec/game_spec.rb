require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  subject(:finished_game) { described_class.new(dead_player, player2)}
  subject(:player1) { double :player, hit_points: 60 }
  subject(:player2) { double :player, hit_points: 60 }
  subject(:dead_player) { double :player, hit_points: 0 }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(game.player_2).to receive(:receive_damage) 
      game.attack(player2)
    end
  end

  describe '#current_turn' do
    it 'starts as player1' do
      expect(game.current_turn).to eq player1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player2
    end
  end

  describe '#game_over?' do
    it 'returns false if both players have +ve HP' do
      expect(game.game_over?).to be false
    end
    it 'returns true if at least one player has 0 or -ve HP' do
      expect(finished_game.game_over?).to be true
    end
  end

end