%%% generate the combinations of K distinct objects chosen from the N elements of a list
:- ensure_loaded(p23).

combination(0, _, []).
combination(K, L1, [X|Xs]) :- K > 0, el(X, L1, R), K1 is K -1, combination(K1, R, Xs).

el(X, [X|L], L).
el(X, [_|L], R) :- el(X, L, R).

combination_mine(K, L1, L2) :- rnd_select(L1, K, L2).
