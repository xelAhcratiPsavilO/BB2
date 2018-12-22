# Learning Objective

### Use fail or raise to raise an error

A syntax that can be used in order to raise an error is fail. See that illustrated with the following example:

```ruby
class DockingStation
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end
end
```
