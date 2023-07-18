%% eliminate consecutive duplicates of list elements

compress([],[]).
compress([X], [X]) .
compress([X,X|Xs], Zs) :- compress([X|Xs], Zs).
compress([X,Y|Ys], [X|Zs]) :-  X \= Y, compress([Y|Ys], Zs).
