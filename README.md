# Boris Bikes

### Learning Objectives covered
- [Set up a simple project](learnings/setup.md)
- [Explain why a complete README is important](learnings/explanation.md)
- [Initialize and push a git project](learnings/init.md)
- [Give the structure of a User Story](learnings/user_story.md)
- [Extract a Domain Model from User Stories](learnings/domain_model.md)
- [Define 'Feature Test'](learnings/feature_test.md)
- [Define a 'stack trace'](learnings/stack_trace.md)
- [Use irb to run a 'feature test'](learnings/irb.md)
- [Explain how to use a stack trace to debug errors](learnings/howto_debugging.md)
- [Debug an error using a stack trace](learnings/debugging.md)
- [Define RSpec as a testing framework](learnings/rspec.md)
- [Create a spec file](learnings/spec.md)
- [Describe an Object using a specification](learnings/describe.md)
- [Set up a Unit Test](learnings/setup_unit_test.md)
- [Pass a unit test](learnings/pass_unit_test.md)
- [Use require](learnings/require.md)
- [Move between Feature and Unit Tests](learnings/move.md)
- [Write an RSpec test using it](learnings/it.md)
- [Test that an Object responds to a Message](learnings/responds.md)
- [Use Objects within other Objects](learnings/obj.md)
- [Use RSpec 'predicate' syntax](learnings/predicate.md)
- [Write RSpec tests that require arguments](learnings/arguments.md)
- [Pass an instance as an argument](learnings/instance.md)
- [Set an attribute on an instantiated Object using an @ instance variable](learnings/instance.md)
- [Use attr_reader to read an attribute on an instantiated Object](learnings/attreader.md)
- [Write RSpec tests that expect errors](learnings/expect_errors.md)
- [Use fail or raise to raise an error](learnings/raise_errors.md)
- [Use a 'guard condition'](learnings/guard.md)
- [Wrap a collection in a class](learnings/wrap.md)
- [Set an initial attribute value using initialize](learnings/initialize.md)
- [Use the Single Responsibility Principle](learnings/srp.md)
- [Refactor code for readability](learnings/srp.md)
- [Use a constant](learnings/constant.md)
- [Set an initial attribute value using initialize](learnings/att_initialized.md)
- [Set a default initialization value](learnings/default_init.md)
- [Explain why doubles are needed to isolate unit tests](learnings/why_double.md)
- [Use a double to isolate a unit test](learnings/how_double.md)
- [Explain why method stubs are needed to isolate unit tests](learnings/why_stub.md)
- [Use a method stub to isolate a unit test](learnings/how_stub.md)
- [Discuss 'London' and 'Chicago' testing styles](learnings/tdd_styles.md)

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
```
As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.
```
```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.
```
```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```
```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.
```
```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.
```
### Functional representation of the stories

Objects  | Messages
------------- | -------------
Person  |
DockingStation  | release_bike
DockingStation  | dock(Bike)
DockingStation  | bikes
DockingStation  | capacity
Bike  | report_broken
Bike  | broken?

### Diagram of objects and methods
```
CLASS              METHOD            OUTPUT  
DockingStation --> release_bike  --> Bike.new
DockingStation --> dock(bike)    --> [Bike.new]
DockingStation --> bikes         --> [Bike.new]
DockingStation --> capacity      --> DEFAULT_CAPACITY
Bike           --> report_broken --> @broken
Bike           --> broken?       --> true/false
```
(Domain Model in form of UML Diagram to be added)
