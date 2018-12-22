# Learning Objective

### Use a constant

In order to refactor code and make it more readable, it is recommended to remove magic numbers and substitute them by constants that point at the same values but are easier to interpret:

```ruby
class DockingStation
  DEFAULT_CAPACITY = 20

  def full?
    bikes.count >= DEFAULT_CAPACITY
  end
end
```
