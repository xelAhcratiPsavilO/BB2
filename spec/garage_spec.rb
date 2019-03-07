require 'garage'

describe Garage do

  describe '#initialize' do
    it 'defaults capacity' do
      expect(Garage::DEFAULT_CAPACITY).to eq 20
    end
  end

end
