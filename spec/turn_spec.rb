require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"name" => "Ham", "shape" => :scissors, "opposition_shape" => :paper} }

  describe '#name' do
    it 'returns name' do
      expect(turn.name).to eq 'Ham'
    end
  end

  describe '#shape' do
    it 'returns shape' do
      expect(turn.shape).to eq :scissors
    end
  end

  describe '#opposition_shape' do
    it 'returns opposition_shape' do
      expect(turn.opposition_shape).to eq :paper
    end
  end

  context 'game over' do
    subject(:you_win) { turn }
    subject(:you_draw) { described_class.new(option_draw) }
    subject(:you_lose) { described_class.new(option_lose) }

    let(:option_draw) { {"name" => "Ham", "shape" => :scissors, "opposition_shape" => :scissors} }
    let(:option_lose) { {"name" => "Ham", "shape" => :scissors, "opposition_shape" => :rock} }

    describe '#winner?' do
      it 'specifies winner' do
        expect(you_win.winner?).to eq true
      end
    end

    describe '#draw?' do
      it 'specifies draw' do
        expect(you_draw.draw?).to eq true
      end
    end

    describe '#lose?' do
      it 'specifies defeat' do
        expect(you_lose.lose?).to eq true
      end
    end    
  end
end