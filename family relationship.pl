% Facts
parent(john, bob).
parent(john, mary).
parent(sue, bob).
parent(sue, mary).
parent(bob, tom).
parent(bob, lisa).
parent(mary, jim).
parent(mary, ann).

% Rules for defining relationships
father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).

sister(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    female(X),
    different(X, Y).

brother(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    male(X),
    different(X, Y).

grandchild(X, Z) :-
    parent(Z, Y),
    parent(Y, X).

grandfather(X, Y) :-
    parent(X, Z),
    father(Z, Y).

uncle(X, Y) :-
    brother(X, Z),
    parent(Z, Y).

% Facts
parent(john, bob).
parent(john, mary).
parent(sue, bob).
parent(sue, mary).
parent(bob, tom).
parent(bob, lisa).
parent(mary, jim).
parent(mary, ann).

% Rules for defining relationships
father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).

sister(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    female(X),
    different(X, Y).

brother(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    male(X),
    different(X, Y).

grandchild(X, Z) :-
    parent(Z, Y),
    parent(Y, X).

grandfather(X, Y) :-
    parent(X, Z),
    father(Z, Y).

uncle(X, Y) :-
    brother(X, Z),
    parent(Z, Y).

% Helper predicate to check if two individuals are different
different(X, Y) :-
    X \= Y.

% Define genders
male(john).
male(bob).
male(tom).
male(jim).

female(sue).
female(mary).
female(lisa).
female(ann).
