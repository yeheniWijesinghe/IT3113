## Objects and Predicates

1. Predicate

A predicate defines a property or relationship.

Syntax: predicate(object).

Example :
```
food(pizza). → food is the predicate, pizza is the object.

bird(parrot). → bird is the predicate, parrot is the object.

fruit(apple). → fruit is the predicate, apple is the object.
```

2. Object / Constant

The object (or constant) is what the predicate is describing.

Examples: pizza, parrot, kiwi, john.

Each object can belong to one predicate (like pizza → food) or multiple predicates if needed in rules later.

3. Facts

Each line in your list is a fact.

Fact syntax:

predicate(object).


Meaning: “This statement is always true.”

Examples:
```
weapon(gun).        % Gun is a weapon
hardware(keyboard). % Keyboard is hardware
vehicle(bus).       % Bus is a vehicle
```

4. Multiple Facts with Same Predicate

You can have many objects under the same predicate:
```
fruit(kiwi).
fruit(apple).
fruit(grapes).
```

This tells Prolog: “Kiwi, apple, and grapes are all fruits.”

5. Querying Facts

You can ask Prolog if something is true:
```
?- food(pizza).
true.

?- fruit(banana).
false.

?- fruit(X).
X = kiwi ;
X = apple ;
X = grapes.
```
