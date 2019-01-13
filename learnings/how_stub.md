# Learning Objective

### Use a method stub to isolate a unit test

Bellow, an example of how a method stub allows a double to behave as the expected.

```ruby
describe '#release_bike' do
  it 'raises an error if docking station is empty' do
    expect{ subject.release_bike }.to raise_error 'No bikes available'
  end
  it 'raises an error if bike is broken' do
    bike = double(:bike, broken?: true)
    subject.dock bike
    expect{ subject.release_bike }.to raise_error 'This bike is broken'
  end
  it 'releases bikes that work' do
    bike = double(:bike, broken?: false)
    subject.dock bike
    expect(subject.release_bike).to eq bike
  end
end
```
