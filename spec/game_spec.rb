require 'game'

describe Game do
  let(:piplup) { double :player }
  let(:pikachu) { double :player }
  let(:game) { described_class.new(piplup, pikachu) }

  describe '#attack' do
    it 'allows a player to reduce the hp of another player' do
      expect(piplup).to receive(:receive_damage)
      game.attack(piplup)
    end
  end

  describe '#turn' do
    it 'returns which players turn it is' do
      expect(game.turn).to eq piplup
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.turn).to eq pikachu
    end
  end


end
