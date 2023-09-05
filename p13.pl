%%% modified run-length encoding (direct)
%
%

count(X, [], [], 1, X) .
count(X, [], [], N, [N,X]) :- N > 1.
count(X, [Y|Ys], [Y|Ys], 1, [X]) :- X \= Y.
count(X,[Y|Ys],[Y|Ys], N, [N|X]) :- N > 1, X \= Y.
count(X,[X|Xs],Ys, K, T) :- K1 is K + 1, count(X, Xs, Ys, K1, T).
