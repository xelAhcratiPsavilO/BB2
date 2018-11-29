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
    it 'is able to dock' do
      expect(subject.dock(bike)).to eq bike
    end
  end

  describe '#bike' do
    it 'is able to return docked bikes' do
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end

end
