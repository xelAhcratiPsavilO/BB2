require 'docking_station'
require 'bike'

describe DockingStation do

    it { is_expected.to respond_to :release_bike }
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to :bike }

  it 'releases bikes that work' do
    expect(subject.release_bike).to be_working
  end

  it 'is able to dock' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

end
