require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  attr_reader :bikes
  attr_reader :capacity

  def release_bike
    fail 'No bikes available' if empty?
    fail 'This bike is broken' if @bikes.last.broken?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
