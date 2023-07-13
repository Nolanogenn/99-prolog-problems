%% find the num of elements in a list

num_elems([], 0).
num_elems([_|L], N) :- num_elems(L, N1), N is N1+1.
