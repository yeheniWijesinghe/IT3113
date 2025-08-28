---

# Prolog Family Relations Tutorial

This tutorial explains **facts, rules, and queries in Prolog** using a simple family relationship example.

---

## 1. Facts – Defining Relationships

In Prolog, we use **facts** to define what we know.

Example:

```prolog
parent_of(tom, bob).
parent_of(pam, bob).
parent_of(tom, liz).
parent_of(bob, ann).
parent_of(bob, pat).
parent_of(pat, jim).
```

This means:

* Tom is a parent of Bob.
* Pam is a parent of Bob.
* Tom is a parent of Liz.
* Bob is a parent of Ann and Pat.
* Pat is a parent of Jim.

---

## 2. Basic Queries

Queries start with `?-` in Prolog.

### Check if a fact is true:

```prolog
?- parent_of(bob, tom).
false.
```

Explanation: Bob is **not** a parent of Tom.

```prolog
?- parent_of(tom, bob).
true.
```

Explanation: Tom **is** a parent of Bob.

---

## 3. Variables in Queries

Variables in Prolog start with an uppercase letter.

```prolog
?- parent_of(X, pat).
X = bob.
```

Meaning: The parent of Pat is Bob.

```prolog
?- parent_of(Y, bob).
Y = tom ;
Y = pam.
```

Meaning: Bob has **two parents** → Tom and Pam.

```prolog
?- parent_of(X, Y).
X = tom, Y = bob ;
X = pam, Y = bob ;
X = tom, Y = liz ;
X = bob, Y = ann ;
X = bob, Y = pat ;
X = pat, Y = jim.
```

This lists **all parent–child pairs** in the knowledge base.

---

## 4. Rules – Defining New Relationships

We can define new rules using facts.

### Grandparent Rule

```prolog
grandparent_of(GP, GC) :- parent_of(GP, P), parent_of(P, GC).
```

### Example Queries

```prolog
?- parent_of(GrandParent, Parent), parent_of(Parent, jim).
GrandParent = bob,
Parent = pat.
```

Meaning: Bob is Jim’s grandparent (via Pat).

```prolog
?- parent_of(tom, Child), parent_of(Child, GrandChild).
Child = bob, GrandChild = ann ;
Child = bob, GrandChild = pat.
```

Meaning: Tom has **two grandchildren** → Ann and Pat.

---

## 5. Comparing Parents

```prolog
?- parent_of(X, ann), parent_of(X, pat).
X = bob.
```

Meaning: Ann and Pat share the same parent → Bob.

```prolog
?- parent_of(X, ann), parent_of(X, tom).
false.
```

Meaning: Ann and Tom do **not** share the same parent.

---

## 6. Checking Children

```prolog
?- parent_of(liz, Y).
false.
```

Meaning: Liz has no children.

```prolog
?- parent_of(pat, X).
X = jim.
```

Meaning: Pat’s child is Jim.

---

## 7. Multi-Step Relationships

```prolog
?- parent_of(pam, X), parent_of(X, pat).
X = bob.
```

Meaning: Pam → Bob → Pat. (Pam is Pat’s grandmother).

```prolog
?- parent_of(pam, X), parent_of(X, Y), parent_of(Y, jim).
X = bob, Y = pat.
```

Meaning: Pam → Bob → Pat → Jim. (Pam is Jim’s great-grandmother).

---

## 8. Other Facts

```prolog
happy(pam).
```

```prolog
?- happy(pam).
true.
```

Meaning: Pam is happy (a simple fact).

---
