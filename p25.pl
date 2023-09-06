% generate a random permutation of the elements of a list
:- ensure_loaded(p23).

rnd_permu(L1, L2) :- length(L1, L), rnd_select(L1, L, L2).
