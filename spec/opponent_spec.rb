require 'opponent'

describe Opponent do
  subject(:opponent) { described_class.new }

  describe '#shape' do
    it 'returns random shape' do
      expect(Opponent::SHAPE).to include opponent.shape
    end
  end
end