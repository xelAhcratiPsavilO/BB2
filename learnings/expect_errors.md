# Learning Objective

### Write RSpec tests that expect errors

The syntax that RSpec uses to expect an error would be similar to expect{}.to raise_error "string". Let's see that illustrated with an example:

```ruby
require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
end
```
