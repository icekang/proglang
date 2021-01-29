square(X,Y):- Y is X*X.
negative(X,Y):- Y is X*(-1).

fullmap(F,[],[]).
fullmap(F,[X|T],[Y|L]):- F(X,Y), fullmap(F,T,L).
