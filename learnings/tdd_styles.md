# Learning Objective

### Discuss 'London' and 'Chicago' testing styles

Chicago style focuses on results. Inside Out TDD (Bottom Up/Chicago School/Classic Approach)
London style focuses on behaviour. Outside In TDD (Top Down/London School/Mockist Approach)

Inside Out TDD favours developers who like to build up functionality one piece at a time. It can be easier to get started, following a methodical approach of identifying an entity, and drilling out its internal behaviour. With Outside In TDD, the developer starts building a whole system, and breaks it down into smaller components when refactoring opportunities arise. The path can feel more exploratory, and is ideal for situations where there is a general idea of the goal, but the finer details of implementation are less clear.

Ultimately the decision comes down to the task at hand, individual preference, and the methodology of team collaboration. If the tests are very difficult to configure, it may be a sign that the design is too complicated. Entities must be continually reviewed to look for refactoring opportunities.

Good reference [here](https://8thlight.com/blog/georgina-mcfadyen/2016/06/27/inside-out-tdd-vs-outside-in.html)
