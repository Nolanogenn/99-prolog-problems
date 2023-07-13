%% purpose: find the first element in a list

my_last(X, [X]).
my_last(X, [_|L]) :- my_last(X,L).
