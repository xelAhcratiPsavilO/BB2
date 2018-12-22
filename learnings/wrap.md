# Learning Objective

### Wrap a collection in a class

Wrapping a collection, is a pattern extremely common in programming. As can be seen in the example bellow:

```ruby
class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.count >= 20
    @bikes << bike
  end
end
```
