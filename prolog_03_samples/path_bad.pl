edge(a,b).
edge(b,c). 
edge(b,e). 
edge(a,e).
edge(X,Y):-edge(Y,X).
path(X,X).
path(X,Y):- X\==Y, path(X,Z), edge(Z,Y). 
