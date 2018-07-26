require 'player'

describe Player do
  subject(:enders) { Player.new('Enders') }
  subject(:ant) { Player.new('Ant') }

  describe '#name' do
    it 'returns the players name' do
      expect(enders.name).to eq 'Enders'
    end
  end

  describe '#hit_points' do
    it 'returns the hit point total' do
      expect(enders.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the players hit point total' do
      allow(Kernel).to receive(:rand).and_return 10
      expect { enders.receive_damage }.to change { enders.hit_points }.by(-10)
    end
  end

  


end
