require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'releases bikes that work' do
    expect(subject.release_bike).to be_working
  end

end
