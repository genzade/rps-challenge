require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"name" => "Ham", "shape" => :rock, "opposition_shape" => :rock} }

  describe '#name' do
    it 'returns name' do
      expect(turn.name).to eq 'Ham'
    end
  end

  describe '#shape' do
    it 'returns shape' do
      expect(turn.shape).to eq :rock
    end
  end

  describe '#opposition_shape' do
    it 'returns opposition_shape' do
      expect(turn.opposition_shape).to eq :rock
    end
  end
end