<<<<<<< HEAD
%% pack consecutive duplicates of list elements into sublists
%
transfer(X, [], [], X).
transfer(X, [Y|Ys], [Y|Ys], [X]) :- X \= Y.
transfer(X, [X|Xs], Ys, [X|Zs]) :- transfer(X, Xs, Ys, Zs).

pack([], []).
pack([X|Xs], [Z|Zs]) :- transfer(X, Xs, Ys, Z), pack(Ys, Zs).
=======
%% eliminate consecutive duplicates of list elements

compress([],[]).
compress([X], [X]) .
compress([X,X|Xs], Zs) :- compress([X|Xs], Zs).
compress([X,Y|Ys], [X|Zs]) :-  X \= Y, compress([Y|Ys], Zs).
>>>>>>> 879b5d4c514e11e90a85f0371005d9f247eac7d4
