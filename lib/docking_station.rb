
class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  attr_reader :bikes
  attr_reader :capacity

  def release_bike(to = "user")
    fail 'No bikes available' if empty?
    fail 'This bike is broken' if bike_broken? && to == "user"
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

  def bike_broken?
    @bikes.last.broken?
  end

end
