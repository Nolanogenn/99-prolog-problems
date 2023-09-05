%% rotate a list N places to the left
:- ensure_loaded(p17).

rotate(L1, N, L2) :- length(L1, K), rotate(L1, N, L2, K).

rotate(L1, N, L2, L) :- N < 0, N1 is N + L, rotate(L1, N1, L2, L).
rotate(L1, N, L2, L) :- N > L, N1 is N - L, rotate(L1, N1, L2, L).

rotate(L1, N, L2, K) :- N =< K, split(L1, N, a, b), append(b, a, L2).

