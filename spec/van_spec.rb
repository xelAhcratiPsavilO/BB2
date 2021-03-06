require 'van'

describe Van do

  station = DockingStation.new

  describe '#initialize' do
    it 'has a default capacity' do
      expect(Van::DEFAULT_CAPACITY).to eq 10
    end
  end

  describe '#pick_from' do
    it 'raises an error if bike is not broken' do
      bike = double(:bike, broken?: false)
      station.dock(bike)
      expect{ subject.pick_from(station) }.to raise_error 'This bike is not broken'
    end
    it 'is able to pick a bike from a station' do
      bike = double(:bike, broken?: true)
      station.dock(bike)
      expect(subject.pick_from(station)).to eq [bike]
    end
    it 'raises an error if van is full' do
      subject.capacity.times {
        bike = double(:bike, broken?: true)
        station.dock(bike)
      }
      bike = double(:bike, broken?: true)
      station.dock(bike)
      subject.capacity.times { subject.pick_from(station) }
      expect{ subject.pick_from(station) }.to raise_error 'Van full'
    end
  end

  describe '#drop_to' do
    it 'raises an error if van is empty' do
      expect{ subject.drop_to }.to raise_error 'No bikes available'
    end
    it 'is able to drop a bike to a garage' do
      bike = double(:bike, broken?: true)
      station.dock(bike)
      subject.pick_from(station)
      expect(subject.drop_to).to eq bike
    end
  end

  describe '#bikes' do
    it 'is able to show picked bikes' do
      bike = double(:bike, broken?: true)
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
