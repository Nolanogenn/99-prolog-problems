%%%% remove the kth element from a list

remove_at(X, L1, N, L2) :- remove_at(X, L1, N, L2, 1).
remove_at(P, [X|Xs], N, [X|T], K) :- K \= N, K1 is K+1, remove_at(P, Xs, N, T, K1).
remove_at(P, [P|Xs], N, T, K) :- K1 is K+1, remove_at(P, Xs, N, T, K1).
remove_at(_, [], _, [], _).
