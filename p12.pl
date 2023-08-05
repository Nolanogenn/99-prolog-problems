%% decode a rung-length encoded list
%
%
decode([],[]).

decode([X|Ys], [X|Zs]) :- \+ is_list(X), decode(Ys, Zs).

decode([[1,X]|Ys], [X|Zs]) :- decode(Ys, Zs).

decode([[N,X]|Ys],[X|Zs]) :- N > 1, N1 is N - 1, decode([[N1,X]|Ys],Zs).
