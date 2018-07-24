require 'player'

describe Player do
  subject(:enders) { Player.new('Enders') }

  describe '#name' do
    it 'returns the players name' do
      expect(enders.name).to eq 'Enders'
    end
  end
end
