# Learning Objective

### Pass an instance as an argument

An instance can be passed as an argument as follows, in Rspec:

```ruby
describe DockingStation do

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
```

In the lib directory:

```ruby
class DockingStation

  def dock(bike)
    @bike = bike
  end

  def bike
    @bike
  end
end
```
