ln([], 0).
ln([_|T], N) :- ln(T,Nt), N is Nt+1.


length2(L,N):- accumulate(L,0,N).
accumulate([],A,A).
accumulate([_|T],A,N):- A1 is A+1, accumulate (T,A1,N).
