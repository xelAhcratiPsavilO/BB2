require 'docking_station'

describe DockingStation do

  describe '#initialize' do
    it 'defaults capacity' do
      expect(DockingStation::DEFAULT_CAPACITY).to eq 20
    end
  end

  describe '#release_bike' do
    it 'raises an error if docking station is empty' do
      expect{ subject.release_bike }.to raise_error 'No bikes available'
    end
    it 'raises an error if bike is broken' do
      bike = double(:bike, broken?: true)
      subject.dock bike
      expect{ subject.release_bike }.to raise_error 'This bike is broken'
    end
    it 'releases bikes that work' do
      bike = double(:bike, broken?: false)
      subject.dock bike
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#dock' do
    it 'raises an error if docking station is full' do
      subject.capacity.times { subject.dock(double(:bike)) }
      expect{ subject.dock(double(:bike)) }.to raise_error 'Docking Station full'
    end
    it 'is able to dock' do
      bike = double(:bike)
      expect(subject.dock(bike)).to eq [bike]
    end
  end

  describe '#bikes' do
    it 'is able to show docked bikes' do
      bike = double(:bike)
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
  end

  describe '#capacity' do
    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

end
