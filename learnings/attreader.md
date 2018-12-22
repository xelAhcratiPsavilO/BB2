# Learning Objective

### Use attr_reader to read an attribute on an instantiated Object

For a method that is merely used to read the value of an attribute previously declared, there are attribute readers.

Instead of using:
```ruby
def bike
  @bike
end
```

It is preferably to use:
```ruby
attr_reader :bike
```
