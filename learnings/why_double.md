# Learning Objective

### Explain why doubles are needed to isolate unit tests

The purpose of a unit test is to exhaustively test a single component.
Such component would not be isolated if it is dependent on another component of the system.
In order to overcome that, it is necessary to introduce a double.
A double is a temporary, disposable object that we can use as stand-in for some other real object.
The difference is, we can precisely define the behaviour of a double on a test-by-test basis to remove any uncertainty that the real object might introduce.
Isolating unit tests contributes to the identification of a bug as it narrows the search to one only component. 
