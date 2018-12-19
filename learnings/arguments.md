# Learning Objective

### Write RSpec tests that require arguments

Rspec includes one line syntax to test the responsiveness of a method which includes a  number of arguments:

```ruby
require 'docking_station'
describe DockingStation do
  
  it { is_expected.to respond_to(:dock).with(1).argument }
end
```
