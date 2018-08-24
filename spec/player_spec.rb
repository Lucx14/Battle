require 'player'


describe Player do

  let(:pikachu) { described_class.new('Pikachu') }
  let(:piplup) { described_class.new('Piplup') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(pikachu.name).to eq('Pikachu')
    end
  end

  describe '#hp' do
    it 'reads the HP of the player' do
      expect(pikachu.hp).to eq 60
    end
  end

  describe '#receive_damage' do
    it 'reduces the HP of the player' do
      expect { pikachu.receive_damage }.to change { pikachu.hp }.by -10
    end
  end

  
end
