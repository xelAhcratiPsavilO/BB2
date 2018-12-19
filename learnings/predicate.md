# Learning Objective

### Use RSpec 'predicate' syntax

For a predicate method Rspec includes a specific syntax of the type 'be_(method name)', which can be illustrated by the following example:

```ruby
describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
```
