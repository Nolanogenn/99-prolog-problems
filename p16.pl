%%% drop every Nth element from a list
%
%
drop(L1, N, L2) :- drop(L1, N, L2, N).

drop([], _, [], _).
drop([X|Xs], N, [X|T], K) :- K > 1, K1 is K-1, drop(Xs, N, T, K1).
drop([_|Xs], N, T, K) :- K == 1, drop(Xs, N, T, N). 
