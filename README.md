# Boris Bikes

### Learning Objectives covered
- Set up a simple project
- Explain why a complete README is important
- Initialize and push a git project

### User stories
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```
### Functional representation of the stories

Objects  | Messages
------------- | -------------
Person  |
Bike  | working?
DockingStation  | release_bike

### Diagram of objects and methods
```
CLASS              METHOD           OUTPUT  
Bike           --> working?     --> true/false
DockingStation --> release_bike --> Bike.new
```
(Domain Model in form of UML Diagram to be added)
