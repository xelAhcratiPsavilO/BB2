# Learning Objective

### Use a 'guard condition'

A 'guard condition' denotes that a condition of failure is evaluated before executing the actual action of the method. Let's see that illustrated with the following example:

```ruby
class DockingStation
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end
end
```
