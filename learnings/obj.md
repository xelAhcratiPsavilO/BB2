# Learning Objective

### Use Objects within other Objects

This snippet exemplifies the creation of an instance of an object within another object:


```ruby
require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end
end
```
