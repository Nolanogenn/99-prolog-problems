% extract a given number of randomly selected elements from a list
:-ensure_loaded(p20).

rnd_select(L1, N, [X|T]) :- N \= 0, length(L1, L),random(1, L, K),remove_at(X, L1, K, L3), N1 is N-1, rnd_select(L3, N1, T).
rnd_select(_, 0, []).
