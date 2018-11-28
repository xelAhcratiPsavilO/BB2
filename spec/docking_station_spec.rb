require 'docking_station'
require 'bike'

describe DockingStation do

  bike = Bike.new

    it { is_expected.to respond_to :release_bike }
    it { is_expected.to respond_to(:dock).with(1).argument }

  it 'releases bikes that work' do
    expect(subject.release_bike).to be_working
  end

end
