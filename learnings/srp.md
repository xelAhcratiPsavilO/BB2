# Learning Objective

### Use the Single Responsibility Principle

In order to make sure that every method comply with the Single Responsibility Principle, methods with guard conditions should extract part of their logic into private predicate methods:

```ruby
class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end
end
```
