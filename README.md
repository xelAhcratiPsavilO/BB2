# Boris Bikes

### Learning Objectives covered
- Set up a simple project
- Explain why a complete README is important
- Initialize and push a git project
- Give the structure of a User Story
- Extract a Domain Model from User Stories
- Define 'Feature Test'
- Define a 'stack trace'
- Use irb to run a 'feature test'
- Explain how to use a stack trace to debug errors
- Debug an error using a stack trace
- Define RSpec as a testing framework
- Create a spec file
- Describe an Object using a specification
- Set up a Unit Test
- Pass a unit test
- Use require
- Move between Feature and Unit Tests
- Write an RSpec test using it
- Test that an Object responds to a Message
- Use Objects within other Objects
- Use RSpec 'predicate' syntax
- Write RSpec tests that require arguments
- Pass an instance as an argument
- Set an attribute on an instantiated Object using an @ instance variable
- Use attr_reader to read an attribute on an instantiated Object
- Write RSpec tests that expect errors
- Use fail or raise to raise an error
- Use a 'guard condition'
- Wrap a collection in a class
- Set an initial attribute value using initialize
- Use the Single Responsibility Principle
- Refactor code for readability
- Use a constant

### User stories
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```
```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```
```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station
```
```
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
```
```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```
```
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.
```
```
As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.
```
```
As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```
### Functional representation of the stories

Objects  | Messages
------------- | -------------
Person  |
Bike  | working?
DockingStation  | release_bike
DockingStation  | dock(Bike)
DockingStation  | bike
DockingStation  | capacity

### Diagram of objects and methods
```
CLASS              METHOD           OUTPUT  
Bike           --> working?     --> true/false
DockingStation --> release_bike --> Bike.new
DockingStation --> dock(bike)   --> Bike.new
DockingStation --> bike         --> Bike.new
DockingStation --> capacity     --> DEFAULT_CAPACITY
```
(Domain Model in form of UML Diagram to be added)
