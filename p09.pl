%% pack consecutive duplicates into separate lists

pack([],[]).
pack([X|Xs],[Z|Zs]) :- transfer(X, Xs, Ys, Z), pack(Ys, Zs).

transfer(X,[],[],[X]).
transfer(X,[Y|Ys], [Y|Ys],[X]) :- X \= Y.
transfer(X, [X|Xs], Ys, [X|Zs]) :- transfer(X,Xs,Ys,Zs).
