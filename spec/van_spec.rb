require 'van'

describe Van do

  bike = Bike.new
  station = DockingStation.new

  describe '#initialize' do
    it 'defaults capacity' do
      Van::DEFAULT_CAPACITY.times { station.dock(bike) }
      Van::DEFAULT_CAPACITY.times { subject.pick_from(station) }
      expect{ subject.pick_from(station) }.to raise_error 'Van full'
    end
  end

  describe '#pick_from' do
    it 'is able to pick a bike from a station' do
      station.dock(bike)
      expect{ subject.pic_from(station) }.to [bike]
    end
  end


end
