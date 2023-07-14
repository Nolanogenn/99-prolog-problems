%% find if a list is a palyndrome
%
last(X,[X]).
last(X,[_|Z]) :- last(X,Z).

remove_last([],[]) :- !, fail.
remove_last([_],[]).
remove_last([X|T],[X|T2]) :- remove_last(T, T2).

is_palyndrome([X|L]) :- last(X, L), remove_last(L,K), is_palyndrome(K).
is_palyndrome([_]).
is_palyndrome([]).
is_palyndrome([a,a]).
