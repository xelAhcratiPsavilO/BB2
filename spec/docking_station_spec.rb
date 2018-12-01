require 'docking_station'
require 'bike'

describe DockingStation do

  bike = Bike.new

  describe '#release' do
    it 'raises an error if docking station is empty' do
      expect{ subject.release_bike }.to raise_error 'No bikes available'
    end
    it 'releases bikes that work' do
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end
  end

  describe '#dock' do
    it 'raises an error if docking station is full' do
      20.times { subject.dock(bike) }
      expect{ subject.dock(bike) }.to raise_error 'Docking Station full'
    end
    it 'is able to dock' do
      expect(subject.dock(bike)).to eq [bike]
    end
  end

  describe '#bikes' do
    it 'is able to return docked bikes' do
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
  end

end
