require_relative 'bike'
require_relative 'docking_station'

class Van

  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def pick_from(station)
    fail 'Van full' if full?
    @bikes << station.release_bike
  end

  private

  def full?
    @bikes.count >= @capacity
  end

end
