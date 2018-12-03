require 'bike'

describe Bike do

  describe '#report_broken' do
    it 'is able to report a broken bike' do
      subject.report_broken
      expect(subject).to be_broken
    end
  end

  describe '#broken?' do
    it 'checks whether a bike is broken' do
      subject.report_broken
      expect(subject.broken?).to be true
    end
  end
  
end
