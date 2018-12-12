# Learning Objective

### Write an RSpec test using it

This is an example of a test using it:

```ruby
require 'docking_station'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
end
```

This is the same test refactored:

```ruby
require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end
```
