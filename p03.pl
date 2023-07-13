%% find the kth element of a list

find_kth(X, [X|_], 1).
find_kth(X, [_|L], K) :- K > 1, K1 is K - 1, find_kth(X, L, K1).
