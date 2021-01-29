censor([],[]).
censor([bother|T], L):- censor(T,L).
censor([H|T],[H|L]):- \+(H==bother), censor(T,L).