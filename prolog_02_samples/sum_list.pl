summation(L,N):-accumulate(L,0,N).
accumulate([],A,A).
accumulate([H|T],A,N):-A1 is A+H, accumulate(T,A1,N).

sum([],0).
sum([H|T],N):-sum(T,Nt), N is Nt + H, write(N), nl.

cousin(X,Y) :- parent(P1, X), parent(P2, Y), P1 \== P2, parent(P3, P1), parent(P3, P2).

cyclic(X) :- reachable(X,B), reachable(C,X), X \== B, X \== C.

nonCycleRoute(A,A) :- \+ cyclic(A).
nonCycleRoute(A,B) :- \+ cyclic(A), \+ cyclic(B), edge(A,B).
nonCycleRoute(A,B) :- reachable(A,B), edge(A,X), \+ cyclic(A), \+ cyclic(X), \+ cyclic(B), nonCycleRoute(X,B).