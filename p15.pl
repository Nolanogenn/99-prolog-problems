%%% duplicate the element of a list a given number of times
%
%
duplicate(L1, N, L2) :- duplicate(L1, N, L2, N).

duplicate([], _, [], _).
duplicate([_|Xs], N, T, 0) :- duplicate(Xs, N, T, N).
duplicate([X|Xs], N, [X|T], K) :- K > 0, K1 is K-1,  duplicate([X|Xs], N, T, K1).
