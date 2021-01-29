member(X,[X|T]).
member(X,[H|T]):- X\==H, member(X,T).

sorted([]).  % empty list is already sorted
sorted([X]).  % list with one element is surely sorted
sorted([A,B|T]):- A=<B, sorted([B|T]).

del(X,[],[]).
del(X,[X|T],T).
del(X,[H|T],[H|T2]) :- X\==H, del(X,T,T2).

