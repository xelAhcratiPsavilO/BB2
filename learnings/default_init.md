# Learning Objective

### Set an initial attribute value using initialize

Sometimes it may be preferred to pass a value to your attributes by default.

The way to implement that in your code can be illustrated with the examples bellow:


```ruby
class Dog
  def initialize(name = "Toby")
    @name = name
  end
end
```

```ruby
class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end
end
```
