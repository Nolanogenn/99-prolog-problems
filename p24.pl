% lotto: draw N different random numbers from the set 1...M
%
:-ensure_loaded(p22).
:-ensure_loaded(p23).


lotto_select(N, M, L) :- range(1, M, X), rnd_select(X, N, L).
