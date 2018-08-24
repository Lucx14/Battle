require 'player'


describe Player do

  let(:pikachu) { described_class.new('Pikachu') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(pikachu.name).to eq('Pikachu')
    end
  end

end
