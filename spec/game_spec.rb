require 'game'

describe Game do
  let(:piplup) { double :player }
  let(:pikachu) { double :player }
  let(:game) { described_class.new(piplup, pikachu) }
  # describe '#attack' do
  #   it 'allows a player to reduce the hp of another player' do
  #     expect { pikachu.attack(piplup) }.to change { piplup.hp }.by -10
  #   end
  # end
  describe '#attack' do
    it 'allows a player to reduce the hp of another player' do
      expect(piplup).to receive(:receive_damage)
      game.attack(piplup)
    end
  end
end
