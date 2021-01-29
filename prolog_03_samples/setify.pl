setify([],[]).
setify([X|T],L):- member(X,T),!, setify(T,L).
setify([X|T],[X|L]):- setify(T,L).
