%%% modified run-length encoding
%
%
:- ensure_loaded(p09).

encode(L1,L2) :- pack(L1, L), transform(L,L2).

transform([],[]).
transform([[X|Xs]|Ys], [[N,X]|Zs]) :- length([X|Xs],N), transform(Ys, Zs), N > 1.
transform([[X|Xs]|Ys], [X|Zs]) :- transform(Ys,Zs), length([X|Xs],N), N = 1.
