% extract a given number of randomly selected elements from a list
:-ensure_loaded(p20).

rnd_select(_, 0, []).
rnd_select(L1, N, [X|T]) :-
	N > 0,
	length(L1, L),
	random(0, L, K),
	K1 is K + 1,
	remove_at(X, L1, K1, L3), 
	N1 is N-1,
	rnd_select(L3, N1, T).
