sorted([]).  % empty list is already sorted
sorted([X]).  % list with one element is surely sorted
sorted([A,B|T]):- A=<B, sorted([B|T]).
