mymember(X,[X|T]).
mymember(X,[H|T]):- X\==H, mymember(X,T).

%reverse(List,List2)

reverse([],[]).
%reverse([X],[X]).
reverse([A|T],Result):- reverse(T,Ans1), 
                      append(Ans1,A,Result). 

%append([],[],[]).
append(L,[],L).
append([],L,L).
append([H|T],L,[H|Ans]):- 
                      append(T,L,Ans). 

removelastmember(X,List,Ans):- 
           reverse(List,R), del(X,R,R2), 
		   reverse(R2,Ans).
		   

		   



					  
