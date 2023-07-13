%% find the last but one element of a list

my_last_but_one(X, [X,_]).
my_last_but_one(X, [_|L]) :- my_last_but_one(X, L).
