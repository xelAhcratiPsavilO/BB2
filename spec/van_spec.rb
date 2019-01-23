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
    it 'raises an error if van is full' do
      subject.capacity.times { station.dock(bike) }
      subject.capacity.times { subject.pick_from(station) }
      expect{ subject.pick_from(station) }.to raise_error 'Van full'
    end
    it 'raises an error if bike is not broken' do
      station.dock(bike)
      expect{ subject.pick_from(station) }.to raise_error 'This bike is not broken'
    end
    it 'is able to pick a bike from a station' do
      station.dock(bike)
      expect(subject.pick_from(station)).to eq [bike]
    end
  end

  describe '#drop_to' do
    it 'raises an error if van is empty' do
      expect{ subject.drop_to }.to raise_error 'No bikes available'
    end
    it 'is able to drop a bike to a garage' do
      station.dock(bike)
      subject.pick_from(station)
      expect(subject.drop_to).to eq bike
    end
  end

  describe '#bikes' do
    it 'is able to show picked bikes' do
      station.dock(bike)
      subject.pick_from(station)
      expect(subject.bikes).to eq [bike]
    end
  end

  describe '#capacity' do
    it 'has a default capacity' do
      expect(subject.capacity).to eq Van::DEFAULT_CAPACITY
    end
  end

end
