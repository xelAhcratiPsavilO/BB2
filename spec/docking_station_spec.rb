require 'docking_station'
require 'bike'

describe DockingStation do

  describe '#initialize' do
    it 'defaults capacity' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(double(:bike)) }
      expect{ subject.dock(double(:bike)) }.to raise_error 'Docking Station full'
    end
  end

  describe '#release_bike' do
    it 'raises an error if docking station is empty' do
      expect{ subject.release_bike }.to raise_error 'No bikes available'
    end
    it 'raises an error if bike is broken' do
      bike.report_broken
      subject.dock(double(:bike))
      expect{ subject.release_bike }.to raise_error 'This bike is broken'
    end
    it 'releases bikes that work' do
      subject.dock(double(:bike2))
      expect(subject.release_bike).to eq double(:bike2)
    end
  end

  describe '#dock' do
    it 'raises an error if docking station is full' do
      subject.capacity.times { subject.dock(double(:bike)) }
      expect{ subject.dock(double(:bike)) }.to raise_error 'Docking Station full'
    end
    it 'is able to dock' do
      expect(subject.dock(double(:bike))).to eq [double(:bike)]
    end
  end

  describe '#bikes' do
    it 'is able to return docked bikes' do
      subject.dock(double(:bike))
      expect(subject.bikes).to eq [double(:bike)]
    end
  end

  describe '#capacity' do
    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

end
