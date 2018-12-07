# Learning Objective

### Give the structure of a User Story

Given the user stories:
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
It is interesting to extract the following functional table:

Objects | Messages
------------- | -------------
Person |
DockingStation | release_bike
Bike | working?

Organising nouns and verbs as objects and messages will simplify things when applying OOP and TDD/BDD principles. 
