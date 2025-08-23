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

## Relationships between objects

1. Predicate with Relationships

A relationship predicate connects two or more objects.

Syntax:

predicate(object1, object2).


Example :

```
likes(john, ann).       % John likes Ann
studies(charlie, ai).   % Charlie studies AI
teaches(colins, cs).    % Colins teaches CS
loves(vincent, mia).    % Vincent loves Mia
next_month(october, september). % October comes after September
student(jane, roy).     % Jane is a student of Roy
color(elephant, black). % Elephant is black in color
```

2. Explanation of Each Part

Predicate → describes the type of relationship.

likes, studies, teaches, loves, next_month, student, color.

Object1 → the subject or first entity in the relationship.

Examples: john, charlie, colins, vincent, jane, elephant.

Object2 → the object or second entity in the relationship.

Examples: ann, ai, cs, mia, roy, black.

3. Facts vs Relationships

Previous topic (Objects & Predicates): only one object per predicate.
```
fruit(apple).   % single-object fact
```

Now (Relationships): two objects per predicate, showing connection.
```
likes(john, ann). % relationship fact
```

4. Querying Relationships

You can ask Prolog questions like:

```
?- likes(john, ann).
true.

?- loves(X, mia).
X = vincent.

?- student(jane, Y).
Y = roy.
```
Using variables (X, Y) allows Prolog to find all matching objects.
