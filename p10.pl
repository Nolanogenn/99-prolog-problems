%%% run-length encoding of a list
%
%
:- ensure_loaded(p09).
encode(L1,L2) :- pack(L1, L), transform(L, L2).


get_first([A|_],A).

transform([],[]).
transform([[X|Xs]|Ys],[[N,X]|Zs]) :- length([X|Xs], N), transform(Ys,Zs).

