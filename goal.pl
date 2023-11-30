gender(john, male).
gender(jane, female).
gender(bob, male).
gender(lisa, female).

parent(john, sarah).
parent(jane, sarah).
parent(bob, mike).
parent(lisa, mike).

% Rules: Define parent based on gender and having a child
parent(X, Y) :- gender(X, male), parent(X, Y).
parent(X, Y) :- gender(X, female), parent(X, Y)
