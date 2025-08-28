parent_of(tom,bob).
parent_of(pam,bob).
parent_of(tom,liz).
parent_of(bob,ann).
parent_of(bob,pat).
parent_of(pat,jim).

female(pam).
female(liz).
female(pat).
female(ann).

male(bob).
male(tom).
male(jim).


mother(X,Y):-parent_of(X,Y),female(X).

father(X,Y):-parent_of(X,Y),male(X).

sister(X,Y):-parent_of(Z,X),parent_of(Z,Y),female(X),X\==Y.

brother(X,Y):-parent_of(Z,X),parent_of(Z,Y),male(X),X\==Y.

grandparent(X,Y):-parent_of(X,Z),parent_of(Z,Y).

grandfather(X,Y):-parent_of(X,Z),parent_of(Z,Y),male(X).

grandmother(X,Y):-parent_of(X,Z),parent_of(Z,Y),female(X).

grandchild(X,Y):-parent_of(Y,Z),parent_of(Z,X).

grandson(X,Y):-parent_of(Y,Z),parent_of(Z,X),male(X).

granddaughter(X,Y):-parent_of(Y,Z),parent_of(Z,X),female(X).

happy(X):-parent_of(X,_).

two_child(X):-parent_of(X,Y),parent_of(X,Z),sister(Y,Z),Y\==Z.

aunt(X,Y):-parent_of(Z,Y),sister(Z,X).

uncle(X,Y):-parent_of(Z,Y),brother(Z,X).

