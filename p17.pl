%%%% split a list into two part, where only the length of the first part is given


split([X|Xs], N, [X|T], L2) :- N > 0, N1 is N - 1, split(Xs, N1, T, L2).
split([X|Xs], 0, [], [X|T]) :- split(Xs, 0, [], T).
split([], _, [], []).
