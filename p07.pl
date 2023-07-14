%% flatten a list

flatten(X,[X]) :- \+ is_list(X).
flatten([],[]).
flatten([X|Xs], Zs) :- flatten(X,Y), flatten(Xs,Ys), append(Y,Ys,Zs).
