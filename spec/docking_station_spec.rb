require 'docking_station'
require 'bike'

describe DockingStation do

  bike = Bike.new

  it 'releases bikes that work' do
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  it 'is able to dock' do
    expect(subject.dock(bike)).to eq bike
  end

  it 'is able to return docked bikes' do
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
