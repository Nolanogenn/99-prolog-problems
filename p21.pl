% insert an element at position K in a list
%
insert_at(E, L1, N, L2) :- insert_at(E, L1, N, L2, 0) .
insert_at(E, [X|Xs], N, [X|T], K) :- K \= N, K1 is K + 1, insert_at(E, Xs, N, T, K1).
insert_at(E, Xs, N, [E|T], K) :- K == N, K1 is K + 1, insert_at(E, Xs, N, T, K1).
insert_at(_, [], _, [], _) .
