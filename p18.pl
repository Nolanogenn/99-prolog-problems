%%%% extract a slice from a list

slice(L1, B, E, L2) :- slice(L1, B, E, L2, 0).
slice([_|Xs], B, E, T, K) :- K < B, K1 is K + 1, slice(Xs, B, E, T, K1) .
slice([X|Xs], B, E, [X|T], K) :- K >= B, K =< E, K1 is K+1, slice(Xs, B, E, T, K1).
slice([X|_], _, E, [X], E) .
