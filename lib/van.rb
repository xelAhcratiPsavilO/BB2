require_relative 'bike'
require_relative 'docking_station'

class Van

  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  attr_reader :bikes
  attr_reader :capacity

  def pick_from(station)
    fail 'Van full' if full?
    fail 'This bike is not broken' unless station.bikes.last.broken?
    @bikes << station.release_bike("to van")
  end

  def drop_to
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
