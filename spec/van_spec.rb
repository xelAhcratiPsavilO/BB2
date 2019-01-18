require 'van'

describe Van do

  bike = Bike.new

  describe '#initialize' do
    it 'defaults capacity' do
      Van::DEFAULT_CAPACITY.times { subject.pick(bike) }
      expect{ subject.pick(bike) }.to raise_error 'Van full'
    end
  end

  describe '#pick' do
    it 'is able to pick a bike' do

    end
  end

  describe '#release_bike' do
    it 'is able to release a bike' do

    end
  end


end
