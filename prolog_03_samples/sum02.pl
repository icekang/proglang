
sum(X,Y,Z):- nonvar(X), nonvar(Y), nonvar(Z), !, Z is X+Y.
sum(X,Y,Z):- nonvar(X), nonvar(Y), var(Z), Z is X+Y, !.
sum(X,Y,Z):- var(X), nonvar(Y), nonvar(Z), X is Z-Y, !.
sum(X,Y,Z):- nonvar(X), var(Y), nonvar(Z), Y is Z-X, !.
sum(X,Y,Z):- write('cannot do the operation'), fail.

append([],A,A).
append([H|T],A,[H|L]):- append(T,A,L).



