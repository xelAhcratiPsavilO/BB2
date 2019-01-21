require 'van'

describe Van do

  bike = Bike.new
  station = DockingStation.new

  describe '#initialize' do
    it 'defaults capacity' do
      Van::DEFAULT_CAPACITY.times { station.dock(bike) }
      station.dock(bike)
      Van::DEFAULT_CAPACITY.times { subject.pick_from(station) }
      expect { subject.pick_from(station) }.to raise_error 'Van full'
    end
  end

  describe '#pick_from' do
    it 'is able to pick a bike from a station' do
      station.dock(bike)
      expect(subject.pick_from(station)).to eq [bike]
    end
  end

  describe '#drop_to' do
    it 'is able to drop a bike to a garage' do
    end
  end


end
