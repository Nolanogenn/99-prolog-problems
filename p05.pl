%% reverse a list

reverse([H|T], A,R) :- reverse(T, [H|A],R).
reverse([],A,A).
